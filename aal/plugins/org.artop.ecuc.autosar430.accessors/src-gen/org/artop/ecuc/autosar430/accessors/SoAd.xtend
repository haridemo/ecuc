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

class SoAd implements IWrapper<GModuleConfiguration> {
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

	def List<SoAdBswModules> getSoAdBswModules(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "SoAdBswModules")
			}
		}
		return new BasicWrappingEList<SoAdBswModules, GContainer>(filteredContainers, typeof(SoAdBswModules), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SoAd.SoAdBswModules soAdBswModules) {
				soAdBswModules.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SoAdBswModules"))
				super.delegateAdd(soAdBswModules)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SoAd.SoAdBswModules soAdBswModules) {
				soAdBswModules.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SoAdBswModules"))
				super.delegateAdd(index, soAdBswModules)
			}
		}
	}
	def SoAdConfig getSoAdConfig(){
		moduleConfiguration.getByType(typeof(SoAdConfig))
	}

	def void setSoAdConfig(SoAdConfig soAdConfig){
		val GContainer container = soAdConfig.getTarget()
	    moduleConfiguration.setContainer(container, "SoAdConfig")
	}
	def SoAdGeneral getSoAdGeneral(){
		moduleConfiguration.getByType(typeof(SoAdGeneral))
	}

	def void setSoAdGeneral(SoAdGeneral soAdGeneral){
		val GContainer container = soAdGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "SoAdGeneral")
	}

	static class SoAdBswModules implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof SoAdBswModules)){
				return false
			}
			this.target == (object as SoAdBswModules).target
		}
	
		def Boolean getSoAdIf(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIf"].getBooleanValue()
		}
		
		def void setSoAdIf(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIf"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdIf"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSoAdIfTriggerTransmit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIfTriggerTransmit"].getBooleanValue()
		}
		
		def void setSoAdIfTriggerTransmit(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIfTriggerTransmit"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdIfTriggerTransmit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSoAdIfTxConfirmation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIfTxConfirmation"].getBooleanValue()
		}
		
		def void setSoAdIfTxConfirmation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIfTxConfirmation"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdIfTxConfirmation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSoAdLocalIpAddrAssigmentChg(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdLocalIpAddrAssigmentChg"].getBooleanValue()
		}
		
		def void setSoAdLocalIpAddrAssigmentChg(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdLocalIpAddrAssigmentChg"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdLocalIpAddrAssigmentChg"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSoAdSoConModeChg(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSoConModeChg"].getBooleanValue()
		}
		
		def void setSoAdSoConModeChg(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSoConModeChg"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSoConModeChg"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSoAdTp(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTp"].getBooleanValue()
		}
		
		def void setSoAdTp(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTp"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTp"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSoAdUseCallerInfix(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdUseCallerInfix"].getBooleanValue()
		}
		
		def void setSoAdUseCallerInfix(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdUseCallerInfix"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdUseCallerInfix"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSoAdUseTypeInfix(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdUseTypeInfix"].getBooleanValue()
		}
		
		def void setSoAdUseTypeInfix(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdUseTypeInfix"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdUseTypeInfix"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
		
	}
	static class SoAdConfig implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof SoAdConfig)){
				return false
			}
			this.target == (object as SoAdConfig).target
		}
	
		
		
		def List<SoAdPduRoute> getSoAdPduRoutes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SoAdPduRoute")
				}
			}
			return new BasicWrappingEList<SoAdPduRoute, GContainer>(filteredContainers, typeof(SoAdPduRoute), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdPduRoute soAdPduRoute) {
					soAdPduRoute.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdPduRoute"))
					super.delegateAdd(soAdPduRoute)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdPduRoute soAdPduRoute) {
					soAdPduRoute.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdPduRoute"))
					super.delegateAdd(index, soAdPduRoute)
				}
			}
		}
		
		def List<SoAdRoutingGroup> getSoAdRoutingGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SoAdRoutingGroup")
				}
			}
			return new BasicWrappingEList<SoAdRoutingGroup, GContainer>(filteredContainers, typeof(SoAdRoutingGroup), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup soAdRoutingGroup) {
					soAdRoutingGroup.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdRoutingGroup"))
					super.delegateAdd(soAdRoutingGroup)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup soAdRoutingGroup) {
					soAdRoutingGroup.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdRoutingGroup"))
					super.delegateAdd(index, soAdRoutingGroup)
				}
			}
		}
		
		def List<SoAdSocketConnectionGroup> getSoAdSocketConnectionGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SoAdSocketConnectionGroup")
				}
			}
			return new BasicWrappingEList<SoAdSocketConnectionGroup, GContainer>(filteredContainers, typeof(SoAdSocketConnectionGroup), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup soAdSocketConnectionGroup) {
					soAdSocketConnectionGroup.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdSocketConnectionGroup"))
					super.delegateAdd(soAdSocketConnectionGroup)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup soAdSocketConnectionGroup) {
					soAdSocketConnectionGroup.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdSocketConnectionGroup"))
					super.delegateAdd(index, soAdSocketConnectionGroup)
				}
			}
		}
		
		def List<SoAdSocketRoute> getSoAdSocketRoutes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SoAdSocketRoute")
				}
			}
			return new BasicWrappingEList<SoAdSocketRoute, GContainer>(filteredContainers, typeof(SoAdSocketRoute), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdSocketRoute soAdSocketRoute) {
					soAdSocketRoute.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdSocketRoute"))
					super.delegateAdd(soAdSocketRoute)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdSocketRoute soAdSocketRoute) {
					soAdSocketRoute.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdSocketRoute"))
					super.delegateAdd(index, soAdSocketRoute)
				}
			}
		}
		
		
		static class SoAdPduRoute implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof SoAdPduRoute)){
					return false
				}
				this.target == (object as SoAdPduRoute).target
			}
		
			def SoAdTxPduCollectionSemantics getSoAdTxPduCollectionSemantics(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduCollectionSemantics"].getSoAdTxPduCollectionSemanticsValue()
			}
			
			def void setSoAdTxPduCollectionSemantics(SoAdTxPduCollectionSemantics value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduCollectionSemantics"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxPduCollectionSemantics"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SoAdTxPduCollectionSemantics {
				SOAD_COLLECT_LAST_IS_BEST, 
				SOAD_COLLECT_QUEUED
			}
			
			def SoAdTxPduCollectionSemantics getSoAdTxPduCollectionSemanticsValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "SOAD_COLLECT_LAST_IS_BEST" : SoAdTxPduCollectionSemantics.SOAD_COLLECT_LAST_IS_BEST
					case "SOAD_COLLECT_QUEUED" : SoAdTxPduCollectionSemantics.SOAD_COLLECT_QUEUED
				}
			}
			
			def void setSoAdTxPduCollectionSemanticsValue(GParameterValue parameterValue, SoAdTxPduCollectionSemantics value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getSoAdTxPduId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduId"].getBigIntegerValue()
			}
			
			def void setSoAdTxPduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxPduId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def SoAdTxUpperLayerType getSoAdTxUpperLayerType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUpperLayerType"].getSoAdTxUpperLayerTypeValue()
			}
			
			def void setSoAdTxUpperLayerType(SoAdTxUpperLayerType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUpperLayerType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxUpperLayerType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SoAdTxUpperLayerType {
				^IF, 
				TP
			}
			
			def SoAdTxUpperLayerType getSoAdTxUpperLayerTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "IF" : SoAdTxUpperLayerType.^IF
					case "TP" : SoAdTxUpperLayerType.TP
				}
			}
			
			def void setSoAdTxUpperLayerTypeValue(GParameterValue parameterValue, SoAdTxUpperLayerType value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSoAdTxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SoAdTxPduRef")
			}
			
			def void setSoAdTxPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SoAdTxPduRef"], object.getTarget())
				}
			}
			
			
			def List<SoAdPduRouteDest> getSoAdPduRouteDests(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SoAdPduRouteDest")
					}
				}
				return new BasicWrappingEList<SoAdPduRouteDest, GContainer>(filteredContainers, typeof(SoAdPduRouteDest), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdPduRoute.SoAdPduRouteDest soAdPduRouteDest) {
						soAdPduRouteDest.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdPduRouteDest"))
						super.delegateAdd(soAdPduRouteDest)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdPduRoute.SoAdPduRouteDest soAdPduRouteDest) {
						soAdPduRouteDest.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdPduRouteDest"))
						super.delegateAdd(index, soAdPduRouteDest)
					}
				}
			}
			
			
			static class SoAdPduRouteDest implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof SoAdPduRouteDest)){
						return false
					}
					this.target == (object as SoAdPduRouteDest).target
				}
			
				def BigInteger getSoAdTxPduHeaderId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduHeaderId"].getBigIntegerValue()
				}
				
				def void setSoAdTxPduHeaderId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduHeaderId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxPduHeaderId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def SoAdTxUdpTriggerMode getSoAdTxUdpTriggerMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUdpTriggerMode"].getSoAdTxUdpTriggerModeValue()
				}
				
				def void setSoAdTxUdpTriggerMode(SoAdTxUdpTriggerMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUdpTriggerMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxUdpTriggerMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum SoAdTxUdpTriggerMode {
					TRIGGER_ALWAYS, 
					TRIGGER_NEVER
				}
				
				def SoAdTxUdpTriggerMode getSoAdTxUdpTriggerModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "TRIGGER_ALWAYS" : SoAdTxUdpTriggerMode.TRIGGER_ALWAYS
						case "TRIGGER_NEVER" : SoAdTxUdpTriggerMode.TRIGGER_NEVER
					}
				}
				
				def void setSoAdTxUdpTriggerModeValue(GParameterValue parameterValue, SoAdTxUdpTriggerMode value){
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSoAdTxUdpTriggerTimeout(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUdpTriggerTimeout"].getBigDecimalValue()
				}
				
				def void setSoAdTxUdpTriggerTimeout(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUdpTriggerTimeout"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxUdpTriggerTimeout"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def List<org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup> getSoAdTxRoutingGroupRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "SoAdTxRoutingGroupRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "SoAdTxRoutingGroupRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup)) {
						override protected wrap(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object) throws CoreException {
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
									return new org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
				
			}
			
		}
		
		static class SoAdRoutingGroup implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof SoAdRoutingGroup)){
					return false
				}
				this.target == (object as SoAdRoutingGroup).target
			}
		
			def BigInteger getSoAdRoutingGroupId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupId"].getBigIntegerValue()
			}
			
			def void setSoAdRoutingGroupId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRoutingGroupId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getSoAdRoutingGroupIsEnabledAtInit(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupIsEnabledAtInit"].getBooleanValue()
			}
			
			def void setSoAdRoutingGroupIsEnabledAtInit(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupIsEnabledAtInit"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRoutingGroupIsEnabledAtInit"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getSoAdRoutingGroupTxTriggerable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupTxTriggerable"].getBooleanValue()
			}
			
			def void setSoAdRoutingGroupTxTriggerable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupTxTriggerable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRoutingGroupTxTriggerable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
		static class SoAdSocketConnectionGroup implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof SoAdSocketConnectionGroup)){
					return false
				}
				this.target == (object as SoAdSocketConnectionGroup).target
			}
		
			def Boolean getSoAdPduHeaderEnable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdPduHeaderEnable"].getBooleanValue()
			}
			
			def void setSoAdPduHeaderEnable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdPduHeaderEnable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdPduHeaderEnable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getSoAdSocketAutomaticSoConSetup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketAutomaticSoConSetup"].getBooleanValue()
			}
			
			def void setSoAdSocketAutomaticSoConSetup(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketAutomaticSoConSetup"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketAutomaticSoConSetup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getSoAdSocketDifferentiatedServicesField(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketDifferentiatedServicesField"].getBigIntegerValue()
			}
			
			def void setSoAdSocketDifferentiatedServicesField(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketDifferentiatedServicesField"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketDifferentiatedServicesField"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getSoAdSocketFlowLabel(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketFlowLabel"].getBigIntegerValue()
			}
			
			def void setSoAdSocketFlowLabel(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketFlowLabel"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketFlowLabel"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getSoAdSocketFramePriority(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketFramePriority"].getBigIntegerValue()
			}
			
			def void setSoAdSocketFramePriority(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketFramePriority"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketFramePriority"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getSoAdSocketIpAddrAssignmentChgNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketIpAddrAssignmentChgNotification"].getBooleanValue()
			}
			
			def void setSoAdSocketIpAddrAssignmentChgNotification(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketIpAddrAssignmentChgNotification"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketIpAddrAssignmentChgNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getSoAdSocketLocalPort(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketLocalPort"].getBigIntegerValue()
			}
			
			def void setSoAdSocketLocalPort(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketLocalPort"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketLocalPort"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getSoAdSocketMsgAcceptanceFilterEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketMsgAcceptanceFilterEnabled"].getBooleanValue()
			}
			
			def void setSoAdSocketMsgAcceptanceFilterEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketMsgAcceptanceFilterEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketMsgAcceptanceFilterEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getSoAdSocketPathMTUEnable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketPathMTUEnable"].getBooleanValue()
			}
			
			def void setSoAdSocketPathMTUEnable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketPathMTUEnable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketPathMTUEnable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getSoAdSocketSoConModeChgNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketSoConModeChgNotification"].getBooleanValue()
			}
			
			def void setSoAdSocketSoConModeChgNotification(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketSoConModeChgNotification"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketSoConModeChgNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getSoAdSocketTpRxBufferMin(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTpRxBufferMin"].getBigIntegerValue()
			}
			
			def void setSoAdSocketTpRxBufferMin(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTpRxBufferMin"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTpRxBufferMin"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr getSoAdSocketLocalAddressRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr), "SoAdSocketLocalAddressRef")
			}
			
			def void setSoAdSocketLocalAddressRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SoAdSocketLocalAddressRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.SoAd.SoAdBswModules getSoAdSocketSoConModeChgNotifUpperLayerRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.SoAd.SoAdBswModules), "SoAdSocketSoConModeChgNotifUpperLayerRef")
			}
			
			def void setSoAdSocketSoConModeChgNotifUpperLayerRef(org.artop.ecuc.autosar430.accessors.SoAd.SoAdBswModules object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SoAdSocketSoConModeChgNotifUpperLayerRef"], object.getTarget())
				}
			}
			
			
			def List<SoAdSocketConnection> getSoAdSocketConnections(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SoAdSocketConnection")
					}
				}
				return new BasicWrappingEList<SoAdSocketConnection, GContainer>(filteredContainers, typeof(SoAdSocketConnection), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup.SoAdSocketConnection soAdSocketConnection) {
						soAdSocketConnection.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdSocketConnection"))
						super.delegateAdd(soAdSocketConnection)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup.SoAdSocketConnection soAdSocketConnection) {
						soAdSocketConnection.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdSocketConnection"))
						super.delegateAdd(index, soAdSocketConnection)
					}
				}
			}
			
			def SoAdSocketProtocol getSoAdSocketProtocol(){
				containerValue.getByType(typeof(SoAdSocketProtocol))
			}
			
			def void setSoAdSocketProtocol(SoAdSocketProtocol soAdSocketProtocol){
				val GContainer subContainer = soAdSocketProtocol.getTarget()
				containerValue.setContainer(subContainer, "SoAdSocketProtocol")
			}
			
			
			static class SoAdSocketConnection implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof SoAdSocketConnection)){
						return false
					}
					this.target == (object as SoAdSocketConnection).target
				}
			
				def BigInteger getSoAdSocketId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketId"].getBigIntegerValue()
				}
				
				def void setSoAdSocketId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def SoAdSocketRemoteAddress getSoAdSocketRemoteAddress(){
					containerValue.getByType(typeof(SoAdSocketRemoteAddress))
				}
				
				def void setSoAdSocketRemoteAddress(SoAdSocketRemoteAddress soAdSocketRemoteAddress){
					val GContainer subContainer = soAdSocketRemoteAddress.getTarget()
					containerValue.setContainer(subContainer, "SoAdSocketRemoteAddress")
				}
				
				
				static class SoAdSocketRemoteAddress implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof SoAdSocketRemoteAddress)){
							return false
						}
						this.target == (object as SoAdSocketRemoteAddress).target
					}
				
					def String getSoAdSocketRemoteIpAddress(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketRemoteIpAddress"].getStringValue()
					}
					
					def void setSoAdSocketRemoteIpAddress(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketRemoteIpAddress"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketRemoteIpAddress"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getSoAdSocketRemotePort(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketRemotePort"].getBigIntegerValue()
					}
					
					def void setSoAdSocketRemotePort(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketRemotePort"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketRemotePort"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
			static class SoAdSocketProtocol implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof SoAdSocketProtocol)){
						return false
					}
					this.target == (object as SoAdSocketProtocol).target
				}
			
				def SoAdSocketTcp getSoAdSocketTcp(){
					containerValue.getByType(typeof(SoAdSocketTcp))
				}
				
				def void setSoAdSocketTcp(SoAdSocketTcp soAdSocketTcp){
					val GContainer subContainer = soAdSocketTcp.getTarget()
					containerValue.setContainer(subContainer, "SoAdSocketTcp")
				}
				def SoAdSocketUdp getSoAdSocketUdp(){
					containerValue.getByType(typeof(SoAdSocketUdp))
				}
				
				def void setSoAdSocketUdp(SoAdSocketUdp soAdSocketUdp){
					val GContainer subContainer = soAdSocketUdp.getTarget()
					containerValue.setContainer(subContainer, "SoAdSocketUdp")
				}
				
				static class SoAdSocketTcp implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof SoAdSocketTcp)){
							return false
						}
						this.target == (object as SoAdSocketTcp).target
					}
				
					def Boolean getSoAdSocketTcpImmediateTpTxConfirmation(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpImmediateTpTxConfirmation"].getBooleanValue()
					}
					
					def void setSoAdSocketTcpImmediateTpTxConfirmation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpImmediateTpTxConfirmation"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpImmediateTpTxConfirmation"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getSoAdSocketTcpInitiate(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpInitiate"].getBooleanValue()
					}
					
					def void setSoAdSocketTcpInitiate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpInitiate"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpInitiate"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getSoAdSocketTcpKeepAlive(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAlive"].getBooleanValue()
					}
					
					def void setSoAdSocketTcpKeepAlive(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAlive"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpKeepAlive"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigDecimal getSoAdSocketTcpKeepAliveInterval(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveInterval"].getBigDecimalValue()
					}
					
					def void setSoAdSocketTcpKeepAliveInterval(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveInterval"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpKeepAliveInterval"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getSoAdSocketTcpKeepAliveProbesMax(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveProbesMax"].getBigIntegerValue()
					}
					
					def void setSoAdSocketTcpKeepAliveProbesMax(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveProbesMax"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpKeepAliveProbesMax"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getSoAdSocketTcpKeepAliveTime(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveTime"].getBigDecimalValue()
					}
					
					def void setSoAdSocketTcpKeepAliveTime(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveTime"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpKeepAliveTime"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getSoAdSocketTcpNoDelay(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpNoDelay"].getBooleanValue()
					}
					
					def void setSoAdSocketTcpNoDelay(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpNoDelay"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpNoDelay"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getSoAdSocketTcpTxQuota(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpTxQuota"].getBigIntegerValue()
					}
					
					def void setSoAdSocketTcpTxQuota(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpTxQuota"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpTxQuota"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpTcpConfig.TcpIpTcpConfigOptionFilter getSoAdSocketTCPOptionFilterRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpTcpConfig.TcpIpTcpConfigOptionFilter), "SoAdSocketTCPOptionFilterRef")
					}
					
					def void setSoAdSocketTCPOptionFilterRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpTcpConfig.TcpIpTcpConfigOptionFilter object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SoAdSocketTCPOptionFilterRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class SoAdSocketUdp implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof SoAdSocketUdp)){
							return false
						}
						this.target == (object as SoAdSocketUdp).target
					}
				
					def BigInteger getSoAdSocketnPduUdpTxBufferMin(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketnPduUdpTxBufferMin"].getBigIntegerValue()
					}
					
					def void setSoAdSocketnPduUdpTxBufferMin(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketnPduUdpTxBufferMin"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketnPduUdpTxBufferMin"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getSoAdSocketUdpAliveSupervisionTimeout(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpAliveSupervisionTimeout"].getBigDecimalValue()
					}
					
					def void setSoAdSocketUdpAliveSupervisionTimeout(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpAliveSupervisionTimeout"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketUdpAliveSupervisionTimeout"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getSoAdSocketUdpChecksumEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpChecksumEnabled"].getBooleanValue()
					}
					
					def void setSoAdSocketUdpChecksumEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpChecksumEnabled"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketUdpChecksumEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getSoAdSocketUdpListenOnly(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpListenOnly"].getBooleanValue()
					}
					
					def void setSoAdSocketUdpListenOnly(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpListenOnly"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketUdpListenOnly"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getSoAdSocketUdpStrictHeaderLenCheckEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpStrictHeaderLenCheckEnabled"].getBooleanValue()
					}
					
					def void setSoAdSocketUdpStrictHeaderLenCheckEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpStrictHeaderLenCheckEnabled"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketUdpStrictHeaderLenCheckEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigDecimal getSoAdSocketUdpTriggerTimeout(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpTriggerTimeout"].getBigDecimalValue()
					}
					
					def void setSoAdSocketUdpTriggerTimeout(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpTriggerTimeout"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketUdpTriggerTimeout"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class SoAdSocketRoute implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof SoAdSocketRoute)){
					return false
				}
				this.target == (object as SoAdSocketRoute).target
			}
		
			def BigInteger getSoAdRxPduHeaderId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxPduHeaderId"].getBigIntegerValue()
			}
			
			def void setSoAdRxPduHeaderId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxPduHeaderId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRxPduHeaderId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
			def SoAdSocketRouteDest getSoAdSocketRouteDest(){
				containerValue.getByType(typeof(SoAdSocketRouteDest))
			}
			
			def void setSoAdSocketRouteDest(SoAdSocketRouteDest soAdSocketRouteDest){
				val GContainer subContainer = soAdSocketRouteDest.getTarget()
				containerValue.setContainer(subContainer, "SoAdSocketRouteDest")
			}
			
			
			static class SoAdSocketRouteDest implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof SoAdSocketRouteDest)){
						return false
					}
					this.target == (object as SoAdSocketRouteDest).target
				}
			
				def BigInteger getSoAdRxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxPduId"].getBigIntegerValue()
				}
				
				def void setSoAdRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def SoAdRxUpperLayerType getSoAdRxUpperLayerType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxUpperLayerType"].getSoAdRxUpperLayerTypeValue()
				}
				
				def void setSoAdRxUpperLayerType(SoAdRxUpperLayerType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxUpperLayerType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRxUpperLayerType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum SoAdRxUpperLayerType {
					^IF, 
					TP
				}
				
				def SoAdRxUpperLayerType getSoAdRxUpperLayerTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "IF" : SoAdRxUpperLayerType.^IF
						case "TP" : SoAdRxUpperLayerType.TP
					}
				}
				
				def void setSoAdRxUpperLayerTypeValue(GParameterValue parameterValue, SoAdRxUpperLayerType value){
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSoAdRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SoAdRxPduRef")
				}
				
				def void setSoAdRxPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SoAdRxPduRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup> getSoAdRxRoutingGroupRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "SoAdRxRoutingGroupRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "SoAdRxRoutingGroupRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup)) {
						override protected wrap(org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object) throws CoreException {
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
									return new org.artop.ecuc.autosar430.accessors.SoAd.SoAdConfig.SoAdRoutingGroup(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
		}
		
	}
	static class SoAdGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof SoAdGeneral)){
				return false
			}
			this.target == (object as SoAdGeneral).target
		}
	
		def Boolean getSoAdDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdDevErrorDetect"].getBooleanValue()
		}
		
		def void setSoAdDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSoAdGetAndResetMeasurementDataApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdGetAndResetMeasurementDataApi"].getBooleanValue()
		}
		
		def void setSoAdGetAndResetMeasurementDataApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdGetAndResetMeasurementDataApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdGetAndResetMeasurementDataApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSoAdIPv6AddressEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIPv6AddressEnabled"].getBooleanValue()
		}
		
		def void setSoAdIPv6AddressEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIPv6AddressEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdIPv6AddressEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getSoAdMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setSoAdMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSoAdRoutingGroupMax(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupMax"].getBigIntegerValue()
		}
		
		def void setSoAdRoutingGroupMax(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupMax"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRoutingGroupMax"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSoAdSoConMax(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSoConMax"].getBigIntegerValue()
		}
		
		def void setSoAdSoConMax(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSoConMax"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSoConMax"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getSoAdVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdVersionInfoApi"].getBooleanValue()
		}
		
		def void setSoAdVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SoAdVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof SoAd)){
			return false
		}
		this.target == (object as SoAd).target
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
