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

class LdCom implements IWrapper<GModuleConfiguration> {
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

	def LdComConfig getLdComConfig(){
		moduleConfiguration.getByType(typeof(LdComConfig))
	}

	def void setLdComConfig(LdComConfig ldComConfig){
		val GContainer container = ldComConfig.getTarget()
	    moduleConfiguration.setContainer(container, "LdComConfig")
	}
	def LdComGeneral getLdComGeneral(){
		moduleConfiguration.getByType(typeof(LdComGeneral))
	}

	def void setLdComGeneral(LdComGeneral ldComGeneral){
		val GContainer container = ldComGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "LdComGeneral")
	}

	static class LdComConfig implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof LdComConfig)){
				return false
			}
			this.target == (object as LdComConfig).target
		}
	
		
		
		def List<LdComIPdu> getLdComIPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "LdComIPdu")
				}
			}
			return new BasicWrappingEList<LdComIPdu, GContainer>(filteredContainers, typeof(LdComIPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.LdCom.LdComConfig.LdComIPdu ldComIPdu) {
					ldComIPdu.target?.gSetDefinition(containerValue.getContainerDefinition("LdComIPdu"))
					super.delegateAdd(ldComIPdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.LdCom.LdComConfig.LdComIPdu ldComIPdu) {
					ldComIPdu.target?.gSetDefinition(containerValue.getContainerDefinition("LdComIPdu"))
					super.delegateAdd(index, ldComIPdu)
				}
			}
		}
		
		
		static class LdComIPdu implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof LdComIPdu)){
					return false
				}
				this.target == (object as LdComIPdu).target
			}
		
			def LdComApiType getLdComApiType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComApiType"].getLdComApiTypeValue()
			}
			
			def void setLdComApiType(LdComApiType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComApiType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComApiType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum LdComApiType {
				LDCOM_IF, 
				LDCOM_TP
			}
			
			def LdComApiType getLdComApiTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "LDCOM_IF" : LdComApiType.LDCOM_IF
					case "LDCOM_TP" : LdComApiType.LDCOM_TP
				}
			}
			
			def void setLdComApiTypeValue(GParameterValue parameterValue, LdComApiType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getLdComHandleId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComHandleId"].getBigIntegerValue()
			}
			
			def void setLdComHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComHandleId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def LdComIPduDirection getLdComIPduDirection(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComIPduDirection"].getLdComIPduDirectionValue()
			}
			
			def void setLdComIPduDirection(LdComIPduDirection value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComIPduDirection"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComIPduDirection"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum LdComIPduDirection {
				LDCOM_RECEIVE, 
				LDCOM_SEND
			}
			
			def LdComIPduDirection getLdComIPduDirectionValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "LDCOM_RECEIVE" : LdComIPduDirection.LDCOM_RECEIVE
					case "LDCOM_SEND" : LdComIPduDirection.LDCOM_SEND
				}
			}
			
			def void setLdComIPduDirectionValue(GParameterValue parameterValue, LdComIPduDirection value){
				parameterValue.setValue(value)
			}
			
			def String getLdComRxCopyRxData(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComRxCopyRxData"].getStringValue()
			}
			
			def void setLdComRxCopyRxData(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComRxCopyRxData"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComRxCopyRxData"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getLdComRxIndication(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComRxIndication"].getStringValue()
			}
			
			def void setLdComRxIndication(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComRxIndication"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComRxIndication"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getLdComRxStartOfReception(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComRxStartOfReception"].getStringValue()
			}
			
			def void setLdComRxStartOfReception(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComRxStartOfReception"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComRxStartOfReception"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getLdComTpRxIndication(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTpRxIndication"].getStringValue()
			}
			
			def void setLdComTpRxIndication(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTpRxIndication"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComTpRxIndication"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getLdComTpTxConfirmation(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTpTxConfirmation"].getStringValue()
			}
			
			def void setLdComTpTxConfirmation(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTpTxConfirmation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComTpTxConfirmation"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getLdComTxConfirmation(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTxConfirmation"].getStringValue()
			}
			
			def void setLdComTxConfirmation(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTxConfirmation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComTxConfirmation"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getLdComTxCopyTxData(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTxCopyTxData"].getStringValue()
			}
			
			def void setLdComTxCopyTxData(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTxCopyTxData"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComTxCopyTxData"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getLdComTxTriggerTransmit(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTxTriggerTransmit"].getStringValue()
			}
			
			def void setLdComTxTriggerTransmit(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComTxTriggerTransmit"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComTxTriggerTransmit"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getLdComPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "LdComPduRef")
			}
			
			def void setLdComPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LdComPduRef"], object.getTarget())
				}
			}
			
			
			
			
		}
		
	}
	static class LdComGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof LdComGeneral)){
				return false
			}
			this.target == (object as LdComGeneral).target
		}
	
		def Boolean getLdComDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComDevErrorDetect"].getBooleanValue()
		}
		
		def void setLdComDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLdComVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComVersionInfoApi"].getBooleanValue()
		}
		
		def void setLdComVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LdComVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LdComVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof LdCom)){
			return false
		}
		this.target == (object as LdCom).target
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
