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
package org.artop.ecuc.autosar431.accessors

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

class Xcp implements IWrapper<GModuleConfiguration> {
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

	static class XcpConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof XcpConfig)){
				return false
			}
			this.target == (object as XcpConfig).target
		}
	
		
		
		def List<XcpDaqList> getXcpDaqLists(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "XcpDaqList")
				}
			}
			return new BasicWrappingEList<XcpDaqList, GContainer>(filteredContainers, typeof(XcpDaqList), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList xcpDaqList) {
					xcpDaqList.target?.gSetDefinition(containerValue.getContainerDefinition("XcpDaqList"))
					super.delegateAdd(xcpDaqList)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList xcpDaqList) {
					xcpDaqList.target?.gSetDefinition(containerValue.getContainerDefinition("XcpDaqList"))
					super.delegateAdd(index, xcpDaqList)
				}
			}
		}
		
		def List<XcpEventChannel> getXcpEventChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "XcpEventChannel")
				}
			}
			return new BasicWrappingEList<XcpEventChannel, GContainer>(filteredContainers, typeof(XcpEventChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpEventChannel xcpEventChannel) {
					xcpEventChannel.target?.gSetDefinition(containerValue.getContainerDefinition("XcpEventChannel"))
					super.delegateAdd(xcpEventChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpEventChannel xcpEventChannel) {
					xcpEventChannel.target?.gSetDefinition(containerValue.getContainerDefinition("XcpEventChannel"))
					super.delegateAdd(index, xcpEventChannel)
				}
			}
		}
		
		def List<XcpPdu> getXcpPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "XcpPdu")
				}
			}
			return new BasicWrappingEList<XcpPdu, GContainer>(filteredContainers, typeof(XcpPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpPdu xcpPdu) {
					xcpPdu.target?.gSetDefinition(containerValue.getContainerDefinition("XcpPdu"))
					super.delegateAdd(xcpPdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpPdu xcpPdu) {
					xcpPdu.target?.gSetDefinition(containerValue.getContainerDefinition("XcpPdu"))
					super.delegateAdd(index, xcpPdu)
				}
			}
		}
		
		
		static class XcpDaqList implements IWrapper<GContainer> {
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
		        if (!(object instanceof XcpDaqList)){
					return false
				}
				this.target == (object as XcpDaqList).target
			}
		
			def BigInteger getXcpDaqListNumber(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqListNumber"].getBigIntegerValue()
			}
			
			def void setXcpDaqListNumber(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqListNumber"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpDaqListNumber"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def XcpDaqListType getXcpDaqListType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqListType"].getXcpDaqListTypeValue()
			}
			
			def void setXcpDaqListType(XcpDaqListType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqListType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpDaqListType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum XcpDaqListType {
				DAQ, 
				DAQ_STIM, 
				STIM
			}
			
			def XcpDaqListType getXcpDaqListTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DAQ" : XcpDaqListType.DAQ
					case "DAQ_STIM" : XcpDaqListType.DAQ_STIM
					case "STIM" : XcpDaqListType.STIM
				}
			}
			
			def void setXcpDaqListTypeValue(GParameterValue parameterValue, XcpDaqListType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getXcpMaxOdt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxOdt"].getBigIntegerValue()
			}
			
			def void setXcpMaxOdt(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxOdt"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxOdt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getXcpMaxOdtEntries(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxOdtEntries"].getBigIntegerValue()
			}
			
			def void setXcpMaxOdtEntries(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxOdtEntries"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxOdtEntries"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<XcpDto> getXcpDtos(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "XcpDto")
					}
				}
				return new BasicWrappingEList<XcpDto, GContainer>(filteredContainers, typeof(XcpDto), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList.XcpDto xcpDto) {
						xcpDto.target?.gSetDefinition(containerValue.getContainerDefinition("XcpDto"))
						super.delegateAdd(xcpDto)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList.XcpDto xcpDto) {
						xcpDto.target?.gSetDefinition(containerValue.getContainerDefinition("XcpDto"))
						super.delegateAdd(index, xcpDto)
					}
				}
			}
			
			def List<XcpOdt> getXcpOdts(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "XcpOdt")
					}
				}
				return new BasicWrappingEList<XcpOdt, GContainer>(filteredContainers, typeof(XcpOdt), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList.XcpOdt xcpOdt) {
						xcpOdt.target?.gSetDefinition(containerValue.getContainerDefinition("XcpOdt"))
						super.delegateAdd(xcpOdt)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList.XcpOdt xcpOdt) {
						xcpOdt.target?.gSetDefinition(containerValue.getContainerDefinition("XcpOdt"))
						super.delegateAdd(index, xcpOdt)
					}
				}
			}
			
			
			static class XcpDto implements IWrapper<GContainer> {
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
			        if (!(object instanceof XcpDto)){
						return false
					}
					this.target == (object as XcpDto).target
				}
			
				def BigInteger getXcpDtoPid(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDtoPid"].getBigIntegerValue()
				}
				
				def void setXcpDtoPid(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDtoPid"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpDtoPid"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
				
			}
			
			static class XcpOdt implements IWrapper<GContainer> {
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
			        if (!(object instanceof XcpOdt)){
						return false
					}
					this.target == (object as XcpOdt).target
				}
			
				def BigInteger getXcpOdtEntryMaxSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryMaxSize"].getBigIntegerValue()
				}
				
				def void setXcpOdtEntryMaxSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryMaxSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryMaxSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getXcpOdtNumber(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtNumber"].getBigIntegerValue()
				}
				
				def void setXcpOdtNumber(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtNumber"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtNumber"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList.XcpDto getXcpOdt2DtoMapping(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList.XcpDto), "XcpOdt2DtoMapping")
				}
				
				def void setXcpOdt2DtoMapping(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList.XcpDto object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "XcpOdt2DtoMapping"], object.getTarget())
					}
				}
				
				
				def List<XcpOdtEntry> getXcpOdtEntries(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "XcpOdtEntry")
						}
					}
					return new BasicWrappingEList<XcpOdtEntry, GContainer>(filteredContainers, typeof(XcpOdtEntry), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList.XcpOdt.XcpOdtEntry xcpOdtEntry) {
							xcpOdtEntry.target?.gSetDefinition(containerValue.getContainerDefinition("XcpOdtEntry"))
							super.delegateAdd(xcpOdtEntry)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList.XcpOdt.XcpOdtEntry xcpOdtEntry) {
							xcpOdtEntry.target?.gSetDefinition(containerValue.getContainerDefinition("XcpOdtEntry"))
							super.delegateAdd(index, xcpOdtEntry)
						}
					}
				}
				
				
				static class XcpOdtEntry implements IWrapper<GContainer> {
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
				        if (!(object instanceof XcpOdtEntry)){
							return false
						}
						this.target == (object as XcpOdtEntry).target
					}
				
					def String getXcpOdtEntryAddress(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryAddress"].getStringValue()
					}
					
					def void setXcpOdtEntryAddress(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryAddress"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryAddress"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getXcpOdtEntryBitOffset(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryBitOffset"].getBigIntegerValue()
					}
					
					def void setXcpOdtEntryBitOffset(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryBitOffset"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryBitOffset"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getXcpOdtEntryLength(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryLength"].getBigIntegerValue()
					}
					
					def void setXcpOdtEntryLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryLength"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getXcpOdtEntryNumber(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryNumber"].getBigIntegerValue()
					}
					
					def void setXcpOdtEntryNumber(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntryNumber"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntryNumber"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class XcpEventChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof XcpEventChannel)){
					return false
				}
				this.target == (object as XcpEventChannel).target
			}
		
			def XcpEventChannelConsistency getXcpEventChannelConsistency(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelConsistency"].getXcpEventChannelConsistencyValue()
			}
			
			def void setXcpEventChannelConsistency(XcpEventChannelConsistency value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelConsistency"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelConsistency"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum XcpEventChannelConsistency {
				DAQ, 
				EVENT, 
				ODT
			}
			
			def XcpEventChannelConsistency getXcpEventChannelConsistencyValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DAQ" : XcpEventChannelConsistency.DAQ
					case "EVENT" : XcpEventChannelConsistency.EVENT
					case "ODT" : XcpEventChannelConsistency.ODT
				}
			}
			
			def void setXcpEventChannelConsistencyValue(GParameterValue parameterValue, XcpEventChannelConsistency value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getXcpEventChannelMaxDaqList(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelMaxDaqList"].getBigIntegerValue()
			}
			
			def void setXcpEventChannelMaxDaqList(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelMaxDaqList"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelMaxDaqList"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getXcpEventChannelNumber(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelNumber"].getBigIntegerValue()
			}
			
			def void setXcpEventChannelNumber(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelNumber"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelNumber"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getXcpEventChannelPriority(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelPriority"].getBigIntegerValue()
			}
			
			def void setXcpEventChannelPriority(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelPriority"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelPriority"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getXcpEventChannelTimeCycle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelTimeCycle"].getBigIntegerValue()
			}
			
			def void setXcpEventChannelTimeCycle(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelTimeCycle"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelTimeCycle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def XcpEventChannelTimeUnit getXcpEventChannelTimeUnit(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelTimeUnit"].getXcpEventChannelTimeUnitValue()
			}
			
			def void setXcpEventChannelTimeUnit(XcpEventChannelTimeUnit value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelTimeUnit"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelTimeUnit"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
			
			def XcpEventChannelTimeUnit getXcpEventChannelTimeUnitValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
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
			
			def void setXcpEventChannelTimeUnitValue(GParameterValue parameterValue, XcpEventChannelTimeUnit value){
				parameterValue.setValue(value)
			}
			
			def XcpEventChannelType getXcpEventChannelType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelType"].getXcpEventChannelTypeValue()
			}
			
			def void setXcpEventChannelType(XcpEventChannelType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpEventChannelType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpEventChannelType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum XcpEventChannelType {
				DAQ, 
				DAQ_STIM, 
				STIM
			}
			
			def XcpEventChannelType getXcpEventChannelTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DAQ" : XcpEventChannelType.DAQ
					case "DAQ_STIM" : XcpEventChannelType.DAQ_STIM
					case "STIM" : XcpEventChannelType.STIM
				}
			}
			
			def void setXcpEventChannelTypeValue(GParameterValue parameterValue, XcpEventChannelType value){
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList> getXcpEventChannelTriggeredDaqListRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "XcpEventChannelTriggeredDaqListRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "XcpEventChannelTriggeredDaqListRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList)) {
					override protected wrap(org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList object) throws CoreException {
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
								return new org.artop.ecuc.autosar431.accessors.Xcp.XcpConfig.XcpDaqList(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class XcpPdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof XcpPdu)){
					return false
				}
				this.target == (object as XcpPdu).target
			}
		
			def XcpRxPdu getXcpRxPdu(){
				containerValue.getByType(typeof(XcpRxPdu))
			}
			
			def void setXcpRxPdu(XcpRxPdu xcpRxPdu){
				val GContainer subContainer = xcpRxPdu.getTarget()
				containerValue.setContainer(subContainer, "XcpRxPdu")
			}
			def XcpTxPdu getXcpTxPdu(){
				containerValue.getByType(typeof(XcpTxPdu))
			}
			
			def void setXcpTxPdu(XcpTxPdu xcpTxPdu){
				val GContainer subContainer = xcpTxPdu.getTarget()
				containerValue.setContainer(subContainer, "XcpTxPdu")
			}
			
			static class XcpRxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof XcpRxPdu)){
						return false
					}
					this.target == (object as XcpRxPdu).target
				}
			
				def BigInteger getXcpRxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpRxPduId"].getBigIntegerValue()
				}
				
				def void setXcpRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpRxPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpRxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getXcpRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "XcpRxPduRef")
				}
				
				def void setXcpRxPduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "XcpRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class XcpTxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof XcpTxPdu)){
						return false
					}
					this.target == (object as XcpTxPdu).target
				}
			
				def BigInteger getXcpTxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTxPduId"].getBigIntegerValue()
				}
				
				def void setXcpTxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTxPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpTxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getXcpTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "XcpTxPduRef")
				}
				
				def void setXcpTxPduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "XcpTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class XcpGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof XcpGeneral)){
				return false
			}
			this.target == (object as XcpGeneral).target
		}
	
		def XcpDaqConfigType getXcpDaqConfigType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqConfigType"].getXcpDaqConfigTypeValue()
		}
		
		def void setXcpDaqConfigType(XcpDaqConfigType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqConfigType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpDaqConfigType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum XcpDaqConfigType {
			DAQ_DYNAMIC, 
			DAQ_STATIC
		}
		
		def XcpDaqConfigType getXcpDaqConfigTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DAQ_DYNAMIC" : XcpDaqConfigType.DAQ_DYNAMIC
				case "DAQ_STATIC" : XcpDaqConfigType.DAQ_STATIC
			}
		}
		
		def void setXcpDaqConfigTypeValue(GParameterValue parameterValue, XcpDaqConfigType value){
			parameterValue.setValue(value)
		}
		
		def BigInteger getXcpDaqCount(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqCount"].getBigIntegerValue()
		}
		
		def void setXcpDaqCount(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDaqCount"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpDaqCount"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getXcpDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDevErrorDetect"].getBooleanValue()
		}
		
		def void setXcpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getXcpFlashProgrammingEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpFlashProgrammingEnabled"].getBooleanValue()
		}
		
		def void setXcpFlashProgrammingEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpFlashProgrammingEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpFlashProgrammingEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def XcpIdentificationFieldType getXcpIdentificationFieldType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpIdentificationFieldType"].getXcpIdentificationFieldTypeValue()
		}
		
		def void setXcpIdentificationFieldType(XcpIdentificationFieldType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpIdentificationFieldType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpIdentificationFieldType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum XcpIdentificationFieldType {
			ABSOLUTE, 
			RELATIVE_BYTE, 
			RELATIVE_WORD, 
			RELATIVE_WORD_ALIGNED
		}
		
		def XcpIdentificationFieldType getXcpIdentificationFieldTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "ABSOLUTE" : XcpIdentificationFieldType.ABSOLUTE
				case "RELATIVE_BYTE" : XcpIdentificationFieldType.RELATIVE_BYTE
				case "RELATIVE_WORD" : XcpIdentificationFieldType.RELATIVE_WORD
				case "RELATIVE_WORD_ALIGNED" : XcpIdentificationFieldType.RELATIVE_WORD_ALIGNED
			}
		}
		
		def void setXcpIdentificationFieldTypeValue(GParameterValue parameterValue, XcpIdentificationFieldType value){
			parameterValue.setValue(value)
		}
		
		def BigDecimal getXcpMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setXcpMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getXcpMaxCto(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxCto"].getBigIntegerValue()
		}
		
		def void setXcpMaxCto(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxCto"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxCto"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getXcpMaxDto(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxDto"].getBigIntegerValue()
		}
		
		def void setXcpMaxDto(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxDto"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxDto"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getXcpMaxEventChannel(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxEventChannel"].getBigIntegerValue()
		}
		
		def void setXcpMaxEventChannel(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMaxEventChannel"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpMaxEventChannel"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getXcpMinDaq(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMinDaq"].getBigIntegerValue()
		}
		
		def void setXcpMinDaq(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpMinDaq"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpMinDaq"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getXcpOdtCount(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtCount"].getBigIntegerValue()
		}
		
		def void setXcpOdtCount(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtCount"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtCount"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getXcpOdtEntriesCount(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntriesCount"].getBigIntegerValue()
		}
		
		def void setXcpOdtEntriesCount(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntriesCount"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntriesCount"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getXcpOdtEntrySizeDaq(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntrySizeDaq"].getBigIntegerValue()
		}
		
		def void setXcpOdtEntrySizeDaq(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntrySizeDaq"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntrySizeDaq"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getXcpOdtEntrySizeStim(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntrySizeStim"].getBigIntegerValue()
		}
		
		def void setXcpOdtEntrySizeStim(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOdtEntrySizeStim"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOdtEntrySizeStim"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getXcpOnCanEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnCanEnabled"].getBooleanValue()
		}
		
		def void setXcpOnCanEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnCanEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOnCanEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getXcpOnCddEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnCddEnabled"].getBooleanValue()
		}
		
		def void setXcpOnCddEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnCddEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOnCddEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getXcpOnEthernetEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnEthernetEnabled"].getBooleanValue()
		}
		
		def void setXcpOnEthernetEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnEthernetEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOnEthernetEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getXcpOnFlexRayEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnFlexRayEnabled"].getBooleanValue()
		}
		
		def void setXcpOnFlexRayEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpOnFlexRayEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpOnFlexRayEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getXcpPrescalerSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpPrescalerSupported"].getBooleanValue()
		}
		
		def void setXcpPrescalerSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpPrescalerSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpPrescalerSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getXcpSuppressTxSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpSuppressTxSupport"].getBooleanValue()
		}
		
		def void setXcpSuppressTxSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpSuppressTxSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpSuppressTxSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getXcpTimestampTicks(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampTicks"].getBigIntegerValue()
		}
		
		def void setXcpTimestampTicks(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampTicks"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpTimestampTicks"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def XcpTimestampType getXcpTimestampType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampType"].getXcpTimestampTypeValue()
		}
		
		def void setXcpTimestampType(XcpTimestampType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpTimestampType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum XcpTimestampType {
			FOUR_BYTE, 
			NO_TIME_STAMP, 
			ONE_BYTE, 
			TWO_BYTE
		}
		
		def XcpTimestampType getXcpTimestampTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "FOUR_BYTE" : XcpTimestampType.FOUR_BYTE
				case "NO_TIME_STAMP" : XcpTimestampType.NO_TIME_STAMP
				case "ONE_BYTE" : XcpTimestampType.ONE_BYTE
				case "TWO_BYTE" : XcpTimestampType.TWO_BYTE
			}
		}
		
		def void setXcpTimestampTypeValue(GParameterValue parameterValue, XcpTimestampType value){
			parameterValue.setValue(value)
		}
		
		def XcpTimestampUnit getXcpTimestampUnit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampUnit"].getXcpTimestampUnitValue()
		}
		
		def void setXcpTimestampUnit(XcpTimestampUnit value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpTimestampUnit"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpTimestampUnit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
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
		
		def XcpTimestampUnit getXcpTimestampUnitValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
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
		
		def void setXcpTimestampUnitValue(GParameterValue parameterValue, XcpTimestampUnit value){
			parameterValue.setValue(value)
		}
		
		def Boolean getXcpVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpVersionInfoApi"].getBooleanValue()
		}
		
		def void setXcpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XcpVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XcpVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar431.accessors.Os.OsCounter getXcpCounterRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Os.OsCounter), "XcpCounterRef")
		}
		
		def void setXcpCounterRef(org.artop.ecuc.autosar431.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "XcpCounterRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor getXcpNvRamBlockIdRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor), "XcpNvRamBlockIdRef")
		}
		
		def void setXcpNvRamBlockIdRef(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "XcpNvRamBlockIdRef"], object.getTarget())
			}
		}
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Xcp)){
			return false
		}
		this.target == (object as Xcp).target
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
