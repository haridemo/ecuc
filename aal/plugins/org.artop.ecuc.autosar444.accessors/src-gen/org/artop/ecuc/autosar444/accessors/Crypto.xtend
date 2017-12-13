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
package org.artop.ecuc.autosar444.accessors

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

class Crypto implements IWrapper<GModuleConfiguration> {
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

	def CryptoDriverObjects getCryptoDriverObjects(){
		moduleConfiguration.getByType(typeof(CryptoDriverObjects))
	}

	def void setCryptoDriverObjects(CryptoDriverObjects cryptoDriverObjects){
		val GContainer container = cryptoDriverObjects.getTarget()
	    moduleConfiguration.setContainer(container, "CryptoDriverObjects")
	}
	def CryptoGeneral getCryptoGeneral(){
		moduleConfiguration.getByType(typeof(CryptoGeneral))
	}

	def void setCryptoGeneral(CryptoGeneral cryptoGeneral){
		val GContainer container = cryptoGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "CryptoGeneral")
	}
	def CryptoKeyElements getCryptoKeyElements(){
		moduleConfiguration.getByType(typeof(CryptoKeyElements))
	}

	def void setCryptoKeyElements(CryptoKeyElements cryptoKeyElements){
		val GContainer container = cryptoKeyElements.getTarget()
	    moduleConfiguration.setContainer(container, "CryptoKeyElements")
	}
	def CryptoKeyTypes getCryptoKeyTypes(){
		moduleConfiguration.getByType(typeof(CryptoKeyTypes))
	}

	def void setCryptoKeyTypes(CryptoKeyTypes cryptoKeyTypes){
		val GContainer container = cryptoKeyTypes.getTarget()
	    moduleConfiguration.setContainer(container, "CryptoKeyTypes")
	}
	def CryptoKeys getCryptoKeys(){
		moduleConfiguration.getByType(typeof(CryptoKeys))
	}

	def void setCryptoKeys(CryptoKeys cryptoKeys){
		val GContainer container = cryptoKeys.getTarget()
	    moduleConfiguration.setContainer(container, "CryptoKeys")
	}
	def List<CryptoPrimitives> getCryptoPrimitives(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "CryptoPrimitives")
			}
		}
		return new BasicWrappingEList<CryptoPrimitives, GContainer>(filteredContainers, typeof(CryptoPrimitives), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Crypto.CryptoPrimitives cryptoPrimitives) {
				cryptoPrimitives.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CryptoPrimitives"))
				super.delegateAdd(cryptoPrimitives)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Crypto.CryptoPrimitives cryptoPrimitives) {
				cryptoPrimitives.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CryptoPrimitives"))
				super.delegateAdd(index, cryptoPrimitives)
			}
		}
	}

	static class CryptoDriverObjects implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CryptoDriverObjects)){
				return false
			}
			this.target == (object as CryptoDriverObjects).target
		}
	
		
		
		def List<CryptoDriverObject> getCryptoDriverObjects(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CryptoDriverObject")
				}
			}
			return new BasicWrappingEList<CryptoDriverObject, GContainer>(filteredContainers, typeof(CryptoDriverObject), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Crypto.CryptoDriverObjects.CryptoDriverObject cryptoDriverObject) {
					cryptoDriverObject.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoDriverObject"))
					super.delegateAdd(cryptoDriverObject)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Crypto.CryptoDriverObjects.CryptoDriverObject cryptoDriverObject) {
					cryptoDriverObject.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoDriverObject"))
					super.delegateAdd(index, cryptoDriverObject)
				}
			}
		}
		
		
		static class CryptoDriverObject implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CryptoDriverObject)){
					return false
				}
				this.target == (object as CryptoDriverObject).target
			}
		
			def BigInteger getCryptoDriverObjectId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoDriverObjectId"].getBigIntegerValue()
			}
			
			def void setCryptoDriverObjectId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoDriverObjectId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoDriverObjectId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCryptoQueueSize(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoQueueSize"].getBigIntegerValue()
			}
			
			def void setCryptoQueueSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoQueueSize"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoQueueSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar444.accessors.Crypto.CryptoPrimitives.CryptoPrimitive> getCryptoPrimitiveRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "CryptoPrimitiveRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "CryptoPrimitiveRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Crypto.CryptoPrimitives.CryptoPrimitive>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Crypto.CryptoPrimitives.CryptoPrimitive)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Crypto.CryptoPrimitives.CryptoPrimitive object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Crypto.CryptoPrimitives.CryptoPrimitive(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
	}
	static class CryptoGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CryptoGeneral)){
				return false
			}
			this.target == (object as CryptoGeneral).target
		}
	
		def Boolean getCryptoDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoDevErrorDetect"].getBooleanValue()
		}
		
		def void setCryptoDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getCryptoInstanceId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoInstanceId"].getBigIntegerValue()
		}
		
		def void setCryptoInstanceId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoInstanceId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoInstanceId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getCryptoMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setCryptoMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCryptoVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoVersionInfoApi"].getBooleanValue()
		}
		
		def void setCryptoVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class CryptoKeyElements implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CryptoKeyElements)){
				return false
			}
			this.target == (object as CryptoKeyElements).target
		}
	
		
		
		def List<CryptoKeyElement> getCryptoKeyElements(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CryptoKeyElement")
				}
			}
			return new BasicWrappingEList<CryptoKeyElement, GContainer>(filteredContainers, typeof(CryptoKeyElement), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement cryptoKeyElement) {
					cryptoKeyElement.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoKeyElement"))
					super.delegateAdd(cryptoKeyElement)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement cryptoKeyElement) {
					cryptoKeyElement.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoKeyElement"))
					super.delegateAdd(index, cryptoKeyElement)
				}
			}
		}
		
		
		static class CryptoKeyElement implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CryptoKeyElement)){
					return false
				}
				this.target == (object as CryptoKeyElement).target
			}
		
			def Boolean getCryptoKeyElementAllowPartialAccess(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementAllowPartialAccess"].getBooleanValue()
			}
			
			def void setCryptoKeyElementAllowPartialAccess(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementAllowPartialAccess"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyElementAllowPartialAccess"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def CryptoKeyElementFormat getCryptoKeyElementFormat(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementFormat"].getCryptoKeyElementFormatValue()
			}
			
			def void setCryptoKeyElementFormat(CryptoKeyElementFormat value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementFormat"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyElementFormat"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CryptoKeyElementFormat {
				CRYPTO_KE_FORMAT_BIN_CERT_CVC, 
				CRYPTO_KE_FORMAT_BIN_CERT_X509_V3, 
				CRYPTO_KE_FORMAT_BIN_IDENT_PRIVATEKEY_PKCS8, 
				CRYPTO_KE_FORMAT_BIN_IDENT_PUBLICKEY, 
				CRYPTO_KE_FORMAT_BIN_OCTET, 
				CRYPTO_KE_FORMAT_BIN_RSA_PRIVATEKEY, 
				CRYPTO_KE_FORMAT_BIN_RSA_PUBLICKEY, 
				CRYPTO_KE_FORMAT_BIN_SHEKEYS
			}
			
			def CryptoKeyElementFormat getCryptoKeyElementFormatValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRYPTO_KE_FORMAT_BIN_CERT_CVC" : CryptoKeyElementFormat.CRYPTO_KE_FORMAT_BIN_CERT_CVC
					case "CRYPTO_KE_FORMAT_BIN_CERT_X509_V3" : CryptoKeyElementFormat.CRYPTO_KE_FORMAT_BIN_CERT_X509_V3
					case "CRYPTO_KE_FORMAT_BIN_IDENT_PRIVATEKEY_PKCS8" : CryptoKeyElementFormat.CRYPTO_KE_FORMAT_BIN_IDENT_PRIVATEKEY_PKCS8
					case "CRYPTO_KE_FORMAT_BIN_IDENT_PUBLICKEY" : CryptoKeyElementFormat.CRYPTO_KE_FORMAT_BIN_IDENT_PUBLICKEY
					case "CRYPTO_KE_FORMAT_BIN_OCTET" : CryptoKeyElementFormat.CRYPTO_KE_FORMAT_BIN_OCTET
					case "CRYPTO_KE_FORMAT_BIN_RSA_PRIVATEKEY" : CryptoKeyElementFormat.CRYPTO_KE_FORMAT_BIN_RSA_PRIVATEKEY
					case "CRYPTO_KE_FORMAT_BIN_RSA_PUBLICKEY" : CryptoKeyElementFormat.CRYPTO_KE_FORMAT_BIN_RSA_PUBLICKEY
					case "CRYPTO_KE_FORMAT_BIN_SHEKEYS" : CryptoKeyElementFormat.CRYPTO_KE_FORMAT_BIN_SHEKEYS
				}
			}
			
			def void setCryptoKeyElementFormatValue(GParameterValue parameterValue, CryptoKeyElementFormat value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getCryptoKeyElementId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementId"].getBigIntegerValue()
			}
			
			def void setCryptoKeyElementId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyElementId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCryptoKeyElementInitValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementInitValue"].getStringValue()
			}
			
			def void setCryptoKeyElementInitValue(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementInitValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyElementInitValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCryptoKeyElementPersist(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementPersist"].getBooleanValue()
			}
			
			def void setCryptoKeyElementPersist(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementPersist"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyElementPersist"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def CryptoKeyElementReadAccess getCryptoKeyElementReadAccess(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementReadAccess"].getCryptoKeyElementReadAccessValue()
			}
			
			def void setCryptoKeyElementReadAccess(CryptoKeyElementReadAccess value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementReadAccess"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyElementReadAccess"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CryptoKeyElementReadAccess {
				CRYPTO_RA_ALLOWED, 
				CRYPTO_RA_DENIED, 
				CRYPTO_RA_ENCRYPTED, 
				CRYPTO_RA_INTERNAL_COPY
			}
			
			def CryptoKeyElementReadAccess getCryptoKeyElementReadAccessValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRYPTO_RA_ALLOWED" : CryptoKeyElementReadAccess.CRYPTO_RA_ALLOWED
					case "CRYPTO_RA_DENIED" : CryptoKeyElementReadAccess.CRYPTO_RA_DENIED
					case "CRYPTO_RA_ENCRYPTED" : CryptoKeyElementReadAccess.CRYPTO_RA_ENCRYPTED
					case "CRYPTO_RA_INTERNAL_COPY" : CryptoKeyElementReadAccess.CRYPTO_RA_INTERNAL_COPY
				}
			}
			
			def void setCryptoKeyElementReadAccessValue(GParameterValue parameterValue, CryptoKeyElementReadAccess value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getCryptoKeyElementSize(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementSize"].getBigIntegerValue()
			}
			
			def void setCryptoKeyElementSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementSize"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyElementSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CryptoKeyElementWriteAccess getCryptoKeyElementWriteAccess(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementWriteAccess"].getCryptoKeyElementWriteAccessValue()
			}
			
			def void setCryptoKeyElementWriteAccess(CryptoKeyElementWriteAccess value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyElementWriteAccess"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyElementWriteAccess"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CryptoKeyElementWriteAccess {
				CRYPTO_WA_ALLOWED, 
				CRYPTO_WA_DENIED, 
				CRYPTO_WA_ENCRYPTED, 
				CRYPTO_WA_INTERNAL_COPY
			}
			
			def CryptoKeyElementWriteAccess getCryptoKeyElementWriteAccessValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRYPTO_WA_ALLOWED" : CryptoKeyElementWriteAccess.CRYPTO_WA_ALLOWED
					case "CRYPTO_WA_DENIED" : CryptoKeyElementWriteAccess.CRYPTO_WA_DENIED
					case "CRYPTO_WA_ENCRYPTED" : CryptoKeyElementWriteAccess.CRYPTO_WA_ENCRYPTED
					case "CRYPTO_WA_INTERNAL_COPY" : CryptoKeyElementWriteAccess.CRYPTO_WA_INTERNAL_COPY
				}
			}
			
			def void setCryptoKeyElementWriteAccessValue(GParameterValue parameterValue, CryptoKeyElementWriteAccess value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement getCryptoKeyElementVirtualTargetRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement), "CryptoKeyElementVirtualTargetRef")
			}
			
			def void setCryptoKeyElementVirtualTargetRef(org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CryptoKeyElementVirtualTargetRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class CryptoKeyTypes implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CryptoKeyTypes)){
				return false
			}
			this.target == (object as CryptoKeyTypes).target
		}
	
		
		
		def List<CryptoKeyType> getCryptoKeyTypes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CryptoKeyType")
				}
			}
			return new BasicWrappingEList<CryptoKeyType, GContainer>(filteredContainers, typeof(CryptoKeyType), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyTypes.CryptoKeyType cryptoKeyType) {
					cryptoKeyType.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoKeyType"))
					super.delegateAdd(cryptoKeyType)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyTypes.CryptoKeyType cryptoKeyType) {
					cryptoKeyType.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoKeyType"))
					super.delegateAdd(index, cryptoKeyType)
				}
			}
		}
		
		
		static class CryptoKeyType implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CryptoKeyType)){
					return false
				}
				this.target == (object as CryptoKeyType).target
			}
		
			
			def List<org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement> getCryptoKeyElementRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "CryptoKeyElementRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "CryptoKeyElementRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyElements.CryptoKeyElement(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
	}
	static class CryptoKeys implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CryptoKeys)){
				return false
			}
			this.target == (object as CryptoKeys).target
		}
	
		
		
		def List<CryptoKey> getCryptoKeys(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CryptoKey")
				}
			}
			return new BasicWrappingEList<CryptoKey, GContainer>(filteredContainers, typeof(CryptoKey), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeys.CryptoKey cryptoKey) {
					cryptoKey.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoKey"))
					super.delegateAdd(cryptoKey)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeys.CryptoKey cryptoKey) {
					cryptoKey.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoKey"))
					super.delegateAdd(index, cryptoKey)
				}
			}
		}
		
		
		static class CryptoKey implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CryptoKey)){
					return false
				}
				this.target == (object as CryptoKey).target
			}
		
			def BigInteger getCryptoKeyDeriveIterations(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyDeriveIterations"].getBigIntegerValue()
			}
			
			def void setCryptoKeyDeriveIterations(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyDeriveIterations"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyDeriveIterations"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCryptoKeyId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyId"].getBigIntegerValue()
			}
			
			def void setCryptoKeyId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoKeyId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoKeyId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyTypes.CryptoKeyType getCryptoKeyTypeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyTypes.CryptoKeyType), "CryptoKeyTypeRef")
			}
			
			def void setCryptoKeyTypeRef(org.artop.ecuc.autosar444.accessors.Crypto.CryptoKeyTypes.CryptoKeyType object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CryptoKeyTypeRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class CryptoPrimitives implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CryptoPrimitives)){
				return false
			}
			this.target == (object as CryptoPrimitives).target
		}
	
		
		
		def List<CryptoPrimitive> getCryptoPrimitives(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CryptoPrimitive")
				}
			}
			return new BasicWrappingEList<CryptoPrimitive, GContainer>(filteredContainers, typeof(CryptoPrimitive), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Crypto.CryptoPrimitives.CryptoPrimitive cryptoPrimitive) {
					cryptoPrimitive.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoPrimitive"))
					super.delegateAdd(cryptoPrimitive)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Crypto.CryptoPrimitives.CryptoPrimitive cryptoPrimitive) {
					cryptoPrimitive.target?.gSetDefinition(containerValue.getContainerDefinition("CryptoPrimitive"))
					super.delegateAdd(index, cryptoPrimitive)
				}
			}
		}
		
		
		static class CryptoPrimitive implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CryptoPrimitive)){
					return false
				}
				this.target == (object as CryptoPrimitive).target
			}
		
			def CryptoPrimitiveAlgorithmFamily getCryptoPrimitiveAlgorithmFamily(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoPrimitiveAlgorithmFamily"].getCryptoPrimitiveAlgorithmFamilyValue()
			}
			
			def void setCryptoPrimitiveAlgorithmFamily(CryptoPrimitiveAlgorithmFamily value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoPrimitiveAlgorithmFamily"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoPrimitiveAlgorithmFamily"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CryptoPrimitiveAlgorithmFamily {
				CRYPTO_ALGOFAM_3DES, 
				CRYPTO_ALGOFAM_AES, 
				CRYPTO_ALGOFAM_BLAKE_1_256, 
				CRYPTO_ALGOFAM_BLAKE_1_512, 
				CRYPTO_ALGOFAM_BLAKE_2s_256, 
				CRYPTO_ALGOFAM_BLAKE_2s_512, 
				CRYPTO_ALGOFAM_BRAINPOOL, 
				CRYPTO_ALGOFAM_CHACHA, 
				CRYPTO_ALGOFAM_CUSTOM, 
				CRYPTO_ALGOFAM_ECCNIST, 
				CRYPTO_ALGOFAM_ECIES, 
				CRYPTO_ALGOFAM_ED25519, 
				CRYPTO_ALGOFAM_NOT_SET, 
				CRYPTO_ALGOFAM_RIPEMD160, 
				CRYPTO_ALGOFAM_RNG, 
				CRYPTO_ALGOFAM_RSA, 
				CRYPTO_ALGOFAM_SECURECOUNTER, 
				CRYPTO_ALGOFAM_SHA1, 
				CRYPTO_ALGOFAM_SHA2_224, 
				CRYPTO_ALGOFAM_SHA2_256, 
				CRYPTO_ALGOFAM_SHA2_384, 
				CRYPTO_ALGOFAM_SHA2_512, 
				CRYPTO_ALGOFAM_SHA2_512_224, 
				CRYPTO_ALGOFAM_SHA2_512_256, 
				CRYPTO_ALGOFAM_SHA3_224, 
				CRYPTO_ALGOFAM_SHA3_256, 
				CRYPTO_ALGOFAM_SHA3_384, 
				CRYPTO_ALGOFAM_SHA3_512, 
				CRYPTO_ALGOFAM_SHAKE128, 
				CRYPTO_ALGOFAM_SHAKE256, 
				CRYPTO_ALGOFAM_SIPHASH
			}
			
			def CryptoPrimitiveAlgorithmFamily getCryptoPrimitiveAlgorithmFamilyValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRYPTO_ALGOFAM_3DES" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_3DES
					case "CRYPTO_ALGOFAM_AES" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_AES
					case "CRYPTO_ALGOFAM_BLAKE_1_256" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_BLAKE_1_256
					case "CRYPTO_ALGOFAM_BLAKE_1_512" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_BLAKE_1_512
					case "CRYPTO_ALGOFAM_BLAKE_2s_256" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_BLAKE_2s_256
					case "CRYPTO_ALGOFAM_BLAKE_2s_512" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_BLAKE_2s_512
					case "CRYPTO_ALGOFAM_BRAINPOOL" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_BRAINPOOL
					case "CRYPTO_ALGOFAM_CHACHA" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_CHACHA
					case "CRYPTO_ALGOFAM_CUSTOM" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_CUSTOM
					case "CRYPTO_ALGOFAM_ECCNIST" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_ECCNIST
					case "CRYPTO_ALGOFAM_ECIES" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_ECIES
					case "CRYPTO_ALGOFAM_ED25519" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_ED25519
					case "CRYPTO_ALGOFAM_NOT_SET" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_NOT_SET
					case "CRYPTO_ALGOFAM_RIPEMD160" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_RIPEMD160
					case "CRYPTO_ALGOFAM_RNG" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_RNG
					case "CRYPTO_ALGOFAM_RSA" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_RSA
					case "CRYPTO_ALGOFAM_SECURECOUNTER" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SECURECOUNTER
					case "CRYPTO_ALGOFAM_SHA1" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA1
					case "CRYPTO_ALGOFAM_SHA2_224" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA2_224
					case "CRYPTO_ALGOFAM_SHA2_256" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA2_256
					case "CRYPTO_ALGOFAM_SHA2_384" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA2_384
					case "CRYPTO_ALGOFAM_SHA2_512" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA2_512
					case "CRYPTO_ALGOFAM_SHA2_512_224" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA2_512_224
					case "CRYPTO_ALGOFAM_SHA2_512_256" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA2_512_256
					case "CRYPTO_ALGOFAM_SHA3_224" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA3_224
					case "CRYPTO_ALGOFAM_SHA3_256" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA3_256
					case "CRYPTO_ALGOFAM_SHA3_384" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA3_384
					case "CRYPTO_ALGOFAM_SHA3_512" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHA3_512
					case "CRYPTO_ALGOFAM_SHAKE128" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHAKE128
					case "CRYPTO_ALGOFAM_SHAKE256" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SHAKE256
					case "CRYPTO_ALGOFAM_SIPHASH" : CryptoPrimitiveAlgorithmFamily.CRYPTO_ALGOFAM_SIPHASH
				}
			}
			
			def void setCryptoPrimitiveAlgorithmFamilyValue(GParameterValue parameterValue, CryptoPrimitiveAlgorithmFamily value){
				parameterValue.setValue(value)
			}
			
			def CryptoPrimitiveAlgorithmMode getCryptoPrimitiveAlgorithmMode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoPrimitiveAlgorithmMode"].getCryptoPrimitiveAlgorithmModeValue()
			}
			
			def void setCryptoPrimitiveAlgorithmMode(CryptoPrimitiveAlgorithmMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoPrimitiveAlgorithmMode"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoPrimitiveAlgorithmMode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CryptoPrimitiveAlgorithmMode {
				CRYPTO_ALGOMODE_12ROUNDS, 
				CRYPTO_ALGOMODE_20ROUNDS, 
				CRYPTO_ALGOMODE_8ROUNDS, 
				CRYPTO_ALGOMODE_CBC, 
				CRYPTO_ALGOMODE_CFB, 
				CRYPTO_ALGOMODE_CMAC, 
				CRYPTO_ALGOMODE_CTR, 
				CRYPTO_ALGOMODE_CTRDRBG, 
				CRYPTO_ALGOMODE_CUSTOM, 
				CRYPTO_ALGOMODE_ECB, 
				CRYPTO_ALGOMODE_GCM, 
				CRYPTO_ALGOMODE_GMAC, 
				CRYPTO_ALGOMODE_HMAC, 
				CRYPTO_ALGOMODE_NOT_SET, 
				CRYPTO_ALGOMODE_OFB, 
				CRYPTO_ALGOMODE_RSAES_OAEP, 
				CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5, 
				CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5, 
				CRYPTO_ALGOMODE_RSASSA_PSS, 
				CRYPTO_ALGOMODE_SIPHASH_2_4, 
				CRYPTO_ALGOMODE_SIPHASH_4_8, 
				CRYPTO_ALGOMODE_XTS
			}
			
			def CryptoPrimitiveAlgorithmMode getCryptoPrimitiveAlgorithmModeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRYPTO_ALGOMODE_12ROUNDS" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_12ROUNDS
					case "CRYPTO_ALGOMODE_20ROUNDS" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_20ROUNDS
					case "CRYPTO_ALGOMODE_8ROUNDS" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_8ROUNDS
					case "CRYPTO_ALGOMODE_CBC" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_CBC
					case "CRYPTO_ALGOMODE_CFB" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_CFB
					case "CRYPTO_ALGOMODE_CMAC" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_CMAC
					case "CRYPTO_ALGOMODE_CTR" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_CTR
					case "CRYPTO_ALGOMODE_CTRDRBG" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_CTRDRBG
					case "CRYPTO_ALGOMODE_CUSTOM" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_CUSTOM
					case "CRYPTO_ALGOMODE_ECB" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_ECB
					case "CRYPTO_ALGOMODE_GCM" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_GCM
					case "CRYPTO_ALGOMODE_GMAC" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_GMAC
					case "CRYPTO_ALGOMODE_HMAC" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_HMAC
					case "CRYPTO_ALGOMODE_NOT_SET" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_NOT_SET
					case "CRYPTO_ALGOMODE_OFB" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_OFB
					case "CRYPTO_ALGOMODE_RSAES_OAEP" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_RSAES_OAEP
					case "CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5
					case "CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5
					case "CRYPTO_ALGOMODE_RSASSA_PSS" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_RSASSA_PSS
					case "CRYPTO_ALGOMODE_SIPHASH_2_4" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_SIPHASH_2_4
					case "CRYPTO_ALGOMODE_SIPHASH_4_8" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_SIPHASH_4_8
					case "CRYPTO_ALGOMODE_XTS" : CryptoPrimitiveAlgorithmMode.CRYPTO_ALGOMODE_XTS
				}
			}
			
			def void setCryptoPrimitiveAlgorithmModeValue(GParameterValue parameterValue, CryptoPrimitiveAlgorithmMode value){
				parameterValue.setValue(value)
			}
			
			def CryptoPrimitiveAlgorithmSecondaryFamily getCryptoPrimitiveAlgorithmSecondaryFamily(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoPrimitiveAlgorithmSecondaryFamily"].getCryptoPrimitiveAlgorithmSecondaryFamilyValue()
			}
			
			def void setCryptoPrimitiveAlgorithmSecondaryFamily(CryptoPrimitiveAlgorithmSecondaryFamily value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoPrimitiveAlgorithmSecondaryFamily"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoPrimitiveAlgorithmSecondaryFamily"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CryptoPrimitiveAlgorithmSecondaryFamily {
				CRYPTO_ALGOFAM_3DES, 
				CRYPTO_ALGOFAM_AES, 
				CRYPTO_ALGOFAM_BLAKE_1_256, 
				CRYPTO_ALGOFAM_BLAKE_1_512, 
				CRYPTO_ALGOFAM_BLAKE_2s_256, 
				CRYPTO_ALGOFAM_BLAKE_2s_512, 
				CRYPTO_ALGOFAM_BRAINPOOL, 
				CRYPTO_ALGOFAM_CHACHA, 
				CRYPTO_ALGOFAM_CUSTOM, 
				CRYPTO_ALGOFAM_ECCNIST, 
				CRYPTO_ALGOFAM_ECIES, 
				CRYPTO_ALGOFAM_ED25519, 
				CRYPTO_ALGOFAM_NOT_SET, 
				CRYPTO_ALGOFAM_RIPEMD160, 
				CRYPTO_ALGOFAM_RNG, 
				CRYPTO_ALGOFAM_RSA, 
				CRYPTO_ALGOFAM_SECURECOUNTER, 
				CRYPTO_ALGOFAM_SHA1, 
				CRYPTO_ALGOFAM_SHA2_224, 
				CRYPTO_ALGOFAM_SHA2_256, 
				CRYPTO_ALGOFAM_SHA2_384, 
				CRYPTO_ALGOFAM_SHA2_512, 
				CRYPTO_ALGOFAM_SHA2_512_224, 
				CRYPTO_ALGOFAM_SHA2_512_256, 
				CRYPTO_ALGOFAM_SHA3_224, 
				CRYPTO_ALGOFAM_SHA3_256, 
				CRYPTO_ALGOFAM_SHA3_384, 
				CRYPTO_ALGOFAM_SHA3_512, 
				CRYPTO_ALGOFAM_SHAKE128, 
				CRYPTO_ALGOFAM_SHAKE256, 
				CRYPTO_ALGOFAM_SIPHASH
			}
			
			def CryptoPrimitiveAlgorithmSecondaryFamily getCryptoPrimitiveAlgorithmSecondaryFamilyValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRYPTO_ALGOFAM_3DES" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_3DES
					case "CRYPTO_ALGOFAM_AES" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_AES
					case "CRYPTO_ALGOFAM_BLAKE_1_256" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_BLAKE_1_256
					case "CRYPTO_ALGOFAM_BLAKE_1_512" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_BLAKE_1_512
					case "CRYPTO_ALGOFAM_BLAKE_2s_256" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_BLAKE_2s_256
					case "CRYPTO_ALGOFAM_BLAKE_2s_512" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_BLAKE_2s_512
					case "CRYPTO_ALGOFAM_BRAINPOOL" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_BRAINPOOL
					case "CRYPTO_ALGOFAM_CHACHA" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CHACHA
					case "CRYPTO_ALGOFAM_CUSTOM" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CUSTOM
					case "CRYPTO_ALGOFAM_ECCNIST" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_ECCNIST
					case "CRYPTO_ALGOFAM_ECIES" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_ECIES
					case "CRYPTO_ALGOFAM_ED25519" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_ED25519
					case "CRYPTO_ALGOFAM_NOT_SET" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_NOT_SET
					case "CRYPTO_ALGOFAM_RIPEMD160" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_RIPEMD160
					case "CRYPTO_ALGOFAM_RNG" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_RNG
					case "CRYPTO_ALGOFAM_RSA" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_RSA
					case "CRYPTO_ALGOFAM_SECURECOUNTER" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SECURECOUNTER
					case "CRYPTO_ALGOFAM_SHA1" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA1
					case "CRYPTO_ALGOFAM_SHA2_224" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_224
					case "CRYPTO_ALGOFAM_SHA2_256" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_256
					case "CRYPTO_ALGOFAM_SHA2_384" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_384
					case "CRYPTO_ALGOFAM_SHA2_512" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_512
					case "CRYPTO_ALGOFAM_SHA2_512_224" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_512_224
					case "CRYPTO_ALGOFAM_SHA2_512_256" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_512_256
					case "CRYPTO_ALGOFAM_SHA3_224" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_224
					case "CRYPTO_ALGOFAM_SHA3_256" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_256
					case "CRYPTO_ALGOFAM_SHA3_384" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_384
					case "CRYPTO_ALGOFAM_SHA3_512" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_512
					case "CRYPTO_ALGOFAM_SHAKE128" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHAKE128
					case "CRYPTO_ALGOFAM_SHAKE256" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHAKE256
					case "CRYPTO_ALGOFAM_SIPHASH" : CryptoPrimitiveAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SIPHASH
				}
			}
			
			def void setCryptoPrimitiveAlgorithmSecondaryFamilyValue(GParameterValue parameterValue, CryptoPrimitiveAlgorithmSecondaryFamily value){
				parameterValue.setValue(value)
			}
			
			def CryptoPrimitiveService getCryptoPrimitiveService(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoPrimitiveService"].getCryptoPrimitiveServiceValue()
			}
			
			def void setCryptoPrimitiveService(CryptoPrimitiveService value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryptoPrimitiveService"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryptoPrimitiveService"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CryptoPrimitiveService {
				AEAD_DECRYPT, 
				AEAD_ENCRYPT, 
				DECRYPT, 
				ENCRYPT, 
				HASH, 
				MAC_GENERATE, 
				MAC_VERIFY, 
				RANDOM, 
				SIGNATURE_GENERATE, 
				SIGNATURE_VERIFY
			}
			
			def CryptoPrimitiveService getCryptoPrimitiveServiceValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "AEAD_DECRYPT" : CryptoPrimitiveService.AEAD_DECRYPT
					case "AEAD_ENCRYPT" : CryptoPrimitiveService.AEAD_ENCRYPT
					case "DECRYPT" : CryptoPrimitiveService.DECRYPT
					case "ENCRYPT" : CryptoPrimitiveService.ENCRYPT
					case "HASH" : CryptoPrimitiveService.HASH
					case "MAC_GENERATE" : CryptoPrimitiveService.MAC_GENERATE
					case "MAC_VERIFY" : CryptoPrimitiveService.MAC_VERIFY
					case "RANDOM" : CryptoPrimitiveService.RANDOM
					case "SIGNATURE_GENERATE" : CryptoPrimitiveService.SIGNATURE_GENERATE
					case "SIGNATURE_VERIFY" : CryptoPrimitiveService.SIGNATURE_VERIFY
				}
			}
			
			def void setCryptoPrimitiveServiceValue(GParameterValue parameterValue, CryptoPrimitiveService value){
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Crypto)){
			return false
		}
		this.target == (object as Crypto).target
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
