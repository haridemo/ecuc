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

class Ocu implements IWrapper<GModuleConfiguration> {
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

	def OcuConfigSet getOcuConfigSet(){
		moduleConfiguration.getByType(typeof(OcuConfigSet))
	}

	def void setOcuConfigSet(OcuConfigSet ocuConfigSet){
		val GContainer container = ocuConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "OcuConfigSet")
	}
	def OcuConfigurationOfOptionalApis getOcuConfigurationOfOptionalApis(){
		moduleConfiguration.getByType(typeof(OcuConfigurationOfOptionalApis))
	}

	def void setOcuConfigurationOfOptionalApis(OcuConfigurationOfOptionalApis ocuConfigurationOfOptionalApis){
		val GContainer container = ocuConfigurationOfOptionalApis.getTarget()
	    moduleConfiguration.setContainer(container, "OcuConfigurationOfOptionalApis")
	}
	def OcuGeneral getOcuGeneral(){
		moduleConfiguration.getByType(typeof(OcuGeneral))
	}

	def void setOcuGeneral(OcuGeneral ocuGeneral){
		val GContainer container = ocuGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "OcuGeneral")
	}

	static class OcuConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof OcuConfigSet)){
				return false
			}
			this.target == (object as OcuConfigSet).target
		}
	
		def OcuCountdirection getOcuCountdirection(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuCountdirection"].getOcuCountdirectionValue()
		}
		
		def void setOcuCountdirection(OcuCountdirection value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuCountdirection"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuCountdirection"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum OcuCountdirection {
			OCU_DOWNCOUNTING, 
			OCU_UPCOUNTING
		}
		
		def OcuCountdirection getOcuCountdirectionValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "OCU_DOWNCOUNTING" : OcuCountdirection.OCU_DOWNCOUNTING
				case "OCU_UPCOUNTING" : OcuCountdirection.OCU_UPCOUNTING
			}
		}
		
		def void setOcuCountdirectionValue(GParameterValue parameterValue, OcuCountdirection value){
			parameterValue.setValue(value)
		}
		
		
		
		def List<OcuChannel> getOcuChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OcuChannel")
				}
			}
			return new BasicWrappingEList<OcuChannel, GContainer>(filteredContainers, typeof(OcuChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Ocu.OcuConfigSet.OcuChannel ocuChannel) {
					ocuChannel.target?.gSetDefinition(containerValue.getContainerDefinition("OcuChannel"))
					super.delegateAdd(ocuChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Ocu.OcuConfigSet.OcuChannel ocuChannel) {
					ocuChannel.target?.gSetDefinition(containerValue.getContainerDefinition("OcuChannel"))
					super.delegateAdd(index, ocuChannel)
				}
			}
		}
		
		def List<OcuGroup> getOcuGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OcuGroup")
				}
			}
			return new BasicWrappingEList<OcuGroup, GContainer>(filteredContainers, typeof(OcuGroup), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Ocu.OcuConfigSet.OcuGroup ocuGroup) {
					ocuGroup.target?.gSetDefinition(containerValue.getContainerDefinition("OcuGroup"))
					super.delegateAdd(ocuGroup)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Ocu.OcuConfigSet.OcuGroup ocuGroup) {
					ocuGroup.target?.gSetDefinition(containerValue.getContainerDefinition("OcuGroup"))
					super.delegateAdd(index, ocuGroup)
				}
			}
		}
		
		def OcuHWSpecificSettings getOcuHWSpecificSettings(){
			containerValue.getByType(typeof(OcuHWSpecificSettings))
		}
		
		def void setOcuHWSpecificSettings(OcuHWSpecificSettings ocuHWSpecificSettings){
			val GContainer subContainer = ocuHWSpecificSettings.getTarget()
			containerValue.setContainer(subContainer, "OcuHWSpecificSettings")
		}
		
		
		static class OcuChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof OcuChannel)){
					return false
				}
				this.target == (object as OcuChannel).target
			}
		
			def BigInteger getOcuAssignedHardwareChannel(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuAssignedHardwareChannel"].getBigIntegerValue()
			}
			
			def void setOcuAssignedHardwareChannel(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuAssignedHardwareChannel"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuAssignedHardwareChannel"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getOcuChannelId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuChannelId"].getBigIntegerValue()
			}
			
			def void setOcuChannelId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuChannelId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuChannelId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getOcuChannelTickDuration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuChannelTickDuration"].getBigIntegerValue()
			}
			
			def void setOcuChannelTickDuration(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuChannelTickDuration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuChannelTickDuration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getOcuDefaultThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuDefaultThreshold"].getBigIntegerValue()
			}
			
			def void setOcuDefaultThreshold(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuDefaultThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuDefaultThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getOcuHardwareTriggeredAdc(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuHardwareTriggeredAdc"].getBigIntegerValue()
			}
			
			def void setOcuHardwareTriggeredAdc(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuHardwareTriggeredAdc"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuHardwareTriggeredAdc"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getOcuHardwareTriggeredDMA(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuHardwareTriggeredDMA"].getBigIntegerValue()
			}
			
			def void setOcuHardwareTriggeredDMA(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuHardwareTriggeredDMA"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuHardwareTriggeredDMA"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getOcuMaxCounterValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuMaxCounterValue"].getBigIntegerValue()
			}
			
			def void setOcuMaxCounterValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuMaxCounterValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuMaxCounterValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getOcuNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuNotification"].getStringValue()
			}
			
			def void setOcuNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuNotification"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getOcuOuptutPinUsed(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuOuptutPinUsed"].getBooleanValue()
			}
			
			def void setOcuOuptutPinUsed(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuOuptutPinUsed"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuOuptutPinUsed"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def OcuOutputPinDefaultState getOcuOutputPinDefaultState(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuOutputPinDefaultState"].getOcuOutputPinDefaultStateValue()
			}
			
			def void setOcuOutputPinDefaultState(OcuOutputPinDefaultState value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuOutputPinDefaultState"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuOutputPinDefaultState"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum OcuOutputPinDefaultState {
				OCU_HIGH, 
				OCU_LOW
			}
			
			def OcuOutputPinDefaultState getOcuOutputPinDefaultStateValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "OCU_HIGH" : OcuOutputPinDefaultState.OCU_HIGH
					case "OCU_LOW" : OcuOutputPinDefaultState.OCU_LOW
				}
			}
			
			def void setOcuOutputPinDefaultStateValue(GParameterValue parameterValue, OcuOutputPinDefaultState value){
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class OcuGroup implements IWrapper<GContainer> {
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
		        if (!(object instanceof OcuGroup)){
					return false
				}
				this.target == (object as OcuGroup).target
			}
		
			def BigInteger getOcuGroupId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuGroupId"].getBigIntegerValue()
			}
			
			def void setOcuGroupId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuGroupId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuGroupId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar444.accessors.Ocu.OcuConfigSet.OcuChannel> getOcuGroupDefinitions(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "OcuGroupDefinition"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "OcuGroupDefinition")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Ocu.OcuConfigSet.OcuChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Ocu.OcuConfigSet.OcuChannel)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Ocu.OcuConfigSet.OcuChannel object) throws CoreException {
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
								return new org.artop.ecuc.autosar444.accessors.Ocu.OcuConfigSet.OcuChannel(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class OcuHWSpecificSettings implements IWrapper<GContainer> {
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
		        if (!(object instanceof OcuHWSpecificSettings)){
					return false
				}
				this.target == (object as OcuHWSpecificSettings).target
			}
		
			def OcuClockSource getOcuClockSource(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuClockSource"].getOcuClockSourceValue()
			}
			
			def void setOcuClockSource(OcuClockSource value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuClockSource"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuClockSource"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum OcuClockSource {
			}
			
			def OcuClockSource getOcuClockSourceValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
				}
			}
			
			def void setOcuClockSourceValue(GParameterValue parameterValue, OcuClockSource value){
				parameterValue.setValue(value)
			}
			
			def OcuPrescale getOcuPrescale(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuPrescale"].getOcuPrescaleValue()
			}
			
			def void setOcuPrescale(OcuPrescale value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuPrescale"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuPrescale"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum OcuPrescale {
			}
			
			def OcuPrescale getOcuPrescaleValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
				}
			}
			
			def void setOcuPrescaleValue(GParameterValue parameterValue, OcuPrescale value){
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class OcuConfigurationOfOptionalApis implements IWrapper<GContainer> {
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
	        if (!(object instanceof OcuConfigurationOfOptionalApis)){
				return false
			}
			this.target == (object as OcuConfigurationOfOptionalApis).target
		}
	
		def Boolean getOcuDeInitApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuDeInitApi"].getBooleanValue()
		}
		
		def void setOcuDeInitApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuDeInitApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuDeInitApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOcuGetCounterApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuGetCounterApi"].getBooleanValue()
		}
		
		def void setOcuGetCounterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuGetCounterApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuGetCounterApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOcuNotificationSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuNotificationSupported"].getBooleanValue()
		}
		
		def void setOcuNotificationSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuNotificationSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuNotificationSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOcuSetAbsoluteThresholdApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuSetAbsoluteThresholdApi"].getBooleanValue()
		}
		
		def void setOcuSetAbsoluteThresholdApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuSetAbsoluteThresholdApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuSetAbsoluteThresholdApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOcuSetPinActionApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuSetPinActionApi"].getBooleanValue()
		}
		
		def void setOcuSetPinActionApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuSetPinActionApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuSetPinActionApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOcuSetPinStateApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuSetPinStateApi"].getBooleanValue()
		}
		
		def void setOcuSetPinStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuSetPinStateApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuSetPinStateApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOcuSetRelativeThresholdApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuSetRelativeThresholdApi"].getBooleanValue()
		}
		
		def void setOcuSetRelativeThresholdApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuSetRelativeThresholdApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuSetRelativeThresholdApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOcuVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuVersionInfoApi"].getBooleanValue()
		}
		
		def void setOcuVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class OcuGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof OcuGeneral)){
				return false
			}
			this.target == (object as OcuGeneral).target
		}
	
		def Boolean getOcuDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuDevErrorDetect"].getBooleanValue()
		}
		
		def void setOcuDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OcuDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OcuDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Ocu)){
			return false
		}
		this.target == (object as Ocu).target
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
