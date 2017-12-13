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

class ComM implements IWrapper<GModuleConfiguration> {
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

	def ComMConfigSet getComMConfigSet(){
		moduleConfiguration.getByType(typeof(ComMConfigSet))
	}

	def void setComMConfigSet(ComMConfigSet comMConfigSet){
		val GContainer container = comMConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "ComMConfigSet")
	}
	def ComMGeneral getComMGeneral(){
		moduleConfiguration.getByType(typeof(ComMGeneral))
	}

	def void setComMGeneral(ComMGeneral comMGeneral){
		val GContainer container = comMGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "ComMGeneral")
	}

	static class ComMConfigSet implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof ComMConfigSet)){
				return false
			}
			this.target == (object as ComMConfigSet).target
		}
	
		def Boolean getComMPncEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncEnabled"].getBooleanValue()
		}
		
		def void setComMPncEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMPncEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def List<ComMChannel> getComMChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComMChannel")
				}
			}
			return new BasicWrappingEList<ComMChannel, GContainer>(filteredContainers, typeof(ComMChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel comMChannel) {
					comMChannel.target?.gSetDefinition(containerValue.getContainerDefinition("ComMChannel"))
					super.delegateAdd(comMChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel comMChannel) {
					comMChannel.target?.gSetDefinition(containerValue.getContainerDefinition("ComMChannel"))
					super.delegateAdd(index, comMChannel)
				}
			}
		}
		
		def List<ComMPnc> getComMPncs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComMPnc")
				}
			}
			return new BasicWrappingEList<ComMPnc, GContainer>(filteredContainers, typeof(ComMPnc), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMPnc comMPnc) {
					comMPnc.target?.gSetDefinition(containerValue.getContainerDefinition("ComMPnc"))
					super.delegateAdd(comMPnc)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMPnc comMPnc) {
					comMPnc.target?.gSetDefinition(containerValue.getContainerDefinition("ComMPnc"))
					super.delegateAdd(index, comMPnc)
				}
			}
		}
		
		def List<ComMUser> getComMUsers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComMUser")
				}
			}
			return new BasicWrappingEList<ComMUser, GContainer>(filteredContainers, typeof(ComMUser), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser comMUser) {
					comMUser.target?.gSetDefinition(containerValue.getContainerDefinition("ComMUser"))
					super.delegateAdd(comMUser)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser comMUser) {
					comMUser.target?.gSetDefinition(containerValue.getContainerDefinition("ComMUser"))
					super.delegateAdd(index, comMUser)
				}
			}
		}
		
		
		static class ComMChannel implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof ComMChannel)){
					return false
				}
				this.target == (object as ComMChannel).target
			}
		
			def ComMBusType getComMBusType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMBusType"].getComMBusTypeValue()
			}
			
			def void setComMBusType(ComMBusType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMBusType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMBusType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum ComMBusType {
				COMM_BUS_TYPE_CAN, 
				COMM_BUS_TYPE_CDD, 
				COMM_BUS_TYPE_ETH, 
				COMM_BUS_TYPE_FR, 
				COMM_BUS_TYPE_INTERNAL, 
				COMM_BUS_TYPE_LIN
			}
			
			def ComMBusType getComMBusTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "COMM_BUS_TYPE_CAN" : ComMBusType.COMM_BUS_TYPE_CAN
					case "COMM_BUS_TYPE_CDD" : ComMBusType.COMM_BUS_TYPE_CDD
					case "COMM_BUS_TYPE_ETH" : ComMBusType.COMM_BUS_TYPE_ETH
					case "COMM_BUS_TYPE_FR" : ComMBusType.COMM_BUS_TYPE_FR
					case "COMM_BUS_TYPE_INTERNAL" : ComMBusType.COMM_BUS_TYPE_INTERNAL
					case "COMM_BUS_TYPE_LIN" : ComMBusType.COMM_BUS_TYPE_LIN
				}
			}
			
			def void setComMBusTypeValue(GParameterValue parameterValue, ComMBusType value){
				parameterValue.setValue(value)
			}
			
			def String getComMCDDBusPrefix(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMCDDBusPrefix"].getStringValue()
			}
			
			def void setComMCDDBusPrefix(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMCDDBusPrefix"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMCDDBusPrefix"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getComMChannelId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMChannelId"].getBigIntegerValue()
			}
			
			def void setComMChannelId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMChannelId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMChannelId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getComMFullCommRequestNotificationEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMFullCommRequestNotificationEnabled"].getBooleanValue()
			}
			
			def void setComMFullCommRequestNotificationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMFullCommRequestNotificationEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMFullCommRequestNotificationEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getComMMainFunctionPeriod(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMMainFunctionPeriod"].getBigDecimalValue()
			}
			
			def void setComMMainFunctionPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMMainFunctionPeriod"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMMainFunctionPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getComMNoCom(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNoCom"].getBooleanValue()
			}
			
			def void setComMNoCom(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNoCom"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMNoCom"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getComMNoWakeup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNoWakeup"].getBooleanValue()
			}
			
			def void setComMNoWakeup(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNoWakeup"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMNoWakeup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getComMNoWakeUpInhibitionNvmStorage(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNoWakeUpInhibitionNvmStorage"].getBooleanValue()
			}
			
			def void setComMNoWakeUpInhibitionNvmStorage(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNoWakeUpInhibitionNvmStorage"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMNoWakeUpInhibitionNvmStorage"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def ComMPncGatewayType getComMPncGatewayType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncGatewayType"].getComMPncGatewayTypeValue()
			}
			
			def void setComMPncGatewayType(ComMPncGatewayType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncGatewayType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMPncGatewayType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum ComMPncGatewayType {
				COMM_GATEWAY_TYPE_ACTIVE, 
				COMM_GATEWAY_TYPE_PASSIVE
			}
			
			def ComMPncGatewayType getComMPncGatewayTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "COMM_GATEWAY_TYPE_ACTIVE" : ComMPncGatewayType.COMM_GATEWAY_TYPE_ACTIVE
					case "COMM_GATEWAY_TYPE_PASSIVE" : ComMPncGatewayType.COMM_GATEWAY_TYPE_PASSIVE
				}
			}
			
			def void setComMPncGatewayTypeValue(GParameterValue parameterValue, ComMPncGatewayType value){
				parameterValue.setValue(value)
			}
			
			
			
			def ComMNetworkManagement getComMNetworkManagement(){
				containerValue.getByType(typeof(ComMNetworkManagement))
			}
			
			def void setComMNetworkManagement(ComMNetworkManagement comMNetworkManagement){
				val GContainer subContainer = comMNetworkManagement.getTarget()
				containerValue.setContainer(subContainer, "ComMNetworkManagement")
			}
			
			def List<ComMUserPerChannel> getComMUserPerChannels(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "ComMUserPerChannel")
					}
				}
				return new BasicWrappingEList<ComMUserPerChannel, GContainer>(filteredContainers, typeof(ComMUserPerChannel), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel.ComMUserPerChannel comMUserPerChannel) {
						comMUserPerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("ComMUserPerChannel"))
						super.delegateAdd(comMUserPerChannel)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel.ComMUserPerChannel comMUserPerChannel) {
						comMUserPerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("ComMUserPerChannel"))
						super.delegateAdd(index, comMUserPerChannel)
					}
				}
			}
			
			
			static class ComMNetworkManagement implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof ComMNetworkManagement)){
						return false
					}
					this.target == (object as ComMNetworkManagement).target
				}
			
				def BigDecimal getComMNmLightTimeout(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNmLightTimeout"].getBigDecimalValue()
				}
				
				def void setComMNmLightTimeout(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNmLightTimeout"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMNmLightTimeout"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def ComMNmVariant getComMNmVariant(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNmVariant"].getComMNmVariantValue()
				}
				
				def void setComMNmVariant(ComMNmVariant value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMNmVariant"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMNmVariant"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum ComMNmVariant {
					FULL, 
					LIGHT, 
					NONE, 
					PASSIVE
				}
				
				def ComMNmVariant getComMNmVariantValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FULL" : ComMNmVariant.FULL
						case "LIGHT" : ComMNmVariant.LIGHT
						case "NONE" : ComMNmVariant.NONE
						case "PASSIVE" : ComMNmVariant.PASSIVE
					}
				}
				
				def void setComMNmVariantValue(GParameterValue parameterValue, ComMNmVariant value){
					parameterValue.setValue(value)
				}
				
				def Boolean getComMPncNmRequest(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncNmRequest"].getBooleanValue()
				}
				
				def void setComMPncNmRequest(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncNmRequest"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMPncNmRequest"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				
			}
			
			static class ComMUserPerChannel implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof ComMUserPerChannel)){
						return false
					}
					this.target == (object as ComMUserPerChannel).target
				}
			
				
				def org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser getComMUserChannel(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser), "ComMUserChannel")
				}
				
				def void setComMUserChannel(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ComMUserChannel"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class ComMPnc implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof ComMPnc)){
					return false
				}
				this.target == (object as ComMPnc).target
			}
		
			def BigInteger getComMPncId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncId"].getBigIntegerValue()
			}
			
			def void setComMPncId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMPncId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel> getComMChannelPerPncs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "ComMChannelPerPnc"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "ComMChannelPerPnc")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel object) throws CoreException {
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
								return new org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def List<org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup> getComMPncEthIfSwitchPortGroupRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "ComMPncEthIfSwitchPortGroupRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "ComMPncEthIfSwitchPortGroupRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup object) throws CoreException {
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
								return new org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def List<org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser> getComMUserPerPncs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "ComMUserPerPnc"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "ComMUserPerPnc")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser object) throws CoreException {
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
								return new org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMUser(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			def List<ComMPncComSignal> getComMPncComSignals(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "ComMPncComSignal")
					}
				}
				return new BasicWrappingEList<ComMPncComSignal, GContainer>(filteredContainers, typeof(ComMPncComSignal), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMPnc.ComMPncComSignal comMPncComSignal) {
						comMPncComSignal.target?.gSetDefinition(containerValue.getContainerDefinition("ComMPncComSignal"))
						super.delegateAdd(comMPncComSignal)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMPnc.ComMPncComSignal comMPncComSignal) {
						comMPncComSignal.target?.gSetDefinition(containerValue.getContainerDefinition("ComMPncComSignal"))
						super.delegateAdd(index, comMPncComSignal)
					}
				}
			}
			
			
			static class ComMPncComSignal implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof ComMPncComSignal)){
						return false
					}
					this.target == (object as ComMPncComSignal).target
				}
			
				def ComMPncComSignalDirection getComMPncComSignalDirection(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncComSignalDirection"].getComMPncComSignalDirectionValue()
				}
				
				def void setComMPncComSignalDirection(ComMPncComSignalDirection value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncComSignalDirection"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMPncComSignalDirection"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum ComMPncComSignalDirection {
					RX, 
					TX
				}
				
				def ComMPncComSignalDirection getComMPncComSignalDirectionValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "RX" : ComMPncComSignalDirection.RX
						case "TX" : ComMPncComSignalDirection.TX
					}
				}
				
				def void setComMPncComSignalDirectionValue(GParameterValue parameterValue, ComMPncComSignalDirection value){
					parameterValue.setValue(value)
				}
				
				def ComMPncComSignalKind getComMPncComSignalKind(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncComSignalKind"].getComMPncComSignalKindValue()
				}
				
				def void setComMPncComSignalKind(ComMPncComSignalKind value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncComSignalKind"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMPncComSignalKind"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum ComMPncComSignalKind {
					EIRA, 
					ERA
				}
				
				def ComMPncComSignalKind getComMPncComSignalKindValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "EIRA" : ComMPncComSignalKind.EIRA
						case "ERA" : ComMPncComSignalKind.ERA
					}
				}
				
				def void setComMPncComSignalKindValue(GParameterValue parameterValue, ComMPncComSignalKind value){
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel getComMPncComSignalChannelRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel), "ComMPncComSignalChannelRef")
				}
				
				def void setComMPncComSignalChannelRef(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ComMPncComSignalChannelRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar444.accessors.Com.ComConfig.ComSignal getComMPncComSignalRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Com.ComConfig.ComSignal), "ComMPncComSignalRef")
				}
				
				def void setComMPncComSignalRef(org.artop.ecuc.autosar444.accessors.Com.ComConfig.ComSignal object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ComMPncComSignalRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class ComMUser implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof ComMUser)){
					return false
				}
				this.target == (object as ComMUser).target
			}
		
			def BigInteger getComMUserIdentifier(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMUserIdentifier"].getBigIntegerValue()
			}
			
			def void setComMUserIdentifier(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMUserIdentifier"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMUserIdentifier"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition getComMUserEcucPartitionRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition), "ComMUserEcucPartitionRef")
			}
			
			def void setComMUserEcucPartitionRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ComMUserEcucPartitionRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class ComMGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof ComMGeneral)){
				return false
			}
			this.target == (object as ComMGeneral).target
		}
	
		def Boolean getComM0PncVectorAvoidance(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComM0PncVectorAvoidance"].getBooleanValue()
		}
		
		def void setComM0PncVectorAvoidance(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComM0PncVectorAvoidance"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComM0PncVectorAvoidance"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMDevErrorDetect"].getBooleanValue()
		}
		
		def void setComMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComMDirectUserMapping(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMDirectUserMapping"].getBooleanValue()
		}
		
		def void setComMDirectUserMapping(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMDirectUserMapping"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMDirectUserMapping"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getComMEcuGroupClassification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMEcuGroupClassification"].getBigIntegerValue()
		}
		
		def void setComMEcuGroupClassification(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMEcuGroupClassification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMEcuGroupClassification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getComMModeLimitationEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMModeLimitationEnabled"].getBooleanValue()
		}
		
		def void setComMModeLimitationEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMModeLimitationEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMModeLimitationEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComMPncGatewayEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncGatewayEnabled"].getBooleanValue()
		}
		
		def void setComMPncGatewayEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncGatewayEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMPncGatewayEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getComMPncPrepareSleepTimer(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncPrepareSleepTimer"].getBigDecimalValue()
		}
		
		def void setComMPncPrepareSleepTimer(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncPrepareSleepTimer"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMPncPrepareSleepTimer"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getComMPncSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncSupport"].getBooleanValue()
		}
		
		def void setComMPncSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMPncSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMPncSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComMResetAfterForcingNoComm(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMResetAfterForcingNoComm"].getBooleanValue()
		}
		
		def void setComMResetAfterForcingNoComm(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMResetAfterForcingNoComm"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMResetAfterForcingNoComm"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComMSynchronousWakeUp(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMSynchronousWakeUp"].getBooleanValue()
		}
		
		def void setComMSynchronousWakeUp(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMSynchronousWakeUp"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMSynchronousWakeUp"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getComMTMinFullComModeDuration(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMTMinFullComModeDuration"].getBigDecimalValue()
		}
		
		def void setComMTMinFullComModeDuration(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMTMinFullComModeDuration"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMTMinFullComModeDuration"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getComMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMVersionInfoApi"].getBooleanValue()
		}
		
		def void setComMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComMWakeupInhibitionEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMWakeupInhibitionEnabled"].getBooleanValue()
		}
		
		def void setComMWakeupInhibitionEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMWakeupInhibitionEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "ComMWakeupInhibitionEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar444.accessors.NvM.NvMBlockDescriptor getComMGlobalNvMBlockDescriptor(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.NvM.NvMBlockDescriptor), "ComMGlobalNvMBlockDescriptor")
		}
		
		def void setComMGlobalNvMBlockDescriptor(org.artop.ecuc.autosar444.accessors.NvM.NvMBlockDescriptor object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ComMGlobalNvMBlockDescriptor"], object.getTarget())
			}
		}
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof ComM)){
			return false
		}
		this.target == (object as ComM).target
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
