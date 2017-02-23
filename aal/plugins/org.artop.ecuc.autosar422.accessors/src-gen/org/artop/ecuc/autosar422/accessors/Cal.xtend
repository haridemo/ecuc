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

class Cal implements IWrapper<GModuleConfiguration> {
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

	def CalAsymDecrypt getCalAsymDecrypt(){
		moduleConfiguration.getByType(typeof(CalAsymDecrypt))
	}

	def void setCalAsymDecrypt(CalAsymDecrypt calAsymDecrypt){
		val GContainer container = calAsymDecrypt.getTarget()
	    moduleConfiguration.setContainer(container, "CalAsymDecrypt")
	}
	def CalAsymEncrypt getCalAsymEncrypt(){
		moduleConfiguration.getByType(typeof(CalAsymEncrypt))
	}

	def void setCalAsymEncrypt(CalAsymEncrypt calAsymEncrypt){
		val GContainer container = calAsymEncrypt.getTarget()
	    moduleConfiguration.setContainer(container, "CalAsymEncrypt")
	}
	def CalAsymPrivateKeyExtract getCalAsymPrivateKeyExtract(){
		moduleConfiguration.getByType(typeof(CalAsymPrivateKeyExtract))
	}

	def void setCalAsymPrivateKeyExtract(CalAsymPrivateKeyExtract calAsymPrivateKeyExtract){
		val GContainer container = calAsymPrivateKeyExtract.getTarget()
	    moduleConfiguration.setContainer(container, "CalAsymPrivateKeyExtract")
	}
	def CalAsymPrivateKeyWrapAsym getCalAsymPrivateKeyWrapAsym(){
		moduleConfiguration.getByType(typeof(CalAsymPrivateKeyWrapAsym))
	}

	def void setCalAsymPrivateKeyWrapAsym(CalAsymPrivateKeyWrapAsym calAsymPrivateKeyWrapAsym){
		val GContainer container = calAsymPrivateKeyWrapAsym.getTarget()
	    moduleConfiguration.setContainer(container, "CalAsymPrivateKeyWrapAsym")
	}
	def CalAsymPrivateKeyWrapSym getCalAsymPrivateKeyWrapSym(){
		moduleConfiguration.getByType(typeof(CalAsymPrivateKeyWrapSym))
	}

	def void setCalAsymPrivateKeyWrapSym(CalAsymPrivateKeyWrapSym calAsymPrivateKeyWrapSym){
		val GContainer container = calAsymPrivateKeyWrapSym.getTarget()
	    moduleConfiguration.setContainer(container, "CalAsymPrivateKeyWrapSym")
	}
	def CalAsymPublicKeyExtract getCalAsymPublicKeyExtract(){
		moduleConfiguration.getByType(typeof(CalAsymPublicKeyExtract))
	}

	def void setCalAsymPublicKeyExtract(CalAsymPublicKeyExtract calAsymPublicKeyExtract){
		val GContainer container = calAsymPublicKeyExtract.getTarget()
	    moduleConfiguration.setContainer(container, "CalAsymPublicKeyExtract")
	}
	def CalChecksum getCalChecksum(){
		moduleConfiguration.getByType(typeof(CalChecksum))
	}

	def void setCalChecksum(CalChecksum calChecksum){
		val GContainer container = calChecksum.getTarget()
	    moduleConfiguration.setContainer(container, "CalChecksum")
	}
	def CalCompression getCalCompression(){
		moduleConfiguration.getByType(typeof(CalCompression))
	}

	def void setCalCompression(CalCompression calCompression){
		val GContainer container = calCompression.getTarget()
	    moduleConfiguration.setContainer(container, "CalCompression")
	}
	def CalDecompression getCalDecompression(){
		moduleConfiguration.getByType(typeof(CalDecompression))
	}

	def void setCalDecompression(CalDecompression calDecompression){
		val GContainer container = calDecompression.getTarget()
	    moduleConfiguration.setContainer(container, "CalDecompression")
	}
	def CalGeneral getCalGeneral(){
		moduleConfiguration.getByType(typeof(CalGeneral))
	}

