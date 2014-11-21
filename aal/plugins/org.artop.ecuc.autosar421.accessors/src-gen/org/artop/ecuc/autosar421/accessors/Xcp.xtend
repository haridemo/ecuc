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

import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil
import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.BooleanValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.StringValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.DocumentationBlockValueUnwrappingEList

import org.eclipse.sphinx.emf.util.AbstractFilteringEList
import org.eclipse.sphinx.emf.util.BasicWrappingEList

import gautosar.gecucdescription.GContainer
import gautosar.gecucdescription.GModuleConfiguration
import gautosar.gecucdescription.GParameterValue
import gautosar.gecucdescription.GecucdescriptionPackage
import gautosar.gecucparameterdef.GConfigParameter
import gautosar.gecucparameterdef.GContainerDef
import gautosar.gecucparameterdef.GParamConfContainerDef
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable
import static extension org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil.*
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import org.eclipse.core.runtime.CoreException

class Xcp implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def XcpConfig getXcpConfig(){
		moduleConfiguration.getByType(typeof(XcpConfig))
	}
	
	def void setXcpConfig(XcpConfig xcpConfig){
		val GContainer container = xcpConfig.getTarget() 
	    moduleConfiguration.setContainer(container, "XcpConfig")
	}
	def XcpGeneral getXcpGeneral(){
		moduleConfiguration.getByType(typeof(XcpGeneral))
	}
	
	def void setXcpGeneral(XcpGeneral xcpGeneral){
		val GContainer container = xcpGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "XcpGeneral")
	}
	
	static class XcpConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		
		def List<XcpDaqList> getXcpDaqLists(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "XcpDaqList")
				}
			}
			return new BasicWrappingEList<XcpDaqList, GContainer>(filteredContainers, typeof(XcpDaqList), typeof(GContainer))
		}
		
		def List<XcpEventChannel> getXcpEventChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "XcpEventChannel")
				}
			}
			return new BasicWrappingEList<XcpEventChannel, GContainer>(filteredContainers, typeof(XcpEventChannel), typeof(GContainer))
		}
		
		def List<XcpPdu> getXcpPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "XcpPdu")
				}
			}
			return new BasicWrappingEList<XcpPdu, GContainer>(filteredContainers, typeof(XcpPdu), typeof(GContainer))
		}
		
		
		static class XcpDaqList implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getXcpDaqListNumber(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqListNumber"])
			}
			
			def void setXcpDaqListNumber(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqListNumber"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpDaqListNumber"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def XcpDaqListType getXcpDaqListType(){
				getXcpDaqListTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqListType"])
			}
			
			def void setXcpDaqListType(XcpDaqListType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqListType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpDaqListType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum XcpDaqListType {
				DAQ, 
				DAQ_STIM, 
				STIM
			}
				
			def XcpDaqListType getXcpDaqListTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DAQ" : XcpDaqListType.DAQ
					case "DAQ_STIM" : XcpDaqListType.DAQ_STIM
					case "STIM" : XcpDaqListType.STIM
				}
			}
			
			def void setXcpDaqListTypeValue(GParameterValue paramValue, XcpDaqListType value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getXcpMaxOdt(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxOdt"])
			}
			
			def void setXcpMaxOdt(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxOdt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxOdt"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getXcpMaxOdtEntries(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxOdtEntries"])
			}
			
			def void setXcpMaxOdtEntries(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxOdtEntries"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxOdtEntries"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<XcpDto> getXcpDtos(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "XcpDto")
					}
				}
				return new BasicWrappingEList<XcpDto, GContainer>(filteredContainers, typeof(XcpDto), typeof(GContainer))
			}
			
			def List<XcpOdt> getXcpOdts(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "XcpOdt")
					}
				}
				return new BasicWrappingEList<XcpOdt, GContainer>(filteredContainers, typeof(XcpOdt), typeof(GContainer))
			}
			
			
			static class XcpDto implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getXcpDtoPid(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDtoPid"])
				}
				
				def void setXcpDtoPid(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDtoPid"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpDtoPid"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
				
			}
			
			static class XcpOdt implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getXcpOdtEntryMaxSize(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryMaxSize"])
				}
				
				def void setXcpOdtEntryMaxSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryMaxSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryMaxSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getXcpOdtNumber(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtNumber"])
				}
				
				def void setXcpOdtNumber(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtNumber"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtNumber"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Xcp.XcpConfig.XcpDaqList.XcpDto getXcpOdt2DtoMapping(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Xcp.XcpConfig.XcpDaqList.XcpDto), "XcpOdt2DtoMapping")
				}
						
				def void setXcpOdt2DtoMapping(org.artop.ecuc.autosar421.accessors.Xcp.XcpConfig.XcpDaqList.XcpDto object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "XcpOdt2DtoMapping"], object.getTarget())
					}
				}
				
				
				def List<XcpOdtEntry> getXcpOdtEntries(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "XcpOdtEntry")
						}
					}
					return new BasicWrappingEList<XcpOdtEntry, GContainer>(filteredContainers, typeof(XcpOdtEntry), typeof(GContainer))
				}
				
				
				static class XcpOdtEntry implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def String getXcpOdtEntryAddress(){
						EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryAddress"])
					}
					
					def void setXcpOdtEntryAddress(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryAddress"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryAddress"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getXcpOdtEntryBitOffset(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryBitOffset"])
					}
					
					def void setXcpOdtEntryBitOffset(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryBitOffset"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryBitOffset"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getXcpOdtEntryLength(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryLength"])
					}
					
					def void setXcpOdtEntryLength(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getXcpOdtEntryNumber(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryNumber"])
					}
					
					def void setXcpOdtEntryNumber(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryNumber"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryNumber"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class XcpEventChannel implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def XcpEventChannelConsistency getXcpEventChannelConsistency(){
				getXcpEventChannelConsistencyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelConsistency"])
			}
			
			def void setXcpEventChannelConsistency(XcpEventChannelConsistency value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelConsistency"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelConsistency"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum XcpEventChannelConsistency {
				DAQ, 
				EVENT, 
				ODT
			}
				
			def XcpEventChannelConsistency getXcpEventChannelConsistencyValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DAQ" : XcpEventChannelConsistency.DAQ
					case "EVENT" : XcpEventChannelConsistency.EVENT
					case "ODT" : XcpEventChannelConsistency.ODT
				}
			}
			
			def void setXcpEventChannelConsistencyValue(GParameterValue paramValue, XcpEventChannelConsistency value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getXcpEventChannelMaxDaqList(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelMaxDaqList"])
			}
			
			def void setXcpEventChannelMaxDaqList(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelMaxDaqList"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelMaxDaqList"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getXcpEventChannelNumber(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelNumber"])
			}
			
			def void setXcpEventChannelNumber(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelNumber"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelNumber"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getXcpEventChannelPriority(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelPriority"])
			}
			
			def void setXcpEventChannelPriority(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelPriority"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelPriority"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getXcpEventChannelTimeCycle(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelTimeCycle"])
			}
			
			def void setXcpEventChannelTimeCycle(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelTimeCycle"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelTimeCycle"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def XcpEventChannelTimeUnit getXcpEventChannelTimeUnit(){
				getXcpEventChannelTimeUnitValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelTimeUnit"])
			}
			
			def void setXcpEventChannelTimeUnit(XcpEventChannelTimeUnit value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelTimeUnit"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelTimeUnit"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum XcpEventChannelTimeUnit {
				TIMESTAMP_UNIT_100MS, 
				TIMESTAMP_UNIT_100NS, 
				TIMESTAMP_UNIT_100PS, 
				TIMESTAMP_UNIT_100US, 
				TIMESTAMP_UNIT_10MS, 
				TIMESTAMP_UNIT_10NS, 
				TIMESTAMP_UNIT_10PS, 
				TIMESTAMP_UNIT_10US, 
				TIMESTAMP_UNIT_1MS, 
				TIMESTAMP_UNIT_1NS, 
				TIMESTAMP_UNIT_1PS, 
				TIMESTAMP_UNIT_1S, 
				TIMESTAMP_UNIT_1US
			}
				
			def XcpEventChannelTimeUnit getXcpEventChannelTimeUnitValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "TIMESTAMP_UNIT_100MS" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_100MS
					case "TIMESTAMP_UNIT_100NS" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_100NS
					case "TIMESTAMP_UNIT_100PS" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_100PS
					case "TIMESTAMP_UNIT_100US" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_100US
					case "TIMESTAMP_UNIT_10MS" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_10MS
					case "TIMESTAMP_UNIT_10NS" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_10NS
					case "TIMESTAMP_UNIT_10PS" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_10PS
					case "TIMESTAMP_UNIT_10US" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_10US
					case "TIMESTAMP_UNIT_1MS" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_1MS
					case "TIMESTAMP_UNIT_1NS" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_1NS
					case "TIMESTAMP_UNIT_1PS" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_1PS
					case "TIMESTAMP_UNIT_1S" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_1S
					case "TIMESTAMP_UNIT_1US" : XcpEventChannelTimeUnit.TIMESTAMP_UNIT_1US
				}
			}
			
			def void setXcpEventChannelTimeUnitValue(GParameterValue paramValue, XcpEventChannelTimeUnit value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def XcpEventChannelType getXcpEventChannelType(){
				getXcpEventChannelTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelType"])
			}
			
			def void setXcpEventChannelType(XcpEventChannelType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum XcpEventChannelType {
				DAQ, 
				DAQ_STIM, 
				STIM
			}
				
			def XcpEventChannelType getXcpEventChannelTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DAQ" : XcpEventChannelType.DAQ
					case "DAQ_STIM" : XcpEventChannelType.DAQ_STIM
					case "STIM" : XcpEventChannelType.STIM
				}
			}
			
			def void setXcpEventChannelTypeValue(GParameterValue paramValue, XcpEventChannelType value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Xcp.XcpConfig.XcpDaqList getXcpEventChannelTriggeredDaqListRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Xcp.XcpConfig.XcpDaqList), "XcpEventChannelTriggeredDaqListRef")
			}
					
			def void setXcpEventChannelTriggeredDaqListRef(org.artop.ecuc.autosar421.accessors.Xcp.XcpConfig.XcpDaqList object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "XcpEventChannelTriggeredDaqListRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class XcpPdu implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def XcpRxPdu getXcpRxPdu(){
				containerValue.getByType(typeof(XcpRxPdu))
			}
			
			def void setXcpRxPdu(GContainer subContainer){
				containerValue.setContainer(subContainer, "XcpRxPdu")
			}
			def XcpTxPdu getXcpTxPdu(){
				containerValue.getByType(typeof(XcpTxPdu))
			}
			
			def void setXcpTxPdu(GContainer subContainer){
				containerValue.setContainer(subContainer, "XcpTxPdu")
			}
			
			static class XcpRxPdu implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getXcpRxPduId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpRxPduId"])
				}
				
				def void setXcpRxPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpRxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getXcpRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "XcpRxPduRef")
				}
						
				def void setXcpRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "XcpRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class XcpTxPdu implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getXcpTxPduId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTxPduId"])
				}
				
				def void setXcpTxPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpTxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getXcpTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "XcpTxPduRef")
				}
						
				def void setXcpTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "XcpTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class XcpGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def XcpDaqConfigType getXcpDaqConfigType(){
			getXcpDaqConfigTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqConfigType"])
		}
		
		def void setXcpDaqConfigType(XcpDaqConfigType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqConfigType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpDaqConfigType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum XcpDaqConfigType {
			DAQ_DYNAMIC, 
			DAQ_STATIC
		}
			
		def XcpDaqConfigType getXcpDaqConfigTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DAQ_DYNAMIC" : XcpDaqConfigType.DAQ_DYNAMIC
				case "DAQ_STATIC" : XcpDaqConfigType.DAQ_STATIC
			}
		}
		
		def void setXcpDaqConfigTypeValue(GParameterValue paramValue, XcpDaqConfigType value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Integer getXcpDaqCount(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqCount"])
		}
		
		def void setXcpDaqCount(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqCount"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpDaqCount"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getXcpDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDevErrorDetect"])
		}
		
		def void setXcpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getXcpFlashProgrammingEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpFlashProgrammingEnabled"])
		}
		
		def void setXcpFlashProgrammingEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpFlashProgrammingEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpFlashProgrammingEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def XcpIdentificationFieldType getXcpIdentificationFieldType(){
			getXcpIdentificationFieldTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpIdentificationFieldType"])
		}
		
		def void setXcpIdentificationFieldType(XcpIdentificationFieldType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpIdentificationFieldType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpIdentificationFieldType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum XcpIdentificationFieldType {
			ABSOLUTE, 
			RELATIVE_BYTE, 
			RELATIVE_WORD, 
			RELATIVE_WORD_ALIGNED
		}
			
		def XcpIdentificationFieldType getXcpIdentificationFieldTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "ABSOLUTE" : XcpIdentificationFieldType.ABSOLUTE
				case "RELATIVE_BYTE" : XcpIdentificationFieldType.RELATIVE_BYTE
				case "RELATIVE_WORD" : XcpIdentificationFieldType.RELATIVE_WORD
				case "RELATIVE_WORD_ALIGNED" : XcpIdentificationFieldType.RELATIVE_WORD_ALIGNED
			}
		}
		
		def void setXcpIdentificationFieldTypeValue(GParameterValue paramValue, XcpIdentificationFieldType value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Float getXcpMainFunctionPeriod(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMainFunctionPeriod"])
		}
		
		def void setXcpMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getXcpMaxCto(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxCto"])
		}
		
		def void setXcpMaxCto(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxCto"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxCto"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getXcpMaxDto(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxDto"])
		}
		
		def void setXcpMaxDto(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxDto"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxDto"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getXcpMaxEventChannel(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxEventChannel"])
		}
		
		def void setXcpMaxEventChannel(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxEventChannel"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxEventChannel"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getXcpMinDaq(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMinDaq"])
		}
		
		def void setXcpMinDaq(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMinDaq"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpMinDaq"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getXcpOdtCount(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtCount"])
		}
		
		def void setXcpOdtCount(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtCount"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtCount"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getXcpOdtEntriesCount(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntriesCount"])
		}
		
		def void setXcpOdtEntriesCount(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntriesCount"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntriesCount"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getXcpOdtEntrySizeDaq(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntrySizeDaq"])
		}
		
		def void setXcpOdtEntrySizeDaq(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntrySizeDaq"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntrySizeDaq"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getXcpOdtEntrySizeStim(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntrySizeStim"])
		}
		
		def void setXcpOdtEntrySizeStim(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntrySizeStim"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntrySizeStim"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getXcpOnCanEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnCanEnabled"])
		}
		
		def void setXcpOnCanEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnCanEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOnCanEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getXcpOnCddEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnCddEnabled"])
		}
		
		def void setXcpOnCddEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnCddEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOnCddEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getXcpOnEthernetEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnEthernetEnabled"])
		}
		
		def void setXcpOnEthernetEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnEthernetEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOnEthernetEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getXcpOnFlexRayEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnFlexRayEnabled"])
		}
		
		def void setXcpOnFlexRayEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnFlexRayEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpOnFlexRayEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getXcpPrescalerSupported(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpPrescalerSupported"])
		}
		
		def void setXcpPrescalerSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpPrescalerSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpPrescalerSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getXcpSuppressTxSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpSuppressTxSupport"])
		}
		
		def void setXcpSuppressTxSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpSuppressTxSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpSuppressTxSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getXcpTimestampTicks(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampTicks"])
		}
		
		def void setXcpTimestampTicks(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampTicks"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpTimestampTicks"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def XcpTimestampType getXcpTimestampType(){
			getXcpTimestampTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampType"])
		}
		
		def void setXcpTimestampType(XcpTimestampType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpTimestampType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum XcpTimestampType {
			FOUR_BYTE, 
			NO_TIME_STAMP, 
			ONE_BYTE, 
			TWO_BYTE
		}
			
		def XcpTimestampType getXcpTimestampTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "FOUR_BYTE" : XcpTimestampType.FOUR_BYTE
				case "NO_TIME_STAMP" : XcpTimestampType.NO_TIME_STAMP
				case "ONE_BYTE" : XcpTimestampType.ONE_BYTE
				case "TWO_BYTE" : XcpTimestampType.TWO_BYTE
			}
		}
		
		def void setXcpTimestampTypeValue(GParameterValue paramValue, XcpTimestampType value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def XcpTimestampUnit getXcpTimestampUnit(){
			getXcpTimestampUnitValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampUnit"])
		}
		
		def void setXcpTimestampUnit(XcpTimestampUnit value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampUnit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpTimestampUnit"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum XcpTimestampUnit {
			TIMESTAMP_UNIT_100MS, 
			TIMESTAMP_UNIT_100NS, 
			TIMESTAMP_UNIT_100PS, 
			TIMESTAMP_UNIT_100US, 
			TIMESTAMP_UNIT_10MS, 
			TIMESTAMP_UNIT_10NS, 
			TIMESTAMP_UNIT_10PS, 
			TIMESTAMP_UNIT_10US, 
			TIMESTAMP_UNIT_1MS, 
			TIMESTAMP_UNIT_1NS, 
			TIMESTAMP_UNIT_1PS, 
			TIMESTAMP_UNIT_1S, 
			TIMESTAMP_UNIT_1US
		}
			
		def XcpTimestampUnit getXcpTimestampUnitValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "TIMESTAMP_UNIT_100MS" : XcpTimestampUnit.TIMESTAMP_UNIT_100MS
				case "TIMESTAMP_UNIT_100NS" : XcpTimestampUnit.TIMESTAMP_UNIT_100NS
				case "TIMESTAMP_UNIT_100PS" : XcpTimestampUnit.TIMESTAMP_UNIT_100PS
				case "TIMESTAMP_UNIT_100US" : XcpTimestampUnit.TIMESTAMP_UNIT_100US
				case "TIMESTAMP_UNIT_10MS" : XcpTimestampUnit.TIMESTAMP_UNIT_10MS
				case "TIMESTAMP_UNIT_10NS" : XcpTimestampUnit.TIMESTAMP_UNIT_10NS
				case "TIMESTAMP_UNIT_10PS" : XcpTimestampUnit.TIMESTAMP_UNIT_10PS
				case "TIMESTAMP_UNIT_10US" : XcpTimestampUnit.TIMESTAMP_UNIT_10US
				case "TIMESTAMP_UNIT_1MS" : XcpTimestampUnit.TIMESTAMP_UNIT_1MS
				case "TIMESTAMP_UNIT_1NS" : XcpTimestampUnit.TIMESTAMP_UNIT_1NS
				case "TIMESTAMP_UNIT_1PS" : XcpTimestampUnit.TIMESTAMP_UNIT_1PS
				case "TIMESTAMP_UNIT_1S" : XcpTimestampUnit.TIMESTAMP_UNIT_1S
				case "TIMESTAMP_UNIT_1US" : XcpTimestampUnit.TIMESTAMP_UNIT_1US
			}
		}
		
		def void setXcpTimestampUnitValue(GParameterValue paramValue, XcpTimestampUnit value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getXcpVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpVersionInfoApi"])
		}
		
		def void setXcpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "XcpVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsCounter getXcpCounterRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsCounter), "XcpCounterRef")
		}
				
		def void setXcpCounterRef(org.artop.ecuc.autosar421.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "XcpCounterRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getXcpNvRamBlockIdRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "XcpNvRamBlockIdRef")
		}
				
		def void setXcpNvRamBlockIdRef(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "XcpNvRamBlockIdRef"], object.getTarget())
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
