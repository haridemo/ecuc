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
			override protected delegateAdd(SoAdBswModules soAdBswModules) {
				soAdBswModules.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SoAdBswModules"))
				super.delegateAdd(soAdBswModules)
			}
		
			override protected delegateAdd(int index, SoAdBswModules soAdBswModules) {
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
		
		def Boolean getSoAdIf(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIf"])
		}
		
		def void setSoAdIf(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIf"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdIf"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSoAdIfTriggerTransmit(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIfTriggerTransmit"])
		}
		
		def void setSoAdIfTriggerTransmit(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIfTriggerTransmit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdIfTriggerTransmit"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSoAdIfTxConfirmation(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIfTxConfirmation"])
		}
		
		def void setSoAdIfTxConfirmation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIfTxConfirmation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdIfTxConfirmation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSoAdLocalIpAddrAssigmentChg(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdLocalIpAddrAssigmentChg"])
		}
		
		def void setSoAdLocalIpAddrAssigmentChg(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdLocalIpAddrAssigmentChg"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdLocalIpAddrAssigmentChg"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSoAdSoConModeChg(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSoConModeChg"])
		}
		
		def void setSoAdSoConModeChg(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSoConModeChg"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSoConModeChg"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSoAdTp(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTp"])
		}
		
		def void setSoAdTp(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTp"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTp"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSoAdUseCallerInfix(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdUseCallerInfix"])
		}
		
		def void setSoAdUseCallerInfix(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdUseCallerInfix"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdUseCallerInfix"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSoAdUseTypeInfix(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdUseTypeInfix"])
		}
		
		def void setSoAdUseTypeInfix(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdUseTypeInfix"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdUseTypeInfix"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		
		
		def List<SoAdPduRoute> getSoAdPduRoutes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SoAdPduRoute")
				}
			}
			return new BasicWrappingEList<SoAdPduRoute, GContainer>(filteredContainers, typeof(SoAdPduRoute), typeof(GContainer)) {
				override protected delegateAdd(SoAdPduRoute soAdPduRoute) {
					soAdPduRoute.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdPduRoute"))
					super.delegateAdd(soAdPduRoute)
				}
				
				override protected delegateAdd(int index, SoAdPduRoute soAdPduRoute) {
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
				override protected delegateAdd(SoAdRoutingGroup soAdRoutingGroup) {
					soAdRoutingGroup.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdRoutingGroup"))
					super.delegateAdd(soAdRoutingGroup)
				}
				
				override protected delegateAdd(int index, SoAdRoutingGroup soAdRoutingGroup) {
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
				override protected delegateAdd(SoAdSocketConnectionGroup soAdSocketConnectionGroup) {
					soAdSocketConnectionGroup.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdSocketConnectionGroup"))
					super.delegateAdd(soAdSocketConnectionGroup)
				}
				
				override protected delegateAdd(int index, SoAdSocketConnectionGroup soAdSocketConnectionGroup) {
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
				override protected delegateAdd(SoAdSocketRoute soAdSocketRoute) {
					soAdSocketRoute.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdSocketRoute"))
					super.delegateAdd(soAdSocketRoute)
				}
				
				override protected delegateAdd(int index, SoAdSocketRoute soAdSocketRoute) {
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
			
			def Integer getSoAdTxPduId(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduId"])
			}
			
			def void setSoAdTxPduId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxPduId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def SoAdTxUpperLayerType getSoAdTxUpperLayerType(){
				getSoAdTxUpperLayerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUpperLayerType"])
			}
			
			def void setSoAdTxUpperLayerType(SoAdTxUpperLayerType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUpperLayerType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxUpperLayerType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum SoAdTxUpperLayerType {
				^IF, 
				TP
			}
				
			def SoAdTxUpperLayerType getSoAdTxUpperLayerTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "IF" : SoAdTxUpperLayerType.^IF
					case "TP" : SoAdTxUpperLayerType.TP
				}
			}
			
			def void setSoAdTxUpperLayerTypeValue(GParameterValue paramValue, SoAdTxUpperLayerType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSoAdTxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SoAdTxPduRef")
			}
					
			def void setSoAdTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SoAdTxPduRef"], object.getTarget())
				}
			}
			
			
			def List<SoAdPduRouteDest> getSoAdPduRouteDests(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SoAdPduRouteDest")
					}
				}
				return new BasicWrappingEList<SoAdPduRouteDest, GContainer>(filteredContainers, typeof(SoAdPduRouteDest), typeof(GContainer)) {
					override protected delegateAdd(SoAdPduRouteDest soAdPduRouteDest) {
						soAdPduRouteDest.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdPduRouteDest"))
						super.delegateAdd(soAdPduRouteDest)
					}
					
					override protected delegateAdd(int index, SoAdPduRouteDest soAdPduRouteDest) {
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
				
				def Integer getSoAdTxPduHeaderId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduHeaderId"])
				}
				
				def void setSoAdTxPduHeaderId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxPduHeaderId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxPduHeaderId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def SoAdTxUdpTriggerMode getSoAdTxUdpTriggerMode(){
					getSoAdTxUdpTriggerModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUdpTriggerMode"])
				}
				
				def void setSoAdTxUdpTriggerMode(SoAdTxUdpTriggerMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUdpTriggerMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxUdpTriggerMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum SoAdTxUdpTriggerMode {
					TRIGGER_ALWAYS, 
					TRIGGER_NEVER
				}
					
				def SoAdTxUdpTriggerMode getSoAdTxUdpTriggerModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "TRIGGER_ALWAYS" : SoAdTxUdpTriggerMode.TRIGGER_ALWAYS
						case "TRIGGER_NEVER" : SoAdTxUdpTriggerMode.TRIGGER_NEVER
					}
				}
				
				def void setSoAdTxUdpTriggerModeValue(GParameterValue paramValue, SoAdTxUdpTriggerMode value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def Float getSoAdTxUdpTriggerTimeout(){
					EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUdpTriggerTimeout"])
				}
				
				def void setSoAdTxUdpTriggerTimeout(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdTxUdpTriggerTimeout"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdTxUdpTriggerTimeout"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup> getSoAdTxRoutingGroupRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "SoAdTxRoutingGroupRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "SoAdTxRoutingGroupRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object) throws CoreException {
							if (object != null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
						
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue != null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup(referenceValueValue as GContainer)
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
			
			def Integer getSoAdRoutingGroupId(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupId"])
			}
			
			def void setSoAdRoutingGroupId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRoutingGroupId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getSoAdRoutingGroupIsEnabledAtInit(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupIsEnabledAtInit"])
			}
			
			def void setSoAdRoutingGroupIsEnabledAtInit(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupIsEnabledAtInit"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRoutingGroupIsEnabledAtInit"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getSoAdRoutingGroupTxTriggerable(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupTxTriggerable"])
			}
			
			def void setSoAdRoutingGroupTxTriggerable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupTxTriggerable"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRoutingGroupTxTriggerable"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			def Boolean getSoAdPduHeaderEnable(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdPduHeaderEnable"])
			}
			
			def void setSoAdPduHeaderEnable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdPduHeaderEnable"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdPduHeaderEnable"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getSoAdResourceManagementEnable(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdResourceManagementEnable"])
			}
			
			def void setSoAdResourceManagementEnable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdResourceManagementEnable"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdResourceManagementEnable"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getSoAdSocketAutomaticSoConSetup(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketAutomaticSoConSetup"])
			}
			
			def void setSoAdSocketAutomaticSoConSetup(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketAutomaticSoConSetup"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketAutomaticSoConSetup"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getSoAdSocketFramePriority(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketFramePriority"])
			}
			
			def void setSoAdSocketFramePriority(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketFramePriority"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketFramePriority"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getSoAdSocketIpAddrAssignmentChgNotification(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketIpAddrAssignmentChgNotification"])
			}
			
			def void setSoAdSocketIpAddrAssignmentChgNotification(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketIpAddrAssignmentChgNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketIpAddrAssignmentChgNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getSoAdSocketLocalPort(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketLocalPort"])
			}
			
			def void setSoAdSocketLocalPort(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketLocalPort"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketLocalPort"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getSoAdSocketMsgAcceptanceFilterEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketMsgAcceptanceFilterEnabled"])
			}
			
			def void setSoAdSocketMsgAcceptanceFilterEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketMsgAcceptanceFilterEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketMsgAcceptanceFilterEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getSoAdSocketSoConModeChgNotification(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketSoConModeChgNotification"])
			}
			
			def void setSoAdSocketSoConModeChgNotification(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketSoConModeChgNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketSoConModeChgNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getSoAdSocketTpRxBufferMin(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTpRxBufferMin"])
			}
			
			def void setSoAdSocketTpRxBufferMin(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTpRxBufferMin"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTpRxBufferMin"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr getSoAdSocketLocalAddressRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr), "SoAdSocketLocalAddressRef")
			}
					
			def void setSoAdSocketLocalAddressRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SoAdSocketLocalAddressRef"], object.getTarget())
				}
			}
			
			
			def List<SoAdSocketConnection> getSoAdSocketConnections(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SoAdSocketConnection")
					}
				}
				return new BasicWrappingEList<SoAdSocketConnection, GContainer>(filteredContainers, typeof(SoAdSocketConnection), typeof(GContainer)) {
					override protected delegateAdd(SoAdSocketConnection soAdSocketConnection) {
						soAdSocketConnection.target?.gSetDefinition(containerValue.getContainerDefinition("SoAdSocketConnection"))
						super.delegateAdd(soAdSocketConnection)
					}
					
					override protected delegateAdd(int index, SoAdSocketConnection soAdSocketConnection) {
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
				
				def Integer getSoAdSocketId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketId"])
				}
				
				def void setSoAdSocketId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					
					def String getSoAdSocketRemoteIpAddress(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketRemoteIpAddress"])
					}
					
					def void setSoAdSocketRemoteIpAddress(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketRemoteIpAddress"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketRemoteIpAddress"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getSoAdSocketRemotePort(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketRemotePort"])
					}
					
					def void setSoAdSocketRemotePort(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketRemotePort"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketRemotePort"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					
					def Boolean getSoAdSocketTcpImmediateTpTxConfirmation(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpImmediateTpTxConfirmation"])
					}
					
					def void setSoAdSocketTcpImmediateTpTxConfirmation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpImmediateTpTxConfirmation"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpImmediateTpTxConfirmation"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getSoAdSocketTcpInitiate(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpInitiate"])
					}
					
					def void setSoAdSocketTcpInitiate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpInitiate"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpInitiate"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getSoAdSocketTcpKeepAlive(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAlive"])
					}
					
					def void setSoAdSocketTcpKeepAlive(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAlive"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpKeepAlive"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getSoAdSocketTcpKeepAliveInterval(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveInterval"])
					}
					
					def void setSoAdSocketTcpKeepAliveInterval(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveInterval"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpKeepAliveInterval"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getSoAdSocketTcpKeepAliveProbesMax(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveProbesMax"])
					}
					
					def void setSoAdSocketTcpKeepAliveProbesMax(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveProbesMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpKeepAliveProbesMax"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getSoAdSocketTcpKeepAliveTime(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveTime"])
					}
					
					def void setSoAdSocketTcpKeepAliveTime(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpKeepAliveTime"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpKeepAliveTime"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getSoAdSocketTcpNoDelay(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpNoDelay"])
					}
					
					def void setSoAdSocketTcpNoDelay(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpNoDelay"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpNoDelay"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getSoAdSocketTcpTxQuota(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpTxQuota"])
					}
					
					def void setSoAdSocketTcpTxQuota(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketTcpTxQuota"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketTcpTxQuota"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					
					def Float getSoAdSocketUdpAliveSupervisionTimeout(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpAliveSupervisionTimeout"])
					}
					
					def void setSoAdSocketUdpAliveSupervisionTimeout(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpAliveSupervisionTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketUdpAliveSupervisionTimeout"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getSoAdSocketUdpListenOnly(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpListenOnly"])
					}
					
					def void setSoAdSocketUdpListenOnly(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpListenOnly"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketUdpListenOnly"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getSoAdSocketUdpStrictHeaderLenCheckEnabled(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpStrictHeaderLenCheckEnabled"])
					}
					
					def void setSoAdSocketUdpStrictHeaderLenCheckEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpStrictHeaderLenCheckEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketUdpStrictHeaderLenCheckEnabled"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getSoAdSocketUdpTriggerTimeout(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpTriggerTimeout"])
					}
					
					def void setSoAdSocketUdpTriggerTimeout(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketUdpTriggerTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketUdpTriggerTimeout"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getSoAdSocketnPduUdpTxBufferMin(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketnPduUdpTxBufferMin"])
					}
					
					def void setSoAdSocketnPduUdpTxBufferMin(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSocketnPduUdpTxBufferMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSocketnPduUdpTxBufferMin"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			def Integer getSoAdRxPduHeaderId(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxPduHeaderId"])
			}
			
			def void setSoAdRxPduHeaderId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxPduHeaderId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRxPduHeaderId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				
				def Integer getSoAdRxPduId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxPduId"])
				}
				
				def void setSoAdRxPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def SoAdRxUpperLayerType getSoAdRxUpperLayerType(){
					getSoAdRxUpperLayerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxUpperLayerType"])
				}
				
				def void setSoAdRxUpperLayerType(SoAdRxUpperLayerType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRxUpperLayerType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRxUpperLayerType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum SoAdRxUpperLayerType {
					^IF, 
					TP
				}
					
				def SoAdRxUpperLayerType getSoAdRxUpperLayerTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "IF" : SoAdRxUpperLayerType.^IF
						case "TP" : SoAdRxUpperLayerType.TP
					}
				}
				
				def void setSoAdRxUpperLayerTypeValue(GParameterValue paramValue, SoAdRxUpperLayerType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSoAdRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SoAdRxPduRef")
				}
						
				def void setSoAdRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SoAdRxPduRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup> getSoAdRxRoutingGroupRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "SoAdRxRoutingGroupRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "SoAdRxRoutingGroupRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object) throws CoreException {
							if (object != null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
						
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue != null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup(referenceValueValue as GContainer)
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
		
		def Boolean getSoAdDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdDevErrorDetect"])
		}
		
		def void setSoAdDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSoAdIPv6AddressEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIPv6AddressEnabled"])
		}
		
		def void setSoAdIPv6AddressEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdIPv6AddressEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdIPv6AddressEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getSoAdMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdMainFunctionPeriod"])
		}
		
		def void setSoAdMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getSoAdRoutingGroupMax(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupMax"])
		}
		
		def void setSoAdRoutingGroupMax(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdRoutingGroupMax"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdRoutingGroupMax"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getSoAdSoConMax(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSoConMax"])
		}
		
		def void setSoAdSoConMax(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdSoConMax"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdSoConMax"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSoAdVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdVersionInfoApi"])
		}
		
		def void setSoAdVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SoAdVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SoAdVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
