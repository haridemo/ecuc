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

class CryIf implements IWrapper<GModuleConfiguration> {
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

	def List<CryIfChannel> getCryIfChannels(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "CryIfChannel")
			}
		}
		return new BasicWrappingEList<CryIfChannel, GContainer>(filteredContainers, typeof(CryIfChannel), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CryIf.CryIfChannel cryIfChannel) {
				cryIfChannel.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CryIfChannel"))
				super.delegateAdd(cryIfChannel)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CryIf.CryIfChannel cryIfChannel) {
				cryIfChannel.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CryIfChannel"))
				super.delegateAdd(index, cryIfChannel)
			}
		}
	}
	def CryIfGeneral getCryIfGeneral(){
		moduleConfiguration.getByType(typeof(CryIfGeneral))
	}

	def void setCryIfGeneral(CryIfGeneral cryIfGeneral){
		val GContainer container = cryIfGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "CryIfGeneral")
	}
	def List<CryIfKey> getCryIfKeys(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "CryIfKey")
			}
		}
		return new BasicWrappingEList<CryIfKey, GContainer>(filteredContainers, typeof(CryIfKey), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CryIf.CryIfKey cryIfKey) {
				cryIfKey.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CryIfKey"))
				super.delegateAdd(cryIfKey)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CryIf.CryIfKey cryIfKey) {
				cryIfKey.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CryIfKey"))
				super.delegateAdd(index, cryIfKey)
			}
		}
	}

	static class CryIfChannel implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CryIfChannel)){
				return false
			}
			this.target == (object as CryIfChannel).target
		}
	
		def BigInteger getCryIfChannelId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryIfChannelId"].getBigIntegerValue()
		}
		
		def void setCryIfChannelId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryIfChannelId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryIfChannelId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar430.accessors.Crypto.CryptoDriverObjects.CryptoDriverObject getCryIfDriverObjectRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Crypto.CryptoDriverObjects.CryptoDriverObject), "CryIfDriverObjectRef")
		}
		
		def void setCryIfDriverObjectRef(org.artop.ecuc.autosar430.accessors.Crypto.CryptoDriverObjects.CryptoDriverObject object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CryIfDriverObjectRef"], object.getTarget())
			}
		}
		
		
		
	}
	static class CryIfGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CryIfGeneral)){
				return false
			}
			this.target == (object as CryIfGeneral).target
		}
	
		def Boolean getCryIfDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryIfDevErrorDetect"].getBooleanValue()
		}
		
		def void setCryIfDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryIfDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryIfDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCryIfVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryIfVersionInfoApi"].getBooleanValue()
		}
		
		def void setCryIfVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryIfVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryIfVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class CryIfKey implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CryIfKey)){
				return false
			}
			this.target == (object as CryIfKey).target
		}
	
		def BigInteger getCryIfKeyId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryIfKeyId"].getBigIntegerValue()
		}
		
		def void setCryIfKeyId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CryIfKeyId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CryIfKeyId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar430.accessors.Crypto.CryptoKeys.CryptoKey getCryIfKeyRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Crypto.CryptoKeys.CryptoKey), "CryIfKeyRef")
		}
		
		def void setCryIfKeyRef(org.artop.ecuc.autosar430.accessors.Crypto.CryptoKeys.CryptoKey object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CryIfKeyRef"], object.getTarget())
			}
		}
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof CryIf)){
			return false
		}
		this.target == (object as CryIf).target
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