	def void setCalGeneral(CalGeneral calGeneral){
		val GContainer container = calGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "CalGeneral")
	}
	def CalHash getCalHash(){
		moduleConfiguration.getByType(typeof(CalHash))
	}

	def void setCalHash(CalHash calHash){
		val GContainer container = calHash.getTarget()
	    moduleConfiguration.setContainer(container, "CalHash")
	}
	def CalKeyDerive getCalKeyDerive(){
		moduleConfiguration.getByType(typeof(CalKeyDerive))
	}

	def void setCalKeyDerive(CalKeyDerive calKeyDerive){
		val GContainer container = calKeyDerive.getTarget()
	    moduleConfiguration.setContainer(container, "CalKeyDerive")
	}
	def CalKeyExchangeCalcPubVal getCalKeyExchangeCalcPubVal(){
		moduleConfiguration.getByType(typeof(CalKeyExchangeCalcPubVal))
	}

	def void setCalKeyExchangeCalcPubVal(CalKeyExchangeCalcPubVal calKeyExchangeCalcPubVal){
		val GContainer container = calKeyExchangeCalcPubVal.getTarget()
	    moduleConfiguration.setContainer(container, "CalKeyExchangeCalcPubVal")
	}
	def CalKeyExchangeCalcSecret getCalKeyExchangeCalcSecret(){
		moduleConfiguration.getByType(typeof(CalKeyExchangeCalcSecret))
	}

	def void setCalKeyExchangeCalcSecret(CalKeyExchangeCalcSecret calKeyExchangeCalcSecret){
		val GContainer container = calKeyExchangeCalcSecret.getTarget()
	    moduleConfiguration.setContainer(container, "CalKeyExchangeCalcSecret")
	}
	def CalMacGenerate getCalMacGenerate(){
		moduleConfiguration.getByType(typeof(CalMacGenerate))
	}

	def void setCalMacGenerate(CalMacGenerate calMacGenerate){
		val GContainer container = calMacGenerate.getTarget()
	    moduleConfiguration.setContainer(container, "CalMacGenerate")
	}
	def CalMacVerify getCalMacVerify(){
		moduleConfiguration.getByType(typeof(CalMacVerify))
	}

	def void setCalMacVerify(CalMacVerify calMacVerify){
		val GContainer container = calMacVerify.getTarget()
	    moduleConfiguration.setContainer(container, "CalMacVerify")
	}
	def CalRandomGenerate getCalRandomGenerate(){
		moduleConfiguration.getByType(typeof(CalRandomGenerate))
	}

	def void setCalRandomGenerate(CalRandomGenerate calRandomGenerate){
		val GContainer container = calRandomGenerate.getTarget()
	    moduleConfiguration.setContainer(container, "CalRandomGenerate")
	}
	def CalRandomSeed getCalRandomSeed(){
		moduleConfiguration.getByType(typeof(CalRandomSeed))
	}

	def void setCalRandomSeed(CalRandomSeed calRandomSeed){
		val GContainer container = calRandomSeed.getTarget()
	    moduleConfiguration.setContainer(container, "CalRandomSeed")
	}
	def CalSignatureGenerate getCalSignatureGenerate(){
		moduleConfiguration.getByType(typeof(CalSignatureGenerate))
	}

	def void setCalSignatureGenerate(CalSignatureGenerate calSignatureGenerate){
		val GContainer container = calSignatureGenerate.getTarget()
	    moduleConfiguration.setContainer(container, "CalSignatureGenerate")
	}
	def CalSignatureVerify getCalSignatureVerify(){
		moduleConfiguration.getByType(typeof(CalSignatureVerify))
	}

	def void setCalSignatureVerify(CalSignatureVerify calSignatureVerify){
		val GContainer container = calSignatureVerify.getTarget()
	    moduleConfiguration.setContainer(container, "CalSignatureVerify")
	}
	def CalSymBlockDecrypt getCalSymBlockDecrypt(){
		moduleConfiguration.getByType(typeof(CalSymBlockDecrypt))
	}

	def void setCalSymBlockDecrypt(CalSymBlockDecrypt calSymBlockDecrypt){
		val GContainer container = calSymBlockDecrypt.getTarget()
	    moduleConfiguration.setContainer(container, "CalSymBlockDecrypt")
	}
	def CalSymBlockEncrypt getCalSymBlockEncrypt(){
		moduleConfiguration.getByType(typeof(CalSymBlockEncrypt))
	}

	def void setCalSymBlockEncrypt(CalSymBlockEncrypt calSymBlockEncrypt){
		val GContainer container = calSymBlockEncrypt.getTarget()
	    moduleConfiguration.setContainer(container, "CalSymBlockEncrypt")
	}
	def CalSymDecrypt getCalSymDecrypt(){
		moduleConfiguration.getByType(typeof(CalSymDecrypt))
	}

	def void setCalSymDecrypt(CalSymDecrypt calSymDecrypt){
		val GContainer container = calSymDecrypt.getTarget()
	    moduleConfiguration.setContainer(container, "CalSymDecrypt")
	}
	def CalSymEncrypt getCalSymEncrypt(){
		moduleConfiguration.getByType(typeof(CalSymEncrypt))
	}

	def void setCalSymEncrypt(CalSymEncrypt calSymEncrypt){
		val GContainer container = calSymEncrypt.getTarget()
	    moduleConfiguration.setContainer(container, "CalSymEncrypt")
	}
	def CalSymKeyExtract getCalSymKeyExtract(){
		moduleConfiguration.getByType(typeof(CalSymKeyExtract))
	}

	def void setCalSymKeyExtract(CalSymKeyExtract calSymKeyExtract){
		val GContainer container = calSymKeyExtract.getTarget()
	    moduleConfiguration.setContainer(container, "CalSymKeyExtract")
	}
	def CalSymKeyWrapAsym getCalSymKeyWrapAsym(){
		moduleConfiguration.getByType(typeof(CalSymKeyWrapAsym))
	}

	def void setCalSymKeyWrapAsym(CalSymKeyWrapAsym calSymKeyWrapAsym){
		val GContainer container = calSymKeyWrapAsym.getTarget()
	    moduleConfiguration.setContainer(container, "CalSymKeyWrapAsym")
	}
	def CalSymKeyWrapSym getCalSymKeyWrapSym(){
		moduleConfiguration.getByType(typeof(CalSymKeyWrapSym))
	}

	def void setCalSymKeyWrapSym(CalSymKeyWrapSym calSymKeyWrapSym){
		val GContainer container = calSymKeyWrapSym.getTarget()
	    moduleConfiguration.setContainer(container, "CalSymKeyWrapSym")
	}

	static class CalAsymDecrypt implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalAsymDecrypt)){
				return false
			}
			this.target == (object as CalAsymDecrypt).target
		}
	
		def BigInteger getCalAsymDecryptMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalAsymDecryptMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymDecryptMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalAsymDecryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalAsymDecryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymDecryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalAsymDecryptConfig> getCalAsymDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymDecryptConfig")
				}
			}
			return new BasicWrappingEList<CalAsymDecryptConfig, GContainer>(filteredContainers, typeof(CalAsymDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalAsymDecrypt.CalAsymDecryptConfig calAsymDecryptConfig) {
					calAsymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymDecryptConfig"))
					super.delegateAdd(calAsymDecryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalAsymDecrypt.CalAsymDecryptConfig calAsymDecryptConfig) {
					calAsymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymDecryptConfig"))
					super.delegateAdd(index, calAsymDecryptConfig)
				}
			}
		}
		
		
		static class CalAsymDecryptConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalAsymDecryptConfig)){
					return false
				}
				this.target == (object as CalAsymDecryptConfig).target
			}
		
			def String getCalAsymDecryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptInitConfiguration"].getStringValue()
			}
			
			def void setCalAsymDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymDecryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalAsymDecryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptPrimitiveName"].getStringValue()
			}
			
			def void setCalAsymDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymDecryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalAsymEncrypt implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalAsymEncrypt)){
				return false
			}
			this.target == (object as CalAsymEncrypt).target
		}
	
		def BigInteger getCalAsymEncryptMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalAsymEncryptMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymEncryptMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalAsymEncryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalAsymEncryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymEncryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalAsymEncryptConfig> getCalAsymEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymEncryptConfig")
				}
			}
			return new BasicWrappingEList<CalAsymEncryptConfig, GContainer>(filteredContainers, typeof(CalAsymEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalAsymEncrypt.CalAsymEncryptConfig calAsymEncryptConfig) {
					calAsymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymEncryptConfig"))
					super.delegateAdd(calAsymEncryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalAsymEncrypt.CalAsymEncryptConfig calAsymEncryptConfig) {
					calAsymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymEncryptConfig"))
					super.delegateAdd(index, calAsymEncryptConfig)
				}
			}
		}
		
		
		static class CalAsymEncryptConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalAsymEncryptConfig)){
					return false
				}
				this.target == (object as CalAsymEncryptConfig).target
			}
		
			def String getCalAsymEncryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptInitConfiguration"].getStringValue()
			}
			
			def void setCalAsymEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymEncryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalAsymEncryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptPrimitiveName"].getStringValue()
			}
			
			def void setCalAsymEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymEncryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalAsymPrivateKeyExtract implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalAsymPrivateKeyExtract)){
				return false
			}
			this.target == (object as CalAsymPrivateKeyExtract).target
		}
	
		def BigInteger getCalAsymPrivateKeyExtractMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalAsymPrivateKeyExtractMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyExtractMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalAsymPrivateKeyExtractMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalAsymPrivateKeyExtractMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyExtractMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalAsymPrivateKeyExtractConfig> getCalAsymPrivateKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymPrivateKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CalAsymPrivateKeyExtractConfig, GContainer>(filteredContainers, typeof(CalAsymPrivateKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalAsymPrivateKeyExtract.CalAsymPrivateKeyExtractConfig calAsymPrivateKeyExtractConfig) {
					calAsymPrivateKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPrivateKeyExtractConfig"))
					super.delegateAdd(calAsymPrivateKeyExtractConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalAsymPrivateKeyExtract.CalAsymPrivateKeyExtractConfig calAsymPrivateKeyExtractConfig) {
					calAsymPrivateKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPrivateKeyExtractConfig"))
					super.delegateAdd(index, calAsymPrivateKeyExtractConfig)
				}
			}
		}
		
		
		static class CalAsymPrivateKeyExtractConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalAsymPrivateKeyExtractConfig)){
					return false
				}
				this.target == (object as CalAsymPrivateKeyExtractConfig).target
			}
		
			def String getCalAsymPrivateKeyExtractInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractInitConfiguration"].getStringValue()
			}
			
			def void setCalAsymPrivateKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyExtractInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalAsymPrivateKeyExtractPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractPrimitiveName"].getStringValue()
			}
			
			def void setCalAsymPrivateKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyExtractPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalAsymPrivateKeyWrapAsym implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalAsymPrivateKeyWrapAsym)){
				return false
			}
			this.target == (object as CalAsymPrivateKeyWrapAsym).target
		}
	
		def BigInteger getCalAsymPrivateKeyWrapAsymMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalAsymPrivateKeyWrapAsymMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalAsymPrivateKeyWrapAsymMaxPrivKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPrivKeySize"].getBigIntegerValue()
		}
		
		def void setCalAsymPrivateKeyWrapAsymMaxPrivKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPrivKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPrivKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalAsymPrivateKeyWrapAsymMaxPubKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPubKeySize"].getBigIntegerValue()
		}
		
		def void setCalAsymPrivateKeyWrapAsymMaxPubKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPubKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPubKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalAsymPrivateKeyWrapAsymConfig> getCalAsymPrivateKeyWrapAsymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymPrivateKeyWrapAsymConfig")
				}
			}
			return new BasicWrappingEList<CalAsymPrivateKeyWrapAsymConfig, GContainer>(filteredContainers, typeof(CalAsymPrivateKeyWrapAsymConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalAsymPrivateKeyWrapAsym.CalAsymPrivateKeyWrapAsymConfig calAsymPrivateKeyWrapAsymConfig) {
					calAsymPrivateKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPrivateKeyWrapAsymConfig"))
					super.delegateAdd(calAsymPrivateKeyWrapAsymConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalAsymPrivateKeyWrapAsym.CalAsymPrivateKeyWrapAsymConfig calAsymPrivateKeyWrapAsymConfig) {
					calAsymPrivateKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPrivateKeyWrapAsymConfig"))
					super.delegateAdd(index, calAsymPrivateKeyWrapAsymConfig)
				}
			}
		}
		
		
		static class CalAsymPrivateKeyWrapAsymConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalAsymPrivateKeyWrapAsymConfig)){
					return false
				}
				this.target == (object as CalAsymPrivateKeyWrapAsymConfig).target
			}
		
			def String getCalAsymPrivateKeyWrapAsymInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymInitConfiguration"].getStringValue()
			}
			
			def void setCalAsymPrivateKeyWrapAsymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalAsymPrivateKeyWrapAsymPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymPrimitiveName"].getStringValue()
			}
			
			def void setCalAsymPrivateKeyWrapAsymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalAsymPrivateKeyWrapSym implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalAsymPrivateKeyWrapSym)){
				return false
			}
			this.target == (object as CalAsymPrivateKeyWrapSym).target
		}
	
		def BigInteger getCalAsymPrivateKeyWrapSymMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalAsymPrivateKeyWrapSymMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalAsymPrivateKeyWrapSymMaxPrivKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxPrivKeySize"].getBigIntegerValue()
		}
		
		def void setCalAsymPrivateKeyWrapSymMaxPrivKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxPrivKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymMaxPrivKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalAsymPrivateKeyWrapSymMaxSymKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxSymKeySize"].getBigIntegerValue()
		}
		
		def void setCalAsymPrivateKeyWrapSymMaxSymKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxSymKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymMaxSymKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalAsymPrivateKeyWrapSymConfig> getCalAsymPrivateKeyWrapSymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymPrivateKeyWrapSymConfig")
				}
			}
			return new BasicWrappingEList<CalAsymPrivateKeyWrapSymConfig, GContainer>(filteredContainers, typeof(CalAsymPrivateKeyWrapSymConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalAsymPrivateKeyWrapSym.CalAsymPrivateKeyWrapSymConfig calAsymPrivateKeyWrapSymConfig) {
					calAsymPrivateKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPrivateKeyWrapSymConfig"))
					super.delegateAdd(calAsymPrivateKeyWrapSymConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalAsymPrivateKeyWrapSym.CalAsymPrivateKeyWrapSymConfig calAsymPrivateKeyWrapSymConfig) {
					calAsymPrivateKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPrivateKeyWrapSymConfig"))
					super.delegateAdd(index, calAsymPrivateKeyWrapSymConfig)
				}
			}
		}
		
		
		static class CalAsymPrivateKeyWrapSymConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalAsymPrivateKeyWrapSymConfig)){
					return false
				}
				this.target == (object as CalAsymPrivateKeyWrapSymConfig).target
			}
		
			def String getCalAsymPrivateKeyWrapSymInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymInitConfiguration"].getStringValue()
			}
			
			def void setCalAsymPrivateKeyWrapSymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalAsymPrivateKeyWrapSymPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymPrimitiveName"].getStringValue()
			}
			
			def void setCalAsymPrivateKeyWrapSymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalAsymPublicKeyExtract implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalAsymPublicKeyExtract)){
				return false
			}
			this.target == (object as CalAsymPublicKeyExtract).target
		}
	
		def BigInteger getCalAsymPublicKeyExtractMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalAsymPublicKeyExtractMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPublicKeyExtractMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalAsymPublicKeyExtractMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalAsymPublicKeyExtractMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPublicKeyExtractMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalAsymPublicKeyExtractConfig> getCalAsymPublicKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymPublicKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CalAsymPublicKeyExtractConfig, GContainer>(filteredContainers, typeof(CalAsymPublicKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalAsymPublicKeyExtract.CalAsymPublicKeyExtractConfig calAsymPublicKeyExtractConfig) {
					calAsymPublicKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPublicKeyExtractConfig"))
					super.delegateAdd(calAsymPublicKeyExtractConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalAsymPublicKeyExtract.CalAsymPublicKeyExtractConfig calAsymPublicKeyExtractConfig) {
					calAsymPublicKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPublicKeyExtractConfig"))
					super.delegateAdd(index, calAsymPublicKeyExtractConfig)
				}
			}
		}
		
		
		static class CalAsymPublicKeyExtractConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalAsymPublicKeyExtractConfig)){
					return false
				}
				this.target == (object as CalAsymPublicKeyExtractConfig).target
			}
		
			def String getCalAsymPublicKeyExtractInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractInitConfiguration"].getStringValue()
			}
			
			def void setCalAsymPublicKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPublicKeyExtractInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalAsymPublicKeyExtractPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractPrimitiveName"].getStringValue()
			}
			
			def void setCalAsymPublicKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPublicKeyExtractPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalChecksum implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalChecksum)){
				return false
			}
			this.target == (object as CalChecksum).target
		}
	
		def BigInteger getCalChecksumMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalChecksumMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalChecksumMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalChecksumConfig> getCalChecksumConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalChecksumConfig")
				}
			}
			return new BasicWrappingEList<CalChecksumConfig, GContainer>(filteredContainers, typeof(CalChecksumConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalChecksum.CalChecksumConfig calChecksumConfig) {
					calChecksumConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalChecksumConfig"))
					super.delegateAdd(calChecksumConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalChecksum.CalChecksumConfig calChecksumConfig) {
					calChecksumConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalChecksumConfig"))
					super.delegateAdd(index, calChecksumConfig)
				}
			}
		}
		
		
		static class CalChecksumConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalChecksumConfig)){
					return false
				}
				this.target == (object as CalChecksumConfig).target
			}
		
			def String getCalChecksumInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumInitConfiguration"].getStringValue()
			}
			
			def void setCalChecksumInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalChecksumInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalChecksumPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumPrimitiveName"].getStringValue()
			}
			
			def void setCalChecksumPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalChecksumPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalCompression implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalCompression)){
				return false
			}
			this.target == (object as CalCompression).target
		}
	
		def BigInteger getCalCompressMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalCompressMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalCompressMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalCompressionConfig> getCalCompressionConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalCompressionConfig")
				}
			}
			return new BasicWrappingEList<CalCompressionConfig, GContainer>(filteredContainers, typeof(CalCompressionConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalCompression.CalCompressionConfig calCompressionConfig) {
					calCompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalCompressionConfig"))
					super.delegateAdd(calCompressionConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalCompression.CalCompressionConfig calCompressionConfig) {
					calCompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalCompressionConfig"))
					super.delegateAdd(index, calCompressionConfig)
				}
			}
		}
		
		
		static class CalCompressionConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalCompressionConfig)){
					return false
				}
				this.target == (object as CalCompressionConfig).target
			}
		
			def String getCalCompressInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressInitConfiguration"].getStringValue()
			}
			
			def void setCalCompressInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalCompressInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalCompressPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressPrimitiveName"].getStringValue()
			}
			
			def void setCalCompressPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalCompressPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalDecompression implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalDecompression)){
				return false
			}
			this.target == (object as CalDecompression).target
		}
	
		def BigInteger getCalDecompressMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalDecompressMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalDecompressMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalDecompressionConfig> getCalDecompressionConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalDecompressionConfig")
				}
			}
			return new BasicWrappingEList<CalDecompressionConfig, GContainer>(filteredContainers, typeof(CalDecompressionConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalDecompression.CalDecompressionConfig calDecompressionConfig) {
					calDecompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalDecompressionConfig"))
					super.delegateAdd(calDecompressionConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalDecompression.CalDecompressionConfig calDecompressionConfig) {
					calDecompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalDecompressionConfig"))
					super.delegateAdd(index, calDecompressionConfig)
				}
			}
		}
		
		
		static class CalDecompressionConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalDecompressionConfig)){
					return false
				}
				this.target == (object as CalDecompressionConfig).target
			}
		
			def String getCalDecompressInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressInitConfiguration"].getStringValue()
			}
			
			def void setCalDecompressInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalDecompressInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalDecompressPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressPrimitiveName"].getStringValue()
			}
			
			def void setCalDecompressPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalDecompressPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalGeneral)){
				return false
			}
			this.target == (object as CalGeneral).target
		}
	
		def String getCalMaxAlignScalarType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMaxAlignScalarType"].getStringValue()
		}
		
		def void setCalMaxAlignScalarType(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMaxAlignScalarType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalMaxAlignScalarType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCalVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalVersionInfoApi"].getBooleanValue()
		}
		
		def void setCalVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class CalHash implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalHash)){
				return false
			}
			this.target == (object as CalHash).target
		}
	
		def BigInteger getCalHashMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalHashMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalHashMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalHashConfig> getCalHashConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalHashConfig")
				}
			}
			return new BasicWrappingEList<CalHashConfig, GContainer>(filteredContainers, typeof(CalHashConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalHash.CalHashConfig calHashConfig) {
					calHashConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalHashConfig"))
					super.delegateAdd(calHashConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalHash.CalHashConfig calHashConfig) {
					calHashConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalHashConfig"))
					super.delegateAdd(index, calHashConfig)
				}
			}
		}
		
		
		static class CalHashConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalHashConfig)){
					return false
				}
				this.target == (object as CalHashConfig).target
			}
		
			def String getCalHashInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashInitConfiguration"].getStringValue()
			}
			
			def void setCalHashInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalHashInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalHashPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashPrimitiveName"].getStringValue()
			}
			
			def void setCalHashPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalHashPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalKeyDerive implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalKeyDerive)){
				return false
			}
			this.target == (object as CalKeyDerive).target
		}
	
		def BigInteger getCalKeyDeriveMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalKeyDeriveMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyDeriveMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalKeyDeriveMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalKeyDeriveMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyDeriveMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalKeyDeriveConfig> getCalKeyDeriveConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalKeyDeriveConfig")
				}
			}
			return new BasicWrappingEList<CalKeyDeriveConfig, GContainer>(filteredContainers, typeof(CalKeyDeriveConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalKeyDerive.CalKeyDeriveConfig calKeyDeriveConfig) {
					calKeyDeriveConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalKeyDeriveConfig"))
					super.delegateAdd(calKeyDeriveConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalKeyDerive.CalKeyDeriveConfig calKeyDeriveConfig) {
					calKeyDeriveConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalKeyDeriveConfig"))
					super.delegateAdd(index, calKeyDeriveConfig)
				}
			}
		}
		
		
		static class CalKeyDeriveConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalKeyDeriveConfig)){
					return false
				}
				this.target == (object as CalKeyDeriveConfig).target
			}
		
			def String getCalKeyDeriveInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveInitConfiguration"].getStringValue()
			}
			
			def void setCalKeyDeriveInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyDeriveInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalKeyDerivePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDerivePrimitiveName"].getStringValue()
			}
			
			def void setCalKeyDerivePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDerivePrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyDerivePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalKeyExchangeCalcPubVal implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalKeyExchangeCalcPubVal)){
				return false
			}
			this.target == (object as CalKeyExchangeCalcPubVal).target
		}
	
		def BigInteger getCalKeyExchangeCalcPubValMaxBaseTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxBaseTypeSize"].getBigIntegerValue()
		}
		
		def void setCalKeyExchangeCalcPubValMaxBaseTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxBaseTypeSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValMaxBaseTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalKeyExchangeCalcPubValMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalKeyExchangeCalcPubValMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalKeyExchangeCalcPubValMaxPrivateTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxPrivateTypeSize"].getBigIntegerValue()
		}
		
		def void setCalKeyExchangeCalcPubValMaxPrivateTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxPrivateTypeSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValMaxPrivateTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalKeyExchangeCalcPubValConfig> getCalKeyExchangeCalcPubValConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalKeyExchangeCalcPubValConfig")
				}
			}
			return new BasicWrappingEList<CalKeyExchangeCalcPubValConfig, GContainer>(filteredContainers, typeof(CalKeyExchangeCalcPubValConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalKeyExchangeCalcPubVal.CalKeyExchangeCalcPubValConfig calKeyExchangeCalcPubValConfig) {
					calKeyExchangeCalcPubValConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalKeyExchangeCalcPubValConfig"))
					super.delegateAdd(calKeyExchangeCalcPubValConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalKeyExchangeCalcPubVal.CalKeyExchangeCalcPubValConfig calKeyExchangeCalcPubValConfig) {
					calKeyExchangeCalcPubValConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalKeyExchangeCalcPubValConfig"))
					super.delegateAdd(index, calKeyExchangeCalcPubValConfig)
				}
			}
		}
		
		
		static class CalKeyExchangeCalcPubValConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalKeyExchangeCalcPubValConfig)){
					return false
				}
				this.target == (object as CalKeyExchangeCalcPubValConfig).target
			}
		
			def String getCalKeyExchangeCalcPubValInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValInitConfiguration"].getStringValue()
			}
			
			def void setCalKeyExchangeCalcPubValInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalKeyExchangeCalcPubValPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValPrimitiveName"].getStringValue()
			}
			
			def void setCalKeyExchangeCalcPubValPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalKeyExchangeCalcSecret implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalKeyExchangeCalcSecret)){
				return false
			}
			this.target == (object as CalKeyExchangeCalcSecret).target
		}
	
		def BigInteger getCalKeyExchangeCalcSecretMaxBaseTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxBaseTypeSize"].getBigIntegerValue()
		}
		
		def void setCalKeyExchangeCalcSecretMaxBaseTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxBaseTypeSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretMaxBaseTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalKeyExchangeCalcSecretMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalKeyExchangeCalcSecretMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalKeyExchangeCalcSecretMaxPrivateTypeSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxPrivateTypeSize"].getBigIntegerValue()
		}
		
		def void setCalKeyExchangeCalcSecretMaxPrivateTypeSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxPrivateTypeSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretMaxPrivateTypeSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalKeyExchangeCalcSecretConfig> getCalKeyExchangeCalcSecretConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalKeyExchangeCalcSecretConfig")
				}
			}
			return new BasicWrappingEList<CalKeyExchangeCalcSecretConfig, GContainer>(filteredContainers, typeof(CalKeyExchangeCalcSecretConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalKeyExchangeCalcSecret.CalKeyExchangeCalcSecretConfig calKeyExchangeCalcSecretConfig) {
					calKeyExchangeCalcSecretConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalKeyExchangeCalcSecretConfig"))
					super.delegateAdd(calKeyExchangeCalcSecretConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalKeyExchangeCalcSecret.CalKeyExchangeCalcSecretConfig calKeyExchangeCalcSecretConfig) {
					calKeyExchangeCalcSecretConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalKeyExchangeCalcSecretConfig"))
					super.delegateAdd(index, calKeyExchangeCalcSecretConfig)
				}
			}
		}
		
		
		static class CalKeyExchangeCalcSecretConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalKeyExchangeCalcSecretConfig)){
					return false
				}
				this.target == (object as CalKeyExchangeCalcSecretConfig).target
			}
		
			def String getCalKeyExchangeCalcSecretInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretInitConfiguration"].getStringValue()
			}
			
			def void setCalKeyExchangeCalcSecretInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalKeyExchangeCalcSecretPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretPrimitiveName"].getStringValue()
			}
			
			def void setCalKeyExchangeCalcSecretPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalMacGenerate implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalMacGenerate)){
				return false
			}
			this.target == (object as CalMacGenerate).target
		}
	
		def BigInteger getCalMacGenerateMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalMacGenerateMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalMacGenerateMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalMacGenerateMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalMacGenerateMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalMacGenerateMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalMacGenerateConfig> getCalMacGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalMacGenerateConfig")
				}
			}
			return new BasicWrappingEList<CalMacGenerateConfig, GContainer>(filteredContainers, typeof(CalMacGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalMacGenerate.CalMacGenerateConfig calMacGenerateConfig) {
					calMacGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalMacGenerateConfig"))
					super.delegateAdd(calMacGenerateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalMacGenerate.CalMacGenerateConfig calMacGenerateConfig) {
					calMacGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalMacGenerateConfig"))
					super.delegateAdd(index, calMacGenerateConfig)
				}
			}
		}
		
		
		static class CalMacGenerateConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalMacGenerateConfig)){
					return false
				}
				this.target == (object as CalMacGenerateConfig).target
			}
		
			def String getCalMacGenerateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateInitConfiguration"].getStringValue()
			}
			
			def void setCalMacGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalMacGenerateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalMacGeneratePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGeneratePrimitiveName"].getStringValue()
			}
			
			def void setCalMacGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGeneratePrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalMacGeneratePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalMacVerify implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalMacVerify)){
				return false
			}
			this.target == (object as CalMacVerify).target
		}
	
		def BigInteger getCalMacVerifyMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalMacVerifyMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalMacVerifyMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalMacVerifyMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalMacVerifyMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalMacVerifyMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalMacVerifyConfig> getCalMacVerifyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalMacVerifyConfig")
				}
			}
			return new BasicWrappingEList<CalMacVerifyConfig, GContainer>(filteredContainers, typeof(CalMacVerifyConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalMacVerify.CalMacVerifyConfig calMacVerifyConfig) {
					calMacVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalMacVerifyConfig"))
					super.delegateAdd(calMacVerifyConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalMacVerify.CalMacVerifyConfig calMacVerifyConfig) {
					calMacVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalMacVerifyConfig"))
					super.delegateAdd(index, calMacVerifyConfig)
				}
			}
		}
		
		
		static class CalMacVerifyConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalMacVerifyConfig)){
					return false
				}
				this.target == (object as CalMacVerifyConfig).target
			}
		
			def String getCalMacVerifyInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyInitConfiguration"].getStringValue()
			}
			
			def void setCalMacVerifyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalMacVerifyInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalMacVerifyPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyPrimitiveName"].getStringValue()
			}
			
			def void setCalMacVerifyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalMacVerifyPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalRandomGenerate implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalRandomGenerate)){
				return false
			}
			this.target == (object as CalRandomGenerate).target
		}
	
		
		
		def List<CalRandomGenerateConfig> getCalRandomGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalRandomGenerateConfig")
				}
			}
			return new BasicWrappingEList<CalRandomGenerateConfig, GContainer>(filteredContainers, typeof(CalRandomGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalRandomGenerate.CalRandomGenerateConfig calRandomGenerateConfig) {
					calRandomGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalRandomGenerateConfig"))
					super.delegateAdd(calRandomGenerateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalRandomGenerate.CalRandomGenerateConfig calRandomGenerateConfig) {
					calRandomGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalRandomGenerateConfig"))
					super.delegateAdd(index, calRandomGenerateConfig)
				}
			}
		}
		
		
		static class CalRandomGenerateConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalRandomGenerateConfig)){
					return false
				}
				this.target == (object as CalRandomGenerateConfig).target
			}
		
			def String getCalRandomGenerateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomGenerateInitConfiguration"].getStringValue()
			}
			
			def void setCalRandomGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomGenerateInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomGenerateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalRandomGeneratePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomGeneratePrimitiveName"].getStringValue()
			}
			
			def void setCalRandomGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomGeneratePrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomGeneratePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalRandomSeed implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalRandomSeed)){
				return false
			}
			this.target == (object as CalRandomSeed).target
		}
	
		def BigInteger getCalRandomMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalRandomMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalRandomSeedConfig> getCalRandomSeedConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalRandomSeedConfig")
				}
			}
			return new BasicWrappingEList<CalRandomSeedConfig, GContainer>(filteredContainers, typeof(CalRandomSeedConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalRandomSeed.CalRandomSeedConfig calRandomSeedConfig) {
					calRandomSeedConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalRandomSeedConfig"))
					super.delegateAdd(calRandomSeedConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalRandomSeed.CalRandomSeedConfig calRandomSeedConfig) {
					calRandomSeedConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalRandomSeedConfig"))
					super.delegateAdd(index, calRandomSeedConfig)
				}
			}
		}
		
		
		static class CalRandomSeedConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalRandomSeedConfig)){
					return false
				}
				this.target == (object as CalRandomSeedConfig).target
			}
		
			def String getCalRandomSeedInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomSeedInitConfiguration"].getStringValue()
			}
			
			def void setCalRandomSeedInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomSeedInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomSeedInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalRandomSeedPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomSeedPrimitiveName"].getStringValue()
			}
			
			def void setCalRandomSeedPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomSeedPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomSeedPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalSignatureGenerate implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalSignatureGenerate)){
				return false
			}
			this.target == (object as CalSignatureGenerate).target
		}
	
		def BigInteger getCalSignatureGenerateMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalSignatureGenerateMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureGenerateMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSignatureGenerateMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalSignatureGenerateMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureGenerateMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalSignatureGenerateConfig> getCalSignatureGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSignatureGenerateConfig")
				}
			}
			return new BasicWrappingEList<CalSignatureGenerateConfig, GContainer>(filteredContainers, typeof(CalSignatureGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalSignatureGenerate.CalSignatureGenerateConfig calSignatureGenerateConfig) {
					calSignatureGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSignatureGenerateConfig"))
					super.delegateAdd(calSignatureGenerateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalSignatureGenerate.CalSignatureGenerateConfig calSignatureGenerateConfig) {
					calSignatureGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSignatureGenerateConfig"))
					super.delegateAdd(index, calSignatureGenerateConfig)
				}
			}
		}
		
		
		static class CalSignatureGenerateConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalSignatureGenerateConfig)){
					return false
				}
				this.target == (object as CalSignatureGenerateConfig).target
			}
		
			def String getCalSignatureGenerateInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateInitConfiguration"].getStringValue()
			}
			
			def void setCalSignatureGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureGenerateInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalSignatureGeneratePrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGeneratePrimitiveName"].getStringValue()
			}
			
			def void setCalSignatureGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGeneratePrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureGeneratePrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalSignatureVerify implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalSignatureVerify)){
				return false
			}
			this.target == (object as CalSignatureVerify).target
		}
	
		def BigInteger getCalSignatureVerifyMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalSignatureVerifyMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureVerifyMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSignatureVerifyMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalSignatureVerifyMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureVerifyMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalSignatureVerifyConfig> getCalSignatureVerifyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSignatureVerifyConfig")
				}
			}
			return new BasicWrappingEList<CalSignatureVerifyConfig, GContainer>(filteredContainers, typeof(CalSignatureVerifyConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalSignatureVerify.CalSignatureVerifyConfig calSignatureVerifyConfig) {
					calSignatureVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSignatureVerifyConfig"))
					super.delegateAdd(calSignatureVerifyConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalSignatureVerify.CalSignatureVerifyConfig calSignatureVerifyConfig) {
					calSignatureVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSignatureVerifyConfig"))
					super.delegateAdd(index, calSignatureVerifyConfig)
				}
			}
		}
		
		
		static class CalSignatureVerifyConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalSignatureVerifyConfig)){
					return false
				}
				this.target == (object as CalSignatureVerifyConfig).target
			}
		
			def String getCalSignatureVerifyInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyInitConfiguration"].getStringValue()
			}
			
			def void setCalSignatureVerifyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureVerifyInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalSignatureVerifyPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyPrimitiveName"].getStringValue()
			}
			
			def void setCalSignatureVerifyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureVerifyPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalSymBlockDecrypt implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalSymBlockDecrypt)){
				return false
			}
			this.target == (object as CalSymBlockDecrypt).target
		}
	
		def BigInteger getCalSymBlockDecryptMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalSymBlockDecryptMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockDecryptMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSymBlockDecryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalSymBlockDecryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockDecryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalSymBlockDecryptConfig> getCalSymBlockDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymBlockDecryptConfig")
				}
			}
			return new BasicWrappingEList<CalSymBlockDecryptConfig, GContainer>(filteredContainers, typeof(CalSymBlockDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalSymBlockDecrypt.CalSymBlockDecryptConfig calSymBlockDecryptConfig) {
					calSymBlockDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymBlockDecryptConfig"))
					super.delegateAdd(calSymBlockDecryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalSymBlockDecrypt.CalSymBlockDecryptConfig calSymBlockDecryptConfig) {
					calSymBlockDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymBlockDecryptConfig"))
					super.delegateAdd(index, calSymBlockDecryptConfig)
				}
			}
		}
		
		
		static class CalSymBlockDecryptConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalSymBlockDecryptConfig)){
					return false
				}
				this.target == (object as CalSymBlockDecryptConfig).target
			}
		
			def String getCalSymBlockDecryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptInitConfiguration"].getStringValue()
			}
			
			def void setCalSymBlockDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockDecryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalSymBlockDecryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptPrimitiveName"].getStringValue()
			}
			
			def void setCalSymBlockDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockDecryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalSymBlockEncrypt implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalSymBlockEncrypt)){
				return false
			}
			this.target == (object as CalSymBlockEncrypt).target
		}
	
		def BigInteger getCalSymBlockEncryptMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalSymBlockEncryptMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockEncryptMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSymBlockEncryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalSymBlockEncryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockEncryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalSymBlockEncryptConfig> getCalSymBlockEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymBlockEncryptConfig")
				}
			}
			return new BasicWrappingEList<CalSymBlockEncryptConfig, GContainer>(filteredContainers, typeof(CalSymBlockEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalSymBlockEncrypt.CalSymBlockEncryptConfig calSymBlockEncryptConfig) {
					calSymBlockEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymBlockEncryptConfig"))
					super.delegateAdd(calSymBlockEncryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalSymBlockEncrypt.CalSymBlockEncryptConfig calSymBlockEncryptConfig) {
					calSymBlockEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymBlockEncryptConfig"))
					super.delegateAdd(index, calSymBlockEncryptConfig)
				}
			}
		}
		
		
		static class CalSymBlockEncryptConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalSymBlockEncryptConfig)){
					return false
				}
				this.target == (object as CalSymBlockEncryptConfig).target
			}
		
			def String getCalSymBlockEncryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptInitConfiguration"].getStringValue()
			}
			
			def void setCalSymBlockEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockEncryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalSymBlockEncryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptPrimitiveName"].getStringValue()
			}
			
			def void setCalSymBlockEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockEncryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalSymDecrypt implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalSymDecrypt)){
				return false
			}
			this.target == (object as CalSymDecrypt).target
		}
	
		def BigInteger getCalSymDecryptMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalSymDecryptMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymDecryptMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSymDecryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalSymDecryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymDecryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalSymDecryptConfig> getCalSymDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymDecryptConfig")
				}
			}
			return new BasicWrappingEList<CalSymDecryptConfig, GContainer>(filteredContainers, typeof(CalSymDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalSymDecrypt.CalSymDecryptConfig calSymDecryptConfig) {
					calSymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymDecryptConfig"))
					super.delegateAdd(calSymDecryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalSymDecrypt.CalSymDecryptConfig calSymDecryptConfig) {
					calSymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymDecryptConfig"))
					super.delegateAdd(index, calSymDecryptConfig)
				}
			}
		}
		
		
		static class CalSymDecryptConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalSymDecryptConfig)){
					return false
				}
				this.target == (object as CalSymDecryptConfig).target
			}
		
			def String getCalSymDecryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptInitConfiguration"].getStringValue()
			}
			
			def void setCalSymDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymDecryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalSymDecryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptPrimitiveName"].getStringValue()
			}
			
			def void setCalSymDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymDecryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalSymEncrypt implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalSymEncrypt)){
				return false
			}
			this.target == (object as CalSymEncrypt).target
		}
	
		def BigInteger getCalSymEncryptMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalSymEncryptMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymEncryptMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSymEncryptMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalSymEncryptMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymEncryptMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalSymEncryptConfig> getCalSymEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymEncryptConfig")
				}
			}
			return new BasicWrappingEList<CalSymEncryptConfig, GContainer>(filteredContainers, typeof(CalSymEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalSymEncrypt.CalSymEncryptConfig calSymEncryptConfig) {
					calSymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymEncryptConfig"))
					super.delegateAdd(calSymEncryptConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalSymEncrypt.CalSymEncryptConfig calSymEncryptConfig) {
					calSymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymEncryptConfig"))
					super.delegateAdd(index, calSymEncryptConfig)
				}
			}
		}
		
		
		static class CalSymEncryptConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalSymEncryptConfig)){
					return false
				}
				this.target == (object as CalSymEncryptConfig).target
			}
		
			def String getCalSymEncryptInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptInitConfiguration"].getStringValue()
			}
			
			def void setCalSymEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymEncryptInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalSymEncryptPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptPrimitiveName"].getStringValue()
			}
			
			def void setCalSymEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymEncryptPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalSymKeyExtract implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalSymKeyExtract)){
				return false
			}
			this.target == (object as CalSymKeyExtract).target
		}
	
		def BigInteger getCalSymKeyExtractMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalSymKeyExtractMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyExtractMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSymKeyExtractMaxKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractMaxKeySize"].getBigIntegerValue()
		}
		
		def void setCalSymKeyExtractMaxKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractMaxKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyExtractMaxKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalSymKeyExtractConfig> getCalSymKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CalSymKeyExtractConfig, GContainer>(filteredContainers, typeof(CalSymKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalSymKeyExtract.CalSymKeyExtractConfig calSymKeyExtractConfig) {
					calSymKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymKeyExtractConfig"))
					super.delegateAdd(calSymKeyExtractConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalSymKeyExtract.CalSymKeyExtractConfig calSymKeyExtractConfig) {
					calSymKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymKeyExtractConfig"))
					super.delegateAdd(index, calSymKeyExtractConfig)
				}
			}
		}
		
		
		static class CalSymKeyExtractConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalSymKeyExtractConfig)){
					return false
				}
				this.target == (object as CalSymKeyExtractConfig).target
			}
		
			def String getCalSymKeyExtractInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractInitConfiguration"].getStringValue()
			}
			
			def void setCalSymKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyExtractInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalSymKeyExtractPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractPrimitiveName"].getStringValue()
			}
			
			def void setCalSymKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyExtractPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalSymKeyWrapAsym implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalSymKeyWrapAsym)){
				return false
			}
			this.target == (object as CalSymKeyWrapAsym).target
		}
	
		def BigInteger getCalSymKeyWrapAsymMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalSymKeyWrapAsymMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSymKeyWrapAsymMaxPubKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxPubKeySize"].getBigIntegerValue()
		}
		
		def void setCalSymKeyWrapAsymMaxPubKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxPubKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymMaxPubKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSymKeyWrapAsymMaxSymKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxSymKeySize"].getBigIntegerValue()
		}
		
		def void setCalSymKeyWrapAsymMaxSymKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxSymKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymMaxSymKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalSymKeyWrapAsymConfig> getCalSymKeyWrapAsymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymKeyWrapAsymConfig")
				}
			}
			return new BasicWrappingEList<CalSymKeyWrapAsymConfig, GContainer>(filteredContainers, typeof(CalSymKeyWrapAsymConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalSymKeyWrapAsym.CalSymKeyWrapAsymConfig calSymKeyWrapAsymConfig) {
					calSymKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymKeyWrapAsymConfig"))
					super.delegateAdd(calSymKeyWrapAsymConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalSymKeyWrapAsym.CalSymKeyWrapAsymConfig calSymKeyWrapAsymConfig) {
					calSymKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymKeyWrapAsymConfig"))
					super.delegateAdd(index, calSymKeyWrapAsymConfig)
				}
			}
		}
		
		
		static class CalSymKeyWrapAsymConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalSymKeyWrapAsymConfig)){
					return false
				}
				this.target == (object as CalSymKeyWrapAsymConfig).target
			}
		
			def String getCalSymKeyWrapAsymInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymInitConfiguration"].getStringValue()
			}
			
			def void setCalSymKeyWrapAsymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalSymKeyWrapAsymPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymPrimitiveName"].getStringValue()
			}
			
			def void setCalSymKeyWrapAsymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CalSymKeyWrapSym implements IWrapper<GContainer> {
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
	        if (!(object instanceof CalSymKeyWrapSym)){
				return false
			}
			this.target == (object as CalSymKeyWrapSym).target
		}
	
		def BigInteger getCalSymKeyWrapSymMaxCtxBufByteSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymMaxCtxBufByteSize"].getBigIntegerValue()
		}
		
		def void setCalSymKeyWrapSymMaxCtxBufByteSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymMaxCtxBufByteSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapSymMaxCtxBufByteSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCalSymKeyWrapSymMaxSymKeySize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymMaxSymKeySize"].getBigIntegerValue()
		}
		
		def void setCalSymKeyWrapSymMaxSymKeySize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymMaxSymKeySize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapSymMaxSymKeySize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CalSymKeyWrapSymConfig> getCalSymKeyWrapSymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymKeyWrapSymConfig")
				}
			}
			return new BasicWrappingEList<CalSymKeyWrapSymConfig, GContainer>(filteredContainers, typeof(CalSymKeyWrapSymConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Cal.CalSymKeyWrapSym.CalSymKeyWrapSymConfig calSymKeyWrapSymConfig) {
					calSymKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymKeyWrapSymConfig"))
					super.delegateAdd(calSymKeyWrapSymConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Cal.CalSymKeyWrapSym.CalSymKeyWrapSymConfig calSymKeyWrapSymConfig) {
					calSymKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymKeyWrapSymConfig"))
					super.delegateAdd(index, calSymKeyWrapSymConfig)
				}
			}
		}
		
		
		static class CalSymKeyWrapSymConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CalSymKeyWrapSymConfig)){
					return false
				}
				this.target == (object as CalSymKeyWrapSymConfig).target
			}
		
			def String getCalSymKeyWrapSymInitConfiguration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymInitConfiguration"].getStringValue()
			}
			
			def void setCalSymKeyWrapSymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymInitConfiguration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapSymInitConfiguration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCalSymKeyWrapSymPrimitiveName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymPrimitiveName"].getStringValue()
			}
			
			def void setCalSymKeyWrapSymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymPrimitiveName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapSymPrimitiveName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Cal)){
			return false
		}
		this.target == (object as Cal).target
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
