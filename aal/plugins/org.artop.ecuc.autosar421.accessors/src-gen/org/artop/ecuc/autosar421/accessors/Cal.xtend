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
		
		def Integer getCalAsymDecryptMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptMaxCtxBufByteSize"])
		}
		
		def void setCalAsymDecryptMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymDecryptMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalAsymDecryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptMaxKeySize"])
		}
		
		def void setCalAsymDecryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymDecryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalAsymDecryptConfig> getCalAsymDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymDecryptConfig")
				}
			}
			return new BasicWrappingEList<CalAsymDecryptConfig, GContainer>(filteredContainers, typeof(CalAsymDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CalAsymDecryptConfig calAsymDecryptConfig) {
					calAsymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymDecryptConfig"))
					super.delegateAdd(calAsymDecryptConfig)
				}
				
				override protected delegateAdd(int index, CalAsymDecryptConfig calAsymDecryptConfig) {
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
			
			def String getCalAsymDecryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptInitConfiguration"])
			}
			
			def void setCalAsymDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymDecryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalAsymDecryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptPrimitiveName"])
			}
			
			def void setCalAsymDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymDecryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymDecryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalAsymEncryptMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptMaxCtxBufByteSize"])
		}
		
		def void setCalAsymEncryptMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymEncryptMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalAsymEncryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptMaxKeySize"])
		}
		
		def void setCalAsymEncryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymEncryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalAsymEncryptConfig> getCalAsymEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymEncryptConfig")
				}
			}
			return new BasicWrappingEList<CalAsymEncryptConfig, GContainer>(filteredContainers, typeof(CalAsymEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CalAsymEncryptConfig calAsymEncryptConfig) {
					calAsymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymEncryptConfig"))
					super.delegateAdd(calAsymEncryptConfig)
				}
				
				override protected delegateAdd(int index, CalAsymEncryptConfig calAsymEncryptConfig) {
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
			
			def String getCalAsymEncryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptInitConfiguration"])
			}
			
			def void setCalAsymEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymEncryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalAsymEncryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptPrimitiveName"])
			}
			
			def void setCalAsymEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymEncryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymEncryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalAsymPrivateKeyExtractMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractMaxCtxBufByteSize"])
		}
		
		def void setCalAsymPrivateKeyExtractMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyExtractMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalAsymPrivateKeyExtractMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractMaxKeySize"])
		}
		
		def void setCalAsymPrivateKeyExtractMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyExtractMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalAsymPrivateKeyExtractConfig> getCalAsymPrivateKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymPrivateKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CalAsymPrivateKeyExtractConfig, GContainer>(filteredContainers, typeof(CalAsymPrivateKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(CalAsymPrivateKeyExtractConfig calAsymPrivateKeyExtractConfig) {
					calAsymPrivateKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPrivateKeyExtractConfig"))
					super.delegateAdd(calAsymPrivateKeyExtractConfig)
				}
				
				override protected delegateAdd(int index, CalAsymPrivateKeyExtractConfig calAsymPrivateKeyExtractConfig) {
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
			
			def String getCalAsymPrivateKeyExtractInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractInitConfiguration"])
			}
			
			def void setCalAsymPrivateKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyExtractInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalAsymPrivateKeyExtractPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractPrimitiveName"])
			}
			
			def void setCalAsymPrivateKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyExtractPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyExtractPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalAsymPrivateKeyWrapAsymMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxCtxBufByteSize"])
		}
		
		def void setCalAsymPrivateKeyWrapAsymMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalAsymPrivateKeyWrapAsymMaxPrivKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPrivKeySize"])
		}
		
		def void setCalAsymPrivateKeyWrapAsymMaxPrivKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPrivKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPrivKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalAsymPrivateKeyWrapAsymMaxPubKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPubKeySize"])
		}
		
		def void setCalAsymPrivateKeyWrapAsymMaxPubKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPubKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymMaxPubKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalAsymPrivateKeyWrapAsymConfig> getCalAsymPrivateKeyWrapAsymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymPrivateKeyWrapAsymConfig")
				}
			}
			return new BasicWrappingEList<CalAsymPrivateKeyWrapAsymConfig, GContainer>(filteredContainers, typeof(CalAsymPrivateKeyWrapAsymConfig), typeof(GContainer)) {
				override protected delegateAdd(CalAsymPrivateKeyWrapAsymConfig calAsymPrivateKeyWrapAsymConfig) {
					calAsymPrivateKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPrivateKeyWrapAsymConfig"))
					super.delegateAdd(calAsymPrivateKeyWrapAsymConfig)
				}
				
				override protected delegateAdd(int index, CalAsymPrivateKeyWrapAsymConfig calAsymPrivateKeyWrapAsymConfig) {
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
			
			def String getCalAsymPrivateKeyWrapAsymInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymInitConfiguration"])
			}
			
			def void setCalAsymPrivateKeyWrapAsymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalAsymPrivateKeyWrapAsymPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymPrimitiveName"])
			}
			
			def void setCalAsymPrivateKeyWrapAsymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapAsymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapAsymPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalAsymPrivateKeyWrapSymMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxCtxBufByteSize"])
		}
		
		def void setCalAsymPrivateKeyWrapSymMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalAsymPrivateKeyWrapSymMaxPrivKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxPrivKeySize"])
		}
		
		def void setCalAsymPrivateKeyWrapSymMaxPrivKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxPrivKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymMaxPrivKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalAsymPrivateKeyWrapSymMaxSymKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxSymKeySize"])
		}
		
		def void setCalAsymPrivateKeyWrapSymMaxSymKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymMaxSymKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalAsymPrivateKeyWrapSymConfig> getCalAsymPrivateKeyWrapSymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymPrivateKeyWrapSymConfig")
				}
			}
			return new BasicWrappingEList<CalAsymPrivateKeyWrapSymConfig, GContainer>(filteredContainers, typeof(CalAsymPrivateKeyWrapSymConfig), typeof(GContainer)) {
				override protected delegateAdd(CalAsymPrivateKeyWrapSymConfig calAsymPrivateKeyWrapSymConfig) {
					calAsymPrivateKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPrivateKeyWrapSymConfig"))
					super.delegateAdd(calAsymPrivateKeyWrapSymConfig)
				}
				
				override protected delegateAdd(int index, CalAsymPrivateKeyWrapSymConfig calAsymPrivateKeyWrapSymConfig) {
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
			
			def String getCalAsymPrivateKeyWrapSymInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymInitConfiguration"])
			}
			
			def void setCalAsymPrivateKeyWrapSymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalAsymPrivateKeyWrapSymPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymPrimitiveName"])
			}
			
			def void setCalAsymPrivateKeyWrapSymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPrivateKeyWrapSymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPrivateKeyWrapSymPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalAsymPublicKeyExtractMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractMaxCtxBufByteSize"])
		}
		
		def void setCalAsymPublicKeyExtractMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPublicKeyExtractMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalAsymPublicKeyExtractMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractMaxKeySize"])
		}
		
		def void setCalAsymPublicKeyExtractMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPublicKeyExtractMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalAsymPublicKeyExtractConfig> getCalAsymPublicKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalAsymPublicKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CalAsymPublicKeyExtractConfig, GContainer>(filteredContainers, typeof(CalAsymPublicKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(CalAsymPublicKeyExtractConfig calAsymPublicKeyExtractConfig) {
					calAsymPublicKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalAsymPublicKeyExtractConfig"))
					super.delegateAdd(calAsymPublicKeyExtractConfig)
				}
				
				override protected delegateAdd(int index, CalAsymPublicKeyExtractConfig calAsymPublicKeyExtractConfig) {
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
			
			def String getCalAsymPublicKeyExtractInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractInitConfiguration"])
			}
			
			def void setCalAsymPublicKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPublicKeyExtractInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalAsymPublicKeyExtractPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractPrimitiveName"])
			}
			
			def void setCalAsymPublicKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalAsymPublicKeyExtractPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalAsymPublicKeyExtractPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalChecksumMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumMaxCtxBufByteSize"])
		}
		
		def void setCalChecksumMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalChecksumMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalChecksumConfig> getCalChecksumConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalChecksumConfig")
				}
			}
			return new BasicWrappingEList<CalChecksumConfig, GContainer>(filteredContainers, typeof(CalChecksumConfig), typeof(GContainer)) {
				override protected delegateAdd(CalChecksumConfig calChecksumConfig) {
					calChecksumConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalChecksumConfig"))
					super.delegateAdd(calChecksumConfig)
				}
				
				override protected delegateAdd(int index, CalChecksumConfig calChecksumConfig) {
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
			
			def String getCalChecksumInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumInitConfiguration"])
			}
			
			def void setCalChecksumInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalChecksumInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalChecksumPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumPrimitiveName"])
			}
			
			def void setCalChecksumPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalChecksumPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalChecksumPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalCompressMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressMaxCtxBufByteSize"])
		}
		
		def void setCalCompressMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalCompressMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalCompressionConfig> getCalCompressionConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalCompressionConfig")
				}
			}
			return new BasicWrappingEList<CalCompressionConfig, GContainer>(filteredContainers, typeof(CalCompressionConfig), typeof(GContainer)) {
				override protected delegateAdd(CalCompressionConfig calCompressionConfig) {
					calCompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalCompressionConfig"))
					super.delegateAdd(calCompressionConfig)
				}
				
				override protected delegateAdd(int index, CalCompressionConfig calCompressionConfig) {
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
			
			def String getCalCompressInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressInitConfiguration"])
			}
			
			def void setCalCompressInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalCompressInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalCompressPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressPrimitiveName"])
			}
			
			def void setCalCompressPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalCompressPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalCompressPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalDecompressMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressMaxCtxBufByteSize"])
		}
		
		def void setCalDecompressMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalDecompressMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalDecompressionConfig> getCalDecompressionConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalDecompressionConfig")
				}
			}
			return new BasicWrappingEList<CalDecompressionConfig, GContainer>(filteredContainers, typeof(CalDecompressionConfig), typeof(GContainer)) {
				override protected delegateAdd(CalDecompressionConfig calDecompressionConfig) {
					calDecompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalDecompressionConfig"))
					super.delegateAdd(calDecompressionConfig)
				}
				
				override protected delegateAdd(int index, CalDecompressionConfig calDecompressionConfig) {
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
			
			def String getCalDecompressInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressInitConfiguration"])
			}
			
			def void setCalDecompressInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalDecompressInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalDecompressPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressPrimitiveName"])
			}
			
			def void setCalDecompressPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalDecompressPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalDecompressPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def String getCalMaxAlignScalarType(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMaxAlignScalarType"])
		}
		
		def void setCalMaxAlignScalarType(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMaxAlignScalarType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalMaxAlignScalarType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCalVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalVersionInfoApi"])
		}
		
		def void setCalVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalHashMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashMaxCtxBufByteSize"])
		}
		
		def void setCalHashMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalHashMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalHashConfig> getCalHashConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalHashConfig")
				}
			}
			return new BasicWrappingEList<CalHashConfig, GContainer>(filteredContainers, typeof(CalHashConfig), typeof(GContainer)) {
				override protected delegateAdd(CalHashConfig calHashConfig) {
					calHashConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalHashConfig"))
					super.delegateAdd(calHashConfig)
				}
				
				override protected delegateAdd(int index, CalHashConfig calHashConfig) {
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
			
			def String getCalHashInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashInitConfiguration"])
			}
			
			def void setCalHashInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalHashInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalHashPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashPrimitiveName"])
			}
			
			def void setCalHashPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalHashPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalHashPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalKeyDeriveMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveMaxCtxBufByteSize"])
		}
		
		def void setCalKeyDeriveMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyDeriveMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalKeyDeriveMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveMaxKeySize"])
		}
		
		def void setCalKeyDeriveMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyDeriveMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalKeyDeriveConfig> getCalKeyDeriveConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalKeyDeriveConfig")
				}
			}
			return new BasicWrappingEList<CalKeyDeriveConfig, GContainer>(filteredContainers, typeof(CalKeyDeriveConfig), typeof(GContainer)) {
				override protected delegateAdd(CalKeyDeriveConfig calKeyDeriveConfig) {
					calKeyDeriveConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalKeyDeriveConfig"))
					super.delegateAdd(calKeyDeriveConfig)
				}
				
				override protected delegateAdd(int index, CalKeyDeriveConfig calKeyDeriveConfig) {
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
			
			def String getCalKeyDeriveInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveInitConfiguration"])
			}
			
			def void setCalKeyDeriveInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDeriveInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyDeriveInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalKeyDerivePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDerivePrimitiveName"])
			}
			
			def void setCalKeyDerivePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyDerivePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyDerivePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalKeyExchangeCalcPubValMaxBaseTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxBaseTypeSize"])
		}
		
		def void setCalKeyExchangeCalcPubValMaxBaseTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxBaseTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValMaxBaseTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalKeyExchangeCalcPubValMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxCtxBufByteSize"])
		}
		
		def void setCalKeyExchangeCalcPubValMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalKeyExchangeCalcPubValMaxPrivateTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxPrivateTypeSize"])
		}
		
		def void setCalKeyExchangeCalcPubValMaxPrivateTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValMaxPrivateTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValMaxPrivateTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalKeyExchangeCalcPubValConfig> getCalKeyExchangeCalcPubValConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalKeyExchangeCalcPubValConfig")
				}
			}
			return new BasicWrappingEList<CalKeyExchangeCalcPubValConfig, GContainer>(filteredContainers, typeof(CalKeyExchangeCalcPubValConfig), typeof(GContainer)) {
				override protected delegateAdd(CalKeyExchangeCalcPubValConfig calKeyExchangeCalcPubValConfig) {
					calKeyExchangeCalcPubValConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalKeyExchangeCalcPubValConfig"))
					super.delegateAdd(calKeyExchangeCalcPubValConfig)
				}
				
				override protected delegateAdd(int index, CalKeyExchangeCalcPubValConfig calKeyExchangeCalcPubValConfig) {
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
			
			def String getCalKeyExchangeCalcPubValInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValInitConfiguration"])
			}
			
			def void setCalKeyExchangeCalcPubValInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalKeyExchangeCalcPubValPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValPrimitiveName"])
			}
			
			def void setCalKeyExchangeCalcPubValPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcPubValPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcPubValPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalKeyExchangeCalcSecretMaxBaseTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxBaseTypeSize"])
		}
		
		def void setCalKeyExchangeCalcSecretMaxBaseTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxBaseTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretMaxBaseTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalKeyExchangeCalcSecretMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxCtxBufByteSize"])
		}
		
		def void setCalKeyExchangeCalcSecretMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalKeyExchangeCalcSecretMaxPrivateTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxPrivateTypeSize"])
		}
		
		def void setCalKeyExchangeCalcSecretMaxPrivateTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretMaxPrivateTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretMaxPrivateTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalKeyExchangeCalcSecretConfig> getCalKeyExchangeCalcSecretConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalKeyExchangeCalcSecretConfig")
				}
			}
			return new BasicWrappingEList<CalKeyExchangeCalcSecretConfig, GContainer>(filteredContainers, typeof(CalKeyExchangeCalcSecretConfig), typeof(GContainer)) {
				override protected delegateAdd(CalKeyExchangeCalcSecretConfig calKeyExchangeCalcSecretConfig) {
					calKeyExchangeCalcSecretConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalKeyExchangeCalcSecretConfig"))
					super.delegateAdd(calKeyExchangeCalcSecretConfig)
				}
				
				override protected delegateAdd(int index, CalKeyExchangeCalcSecretConfig calKeyExchangeCalcSecretConfig) {
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
			
			def String getCalKeyExchangeCalcSecretInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretInitConfiguration"])
			}
			
			def void setCalKeyExchangeCalcSecretInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalKeyExchangeCalcSecretPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretPrimitiveName"])
			}
			
			def void setCalKeyExchangeCalcSecretPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalKeyExchangeCalcSecretPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalKeyExchangeCalcSecretPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalMacGenerateMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateMaxCtxBufByteSize"])
		}
		
		def void setCalMacGenerateMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalMacGenerateMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalMacGenerateMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateMaxKeySize"])
		}
		
		def void setCalMacGenerateMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalMacGenerateMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalMacGenerateConfig> getCalMacGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalMacGenerateConfig")
				}
			}
			return new BasicWrappingEList<CalMacGenerateConfig, GContainer>(filteredContainers, typeof(CalMacGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(CalMacGenerateConfig calMacGenerateConfig) {
					calMacGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalMacGenerateConfig"))
					super.delegateAdd(calMacGenerateConfig)
				}
				
				override protected delegateAdd(int index, CalMacGenerateConfig calMacGenerateConfig) {
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
			
			def String getCalMacGenerateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateInitConfiguration"])
			}
			
			def void setCalMacGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalMacGenerateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalMacGeneratePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGeneratePrimitiveName"])
			}
			
			def void setCalMacGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalMacGeneratePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalMacVerifyMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyMaxCtxBufByteSize"])
		}
		
		def void setCalMacVerifyMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalMacVerifyMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalMacVerifyMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyMaxKeySize"])
		}
		
		def void setCalMacVerifyMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalMacVerifyMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalMacVerifyConfig> getCalMacVerifyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalMacVerifyConfig")
				}
			}
			return new BasicWrappingEList<CalMacVerifyConfig, GContainer>(filteredContainers, typeof(CalMacVerifyConfig), typeof(GContainer)) {
				override protected delegateAdd(CalMacVerifyConfig calMacVerifyConfig) {
					calMacVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalMacVerifyConfig"))
					super.delegateAdd(calMacVerifyConfig)
				}
				
				override protected delegateAdd(int index, CalMacVerifyConfig calMacVerifyConfig) {
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
			
			def String getCalMacVerifyInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyInitConfiguration"])
			}
			
			def void setCalMacVerifyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalMacVerifyInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalMacVerifyPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyPrimitiveName"])
			}
			
			def void setCalMacVerifyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalMacVerifyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalMacVerifyPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		
		
		def List<CalRandomGenerateConfig> getCalRandomGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalRandomGenerateConfig")
				}
			}
			return new BasicWrappingEList<CalRandomGenerateConfig, GContainer>(filteredContainers, typeof(CalRandomGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(CalRandomGenerateConfig calRandomGenerateConfig) {
					calRandomGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalRandomGenerateConfig"))
					super.delegateAdd(calRandomGenerateConfig)
				}
				
				override protected delegateAdd(int index, CalRandomGenerateConfig calRandomGenerateConfig) {
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
			
			def String getCalRandomGenerateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomGenerateInitConfiguration"])
			}
			
			def void setCalRandomGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomGenerateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalRandomGeneratePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomGeneratePrimitiveName"])
			}
			
			def void setCalRandomGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomGeneratePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalRandomMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomMaxCtxBufByteSize"])
		}
		
		def void setCalRandomMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalRandomSeedConfig> getCalRandomSeedConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalRandomSeedConfig")
				}
			}
			return new BasicWrappingEList<CalRandomSeedConfig, GContainer>(filteredContainers, typeof(CalRandomSeedConfig), typeof(GContainer)) {
				override protected delegateAdd(CalRandomSeedConfig calRandomSeedConfig) {
					calRandomSeedConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalRandomSeedConfig"))
					super.delegateAdd(calRandomSeedConfig)
				}
				
				override protected delegateAdd(int index, CalRandomSeedConfig calRandomSeedConfig) {
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
			
			def String getCalRandomSeedInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomSeedInitConfiguration"])
			}
			
			def void setCalRandomSeedInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomSeedInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomSeedInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalRandomSeedPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomSeedPrimitiveName"])
			}
			
			def void setCalRandomSeedPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalRandomSeedPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalRandomSeedPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalSignatureGenerateMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateMaxCtxBufByteSize"])
		}
		
		def void setCalSignatureGenerateMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureGenerateMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSignatureGenerateMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateMaxKeySize"])
		}
		
		def void setCalSignatureGenerateMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureGenerateMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalSignatureGenerateConfig> getCalSignatureGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSignatureGenerateConfig")
				}
			}
			return new BasicWrappingEList<CalSignatureGenerateConfig, GContainer>(filteredContainers, typeof(CalSignatureGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(CalSignatureGenerateConfig calSignatureGenerateConfig) {
					calSignatureGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSignatureGenerateConfig"))
					super.delegateAdd(calSignatureGenerateConfig)
				}
				
				override protected delegateAdd(int index, CalSignatureGenerateConfig calSignatureGenerateConfig) {
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
			
			def String getCalSignatureGenerateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateInitConfiguration"])
			}
			
			def void setCalSignatureGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureGenerateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalSignatureGeneratePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGeneratePrimitiveName"])
			}
			
			def void setCalSignatureGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureGeneratePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalSignatureVerifyMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyMaxCtxBufByteSize"])
		}
		
		def void setCalSignatureVerifyMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureVerifyMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSignatureVerifyMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyMaxKeySize"])
		}
		
		def void setCalSignatureVerifyMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureVerifyMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalSignatureVerifyConfig> getCalSignatureVerifyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSignatureVerifyConfig")
				}
			}
			return new BasicWrappingEList<CalSignatureVerifyConfig, GContainer>(filteredContainers, typeof(CalSignatureVerifyConfig), typeof(GContainer)) {
				override protected delegateAdd(CalSignatureVerifyConfig calSignatureVerifyConfig) {
					calSignatureVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSignatureVerifyConfig"))
					super.delegateAdd(calSignatureVerifyConfig)
				}
				
				override protected delegateAdd(int index, CalSignatureVerifyConfig calSignatureVerifyConfig) {
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
			
			def String getCalSignatureVerifyInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyInitConfiguration"])
			}
			
			def void setCalSignatureVerifyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureVerifyInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalSignatureVerifyPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyPrimitiveName"])
			}
			
			def void setCalSignatureVerifyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSignatureVerifyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSignatureVerifyPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalSymBlockDecryptMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptMaxCtxBufByteSize"])
		}
		
		def void setCalSymBlockDecryptMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockDecryptMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSymBlockDecryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptMaxKeySize"])
		}
		
		def void setCalSymBlockDecryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockDecryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalSymBlockDecryptConfig> getCalSymBlockDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymBlockDecryptConfig")
				}
			}
			return new BasicWrappingEList<CalSymBlockDecryptConfig, GContainer>(filteredContainers, typeof(CalSymBlockDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CalSymBlockDecryptConfig calSymBlockDecryptConfig) {
					calSymBlockDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymBlockDecryptConfig"))
					super.delegateAdd(calSymBlockDecryptConfig)
				}
				
				override protected delegateAdd(int index, CalSymBlockDecryptConfig calSymBlockDecryptConfig) {
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
			
			def String getCalSymBlockDecryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptInitConfiguration"])
			}
			
			def void setCalSymBlockDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockDecryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalSymBlockDecryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptPrimitiveName"])
			}
			
			def void setCalSymBlockDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockDecryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockDecryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalSymBlockEncryptMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptMaxCtxBufByteSize"])
		}
		
		def void setCalSymBlockEncryptMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockEncryptMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSymBlockEncryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptMaxKeySize"])
		}
		
		def void setCalSymBlockEncryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockEncryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalSymBlockEncryptConfig> getCalSymBlockEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymBlockEncryptConfig")
				}
			}
			return new BasicWrappingEList<CalSymBlockEncryptConfig, GContainer>(filteredContainers, typeof(CalSymBlockEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CalSymBlockEncryptConfig calSymBlockEncryptConfig) {
					calSymBlockEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymBlockEncryptConfig"))
					super.delegateAdd(calSymBlockEncryptConfig)
				}
				
				override protected delegateAdd(int index, CalSymBlockEncryptConfig calSymBlockEncryptConfig) {
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
			
			def String getCalSymBlockEncryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptInitConfiguration"])
			}
			
			def void setCalSymBlockEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockEncryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalSymBlockEncryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptPrimitiveName"])
			}
			
			def void setCalSymBlockEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymBlockEncryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymBlockEncryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalSymDecryptMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptMaxCtxBufByteSize"])
		}
		
		def void setCalSymDecryptMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymDecryptMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSymDecryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptMaxKeySize"])
		}
		
		def void setCalSymDecryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymDecryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalSymDecryptConfig> getCalSymDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymDecryptConfig")
				}
			}
			return new BasicWrappingEList<CalSymDecryptConfig, GContainer>(filteredContainers, typeof(CalSymDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CalSymDecryptConfig calSymDecryptConfig) {
					calSymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymDecryptConfig"))
					super.delegateAdd(calSymDecryptConfig)
				}
				
				override protected delegateAdd(int index, CalSymDecryptConfig calSymDecryptConfig) {
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
			
			def String getCalSymDecryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptInitConfiguration"])
			}
			
			def void setCalSymDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymDecryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalSymDecryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptPrimitiveName"])
			}
			
			def void setCalSymDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymDecryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymDecryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalSymEncryptMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptMaxCtxBufByteSize"])
		}
		
		def void setCalSymEncryptMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymEncryptMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSymEncryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptMaxKeySize"])
		}
		
		def void setCalSymEncryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymEncryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalSymEncryptConfig> getCalSymEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymEncryptConfig")
				}
			}
			return new BasicWrappingEList<CalSymEncryptConfig, GContainer>(filteredContainers, typeof(CalSymEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CalSymEncryptConfig calSymEncryptConfig) {
					calSymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymEncryptConfig"))
					super.delegateAdd(calSymEncryptConfig)
				}
				
				override protected delegateAdd(int index, CalSymEncryptConfig calSymEncryptConfig) {
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
			
			def String getCalSymEncryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptInitConfiguration"])
			}
			
			def void setCalSymEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymEncryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalSymEncryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptPrimitiveName"])
			}
			
			def void setCalSymEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymEncryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymEncryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalSymKeyExtractMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractMaxCtxBufByteSize"])
		}
		
		def void setCalSymKeyExtractMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyExtractMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSymKeyExtractMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractMaxKeySize"])
		}
		
		def void setCalSymKeyExtractMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyExtractMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalSymKeyExtractConfig> getCalSymKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CalSymKeyExtractConfig, GContainer>(filteredContainers, typeof(CalSymKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(CalSymKeyExtractConfig calSymKeyExtractConfig) {
					calSymKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymKeyExtractConfig"))
					super.delegateAdd(calSymKeyExtractConfig)
				}
				
				override protected delegateAdd(int index, CalSymKeyExtractConfig calSymKeyExtractConfig) {
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
			
			def String getCalSymKeyExtractInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractInitConfiguration"])
			}
			
			def void setCalSymKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyExtractInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalSymKeyExtractPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractPrimitiveName"])
			}
			
			def void setCalSymKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyExtractPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyExtractPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalSymKeyWrapAsymMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxCtxBufByteSize"])
		}
		
		def void setCalSymKeyWrapAsymMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSymKeyWrapAsymMaxPubKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxPubKeySize"])
		}
		
		def void setCalSymKeyWrapAsymMaxPubKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxPubKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymMaxPubKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSymKeyWrapAsymMaxSymKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxSymKeySize"])
		}
		
		def void setCalSymKeyWrapAsymMaxSymKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymMaxSymKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalSymKeyWrapAsymConfig> getCalSymKeyWrapAsymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymKeyWrapAsymConfig")
				}
			}
			return new BasicWrappingEList<CalSymKeyWrapAsymConfig, GContainer>(filteredContainers, typeof(CalSymKeyWrapAsymConfig), typeof(GContainer)) {
				override protected delegateAdd(CalSymKeyWrapAsymConfig calSymKeyWrapAsymConfig) {
					calSymKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymKeyWrapAsymConfig"))
					super.delegateAdd(calSymKeyWrapAsymConfig)
				}
				
				override protected delegateAdd(int index, CalSymKeyWrapAsymConfig calSymKeyWrapAsymConfig) {
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
			
			def String getCalSymKeyWrapAsymInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymInitConfiguration"])
			}
			
			def void setCalSymKeyWrapAsymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalSymKeyWrapAsymPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymPrimitiveName"])
			}
			
			def void setCalSymKeyWrapAsymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapAsymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapAsymPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCalSymKeyWrapSymMaxCtxBufByteSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymMaxCtxBufByteSize"])
		}
		
		def void setCalSymKeyWrapSymMaxCtxBufByteSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymMaxCtxBufByteSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapSymMaxCtxBufByteSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCalSymKeyWrapSymMaxSymKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymMaxSymKeySize"])
		}
		
		def void setCalSymKeyWrapSymMaxSymKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapSymMaxSymKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CalSymKeyWrapSymConfig> getCalSymKeyWrapSymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CalSymKeyWrapSymConfig")
				}
			}
			return new BasicWrappingEList<CalSymKeyWrapSymConfig, GContainer>(filteredContainers, typeof(CalSymKeyWrapSymConfig), typeof(GContainer)) {
				override protected delegateAdd(CalSymKeyWrapSymConfig calSymKeyWrapSymConfig) {
					calSymKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CalSymKeyWrapSymConfig"))
					super.delegateAdd(calSymKeyWrapSymConfig)
				}
				
				override protected delegateAdd(int index, CalSymKeyWrapSymConfig calSymKeyWrapSymConfig) {
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
			
			def String getCalSymKeyWrapSymInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymInitConfiguration"])
			}
			
			def void setCalSymKeyWrapSymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapSymInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCalSymKeyWrapSymPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymPrimitiveName"])
			}
			
			def void setCalSymKeyWrapSymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CalSymKeyWrapSymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CalSymKeyWrapSymPrimitiveName"])
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
