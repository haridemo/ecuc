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

class V2xGn implements IWrapper<GModuleConfiguration> {
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

	def V2xGnBeaconService getV2xGnBeaconService(){
		moduleConfiguration.getByType(typeof(V2xGnBeaconService))
	}

	def void setV2xGnBeaconService(V2xGnBeaconService v2xGnBeaconService){
		val GContainer container = v2xGnBeaconService.getTarget()
	    moduleConfiguration.setContainer(container, "V2xGnBeaconService")
	}
	def V2xGnGeneral getV2xGnGeneral(){
		moduleConfiguration.getByType(typeof(V2xGnGeneral))
	}

	def void setV2xGnGeneral(V2xGnGeneral v2xGnGeneral){
		val GContainer container = v2xGnGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "V2xGnGeneral")
	}
	def V2xGnPacketForwarding getV2xGnPacketForwarding(){
		moduleConfiguration.getByType(typeof(V2xGnPacketForwarding))
	}

	def void setV2xGnPacketForwarding(V2xGnPacketForwarding v2xGnPacketForwarding){
		val GContainer container = v2xGnPacketForwarding.getTarget()
	    moduleConfiguration.setContainer(container, "V2xGnPacketForwarding")
	}

	static class V2xGnBeaconService implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof V2xGnBeaconService)){
				return false
			}
			this.target == (object as V2xGnBeaconService).target
		}
	
		def BigDecimal getV2xGnItsGnBeaconServiceMaxJitter(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnBeaconServiceMaxJitter"].getBigDecimalValue()
		}
		
		def void setV2xGnItsGnBeaconServiceMaxJitter(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnBeaconServiceMaxJitter"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnBeaconServiceMaxJitter"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getV2xGnItsGnBeaconServiceRetransmitTimer(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnBeaconServiceRetransmitTimer"].getBigDecimalValue()
		}
		
		def void setV2xGnItsGnBeaconServiceRetransmitTimer(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnBeaconServiceRetransmitTimer"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnBeaconServiceRetransmitTimer"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}
	static class V2xGnGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof V2xGnGeneral)){
				return false
			}
			this.target == (object as V2xGnGeneral).target
		}
	
		def Boolean getV2xGnDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnDevErrorDetect"].getBooleanValue()
		}
		
		def void setV2xGnDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getV2xGnItsGnLifetimeLocTE(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnLifetimeLocTE"].getBigDecimalValue()
		}
		
		def void setV2xGnItsGnLifetimeLocTE(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnLifetimeLocTE"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnLifetimeLocTE"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnLocalGnAddr(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnLocalGnAddr"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnLocalGnAddr(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnLocalGnAddr"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnLocalGnAddr"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnMaxGeoNetworkingHeaderSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxGeoNetworkingHeaderSize"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnMaxGeoNetworkingHeaderSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxGeoNetworkingHeaderSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnMaxGeoNetworkingHeaderSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnMaxSduSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxSduSize"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnMaxSduSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxSduSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnMaxSduSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getV2xGnItsGnMinUpdateFrequencyLPV(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMinUpdateFrequencyLPV"].getBigDecimalValue()
		}
		
		def void setV2xGnItsGnMinUpdateFrequencyLPV(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMinUpdateFrequencyLPV"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnMinUpdateFrequencyLPV"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnPaiInterval(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnPaiInterval"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnPaiInterval(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnPaiInterval"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnPaiInterval"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnProtocolVersion(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnProtocolVersion"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnProtocolVersion(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnProtocolVersion"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnProtocolVersion"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def V2xGnItsGnSnDecapResultHandling getV2xGnItsGnSnDecapResultHandling(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnSnDecapResultHandling"].getV2xGnItsGnSnDecapResultHandlingValue()
		}
		
		def void setV2xGnItsGnSnDecapResultHandling(V2xGnItsGnSnDecapResultHandling value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnSnDecapResultHandling"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnSnDecapResultHandling"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum V2xGnItsGnSnDecapResultHandling {
			V2XGN_NON_STRICT_SEC_HANDLING, 
			V2XGN_STRICT_SEC_HANDLING
		}
		
		def V2xGnItsGnSnDecapResultHandling getV2xGnItsGnSnDecapResultHandlingValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "V2XGN_NON_STRICT_SEC_HANDLING" : V2xGnItsGnSnDecapResultHandling.V2XGN_NON_STRICT_SEC_HANDLING
				case "V2XGN_STRICT_SEC_HANDLING" : V2xGnItsGnSnDecapResultHandling.V2XGN_STRICT_SEC_HANDLING
			}
		}
		
		def void setV2xGnItsGnSnDecapResultHandlingValue(GParameterValue parameterValue, V2xGnItsGnSnDecapResultHandling value){
			parameterValue.setValue(value)
		}
		
		def V2xGnItsGnStationType getV2xGnItsGnStationType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnStationType"].getV2xGnItsGnStationTypeValue()
		}
		
		def void setV2xGnItsGnStationType(V2xGnItsGnStationType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnStationType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnStationType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum V2xGnItsGnStationType {
			V2XFAC_ST_BUS, 
			V2XFAC_ST_CYCLIST, 
			V2XFAC_ST_HEAVYTRUCK, 
			V2XFAC_ST_LIGHTTRUCK, 
			V2XFAC_ST_MOPED, 
			V2XFAC_ST_MOTORCYCLE, 
			V2XFAC_ST_PASSENGERCAR, 
			V2XFAC_ST_PEDESTRIAN, 
			V2XFAC_ST_SPECIALVEHICLES, 
			V2XFAC_ST_TRAILER, 
			V2XFAC_ST_TRAM, 
			V2XFAC_ST_UNKNOWN
		}
		
		def V2xGnItsGnStationType getV2xGnItsGnStationTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "V2XFAC_ST_BUS" : V2xGnItsGnStationType.V2XFAC_ST_BUS
				case "V2XFAC_ST_CYCLIST" : V2xGnItsGnStationType.V2XFAC_ST_CYCLIST
				case "V2XFAC_ST_HEAVYTRUCK" : V2xGnItsGnStationType.V2XFAC_ST_HEAVYTRUCK
				case "V2XFAC_ST_LIGHTTRUCK" : V2xGnItsGnStationType.V2XFAC_ST_LIGHTTRUCK
				case "V2XFAC_ST_MOPED" : V2xGnItsGnStationType.V2XFAC_ST_MOPED
				case "V2XFAC_ST_MOTORCYCLE" : V2xGnItsGnStationType.V2XFAC_ST_MOTORCYCLE
				case "V2XFAC_ST_PASSENGERCAR" : V2xGnItsGnStationType.V2XFAC_ST_PASSENGERCAR
				case "V2XFAC_ST_PEDESTRIAN" : V2xGnItsGnStationType.V2XFAC_ST_PEDESTRIAN
				case "V2XFAC_ST_SPECIALVEHICLES" : V2xGnItsGnStationType.V2XFAC_ST_SPECIALVEHICLES
				case "V2XFAC_ST_TRAILER" : V2xGnItsGnStationType.V2XFAC_ST_TRAILER
				case "V2XFAC_ST_TRAM" : V2xGnItsGnStationType.V2XFAC_ST_TRAM
				case "V2XFAC_ST_UNKNOWN" : V2xGnItsGnStationType.V2XFAC_ST_UNKNOWN
			}
		}
		
		def void setV2xGnItsGnStationTypeValue(GParameterValue parameterValue, V2xGnItsGnStationType value){
			parameterValue.setValue(value)
		}
		
		def BigDecimal getV2xGnMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setV2xGnMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getV2xGnTxConfirmation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnTxConfirmation"].getBooleanValue()
		}
		
		def void setV2xGnTxConfirmation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnTxConfirmation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnTxConfirmation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getV2xGnVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnVersionInfoApi"].getBooleanValue()
		}
		
		def void setV2xGnVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfController getV2xGnEthIfRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfController), "V2xGnEthIfRef")
		}
		
		def void setV2xGnEthIfRef(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfController object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "V2xGnEthIfRef"], object.getTarget())
			}
		}
		
		
		
	}
	static class V2xGnPacketForwarding implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof V2xGnPacketForwarding)){
				return false
			}
			this.target == (object as V2xGnPacketForwarding).target
		}
	
		def BigInteger getV2xGnItsGnBcForwardingPacketBufferSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnBcForwardingPacketBufferSize"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnBcForwardingPacketBufferSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnBcForwardingPacketBufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnBcForwardingPacketBufferSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnCbfPacketBufferSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnCbfPacketBufferSize"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnCbfPacketBufferSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnCbfPacketBufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnCbfPacketBufferSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnDefaultHopLimit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnDefaultHopLimit"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnDefaultHopLimit(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnDefaultHopLimit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnDefaultHopLimit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnDefaultMaxCommunicationRange(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnDefaultMaxCommunicationRange"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnDefaultMaxCommunicationRange(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnDefaultMaxCommunicationRange"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnDefaultMaxCommunicationRange"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getV2xGnItsGnDefaultPacketLifetime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnDefaultPacketLifetime"].getBigDecimalValue()
		}
		
		def void setV2xGnItsGnDefaultPacketLifetime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnDefaultPacketLifetime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnDefaultPacketLifetime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnDefaultTrafficClass(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnDefaultTrafficClass"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnDefaultTrafficClass(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnDefaultTrafficClass"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnDefaultTrafficClass"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getV2xGnItsGnGeoAreaLineForwardingUsed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnGeoAreaLineForwardingUsed"].getBooleanValue()
		}
		
		def void setV2xGnItsGnGeoAreaLineForwardingUsed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnGeoAreaLineForwardingUsed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnGeoAreaLineForwardingUsed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getV2xGnItsGnGeoBroadcastCbfMaxTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnGeoBroadcastCbfMaxTime"].getBigDecimalValue()
		}
		
		def void setV2xGnItsGnGeoBroadcastCbfMaxTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnGeoBroadcastCbfMaxTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnGeoBroadcastCbfMaxTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getV2xGnItsGnGeoBroadcastCbfMinTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnGeoBroadcastCbfMinTime"].getBigDecimalValue()
		}
		
		def void setV2xGnItsGnGeoBroadcastCbfMinTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnGeoBroadcastCbfMinTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnGeoBroadcastCbfMinTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnMaxGeoAreaSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxGeoAreaSize"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnMaxGeoAreaSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxGeoAreaSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnMaxGeoAreaSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getV2xGnItsGnMaxPacketDataRate(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxPacketDataRate"].getBigIntegerValue()
		}
		
		def void setV2xGnItsGnMaxPacketDataRate(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxPacketDataRate"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnMaxPacketDataRate"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getV2xGnItsGnMaxPacketDataRateEmaBeta(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxPacketDataRateEmaBeta"].getBigDecimalValue()
		}
		
		def void setV2xGnItsGnMaxPacketDataRateEmaBeta(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxPacketDataRateEmaBeta"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnMaxPacketDataRateEmaBeta"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getV2xGnItsGnMaxPacketLifetime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxPacketLifetime"].getBigDecimalValue()
		}
		
		def void setV2xGnItsGnMaxPacketLifetime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xGnItsGnMaxPacketLifetime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xGnItsGnMaxPacketLifetime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof V2xGn)){
			return false
		}
		this.target == (object as V2xGn).target
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
