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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmAsymDecrypt)){
				return false
			}
			this.target == (object as CsmAsymDecrypt).target
		}
	
		def BigInteger getCsmAsymDecryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymDecryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymDecryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmAsymDecryptConfig> getCsmAsymDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymDecryptConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymDecryptConfig, GContainer>(filteredContainers, typeof(CsmAsymDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmAsymDecrypt.CsmAsymDecryptConfig csmAsymDecryptConfig) {
					csmAsymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymDecryptConfig"))
					super.delegateAdd(csmAsymDecryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmAsymDecrypt.CsmAsymDecryptConfig csmAsymDecryptConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAsymDecryptConfig)){
					return false
				}
				this.target == (object as CsmAsymDecryptConfig).target
			}
		
			def String getCsmAsymDecryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptInitConfiguration"].getStringValue()
			}
			
			def void setCsmAsymDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymDecryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmAsymDecryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptPrimitiveName"].getStringValue()
			}
			
			def void setCsmAsymDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymDecryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCallbackAsymDecrypt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymDecrypt"].getStringValue()
			}
			
			def void setCsmCallbackAsymDecrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymDecrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymDecrypt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmAsymEncrypt)){
				return false
			}
			this.target == (object as CsmAsymEncrypt).target
		}
	
		def BigInteger getCsmAsymEncryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymEncryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymEncryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmAsymEncryptConfig> getCsmAsymEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymEncryptConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymEncryptConfig, GContainer>(filteredContainers, typeof(CsmAsymEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmAsymEncrypt.CsmAsymEncryptConfig csmAsymEncryptConfig) {
					csmAsymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymEncryptConfig"))
					super.delegateAdd(csmAsymEncryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmAsymEncrypt.CsmAsymEncryptConfig csmAsymEncryptConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAsymEncryptConfig)){
					return false
				}
				this.target == (object as CsmAsymEncryptConfig).target
			}
		
			def String getCsmAsymEncryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptInitConfiguration"].getStringValue()
			}
			
			def void setCsmAsymEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymEncryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmAsymEncryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptPrimitiveName"].getStringValue()
			}
			
			def void setCsmAsymEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymEncryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCallbackAsymEncrypt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymEncrypt"].getStringValue()
			}
			
			def void setCsmCallbackAsymEncrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymEncrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymEncrypt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmAsymPrivateKeyExtract)){
				return false
			}
			this.target == (object as CsmAsymPrivateKeyExtract).target
		}
	
		def BigInteger getCsmAsymPrivateKeyExtractMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymPrivateKeyExtractMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyExtractMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmAsymPrivateKeyExtractConfig> getCsmAsymPrivateKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPrivateKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPrivateKeyExtractConfig, GContainer>(filteredContainers, typeof(CsmAsymPrivateKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPrivateKeyExtract.CsmAsymPrivateKeyExtractConfig csmAsymPrivateKeyExtractConfig) {
					csmAsymPrivateKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyExtractConfig"))
					super.delegateAdd(csmAsymPrivateKeyExtractConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPrivateKeyExtract.CsmAsymPrivateKeyExtractConfig csmAsymPrivateKeyExtractConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAsymPrivateKeyExtractConfig)){
					return false
				}
				this.target == (object as CsmAsymPrivateKeyExtractConfig).target
			}
		
			def String getCsmAsymPrivateKeyExtractInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractInitConfiguration"].getStringValue()
			}
			
			def void setCsmAsymPrivateKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyExtractInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmAsymPrivateKeyExtractPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractPrimitiveName"].getStringValue()
			}
			
			def void setCsmAsymPrivateKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyExtractPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCallbackAsymPrivateKeyExtract(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyExtract"].getStringValue()
			}
			
			def void setCsmCallbackAsymPrivateKeyExtract(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyExtract"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPrivateKeyExtract"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmAsymPrivateKeyUpdate)){
				return false
			}
			this.target == (object as CsmAsymPrivateKeyUpdate).target
		}
	
		def BigInteger getCsmAsymPrivateKeyUpdateMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdateMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymPrivateKeyUpdateMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyUpdateMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmAsymPrivateKeyUpdateConfig> getCsmAsymPrivateKeyUpdateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPrivateKeyUpdateConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPrivateKeyUpdateConfig, GContainer>(filteredContainers, typeof(CsmAsymPrivateKeyUpdateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPrivateKeyUpdate.CsmAsymPrivateKeyUpdateConfig csmAsymPrivateKeyUpdateConfig) {
					csmAsymPrivateKeyUpdateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyUpdateConfig"))
					super.delegateAdd(csmAsymPrivateKeyUpdateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPrivateKeyUpdate.CsmAsymPrivateKeyUpdateConfig csmAsymPrivateKeyUpdateConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAsymPrivateKeyUpdateConfig)){
					return false
				}
				this.target == (object as CsmAsymPrivateKeyUpdateConfig).target
			}
		
			def String getCsmAsymPrivateKeyUpdateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdateInitConfiguration"].getStringValue()
			}
			
			def void setCsmAsymPrivateKeyUpdateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyUpdateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmAsymPrivateKeyUpdatePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdatePrimitiveName"].getStringValue()
			}
			
			def void setCsmAsymPrivateKeyUpdatePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdatePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyUpdatePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCallbackAsymPrivateKeyUpdate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyUpdate"].getStringValue()
			}
			
			def void setCsmCallbackAsymPrivateKeyUpdate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyUpdate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPrivateKeyUpdate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmAsymPrivateKeyWrapAsym)){
				return false
			}
			this.target == (object as CsmAsymPrivateKeyWrapAsym).target
		}
	
		def BigInteger getCsmAsymPrivateKeyWrapAsymMaxPrivKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPrivKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymPrivateKeyWrapAsymMaxPrivKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPrivKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPrivKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCsmAsymPrivateKeyWrapAsymMaxPubKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPubKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymPrivateKeyWrapAsymMaxPubKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPubKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPubKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmAsymPrivateKeyWrapAsymConfig> getCsmAsymPrivateKeyWrapAsymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPrivateKeyWrapAsymConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPrivateKeyWrapAsymConfig, GContainer>(filteredContainers, typeof(CsmAsymPrivateKeyWrapAsymConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPrivateKeyWrapAsym.CsmAsymPrivateKeyWrapAsymConfig csmAsymPrivateKeyWrapAsymConfig) {
					csmAsymPrivateKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyWrapAsymConfig"))
					super.delegateAdd(csmAsymPrivateKeyWrapAsymConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPrivateKeyWrapAsym.CsmAsymPrivateKeyWrapAsymConfig csmAsymPrivateKeyWrapAsymConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAsymPrivateKeyWrapAsymConfig)){
					return false
				}
				this.target == (object as CsmAsymPrivateKeyWrapAsymConfig).target
			}
		
			def String getCsmAsymPrivateKeyWrapAsymInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymInitConfiguration"].getStringValue()
			}
			
			def void setCsmAsymPrivateKeyWrapAsymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapAsymInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmAsymPrivateKeyWrapAsymPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymPrimitiveName"].getStringValue()
			}
			
			def void setCsmAsymPrivateKeyWrapAsymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapAsymPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCallbackAsymPrivateKeyWrapAsym(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyWrapAsym"].getStringValue()
			}
			
			def void setCsmCallbackAsymPrivateKeyWrapAsym(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyWrapAsym"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPrivateKeyWrapAsym"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmAsymPrivateKeyWrapSym)){
				return false
			}
			this.target == (object as CsmAsymPrivateKeyWrapSym).target
		}
	
		def BigInteger getCsmAsymPrivateKeyWrapSymMaxPrivKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymMaxPrivKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymPrivateKeyWrapSymMaxPrivKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymMaxPrivKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapSymMaxPrivKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCsmAsymPrivateKeyWrapSymMaxSymKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymMaxSymKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymPrivateKeyWrapSymMaxSymKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapSymMaxSymKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmAsymPrivateKeyWrapSymConfig> getCsmAsymPrivateKeyWrapSymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPrivateKeyWrapSymConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPrivateKeyWrapSymConfig, GContainer>(filteredContainers, typeof(CsmAsymPrivateKeyWrapSymConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPrivateKeyWrapSym.CsmAsymPrivateKeyWrapSymConfig csmAsymPrivateKeyWrapSymConfig) {
					csmAsymPrivateKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyWrapSymConfig"))
					super.delegateAdd(csmAsymPrivateKeyWrapSymConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPrivateKeyWrapSym.CsmAsymPrivateKeyWrapSymConfig csmAsymPrivateKeyWrapSymConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAsymPrivateKeyWrapSymConfig)){
					return false
				}
				this.target == (object as CsmAsymPrivateKeyWrapSymConfig).target
			}
		
			def String getCsmAsymPrivateKeyWrapSymInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymInitConfiguration"].getStringValue()
			}
			
			def void setCsmAsymPrivateKeyWrapSymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapSymInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmAsymPrivateKeyWrapSymPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymPrimitiveName"].getStringValue()
			}
			
			def void setCsmAsymPrivateKeyWrapSymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapSymPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCallbackAsymPrivateKeyWrapSym(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyWrapSym"].getStringValue()
			}
			
			def void setCsmCallbackAsymPrivateKeyWrapSym(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyWrapSym"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPrivateKeyWrapSym"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmAsymPublicKeyExtract)){
				return false
			}
			this.target == (object as CsmAsymPublicKeyExtract).target
		}
	
		def BigInteger getCsmAsymPublicKeyExtractMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymPublicKeyExtractMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyExtractMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmAsymPublicKeyExtractConfig> getCsmAsymPublicKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPublicKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPublicKeyExtractConfig, GContainer>(filteredContainers, typeof(CsmAsymPublicKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPublicKeyExtract.CsmAsymPublicKeyExtractConfig csmAsymPublicKeyExtractConfig) {
					csmAsymPublicKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPublicKeyExtractConfig"))
					super.delegateAdd(csmAsymPublicKeyExtractConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPublicKeyExtract.CsmAsymPublicKeyExtractConfig csmAsymPublicKeyExtractConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAsymPublicKeyExtractConfig)){
					return false
				}
				this.target == (object as CsmAsymPublicKeyExtractConfig).target
			}
		
			def String getCsmAsymPublicKeyExtractInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractInitConfiguration"].getStringValue()
			}
			
			def void setCsmAsymPublicKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyExtractInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmAsymPublicKeyExtractPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractPrimitiveName"].getStringValue()
			}
			
			def void setCsmAsymPublicKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyExtractPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCallbackAsymPublicKeyExtract(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPublicKeyExtract"].getStringValue()
			}
			
			def void setCsmCallbackAsymPublicKeyExtract(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPublicKeyExtract"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPublicKeyExtract"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmAsymPublicKeyUpdate)){
				return false
			}
			this.target == (object as CsmAsymPublicKeyUpdate).target
		}
	
		def BigInteger getCsmAsymPublicKeyUpdateMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdateMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmAsymPublicKeyUpdateMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyUpdateMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmAsymPublicKeyUpdateConfig> getCsmAsymPublicKeyUpdateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPublicKeyUpdateConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPublicKeyUpdateConfig, GContainer>(filteredContainers, typeof(CsmAsymPublicKeyUpdateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPublicKeyUpdate.CsmAsymPublicKeyUpdateConfig csmAsymPublicKeyUpdateConfig) {
					csmAsymPublicKeyUpdateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPublicKeyUpdateConfig"))
					super.delegateAdd(csmAsymPublicKeyUpdateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmAsymPublicKeyUpdate.CsmAsymPublicKeyUpdateConfig csmAsymPublicKeyUpdateConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAsymPublicKeyUpdateConfig)){
					return false
				}
				this.target == (object as CsmAsymPublicKeyUpdateConfig).target
			}
		
			def String getCsmAsymPublicKeyUpdateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdateInitConfiguration"].getStringValue()
			}
			
			def void setCsmAsymPublicKeyUpdateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyUpdateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmAsymPublicKeyUpdatePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdatePrimitiveName"].getStringValue()
			}
			
			def void setCsmAsymPublicKeyUpdatePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdatePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyUpdatePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCallbackAsymPublicKeyUpdate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPublicKeyUpdate"].getStringValue()
			}
			
			def void setCsmCallbackAsymPublicKeyUpdate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPublicKeyUpdate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPublicKeyUpdate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmChecksum)){
				return false
			}
			this.target == (object as CsmChecksum).target
		}
	
		
		
		def List<CsmChecksumConfig> getCsmChecksumConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmChecksumConfig")
				}
			}
			return new BasicWrappingEList<CsmChecksumConfig, GContainer>(filteredContainers, typeof(CsmChecksumConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmChecksum.CsmChecksumConfig csmChecksumConfig) {
					csmChecksumConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmChecksumConfig"))
					super.delegateAdd(csmChecksumConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmChecksum.CsmChecksumConfig csmChecksumConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmChecksumConfig)){
					return false
				}
				this.target == (object as CsmChecksumConfig).target
			}
		
			def String getCsmCallbackChecksum(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackChecksum"].getStringValue()
			}
			
			def void setCsmCallbackChecksum(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackChecksum"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackChecksum"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmChecksumInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmChecksumInitConfiguration"].getStringValue()
			}
			
			def void setCsmChecksumInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmChecksumInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmChecksumInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmChecksumPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmChecksumPrimitiveName"].getStringValue()
			}
			
			def void setCsmChecksumPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmChecksumPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmChecksumPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmCompression)){
				return false
			}
			this.target == (object as CsmCompression).target
		}
	
		
		
		def List<CsmCompressionConfig> getCsmCompressionConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmCompressionConfig")
				}
			}
			return new BasicWrappingEList<CsmCompressionConfig, GContainer>(filteredContainers, typeof(CsmCompressionConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmCompression.CsmCompressionConfig csmCompressionConfig) {
					csmCompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmCompressionConfig"))
					super.delegateAdd(csmCompressionConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmCompression.CsmCompressionConfig csmCompressionConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmCompressionConfig)){
					return false
				}
				this.target == (object as CsmCompressionConfig).target
			}
		
			def String getCsmCallbackCompression(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackCompression"].getStringValue()
			}
			
			def void setCsmCallbackCompression(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackCompression"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackCompression"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCompressionInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCompressionInitConfiguration"].getStringValue()
			}
			
			def void setCsmCompressionInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCompressionInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCompressionInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmCompressionPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCompressionPrimitiveName"].getStringValue()
			}
			
			def void setCsmCompressionPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCompressionPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCompressionPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmDecompression)){
				return false
			}
			this.target == (object as CsmDecompression).target
		}
	
		
		
		def List<CsmDecompressionConfig> getCsmDecompressionConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmDecompressionConfig")
				}
			}
			return new BasicWrappingEList<CsmDecompressionConfig, GContainer>(filteredContainers, typeof(CsmDecompressionConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmDecompression.CsmDecompressionConfig csmDecompressionConfig) {
					csmDecompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmDecompressionConfig"))
					super.delegateAdd(csmDecompressionConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmDecompression.CsmDecompressionConfig csmDecompressionConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmDecompressionConfig)){
					return false
				}
				this.target == (object as CsmDecompressionConfig).target
			}
		
			def String getCsmCallbackDecompression(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackDecompression"].getStringValue()
			}
			
			def void setCsmCallbackDecompression(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackDecompression"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackDecompression"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmDecompressionInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecompressionInitConfiguration"].getStringValue()
			}
			
			def void setCsmDecompressionInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecompressionInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecompressionInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmDecompressionPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecompressionPrimitiveName"].getStringValue()
			}
			
			def void setCsmDecompressionPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecompressionPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecompressionPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmGeneral)){
				return false
			}
			this.target == (object as CsmGeneral).target
		}
	
		def Boolean getCsmDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDevErrorDetect"].getBooleanValue()
		}
		
		def void setCsmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getCsmMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setCsmMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getCsmMaxAlignScalarType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMaxAlignScalarType"].getStringValue()
		}
		
		def void setCsmMaxAlignScalarType(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMaxAlignScalarType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMaxAlignScalarType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCsmUseSyncJobProcessing(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmUseSyncJobProcessing"].getBooleanValue()
		}
		
		def void setCsmUseSyncJobProcessing(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmUseSyncJobProcessing"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmUseSyncJobProcessing"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCsmVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmVersionInfoApi"].getBooleanValue()
		}
		
		def void setCsmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmHash)){
				return false
			}
			this.target == (object as CsmHash).target
		}
	
		
		
		def List<CsmHashConfig> getCsmHashConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmHashConfig")
				}
			}
			return new BasicWrappingEList<CsmHashConfig, GContainer>(filteredContainers, typeof(CsmHashConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmHash.CsmHashConfig csmHashConfig) {
					csmHashConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmHashConfig"))
					super.delegateAdd(csmHashConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmHash.CsmHashConfig csmHashConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmHashConfig)){
					return false
				}
				this.target == (object as CsmHashConfig).target
			}
		
			def String getCsmCallbackHash(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackHash"].getStringValue()
			}
			
			def void setCsmCallbackHash(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackHash"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackHash"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmHashInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashInitConfiguration"].getStringValue()
			}
			
			def void setCsmHashInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmHashPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashPrimitiveName"].getStringValue()
			}
			
			def void setCsmHashPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmKeyDerive)){
				return false
			}
			this.target == (object as CsmKeyDerive).target
		}
	
		def BigInteger getCsmKeyDeriveMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmKeyDeriveMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmKeyDeriveConfig> getCsmKeyDeriveConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyDeriveConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyDeriveConfig, GContainer>(filteredContainers, typeof(CsmKeyDeriveConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmKeyDerive.CsmKeyDeriveConfig csmKeyDeriveConfig) {
					csmKeyDeriveConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyDeriveConfig"))
					super.delegateAdd(csmKeyDeriveConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmKeyDerive.CsmKeyDeriveConfig csmKeyDeriveConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmKeyDeriveConfig)){
					return false
				}
				this.target == (object as CsmKeyDeriveConfig).target
			}
		
			def String getCsmCallbackKeyDerive(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyDerive"].getStringValue()
			}
			
			def void setCsmCallbackKeyDerive(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyDerive"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyDerive"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyDeriveInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveInitConfiguration"].getStringValue()
			}
			
			def void setCsmKeyDeriveInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyDerivePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDerivePrimitiveName"].getStringValue()
			}
			
			def void setCsmKeyDerivePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDerivePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDerivePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmKeyDeriveSymKey)){
				return false
			}
			this.target == (object as CsmKeyDeriveSymKey).target
		}
	
		def BigInteger getCsmKeyDeriveSymKeyMaxSymKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyMaxSymKeySize"].getBigIntegerValue()
		}
		
		def void setCsmKeyDeriveSymKeyMaxSymKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveSymKeyMaxSymKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmKeyDeriveSymKeyConfig> getCsmKeyDeriveSymKeyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyDeriveSymKeyConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyDeriveSymKeyConfig, GContainer>(filteredContainers, typeof(CsmKeyDeriveSymKeyConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmKeyDeriveSymKey.CsmKeyDeriveSymKeyConfig csmKeyDeriveSymKeyConfig) {
					csmKeyDeriveSymKeyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyDeriveSymKeyConfig"))
					super.delegateAdd(csmKeyDeriveSymKeyConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmKeyDeriveSymKey.CsmKeyDeriveSymKeyConfig csmKeyDeriveSymKeyConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmKeyDeriveSymKeyConfig)){
					return false
				}
				this.target == (object as CsmKeyDeriveSymKeyConfig).target
			}
		
			def String getCsmCallbackKeyDeriveSymKey(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyDeriveSymKey"].getStringValue()
			}
			
			def void setCsmCallbackKeyDeriveSymKey(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyDeriveSymKey"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyDeriveSymKey"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyDeriveSymKeyInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyInitConfiguration"].getStringValue()
			}
			
			def void setCsmKeyDeriveSymKeyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveSymKeyInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyDeriveSymKeyPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyPrimitiveName"].getStringValue()
			}
			
			def void setCsmKeyDeriveSymKeyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveSymKeyPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmKeyExchangeCalcPubVal)){
				return false
			}
			this.target == (object as CsmKeyExchangeCalcPubVal).target
		}
	
		def BigInteger getCsmKeyExchangeCalcPubValMaxBaseTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValMaxBaseTypeSize"].getBigIntegerValue()
		}
		
		def void setCsmKeyExchangeCalcPubValMaxBaseTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValMaxBaseTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcPubValMaxBaseTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCsmKeyExchangeCalcPubValMaxPrivateTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValMaxPrivateTypeSize"].getBigIntegerValue()
		}
		
		def void setCsmKeyExchangeCalcPubValMaxPrivateTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValMaxPrivateTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcPubValMaxPrivateTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmKeyExchangeCalcPubValConfig> getCsmKeyExchangeCalcPubValConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyExchangeCalcPubValConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyExchangeCalcPubValConfig, GContainer>(filteredContainers, typeof(CsmKeyExchangeCalcPubValConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmKeyExchangeCalcPubVal.CsmKeyExchangeCalcPubValConfig csmKeyExchangeCalcPubValConfig) {
					csmKeyExchangeCalcPubValConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyExchangeCalcPubValConfig"))
					super.delegateAdd(csmKeyExchangeCalcPubValConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmKeyExchangeCalcPubVal.CsmKeyExchangeCalcPubValConfig csmKeyExchangeCalcPubValConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmKeyExchangeCalcPubValConfig)){
					return false
				}
				this.target == (object as CsmKeyExchangeCalcPubValConfig).target
			}
		
			def String getCsmCallbackKeyExchangeCalcPubVal(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcPubVal"].getStringValue()
			}
			
			def void setCsmCallbackKeyExchangeCalcPubVal(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcPubVal"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyExchangeCalcPubVal"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyExchangeCalcPubValInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValInitConfiguration"].getStringValue()
			}
			
			def void setCsmKeyExchangeCalcPubValInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcPubValInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyExchangeCalcPubValPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValPrimitiveName"].getStringValue()
			}
			
			def void setCsmKeyExchangeCalcPubValPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcPubValPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmKeyExchangeCalcSecret)){
				return false
			}
			this.target == (object as CsmKeyExchangeCalcSecret).target
		}
	
		def BigInteger getCsmKeyExchangeCalcSecretMaxBaseTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretMaxBaseTypeSize"].getBigIntegerValue()
		}
		
		def void setCsmKeyExchangeCalcSecretMaxBaseTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretMaxBaseTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSecretMaxBaseTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCsmKeyExchangeCalcSecretMaxPrivateTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretMaxPrivateTypeSize"].getBigIntegerValue()
		}
		
		def void setCsmKeyExchangeCalcSecretMaxPrivateTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretMaxPrivateTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSecretMaxPrivateTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmKeyExchangeCalcSecretConfig> getCsmKeyExchangeCalcSecretConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyExchangeCalcSecretConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyExchangeCalcSecretConfig, GContainer>(filteredContainers, typeof(CsmKeyExchangeCalcSecretConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmKeyExchangeCalcSecret.CsmKeyExchangeCalcSecretConfig csmKeyExchangeCalcSecretConfig) {
					csmKeyExchangeCalcSecretConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyExchangeCalcSecretConfig"))
					super.delegateAdd(csmKeyExchangeCalcSecretConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmKeyExchangeCalcSecret.CsmKeyExchangeCalcSecretConfig csmKeyExchangeCalcSecretConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmKeyExchangeCalcSecretConfig)){
					return false
				}
				this.target == (object as CsmKeyExchangeCalcSecretConfig).target
			}
		
			def String getCsmCallbackKeyExchangeCalcSecret(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcSecret"].getStringValue()
			}
			
			def void setCsmCallbackKeyExchangeCalcSecret(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcSecret"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyExchangeCalcSecret"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyExchangeCalcSecretInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretInitConfiguration"].getStringValue()
			}
			
			def void setCsmKeyExchangeCalcSecretInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSecretInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyExchangeCalcSecretPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretPrimitiveName"].getStringValue()
			}
			
			def void setCsmKeyExchangeCalcSecretPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSecretPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmKeyExchangeCalcSymKey)){
				return false
			}
			this.target == (object as CsmKeyExchangeCalcSymKey).target
		}
	
		def BigInteger getCsmKeyExchangeCalcSymKeyMaxBaseTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxBaseTypeSize"].getBigIntegerValue()
		}
		
		def void setCsmKeyExchangeCalcSymKeyMaxBaseTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxBaseTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyMaxBaseTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCsmKeyExchangeCalcSymKeyMaxPrivateTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxPrivateTypeSize"].getBigIntegerValue()
		}
		
		def void setCsmKeyExchangeCalcSymKeyMaxPrivateTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxPrivateTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyMaxPrivateTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCsmKeyExchangeCalcSymKeyMaxSymKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxSymKeySize"].getBigIntegerValue()
		}
		
		def void setCsmKeyExchangeCalcSymKeyMaxSymKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyMaxSymKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmKeyExchangeCalcSymKeyConfig> getCsmKeyExchangeCalcSymKeyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyExchangeCalcSymKeyConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyExchangeCalcSymKeyConfig, GContainer>(filteredContainers, typeof(CsmKeyExchangeCalcSymKeyConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmKeyExchangeCalcSymKey.CsmKeyExchangeCalcSymKeyConfig csmKeyExchangeCalcSymKeyConfig) {
					csmKeyExchangeCalcSymKeyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyExchangeCalcSymKeyConfig"))
					super.delegateAdd(csmKeyExchangeCalcSymKeyConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmKeyExchangeCalcSymKey.CsmKeyExchangeCalcSymKeyConfig csmKeyExchangeCalcSymKeyConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmKeyExchangeCalcSymKeyConfig)){
					return false
				}
				this.target == (object as CsmKeyExchangeCalcSymKeyConfig).target
			}
		
			def String getCsmCallbackKeyExchangeCalcSymKey(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcSymKey"].getStringValue()
			}
			
			def void setCsmCallbackKeyExchangeCalcSymKey(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcSymKey"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyExchangeCalcSymKey"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyExchangeCalcSymKeyInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyInitConfiguration"].getStringValue()
			}
			
			def void setCsmKeyExchangeCalcSymKeyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmKeyExchangeCalcSymKeyPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyPrimitiveName"].getStringValue()
			}
			
			def void setCsmKeyExchangeCalcSymKeyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmMacGenerate)){
				return false
			}
			this.target == (object as CsmMacGenerate).target
		}
	
		def BigInteger getCsmMacGenerateMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmMacGenerateMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmMacGenerateConfig> getCsmMacGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmMacGenerateConfig")
				}
			}
			return new BasicWrappingEList<CsmMacGenerateConfig, GContainer>(filteredContainers, typeof(CsmMacGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmMacGenerate.CsmMacGenerateConfig csmMacGenerateConfig) {
					csmMacGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmMacGenerateConfig"))
					super.delegateAdd(csmMacGenerateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmMacGenerate.CsmMacGenerateConfig csmMacGenerateConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmMacGenerateConfig)){
					return false
				}
				this.target == (object as CsmMacGenerateConfig).target
			}
		
			def String getCsmCallbackMacGenerate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackMacGenerate"].getStringValue()
			}
			
			def void setCsmCallbackMacGenerate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackMacGenerate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackMacGenerate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmMacGenerateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateInitConfiguration"].getStringValue()
			}
			
			def void setCsmMacGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmMacGeneratePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGeneratePrimitiveName"].getStringValue()
			}
			
			def void setCsmMacGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGeneratePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmMacVerify)){
				return false
			}
			this.target == (object as CsmMacVerify).target
		}
	
		def BigInteger getCsmMacVerifyMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmMacVerifyMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmMacVerifyConfig> getCsmMacVerifyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmMacVerifyConfig")
				}
			}
			return new BasicWrappingEList<CsmMacVerifyConfig, GContainer>(filteredContainers, typeof(CsmMacVerifyConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmMacVerify.CsmMacVerifyConfig csmMacVerifyConfig) {
					csmMacVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmMacVerifyConfig"))
					super.delegateAdd(csmMacVerifyConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmMacVerify.CsmMacVerifyConfig csmMacVerifyConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmMacVerifyConfig)){
					return false
				}
				this.target == (object as CsmMacVerifyConfig).target
			}
		
			def String getCsmCallbackMacVerify(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackMacVerify"].getStringValue()
			}
			
			def void setCsmCallbackMacVerify(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackMacVerify"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackMacVerify"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmMacVerifyInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyInitConfiguration"].getStringValue()
			}
			
			def void setCsmMacVerifyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmMacVerifyPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyPrimitiveName"].getStringValue()
			}
			
			def void setCsmMacVerifyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmRandomGenerate)){
				return false
			}
			this.target == (object as CsmRandomGenerate).target
		}
	
		
		
		def List<CsmRandomGenerateConfig> getCsmRandomGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmRandomGenerateConfig")
				}
			}
			return new BasicWrappingEList<CsmRandomGenerateConfig, GContainer>(filteredContainers, typeof(CsmRandomGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmRandomGenerate.CsmRandomGenerateConfig csmRandomGenerateConfig) {
					csmRandomGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmRandomGenerateConfig"))
					super.delegateAdd(csmRandomGenerateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmRandomGenerate.CsmRandomGenerateConfig csmRandomGenerateConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmRandomGenerateConfig)){
					return false
				}
				this.target == (object as CsmRandomGenerateConfig).target
			}
		
			def String getCsmCallbackRandomGenerate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackRandomGenerate"].getStringValue()
			}
			
			def void setCsmCallbackRandomGenerate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackRandomGenerate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackRandomGenerate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmRandomGenerateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateInitConfiguration"].getStringValue()
			}
			
			def void setCsmRandomGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmRandomGeneratePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGeneratePrimitiveName"].getStringValue()
			}
			
			def void setCsmRandomGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGeneratePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmRandomSeed)){
				return false
			}
			this.target == (object as CsmRandomSeed).target
		}
	
		
		
		def List<CsmRandomSeedConfig> getCsmRandomSeedConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmRandomSeedConfig")
				}
			}
			return new BasicWrappingEList<CsmRandomSeedConfig, GContainer>(filteredContainers, typeof(CsmRandomSeedConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmRandomSeed.CsmRandomSeedConfig csmRandomSeedConfig) {
					csmRandomSeedConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmRandomSeedConfig"))
					super.delegateAdd(csmRandomSeedConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmRandomSeed.CsmRandomSeedConfig csmRandomSeedConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmRandomSeedConfig)){
					return false
				}
				this.target == (object as CsmRandomSeedConfig).target
			}
		
			def String getCsmCallbackRandomSeed(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackRandomSeed"].getStringValue()
			}
			
			def void setCsmCallbackRandomSeed(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackRandomSeed"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackRandomSeed"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmRandomSeedInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomSeedInitConfiguration"].getStringValue()
			}
			
			def void setCsmRandomSeedInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomSeedInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomSeedInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmRandomSeedPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomSeedPrimitiveName"].getStringValue()
			}
			
			def void setCsmRandomSeedPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomSeedPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomSeedPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSignatureGenerate)){
				return false
			}
			this.target == (object as CsmSignatureGenerate).target
		}
	
		def BigInteger getCsmSignatureGenerateMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSignatureGenerateMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSignatureGenerateConfig> getCsmSignatureGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSignatureGenerateConfig")
				}
			}
			return new BasicWrappingEList<CsmSignatureGenerateConfig, GContainer>(filteredContainers, typeof(CsmSignatureGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSignatureGenerate.CsmSignatureGenerateConfig csmSignatureGenerateConfig) {
					csmSignatureGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSignatureGenerateConfig"))
					super.delegateAdd(csmSignatureGenerateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSignatureGenerate.CsmSignatureGenerateConfig csmSignatureGenerateConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSignatureGenerateConfig)){
					return false
				}
				this.target == (object as CsmSignatureGenerateConfig).target
			}
		
			def String getCsmCallbackSignatureGenerate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSignatureGenerate"].getStringValue()
			}
			
			def void setCsmCallbackSignatureGenerate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSignatureGenerate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSignatureGenerate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSignatureGenerateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateInitConfiguration"].getStringValue()
			}
			
			def void setCsmSignatureGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSignatureGeneratePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGeneratePrimitiveName"].getStringValue()
			}
			
			def void setCsmSignatureGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGeneratePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSignatureVerify)){
				return false
			}
			this.target == (object as CsmSignatureVerify).target
		}
	
		def BigInteger getCsmSignatureVerifyMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSignatureVerifyMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSignatureVerifyConfig> getCsmSignatureVerifyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSignatureVerifyConfig")
				}
			}
			return new BasicWrappingEList<CsmSignatureVerifyConfig, GContainer>(filteredContainers, typeof(CsmSignatureVerifyConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSignatureVerify.CsmSignatureVerifyConfig csmSignatureVerifyConfig) {
					csmSignatureVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSignatureVerifyConfig"))
					super.delegateAdd(csmSignatureVerifyConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSignatureVerify.CsmSignatureVerifyConfig csmSignatureVerifyConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSignatureVerifyConfig)){
					return false
				}
				this.target == (object as CsmSignatureVerifyConfig).target
			}
		
			def String getCsmCallbackSignatureVerify(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSignatureVerify"].getStringValue()
			}
			
			def void setCsmCallbackSignatureVerify(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSignatureVerify"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSignatureVerify"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSignatureVerifyInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyInitConfiguration"].getStringValue()
			}
			
			def void setCsmSignatureVerifyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSignatureVerifyPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyPrimitiveName"].getStringValue()
			}
			
			def void setCsmSignatureVerifyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSymBlockDecrypt)){
				return false
			}
			this.target == (object as CsmSymBlockDecrypt).target
		}
	
		def BigInteger getCsmSymBlockDecryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymBlockDecryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockDecryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSymBlockDecryptConfig> getCsmSymBlockDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymBlockDecryptConfig")
				}
			}
			return new BasicWrappingEList<CsmSymBlockDecryptConfig, GContainer>(filteredContainers, typeof(CsmSymBlockDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSymBlockDecrypt.CsmSymBlockDecryptConfig csmSymBlockDecryptConfig) {
					csmSymBlockDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymBlockDecryptConfig"))
					super.delegateAdd(csmSymBlockDecryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSymBlockDecrypt.CsmSymBlockDecryptConfig csmSymBlockDecryptConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSymBlockDecryptConfig)){
					return false
				}
				this.target == (object as CsmSymBlockDecryptConfig).target
			}
		
			def String getCsmCallbackSymBlockDecrypt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymBlockDecrypt"].getStringValue()
			}
			
			def void setCsmCallbackSymBlockDecrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymBlockDecrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymBlockDecrypt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymBlockDecryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptInitConfiguration"].getStringValue()
			}
			
			def void setCsmSymBlockDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockDecryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymBlockDecryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptPrimitiveName"].getStringValue()
			}
			
			def void setCsmSymBlockDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockDecryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSymBlockEncrypt)){
				return false
			}
			this.target == (object as CsmSymBlockEncrypt).target
		}
	
		def BigInteger getCsmSymBlockEncryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymBlockEncryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockEncryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSymBlockEncryptConfig> getCsmSymBlockEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymBlockEncryptConfig")
				}
			}
			return new BasicWrappingEList<CsmSymBlockEncryptConfig, GContainer>(filteredContainers, typeof(CsmSymBlockEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSymBlockEncrypt.CsmSymBlockEncryptConfig csmSymBlockEncryptConfig) {
					csmSymBlockEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymBlockEncryptConfig"))
					super.delegateAdd(csmSymBlockEncryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSymBlockEncrypt.CsmSymBlockEncryptConfig csmSymBlockEncryptConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSymBlockEncryptConfig)){
					return false
				}
				this.target == (object as CsmSymBlockEncryptConfig).target
			}
		
			def String getCsmCallbackSymBlockEncrypt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymBlockEncrypt"].getStringValue()
			}
			
			def void setCsmCallbackSymBlockEncrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymBlockEncrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymBlockEncrypt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymBlockEncryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptInitConfiguration"].getStringValue()
			}
			
			def void setCsmSymBlockEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockEncryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymBlockEncryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptPrimitiveName"].getStringValue()
			}
			
			def void setCsmSymBlockEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockEncryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSymDecrypt)){
				return false
			}
			this.target == (object as CsmSymDecrypt).target
		}
	
		def BigInteger getCsmSymDecryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymDecryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymDecryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSymDecryptConfig> getCsmSymDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymDecryptConfig")
				}
			}
			return new BasicWrappingEList<CsmSymDecryptConfig, GContainer>(filteredContainers, typeof(CsmSymDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSymDecrypt.CsmSymDecryptConfig csmSymDecryptConfig) {
					csmSymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymDecryptConfig"))
					super.delegateAdd(csmSymDecryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSymDecrypt.CsmSymDecryptConfig csmSymDecryptConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSymDecryptConfig)){
					return false
				}
				this.target == (object as CsmSymDecryptConfig).target
			}
		
			def String getCsmCallbackSymDecrypt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymDecrypt"].getStringValue()
			}
			
			def void setCsmCallbackSymDecrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymDecrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymDecrypt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymDecryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptInitConfiguration"].getStringValue()
			}
			
			def void setCsmSymDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymDecryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymDecryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptPrimitiveName"].getStringValue()
			}
			
			def void setCsmSymDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymDecryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSymEncrypt)){
				return false
			}
			this.target == (object as CsmSymEncrypt).target
		}
	
		def BigInteger getCsmSymEncryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymEncryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymEncryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSymEncryptConfig> getCsmSymEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymEncryptConfig")
				}
			}
			return new BasicWrappingEList<CsmSymEncryptConfig, GContainer>(filteredContainers, typeof(CsmSymEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSymEncrypt.CsmSymEncryptConfig csmSymEncryptConfig) {
					csmSymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymEncryptConfig"))
					super.delegateAdd(csmSymEncryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSymEncrypt.CsmSymEncryptConfig csmSymEncryptConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSymEncryptConfig)){
					return false
				}
				this.target == (object as CsmSymEncryptConfig).target
			}
		
			def String getCsmCallbackSymEncrypt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymEncrypt"].getStringValue()
			}
			
			def void setCsmCallbackSymEncrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymEncrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymEncrypt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymEncryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptInitConfiguration"].getStringValue()
			}
			
			def void setCsmSymEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymEncryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymEncryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptPrimitiveName"].getStringValue()
			}
			
			def void setCsmSymEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymEncryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSymKeyExtract)){
				return false
			}
			this.target == (object as CsmSymKeyExtract).target
		}
	
		def BigInteger getCsmSymKeyExtractMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymKeyExtractMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyExtractMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSymKeyExtractConfig> getCsmSymKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyExtractConfig, GContainer>(filteredContainers, typeof(CsmSymKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyExtract.CsmSymKeyExtractConfig csmSymKeyExtractConfig) {
					csmSymKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyExtractConfig"))
					super.delegateAdd(csmSymKeyExtractConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyExtract.CsmSymKeyExtractConfig csmSymKeyExtractConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSymKeyExtractConfig)){
					return false
				}
				this.target == (object as CsmSymKeyExtractConfig).target
			}
		
			def String getCsmCallbackSymKeyExtract(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyExtract"].getStringValue()
			}
			
			def void setCsmCallbackSymKeyExtract(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyExtract"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyExtract"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyExtractInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractInitConfiguration"].getStringValue()
			}
			
			def void setCsmSymKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyExtractInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyExtractPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractPrimitiveName"].getStringValue()
			}
			
			def void setCsmSymKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyExtractPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSymKeyGenerate)){
				return false
			}
			this.target == (object as CsmSymKeyGenerate).target
		}
	
		def BigInteger getCsmSymKeyGenerateMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGenerateMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymKeyGenerateMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGenerateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyGenerateMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSymKeyGenerateConfig> getCsmSymKeyGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyGenerateConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyGenerateConfig, GContainer>(filteredContainers, typeof(CsmSymKeyGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyGenerate.CsmSymKeyGenerateConfig csmSymKeyGenerateConfig) {
					csmSymKeyGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyGenerateConfig"))
					super.delegateAdd(csmSymKeyGenerateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyGenerate.CsmSymKeyGenerateConfig csmSymKeyGenerateConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSymKeyGenerateConfig)){
					return false
				}
				this.target == (object as CsmSymKeyGenerateConfig).target
			}
		
			def String getCsmCallbackSymKeyGenerate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyGenerate"].getStringValue()
			}
			
			def void setCsmCallbackSymKeyGenerate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyGenerate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyGenerate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyGenerateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGenerateInitConfiguration"].getStringValue()
			}
			
			def void setCsmSymKeyGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyGenerateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyGeneratePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGeneratePrimitiveName"].getStringValue()
			}
			
			def void setCsmSymKeyGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyGeneratePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSymKeyUpdate)){
				return false
			}
			this.target == (object as CsmSymKeyUpdate).target
		}
	
		def BigInteger getCsmSymKeyUpdateMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdateMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymKeyUpdateMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyUpdateMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSymKeyUpdateConfig> getCsmSymKeyUpdateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyUpdateConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyUpdateConfig, GContainer>(filteredContainers, typeof(CsmSymKeyUpdateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyUpdate.CsmSymKeyUpdateConfig csmSymKeyUpdateConfig) {
					csmSymKeyUpdateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyUpdateConfig"))
					super.delegateAdd(csmSymKeyUpdateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyUpdate.CsmSymKeyUpdateConfig csmSymKeyUpdateConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSymKeyUpdateConfig)){
					return false
				}
				this.target == (object as CsmSymKeyUpdateConfig).target
			}
		
			def String getCsmCallbackSymKeyUpdate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyUpdate"].getStringValue()
			}
			
			def void setCsmCallbackSymKeyUpdate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyUpdate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyUpdate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyUpdateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdateInitConfiguration"].getStringValue()
			}
			
			def void setCsmSymKeyUpdateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyUpdateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyUpdatePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdatePrimitiveName"].getStringValue()
			}
			
			def void setCsmSymKeyUpdatePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdatePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyUpdatePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSymKeyWrapAsym)){
				return false
			}
			this.target == (object as CsmSymKeyWrapAsym).target
		}
	
		def BigInteger getCsmSymKeyWrapAsymMaxPubKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymMaxPubKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymKeyWrapAsymMaxPubKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymMaxPubKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapAsymMaxPubKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCsmSymKeyWrapAsymMaxSymKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymMaxSymKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymKeyWrapAsymMaxSymKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapAsymMaxSymKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSymKeyWrapAsymConfig> getCsmSymKeyWrapAsymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyWrapAsymConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyWrapAsymConfig, GContainer>(filteredContainers, typeof(CsmSymKeyWrapAsymConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyWrapAsym.CsmSymKeyWrapAsymConfig csmSymKeyWrapAsymConfig) {
					csmSymKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyWrapAsymConfig"))
					super.delegateAdd(csmSymKeyWrapAsymConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyWrapAsym.CsmSymKeyWrapAsymConfig csmSymKeyWrapAsymConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSymKeyWrapAsymConfig)){
					return false
				}
				this.target == (object as CsmSymKeyWrapAsymConfig).target
			}
		
			def String getCsmCallbackSymKeyWrapAsym(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyWrapAsym"].getStringValue()
			}
			
			def void setCsmCallbackSymKeyWrapAsym(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyWrapAsym"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyWrapAsym"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyWrapAsymInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymInitConfiguration"].getStringValue()
			}
			
			def void setCsmSymKeyWrapAsymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapAsymInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyWrapAsymPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymPrimitiveName"].getStringValue()
			}
			
			def void setCsmSymKeyWrapAsymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapAsymPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmSymKeyWrapSym)){
				return false
			}
			this.target == (object as CsmSymKeyWrapSym).target
		}
	
		def BigInteger getCsmSymKeyWrapSymMaxSymKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymMaxSymKeySize"].getBigIntegerValue()
		}
		
		def void setCsmSymKeyWrapSymMaxSymKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapSymMaxSymKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CsmSymKeyWrapSymConfig> getCsmSymKeyWrapSymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyWrapSymConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyWrapSymConfig, GContainer>(filteredContainers, typeof(CsmSymKeyWrapSymConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyWrapSym.CsmSymKeyWrapSymConfig csmSymKeyWrapSymConfig) {
					csmSymKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyWrapSymConfig"))
					super.delegateAdd(csmSymKeyWrapSymConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Csm.CsmSymKeyWrapSym.CsmSymKeyWrapSymConfig csmSymKeyWrapSymConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSymKeyWrapSymConfig)){
					return false
				}
				this.target == (object as CsmSymKeyWrapSymConfig).target
			}
		
			def String getCsmCallbackSymKeyWrapSym(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyWrapSym"].getStringValue()
			}
			
			def void setCsmCallbackSymKeyWrapSym(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyWrapSym"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyWrapSym"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyWrapSymInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymInitConfiguration"].getStringValue()
			}
			
			def void setCsmSymKeyWrapSymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapSymInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCsmSymKeyWrapSymPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymPrimitiveName"].getStringValue()
			}
			
			def void setCsmSymKeyWrapSymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapSymPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Csm)){
			return false
		}
		this.target == (object as Csm).target
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
