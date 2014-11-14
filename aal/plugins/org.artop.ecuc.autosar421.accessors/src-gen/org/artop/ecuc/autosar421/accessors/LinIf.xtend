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

import static extension org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil
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
import static extension org.artop.ecuc.gautosar.accessors.lib.ParameterValueAccessorUtil.*
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import org.eclipse.core.runtime.CoreException

class LinIf implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def LinIfGeneral getLinIfGeneral(){
		moduleConfiguration.getByType(typeof(LinIfGeneral))
	}
	
	def void setLinIfGeneral(LinIfGeneral linIfGeneral){
		val GContainer container = linIfGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "LinIfGeneral")
	}
	def LinIfGlobalConfig getLinIfGlobalConfig(){
		moduleConfiguration.getByType(typeof(LinIfGlobalConfig))
	}
	
	def void setLinIfGlobalConfig(LinIfGlobalConfig linIfGlobalConfig){
		val GContainer container = linIfGlobalConfig.getTarget() 
	    moduleConfiguration.setContainer(container, "LinIfGlobalConfig")
	}
	
	static class LinIfGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getLinIfCancelTransmitSupported(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfCancelTransmitSupported"])
		}
		
		def void setLinIfCancelTransmitSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfCancelTransmitSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfCancelTransmitSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getLinIfDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfDevErrorDetect"])
		}
		
		def void setLinIfDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getLinIfMultipleDriversSupported(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMultipleDriversSupported"])
		}
		
		def void setLinIfMultipleDriversSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMultipleDriversSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfMultipleDriversSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getLinIfMultipleTrcvDriverSupported(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMultipleTrcvDriverSupported"])
		}
		
		def void setLinIfMultipleTrcvDriverSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMultipleTrcvDriverSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfMultipleTrcvDriverSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getLinIfNcOptionalRequestSupported(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfNcOptionalRequestSupported"])
		}
		
		def void setLinIfNcOptionalRequestSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfNcOptionalRequestSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfNcOptionalRequestSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def List<String> getLinIfPublicCddHeaderFiles(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "LinIfPublicCddHeaderFile")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfPublicCddHeaderFile"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getLinIfTpSupported(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTpSupported"])
		}
		
		def void setLinIfTpSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTpSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTpSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getLinIfTrcvDriverSupported(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTrcvDriverSupported"])
		}
		
		def void setLinIfTrcvDriverSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTrcvDriverSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTrcvDriverSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getLinIfVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfVersionInfoApi"])
		}
		
		def void setLinIfVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class LinIfGlobalConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Float getLinIfTimeBase(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTimeBase"])
		}
		
		def void setLinIfTimeBase(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTimeBase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTimeBase"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<LinIfChannel> getLinIfChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "LinIfChannel")
				}
			}
			return new BasicWrappingEList<LinIfChannel, GContainer>(filteredContainers, typeof(LinIfChannel), typeof(GContainer))
		}
		
		
		static class LinIfChannel implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def LinIfGotoSleepConfirmationUL getLinIfGotoSleepConfirmationUL(){
				getLinIfGotoSleepConfirmationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfGotoSleepConfirmationUL"])
			}
			
			def void setLinIfGotoSleepConfirmationUL(LinIfGotoSleepConfirmationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfGotoSleepConfirmationUL"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfGotoSleepConfirmationUL"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum LinIfGotoSleepConfirmationUL {
				CDD, 
				LIN_SM
			}
				
			def LinIfGotoSleepConfirmationUL getLinIfGotoSleepConfirmationULValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CDD" : LinIfGotoSleepConfirmationUL.CDD
					case "LIN_SM" : LinIfGotoSleepConfirmationUL.LIN_SM
				}
			}
			
			def void setLinIfGotoSleepConfirmationULValue(GParameterValue paramValue, LinIfGotoSleepConfirmationUL value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getLinIfMaxFrameCnt(){
				ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMaxFrameCnt"])
			}
			
			def void setLinIfMaxFrameCnt(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMaxFrameCnt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfMaxFrameCnt"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def LinIfScheduleRequestConfirmationUL getLinIfScheduleRequestConfirmationUL(){
				getLinIfScheduleRequestConfirmationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleRequestConfirmationUL"])
			}
			
			def void setLinIfScheduleRequestConfirmationUL(LinIfScheduleRequestConfirmationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleRequestConfirmationUL"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfScheduleRequestConfirmationUL"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum LinIfScheduleRequestConfirmationUL {
				CDD, 
				LIN_SM
			}
				
			def LinIfScheduleRequestConfirmationUL getLinIfScheduleRequestConfirmationULValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CDD" : LinIfScheduleRequestConfirmationUL.CDD
					case "LIN_SM" : LinIfScheduleRequestConfirmationUL.LIN_SM
				}
			}
			
			def void setLinIfScheduleRequestConfirmationULValue(GParameterValue paramValue, LinIfScheduleRequestConfirmationUL value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def LinIfStartupState getLinIfStartupState(){
				getLinIfStartupStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfStartupState"])
			}
			
			def void setLinIfStartupState(LinIfStartupState value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfStartupState"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfStartupState"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum LinIfStartupState {
				NORMAL, 
				SLEEP
			}
				
			def LinIfStartupState getLinIfStartupStateValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "NORMAL" : LinIfStartupState.NORMAL
					case "SLEEP" : LinIfStartupState.SLEEP
				}
			}
			
			def void setLinIfStartupStateValue(GParameterValue paramValue, LinIfStartupState value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def LinIfWakeupConfirmationUL getLinIfWakeupConfirmationUL(){
				getLinIfWakeupConfirmationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfWakeupConfirmationUL"])
			}
			
			def void setLinIfWakeupConfirmationUL(LinIfWakeupConfirmationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfWakeupConfirmationUL"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfWakeupConfirmationUL"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum LinIfWakeupConfirmationUL {
				CDD, 
				LIN_SM
			}
				
			def LinIfWakeupConfirmationUL getLinIfWakeupConfirmationULValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CDD" : LinIfWakeupConfirmationUL.CDD
					case "LIN_SM" : LinIfWakeupConfirmationUL.LIN_SM
				}
			}
			
			def void setLinIfWakeupConfirmationULValue(GParameterValue paramValue, LinIfWakeupConfirmationUL value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Lin.LinGlobalConfig.LinChannel getLinIfChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Lin.LinGlobalConfig.LinChannel), "LinIfChannelRef")
			}
					
			def void setLinIfChannelRef(org.artop.ecuc.autosar421.accessors.Lin.LinGlobalConfig.LinChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfChannelRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getLinIfComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "LinIfComMNetworkHandleRef")
			}
					
			def void setLinIfComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			
			def List<LinIfFrame> getLinIfFrames(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "LinIfFrame")
					}
				}
				return new BasicWrappingEList<LinIfFrame, GContainer>(filteredContainers, typeof(LinIfFrame), typeof(GContainer))
			}
			
			def LinIfMaster getLinIfMaster(){
				containerValue.getByType(typeof(LinIfMaster))
			}
			
			def void setLinIfMaster(GContainer subContainer){
				containerValue.setContainer(subContainer, "LinIfMaster")
			}
			
			def List<LinIfScheduleTable> getLinIfScheduleTables(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "LinIfScheduleTable")
					}
				}
				return new BasicWrappingEList<LinIfScheduleTable, GContainer>(filteredContainers, typeof(LinIfScheduleTable), typeof(GContainer))
			}
			
			def LinIfTransceiverDrvConfig getLinIfTransceiverDrvConfig(){
				containerValue.getByType(typeof(LinIfTransceiverDrvConfig))
			}
			
			def void setLinIfTransceiverDrvConfig(GContainer subContainer){
				containerValue.setContainer(subContainer, "LinIfTransceiverDrvConfig")
			}
			
			
			static class LinIfFrame implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def LinIfChecksumType getLinIfChecksumType(){
					getLinIfChecksumTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfChecksumType"])
				}
				
				def void setLinIfChecksumType(LinIfChecksumType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfChecksumType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfChecksumType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum LinIfChecksumType {
					CLASSIC, 
					ENHANCED
				}
					
				def LinIfChecksumType getLinIfChecksumTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CLASSIC" : LinIfChecksumType.CLASSIC
						case "ENHANCED" : LinIfChecksumType.ENHANCED
					}
				}
				
				def void setLinIfChecksumTypeValue(GParameterValue paramValue, LinIfChecksumType value){
					ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getLinIfFrameId(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFrameId"])
				}
				
				def void setLinIfFrameId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFrameId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFrameId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def LinIfFrameType getLinIfFrameType(){
					getLinIfFrameTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFrameType"])
				}
				
				def void setLinIfFrameType(LinIfFrameType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFrameType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFrameType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum LinIfFrameType {
					ASSIGN, 
					ASSIGN_FRAME_ID_RANGE, 
					ASSIGN_NAD, 
					CONDITIONAL, 
					EVENT_TRIGGERED, 
					FREE, 
					MRF, 
					SAVE_CONFIGURATION, 
					SPORADIC, 
					SRF, 
					UNASSIGN, 
					UNCONDITIONAL
				}
					
				def LinIfFrameType getLinIfFrameTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ASSIGN" : LinIfFrameType.ASSIGN
						case "ASSIGN_FRAME_ID_RANGE" : LinIfFrameType.ASSIGN_FRAME_ID_RANGE
						case "ASSIGN_NAD" : LinIfFrameType.ASSIGN_NAD
						case "CONDITIONAL" : LinIfFrameType.CONDITIONAL
						case "EVENT_TRIGGERED" : LinIfFrameType.EVENT_TRIGGERED
						case "FREE" : LinIfFrameType.FREE
						case "MRF" : LinIfFrameType.MRF
						case "SAVE_CONFIGURATION" : LinIfFrameType.SAVE_CONFIGURATION
						case "SPORADIC" : LinIfFrameType.SPORADIC
						case "SRF" : LinIfFrameType.SRF
						case "UNASSIGN" : LinIfFrameType.UNASSIGN
						case "UNCONDITIONAL" : LinIfFrameType.UNCONDITIONAL
					}
				}
				
				def void setLinIfFrameTypeValue(GParameterValue paramValue, LinIfFrameType value){
					ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				
				def LinIfFixedFrameSdu getLinIfFixedFrameSdu(){
					containerValue.getByType(typeof(LinIfFixedFrameSdu))
				}
				
				def void setLinIfFixedFrameSdu(GContainer subContainer){
					containerValue.setContainer(subContainer, "LinIfFixedFrameSdu")
				}
				
				def LinIfPduDirection getLinIfPduDirection(){
					containerValue.getByType(typeof(LinIfPduDirection))
				}
				
				def void setLinIfPduDirection(GContainer subContainer){
					containerValue.setContainer(subContainer, "LinIfPduDirection")
				}
				
				def List<LinIfSubstitutionFrames> getLinIfSubstitutionFrames(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "LinIfSubstitutionFrames")
						}
					}
					return new BasicWrappingEList<LinIfSubstitutionFrames, GContainer>(filteredContainers, typeof(LinIfSubstitutionFrames), typeof(GContainer))
				}
				
				
				static class LinIfFixedFrameSdu implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					
					def List<LinIfFixedFrameSduByte> getLinIfFixedFrameSduBytes(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "LinIfFixedFrameSduByte")
							}
						}
						return new BasicWrappingEList<LinIfFixedFrameSduByte, GContainer>(filteredContainers, typeof(LinIfFixedFrameSduByte), typeof(GContainer))
					}
					
					
					static class LinIfFixedFrameSduByte implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def Integer getLinIfFixedFrameSduBytePos(){
							ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFixedFrameSduBytePos"])
						}
						
						def void setLinIfFixedFrameSduBytePos(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFixedFrameSduBytePos"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFixedFrameSduBytePos"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Integer getLinIfFixedFrameSduByteVal(){
							ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFixedFrameSduByteVal"])
						}
						
						def void setLinIfFixedFrameSduByteVal(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFixedFrameSduByteVal"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFixedFrameSduByteVal"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
				static class LinIfPduDirection implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def LinIfInternalPdu getLinIfInternalPdu(){
						containerValue.getByType(typeof(LinIfInternalPdu))
					}
					
					def void setLinIfInternalPdu(GContainer subContainer){
						containerValue.setContainer(subContainer, "LinIfInternalPdu")
					}
					def LinIfRxPdu getLinIfRxPdu(){
						containerValue.getByType(typeof(LinIfRxPdu))
					}
					
					def void setLinIfRxPdu(GContainer subContainer){
						containerValue.setContainer(subContainer, "LinIfRxPdu")
					}
					def LinIfSlaveToSlavePdu getLinIfSlaveToSlavePdu(){
						containerValue.getByType(typeof(LinIfSlaveToSlavePdu))
					}
					
					def void setLinIfSlaveToSlavePdu(GContainer subContainer){
						containerValue.setContainer(subContainer, "LinIfSlaveToSlavePdu")
					}
					def LinIfTxPdu getLinIfTxPdu(){
						containerValue.getByType(typeof(LinIfTxPdu))
					}
					
					def void setLinIfTxPdu(GContainer subContainer){
						containerValue.setContainer(subContainer, "LinIfTxPdu")
					}
					
					static class LinIfInternalPdu implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						
						
						
					}
					
					static class LinIfRxPdu implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def String getLinIfRxIndicationUL(){
							ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfRxIndicationUL"])
						}
						
						def void setLinIfRxIndicationUL(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfRxIndicationUL"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfRxIndicationUL"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def LinIfUserRxIndicationUL getLinIfUserRxIndicationUL(){
							getLinIfUserRxIndicationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfUserRxIndicationUL"])
						}
						
						def void setLinIfUserRxIndicationUL(LinIfUserRxIndicationUL value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfUserRxIndicationUL"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfUserRxIndicationUL"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						enum LinIfUserRxIndicationUL {
							CDD, 
							PDUR
						}
							
						def LinIfUserRxIndicationUL getLinIfUserRxIndicationULValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "CDD" : LinIfUserRxIndicationUL.CDD
								case "PDUR" : LinIfUserRxIndicationUL.PDUR
							}
						}
						
						def void setLinIfUserRxIndicationULValue(GParameterValue paramValue, LinIfUserRxIndicationUL value){
							ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getLinIfRxPduRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "LinIfRxPduRef")
						}
								
						def void setLinIfRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfRxPduRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class LinIfSlaveToSlavePdu implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						
						
						
					}
					
					static class LinIfTxPdu implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def String getLinIfTxConfirmationUL(){
							ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxConfirmationUL"])
						}
						
						def void setLinIfTxConfirmationUL(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxConfirmationUL"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTxConfirmationUL"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Integer getLinIfTxPduId(){
							ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxPduId"])
						}
						
						def void setLinIfTxPduId(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxPduId"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTxPduId"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def String getLinIfTxTriggerTransmitUL(){
							ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxTriggerTransmitUL"])
						}
						
						def void setLinIfTxTriggerTransmitUL(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxTriggerTransmitUL"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTxTriggerTransmitUL"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def LinIfUserTxUL getLinIfUserTxUL(){
							getLinIfUserTxULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfUserTxUL"])
						}
						
						def void setLinIfUserTxUL(LinIfUserTxUL value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfUserTxUL"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfUserTxUL"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						enum LinIfUserTxUL {
							CDD, 
							PDUR
						}
							
						def LinIfUserTxUL getLinIfUserTxULValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "CDD" : LinIfUserTxUL.CDD
								case "PDUR" : LinIfUserTxUL.PDUR
							}
						}
						
						def void setLinIfUserTxULValue(GParameterValue paramValue, LinIfUserTxUL value){
							ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getLinIfTxPduRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "LinIfTxPduRef")
						}
								
						def void setLinIfTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfTxPduRef"], object.getTarget())
							}
						}
						
						
						
					}
					
				}
				
				static class LinIfSubstitutionFrames implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getLinIfFramePriority(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFramePriority"])
					}
					
					def void setLinIfFramePriority(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFramePriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFramePriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame getLinIfSubstitutionFrameRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame), "LinIfSubstitutionFrameRef")
					}
							
					def void setLinIfSubstitutionFrameRef(org.artop.ecuc.autosar421.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfSubstitutionFrameRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class LinIfMaster implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Float getLinIfJitter(){
					ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfJitter"])
				}
				
				def void setLinIfJitter(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfJitter"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfJitter"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class LinIfScheduleTable implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def LinIfResumePosition getLinIfResumePosition(){
					getLinIfResumePositionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfResumePosition"])
				}
				
				def void setLinIfResumePosition(LinIfResumePosition value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfResumePosition"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfResumePosition"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum LinIfResumePosition {
					CONTINUE_AT_IT_POINT, 
					START_FROM_BEGINNING
				}
					
				def LinIfResumePosition getLinIfResumePositionValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CONTINUE_AT_IT_POINT" : LinIfResumePosition.CONTINUE_AT_IT_POINT
						case "START_FROM_BEGINNING" : LinIfResumePosition.START_FROM_BEGINNING
					}
				}
				
				def void setLinIfResumePositionValue(GParameterValue paramValue, LinIfResumePosition value){
					ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def LinIfRunMode getLinIfRunMode(){
					getLinIfRunModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfRunMode"])
				}
				
				def void setLinIfRunMode(LinIfRunMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfRunMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfRunMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum LinIfRunMode {
					RUN_CONTINUOUS, 
					RUN_ONCE
				}
					
				def LinIfRunMode getLinIfRunModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "RUN_CONTINUOUS" : LinIfRunMode.RUN_CONTINUOUS
						case "RUN_ONCE" : LinIfRunMode.RUN_ONCE
					}
				}
				
				def void setLinIfRunModeValue(GParameterValue paramValue, LinIfRunMode value){
					ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getLinIfScheduleTableIndex(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleTableIndex"])
				}
				
				def void setLinIfScheduleTableIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleTableIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfScheduleTableIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<LinIfEntry> getLinIfEntries(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "LinIfEntry")
						}
					}
					return new BasicWrappingEList<LinIfEntry, GContainer>(filteredContainers, typeof(LinIfEntry), typeof(GContainer))
				}
				
				
				static class LinIfEntry implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Float getLinIfDelay(){
						ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfDelay"])
					}
					
					def void setLinIfDelay(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfDelay"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfDelay"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getLinIfEntryIndex(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfEntryIndex"])
					}
					
					def void setLinIfEntryIndex(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfEntryIndex"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinIfEntryIndex"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable getLinIfCollisionResolvingRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable), "LinIfCollisionResolvingRef")
					}
							
					def void setLinIfCollisionResolvingRef(org.artop.ecuc.autosar421.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfCollisionResolvingRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame getLinIfFrameRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame), "LinIfFrameRef")
					}
							
					def void setLinIfFrameRef(org.artop.ecuc.autosar421.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfFrameRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class LinIfTransceiverDrvConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.LinTrcv.LinTrcvChannel getLinIfTrcvIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.LinTrcv.LinTrcvChannel), "LinIfTrcvIdRef")
				}
						
				def void setLinIfTrcvIdRef(org.artop.ecuc.autosar421.accessors.LinTrcv.LinTrcvChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfTrcvIdRef"], object.getTarget())
					}
				}
				
				
				
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
