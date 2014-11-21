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

class CanIf implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def List<CanIfCtrlDrvCfg> getCanIfCtrlDrvCfgs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "CanIfCtrlDrvCfg")
			}
		}
		return new BasicWrappingEList<CanIfCtrlDrvCfg, GContainer>(filteredContainers, typeof(CanIfCtrlDrvCfg), typeof(GContainer))
	}
	def CanIfDispatchCfg getCanIfDispatchCfg(){
		moduleConfiguration.getByType(typeof(CanIfDispatchCfg))
	}
	
	def void setCanIfDispatchCfg(CanIfDispatchCfg canIfDispatchCfg){
		val GContainer container = canIfDispatchCfg.getTarget() 
	    moduleConfiguration.setContainer(container, "CanIfDispatchCfg")
	}
	def CanIfInitCfg getCanIfInitCfg(){
		moduleConfiguration.getByType(typeof(CanIfInitCfg))
	}
	
	def void setCanIfInitCfg(CanIfInitCfg canIfInitCfg){
		val GContainer container = canIfInitCfg.getTarget() 
	    moduleConfiguration.setContainer(container, "CanIfInitCfg")
	}
	def CanIfPrivateCfg getCanIfPrivateCfg(){
		moduleConfiguration.getByType(typeof(CanIfPrivateCfg))
	}
	
	def void setCanIfPrivateCfg(CanIfPrivateCfg canIfPrivateCfg){
		val GContainer container = canIfPrivateCfg.getTarget() 
	    moduleConfiguration.setContainer(container, "CanIfPrivateCfg")
	}
	def CanIfPublicCfg getCanIfPublicCfg(){
		moduleConfiguration.getByType(typeof(CanIfPublicCfg))
	}
	
	def void setCanIfPublicCfg(CanIfPublicCfg canIfPublicCfg){
		val GContainer container = canIfPublicCfg.getTarget() 
	    moduleConfiguration.setContainer(container, "CanIfPublicCfg")
	}
	def List<CanIfTrcvDrvCfg> getCanIfTrcvDrvCfgs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "CanIfTrcvDrvCfg")
			}
		}
		return new BasicWrappingEList<CanIfTrcvDrvCfg, GContainer>(filteredContainers, typeof(CanIfTrcvDrvCfg), typeof(GContainer))
	}
	
	static class CanIfCtrlDrvCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		def org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg getCanIfCtrlDrvInitHohConfigRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg), "CanIfCtrlDrvInitHohConfigRef")
		}
				
		def void setCanIfCtrlDrvInitHohConfigRef(org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfCtrlDrvInitHohConfigRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Can.CanGeneral getCanIfCtrlDrvNameRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Can.CanGeneral), "CanIfCtrlDrvNameRef")
		}
				
		def void setCanIfCtrlDrvNameRef(org.artop.ecuc.autosar421.accessors.Can.CanGeneral object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfCtrlDrvNameRef"], object.getTarget())
			}
		}
		
		
		def List<CanIfCtrlCfg> getCanIfCtrlCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfCtrlCfg")
				}
			}
			return new BasicWrappingEList<CanIfCtrlCfg, GContainer>(filteredContainers, typeof(CanIfCtrlCfg), typeof(GContainer))
		}
		
		
		static class CanIfCtrlCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getCanIfCtrlId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfCtrlId"])
			}
			
			def void setCanIfCtrlId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfCtrlId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfCtrlId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanIfCtrlWakeupSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfCtrlWakeupSupport"])
			}
			
			def void setCanIfCtrlWakeupSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfCtrlWakeupSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfCtrlWakeupSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanController getCanIfCtrlCanCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanController), "CanIfCtrlCanCtrlRef")
			}
					
			def void setCanIfCtrlCanCtrlRef(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfCtrlCanCtrlRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class CanIfDispatchCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def String getCanIfDispatchUserCheckTrcvWakeFlagIndicationName(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationName"])
		}
		
		def void setCanIfDispatchUserCheckTrcvWakeFlagIndicationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanIfDispatchUserCheckTrcvWakeFlagIndicationUL getCanIfDispatchUserCheckTrcvWakeFlagIndicationUL(){
			getCanIfDispatchUserCheckTrcvWakeFlagIndicationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationUL"])
		}
		
		def void setCanIfDispatchUserCheckTrcvWakeFlagIndicationUL(CanIfDispatchUserCheckTrcvWakeFlagIndicationUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationUL"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationUL"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanIfDispatchUserCheckTrcvWakeFlagIndicationUL {
			CAN_SM, 
			CDD
		}
			
		def CanIfDispatchUserCheckTrcvWakeFlagIndicationUL getCanIfDispatchUserCheckTrcvWakeFlagIndicationULValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CAN_SM" : CanIfDispatchUserCheckTrcvWakeFlagIndicationUL.CAN_SM
				case "CDD" : CanIfDispatchUserCheckTrcvWakeFlagIndicationUL.CDD
			}
		}
		
		def void setCanIfDispatchUserCheckTrcvWakeFlagIndicationULValue(GParameterValue paramValue, CanIfDispatchUserCheckTrcvWakeFlagIndicationUL value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def String getCanIfDispatchUserClearTrcvWufFlagIndicationName(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationName"])
		}
		
		def void setCanIfDispatchUserClearTrcvWufFlagIndicationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanIfDispatchUserClearTrcvWufFlagIndicationUL getCanIfDispatchUserClearTrcvWufFlagIndicationUL(){
			getCanIfDispatchUserClearTrcvWufFlagIndicationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationUL"])
		}
		
		def void setCanIfDispatchUserClearTrcvWufFlagIndicationUL(CanIfDispatchUserClearTrcvWufFlagIndicationUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationUL"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationUL"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanIfDispatchUserClearTrcvWufFlagIndicationUL {
			CAN_SM, 
			CDD
		}
			
		def CanIfDispatchUserClearTrcvWufFlagIndicationUL getCanIfDispatchUserClearTrcvWufFlagIndicationULValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CAN_SM" : CanIfDispatchUserClearTrcvWufFlagIndicationUL.CAN_SM
				case "CDD" : CanIfDispatchUserClearTrcvWufFlagIndicationUL.CDD
			}
		}
		
		def void setCanIfDispatchUserClearTrcvWufFlagIndicationULValue(GParameterValue paramValue, CanIfDispatchUserClearTrcvWufFlagIndicationUL value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def String getCanIfDispatchUserConfirmPnAvailabilityName(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityName"])
		}
		
		def void setCanIfDispatchUserConfirmPnAvailabilityName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanIfDispatchUserConfirmPnAvailabilityUL getCanIfDispatchUserConfirmPnAvailabilityUL(){
			getCanIfDispatchUserConfirmPnAvailabilityULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityUL"])
		}
		
		def void setCanIfDispatchUserConfirmPnAvailabilityUL(CanIfDispatchUserConfirmPnAvailabilityUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityUL"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityUL"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanIfDispatchUserConfirmPnAvailabilityUL {
			CAN_SM, 
			CDD
		}
			
		def CanIfDispatchUserConfirmPnAvailabilityUL getCanIfDispatchUserConfirmPnAvailabilityULValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CAN_SM" : CanIfDispatchUserConfirmPnAvailabilityUL.CAN_SM
				case "CDD" : CanIfDispatchUserConfirmPnAvailabilityUL.CDD
			}
		}
		
		def void setCanIfDispatchUserConfirmPnAvailabilityULValue(GParameterValue paramValue, CanIfDispatchUserConfirmPnAvailabilityUL value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def String getCanIfDispatchUserCtrlBusOffName(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlBusOffName"])
		}
		
		def void setCanIfDispatchUserCtrlBusOffName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlBusOffName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCtrlBusOffName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanIfDispatchUserCtrlBusOffUL getCanIfDispatchUserCtrlBusOffUL(){
			getCanIfDispatchUserCtrlBusOffULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlBusOffUL"])
		}
		
		def void setCanIfDispatchUserCtrlBusOffUL(CanIfDispatchUserCtrlBusOffUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlBusOffUL"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCtrlBusOffUL"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanIfDispatchUserCtrlBusOffUL {
			CAN_SM, 
			CDD
		}
			
		def CanIfDispatchUserCtrlBusOffUL getCanIfDispatchUserCtrlBusOffULValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CAN_SM" : CanIfDispatchUserCtrlBusOffUL.CAN_SM
				case "CDD" : CanIfDispatchUserCtrlBusOffUL.CDD
			}
		}
		
		def void setCanIfDispatchUserCtrlBusOffULValue(GParameterValue paramValue, CanIfDispatchUserCtrlBusOffUL value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def String getCanIfDispatchUserCtrlModeIndicationName(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlModeIndicationName"])
		}
		
		def void setCanIfDispatchUserCtrlModeIndicationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlModeIndicationName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCtrlModeIndicationName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanIfDispatchUserCtrlModeIndicationUL getCanIfDispatchUserCtrlModeIndicationUL(){
			getCanIfDispatchUserCtrlModeIndicationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlModeIndicationUL"])
		}
		
		def void setCanIfDispatchUserCtrlModeIndicationUL(CanIfDispatchUserCtrlModeIndicationUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlModeIndicationUL"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCtrlModeIndicationUL"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanIfDispatchUserCtrlModeIndicationUL {
			CAN_SM, 
			CDD
		}
			
		def CanIfDispatchUserCtrlModeIndicationUL getCanIfDispatchUserCtrlModeIndicationULValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CAN_SM" : CanIfDispatchUserCtrlModeIndicationUL.CAN_SM
				case "CDD" : CanIfDispatchUserCtrlModeIndicationUL.CDD
			}
		}
		
		def void setCanIfDispatchUserCtrlModeIndicationULValue(GParameterValue paramValue, CanIfDispatchUserCtrlModeIndicationUL value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def String getCanIfDispatchUserTrcvModeIndicationName(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserTrcvModeIndicationName"])
		}
		
		def void setCanIfDispatchUserTrcvModeIndicationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserTrcvModeIndicationName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserTrcvModeIndicationName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanIfDispatchUserTrcvModeIndicationUL getCanIfDispatchUserTrcvModeIndicationUL(){
			getCanIfDispatchUserTrcvModeIndicationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserTrcvModeIndicationUL"])
		}
		
		def void setCanIfDispatchUserTrcvModeIndicationUL(CanIfDispatchUserTrcvModeIndicationUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserTrcvModeIndicationUL"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserTrcvModeIndicationUL"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanIfDispatchUserTrcvModeIndicationUL {
			CAN_SM, 
			CDD
		}
			
		def CanIfDispatchUserTrcvModeIndicationUL getCanIfDispatchUserTrcvModeIndicationULValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CAN_SM" : CanIfDispatchUserTrcvModeIndicationUL.CAN_SM
				case "CDD" : CanIfDispatchUserTrcvModeIndicationUL.CDD
			}
		}
		
		def void setCanIfDispatchUserTrcvModeIndicationULValue(GParameterValue paramValue, CanIfDispatchUserTrcvModeIndicationUL value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def String getCanIfDispatchUserValidateWakeupEventName(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserValidateWakeupEventName"])
		}
		
		def void setCanIfDispatchUserValidateWakeupEventName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserValidateWakeupEventName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserValidateWakeupEventName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanIfDispatchUserValidateWakeupEventUL getCanIfDispatchUserValidateWakeupEventUL(){
			getCanIfDispatchUserValidateWakeupEventULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserValidateWakeupEventUL"])
		}
		
		def void setCanIfDispatchUserValidateWakeupEventUL(CanIfDispatchUserValidateWakeupEventUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserValidateWakeupEventUL"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserValidateWakeupEventUL"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanIfDispatchUserValidateWakeupEventUL {
			CDD, 
			ECUM
		}
			
		def CanIfDispatchUserValidateWakeupEventUL getCanIfDispatchUserValidateWakeupEventULValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CDD" : CanIfDispatchUserValidateWakeupEventUL.CDD
				case "ECUM" : CanIfDispatchUserValidateWakeupEventUL.ECUM
			}
		}
		
		def void setCanIfDispatchUserValidateWakeupEventULValue(GParameterValue paramValue, CanIfDispatchUserValidateWakeupEventUL value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		
		
		
	}
	static class CanIfInitCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def String getCanIfInitCfgSet(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfInitCfgSet"])
		}
		
		def void setCanIfInitCfgSet(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfInitCfgSet"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfInitCfgSet"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getCanIfMaxBufferSize(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxBufferSize"])
		}
		
		def void setCanIfMaxBufferSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxBufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfMaxBufferSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getCanIfMaxRxPduCfg(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxRxPduCfg"])
		}
		
		def void setCanIfMaxRxPduCfg(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxRxPduCfg"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfMaxRxPduCfg"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getCanIfMaxTxPduCfg(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxTxPduCfg"])
		}
		
		def void setCanIfMaxTxPduCfg(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxTxPduCfg"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfMaxTxPduCfg"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CanIfBufferCfg> getCanIfBufferCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfBufferCfg")
				}
			}
			return new BasicWrappingEList<CanIfBufferCfg, GContainer>(filteredContainers, typeof(CanIfBufferCfg), typeof(GContainer))
		}
		
		def List<CanIfInitHohCfg> getCanIfInitHohCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfInitHohCfg")
				}
			}
			return new BasicWrappingEList<CanIfInitHohCfg, GContainer>(filteredContainers, typeof(CanIfInitHohCfg), typeof(GContainer))
		}
		
		def List<CanIfRxPduCfg> getCanIfRxPduCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfRxPduCfg")
				}
			}
			return new BasicWrappingEList<CanIfRxPduCfg, GContainer>(filteredContainers, typeof(CanIfRxPduCfg), typeof(GContainer))
		}
		
		def List<CanIfTxPduCfg> getCanIfTxPduCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfTxPduCfg")
				}
			}
			return new BasicWrappingEList<CanIfTxPduCfg, GContainer>(filteredContainers, typeof(CanIfTxPduCfg), typeof(GContainer))
		}
		
		
		static class CanIfBufferCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getCanIfBufferSize(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfBufferSize"])
			}
			
			def void setCanIfBufferSize(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfBufferSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfBufferSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHthCfg getCanIfBufferHthRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHthCfg), "CanIfBufferHthRef")
			}
					
			def void setCanIfBufferHthRef(org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHthCfg object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfBufferHthRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class CanIfInitHohCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			
			def List<CanIfHrhCfg> getCanIfHrhCfgs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanIfHrhCfg")
					}
				}
				return new BasicWrappingEList<CanIfHrhCfg, GContainer>(filteredContainers, typeof(CanIfHrhCfg), typeof(GContainer))
			}
			
			def List<CanIfHthCfg> getCanIfHthCfgs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanIfHthCfg")
					}
				}
				return new BasicWrappingEList<CanIfHthCfg, GContainer>(filteredContainers, typeof(CanIfHthCfg), typeof(GContainer))
			}
			
			
			static class CanIfHrhCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Boolean getCanIfHrhSoftwareFilter(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhSoftwareFilter"])
				}
				
				def void setCanIfHrhSoftwareFilter(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhSoftwareFilter"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhSoftwareFilter"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg getCanIfHrhCanCtrlIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg), "CanIfHrhCanCtrlIdRef")
				}
						
				def void setCanIfHrhCanCtrlIdRef(org.artop.ecuc.autosar421.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfHrhCanCtrlIdRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject getCanIfHrhIdSymRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject), "CanIfHrhIdSymRef")
				}
						
				def void setCanIfHrhIdSymRef(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfHrhIdSymRef"], object.getTarget())
					}
				}
				
				
				def List<CanIfHrhRangeCfg> getCanIfHrhRangeCfgs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CanIfHrhRangeCfg")
						}
					}
					return new BasicWrappingEList<CanIfHrhRangeCfg, GContainer>(filteredContainers, typeof(CanIfHrhRangeCfg), typeof(GContainer))
				}
				
				
				static class CanIfHrhRangeCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getCanIfHrhRangeBaseId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeBaseId"])
					}
					
					def void setCanIfHrhRangeBaseId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeBaseId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeBaseId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getCanIfHrhRangeMask(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeMask"])
					}
					
					def void setCanIfHrhRangeMask(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeMask"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeMask"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getCanIfHrhRangeRxPduLowerCanId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduLowerCanId"])
					}
					
					def void setCanIfHrhRangeRxPduLowerCanId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduLowerCanId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeRxPduLowerCanId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def CanIfHrhRangeRxPduRangeCanIdType getCanIfHrhRangeRxPduRangeCanIdType(){
						getCanIfHrhRangeRxPduRangeCanIdTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduRangeCanIdType"])
					}
					
					def void setCanIfHrhRangeRxPduRangeCanIdType(CanIfHrhRangeRxPduRangeCanIdType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduRangeCanIdType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeRxPduRangeCanIdType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					enum CanIfHrhRangeRxPduRangeCanIdType {
						EXTENDED, 
						STANDARD
					}
						
					def CanIfHrhRangeRxPduRangeCanIdType getCanIfHrhRangeRxPduRangeCanIdTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "EXTENDED" : CanIfHrhRangeRxPduRangeCanIdType.EXTENDED
							case "STANDARD" : CanIfHrhRangeRxPduRangeCanIdType.STANDARD
						}
					}
					
					def void setCanIfHrhRangeRxPduRangeCanIdTypeValue(GParameterValue paramValue, CanIfHrhRangeRxPduRangeCanIdType value){
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getCanIfHrhRangeRxPduUpperCanId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduUpperCanId"])
					}
					
					def void setCanIfHrhRangeRxPduUpperCanId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduUpperCanId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeRxPduUpperCanId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
			static class CanIfHthCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg getCanIfHthCanCtrlIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg), "CanIfHthCanCtrlIdRef")
				}
						
				def void setCanIfHthCanCtrlIdRef(org.artop.ecuc.autosar421.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfHthCanCtrlIdRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject getCanIfHthIdSymRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject), "CanIfHthIdSymRef")
				}
						
				def void setCanIfHthIdSymRef(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfHthIdSymRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CanIfRxPduCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getCanIfRxPduCanId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanId"])
			}
			
			def void setCanIfRxPduCanId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getCanIfRxPduCanIdMask(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdMask"])
			}
			
			def void setCanIfRxPduCanIdMask(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdMask"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanIdMask"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanIfRxPduCanIdType getCanIfRxPduCanIdType(){
				getCanIfRxPduCanIdTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdType"])
			}
			
			def void setCanIfRxPduCanIdType(CanIfRxPduCanIdType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanIdType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanIfRxPduCanIdType {
				EXTENDED_CAN, 
				STANDARD_CAN
			}
				
			def CanIfRxPduCanIdType getCanIfRxPduCanIdTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "EXTENDED_CAN" : CanIfRxPduCanIdType.EXTENDED_CAN
					case "STANDARD_CAN" : CanIfRxPduCanIdType.STANDARD_CAN
				}
			}
			
			def void setCanIfRxPduCanIdTypeValue(GParameterValue paramValue, CanIfRxPduCanIdType value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getCanIfRxPduDlc(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduDlc"])
			}
			
			def void setCanIfRxPduDlc(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduDlc"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduDlc"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getCanIfRxPduId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduId"])
			}
			
			def void setCanIfRxPduId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanIfRxPduReadData(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduReadData"])
			}
			
			def void setCanIfRxPduReadData(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduReadData"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduReadData"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanIfRxPduReadNotifyStatus(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduReadNotifyStatus"])
			}
			
			def void setCanIfRxPduReadNotifyStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduReadNotifyStatus"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduReadNotifyStatus"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def String getCanIfRxPduUserRxIndicationName(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduUserRxIndicationName"])
			}
			
			def void setCanIfRxPduUserRxIndicationName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduUserRxIndicationName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduUserRxIndicationName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanIfRxPduUserRxIndicationUL getCanIfRxPduUserRxIndicationUL(){
				getCanIfRxPduUserRxIndicationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduUserRxIndicationUL"])
			}
			
			def void setCanIfRxPduUserRxIndicationUL(CanIfRxPduUserRxIndicationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduUserRxIndicationUL"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduUserRxIndicationUL"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanIfRxPduUserRxIndicationUL {
				CAN_NM, 
				CAN_TP, 
				CDD, 
				J1939NM, 
				J1939TP, 
				PDUR, 
				XCP
			}
				
			def CanIfRxPduUserRxIndicationUL getCanIfRxPduUserRxIndicationULValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CAN_NM" : CanIfRxPduUserRxIndicationUL.CAN_NM
					case "CAN_TP" : CanIfRxPduUserRxIndicationUL.CAN_TP
					case "CDD" : CanIfRxPduUserRxIndicationUL.CDD
					case "J1939NM" : CanIfRxPduUserRxIndicationUL.J1939NM
					case "J1939TP" : CanIfRxPduUserRxIndicationUL.J1939TP
					case "PDUR" : CanIfRxPduUserRxIndicationUL.PDUR
					case "XCP" : CanIfRxPduUserRxIndicationUL.XCP
				}
			}
			
			def void setCanIfRxPduUserRxIndicationULValue(GParameterValue paramValue, CanIfRxPduUserRxIndicationUL value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg getCanIfRxPduHrhIdRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg), "CanIfRxPduHrhIdRef")
			}
					
			def void setCanIfRxPduHrhIdRef(org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfRxPduHrhIdRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanIfRxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanIfRxPduRef")
			}
					
			def void setCanIfRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfRxPduRef"], object.getTarget())
				}
			}
			
			
			def CanIfRxPduCanIdRange getCanIfRxPduCanIdRange(){
				containerValue.getByType(typeof(CanIfRxPduCanIdRange))
			}
			
			def void setCanIfRxPduCanIdRange(GContainer subContainer){
				containerValue.setContainer(subContainer, "CanIfRxPduCanIdRange")
			}
			
			def CanIfTTRxFrameTriggering getCanIfTTRxFrameTriggering(){
				containerValue.getByType(typeof(CanIfTTRxFrameTriggering))
			}
			
			def void setCanIfTTRxFrameTriggering(GContainer subContainer){
				containerValue.setContainer(subContainer, "CanIfTTRxFrameTriggering")
			}
			
			
			static class CanIfRxPduCanIdRange implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getCanIfRxPduCanIdRangeLowerCanId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdRangeLowerCanId"])
				}
				
				def void setCanIfRxPduCanIdRangeLowerCanId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdRangeLowerCanId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanIdRangeLowerCanId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanIfRxPduCanIdRangeUpperCanId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdRangeUpperCanId"])
				}
				
				def void setCanIfRxPduCanIdRangeUpperCanId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdRangeUpperCanId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanIdRangeUpperCanId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class CanIfTTRxFrameTriggering implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getCanTTRxJoblistTimeMark(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTRxJoblistTimeMark"])
				}
				
				def void setCanTTRxJoblistTimeMark(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTRxJoblistTimeMark"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTRxJoblistTimeMark"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger getCanIfTTRxHwObjectTriggerIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger), "CanIfTTRxHwObjectTriggerIdRef")
				}
						
				def void setCanIfTTRxHwObjectTriggerIdRef(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTTRxHwObjectTriggerIdRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CanIfTxPduCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getCanIfTxPduCanId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanId"])
			}
			
			def void setCanIfTxPduCanId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduCanId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getCanIfTxPduCanIdMask(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanIdMask"])
			}
			
			def void setCanIfTxPduCanIdMask(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanIdMask"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduCanIdMask"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanIfTxPduCanIdType getCanIfTxPduCanIdType(){
				getCanIfTxPduCanIdTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanIdType"])
			}
			
			def void setCanIfTxPduCanIdType(CanIfTxPduCanIdType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanIdType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduCanIdType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanIfTxPduCanIdType {
				EXTENDED_CAN, 
				EXTENDED_FD_CAN, 
				STANDARD_CAN, 
				STANDARD_FD_CAN
			}
				
			def CanIfTxPduCanIdType getCanIfTxPduCanIdTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "EXTENDED_CAN" : CanIfTxPduCanIdType.EXTENDED_CAN
					case "EXTENDED_FD_CAN" : CanIfTxPduCanIdType.EXTENDED_FD_CAN
					case "STANDARD_CAN" : CanIfTxPduCanIdType.STANDARD_CAN
					case "STANDARD_FD_CAN" : CanIfTxPduCanIdType.STANDARD_FD_CAN
				}
			}
			
			def void setCanIfTxPduCanIdTypeValue(GParameterValue paramValue, CanIfTxPduCanIdType value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getCanIfTxPduId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduId"])
			}
			
			def void setCanIfTxPduId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanIfTxPduPnFilterPdu(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduPnFilterPdu"])
			}
			
			def void setCanIfTxPduPnFilterPdu(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduPnFilterPdu"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduPnFilterPdu"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanIfTxPduReadNotifyStatus(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduReadNotifyStatus"])
			}
			
			def void setCanIfTxPduReadNotifyStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduReadNotifyStatus"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduReadNotifyStatus"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanIfTxPduType getCanIfTxPduType(){
				getCanIfTxPduTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduType"])
			}
			
			def void setCanIfTxPduType(CanIfTxPduType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanIfTxPduType {
				DYNAMIC, 
				STATIC
			}
				
			def CanIfTxPduType getCanIfTxPduTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DYNAMIC" : CanIfTxPduType.DYNAMIC
					case "STATIC" : CanIfTxPduType.STATIC
				}
			}
			
			def void setCanIfTxPduTypeValue(GParameterValue paramValue, CanIfTxPduType value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def String getCanIfTxPduUserTxConfirmationName(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTxConfirmationName"])
			}
			
			def void setCanIfTxPduUserTxConfirmationName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTxConfirmationName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduUserTxConfirmationName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanIfTxPduUserTxConfirmationUL getCanIfTxPduUserTxConfirmationUL(){
				getCanIfTxPduUserTxConfirmationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTxConfirmationUL"])
			}
			
			def void setCanIfTxPduUserTxConfirmationUL(CanIfTxPduUserTxConfirmationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTxConfirmationUL"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduUserTxConfirmationUL"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanIfTxPduUserTxConfirmationUL {
				CAN_NM, 
				CAN_TP, 
				CDD, 
				J1939NM, 
				J1939TP, 
				PDUR, 
				XCP
			}
				
			def CanIfTxPduUserTxConfirmationUL getCanIfTxPduUserTxConfirmationULValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CAN_NM" : CanIfTxPduUserTxConfirmationUL.CAN_NM
					case "CAN_TP" : CanIfTxPduUserTxConfirmationUL.CAN_TP
					case "CDD" : CanIfTxPduUserTxConfirmationUL.CDD
					case "J1939NM" : CanIfTxPduUserTxConfirmationUL.J1939NM
					case "J1939TP" : CanIfTxPduUserTxConfirmationUL.J1939TP
					case "PDUR" : CanIfTxPduUserTxConfirmationUL.PDUR
					case "XCP" : CanIfTxPduUserTxConfirmationUL.XCP
				}
			}
			
			def void setCanIfTxPduUserTxConfirmationULValue(GParameterValue paramValue, CanIfTxPduUserTxConfirmationUL value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfBufferCfg getCanIfTxPduBufferRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfBufferCfg), "CanIfTxPduBufferRef")
			}
					
			def void setCanIfTxPduBufferRef(org.artop.ecuc.autosar421.accessors.CanIf.CanIfInitCfg.CanIfBufferCfg object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTxPduBufferRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanIfTxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanIfTxPduRef")
			}
					
			def void setCanIfTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTxPduRef"], object.getTarget())
				}
			}
			
			
			def CanIfTTTxFrameTriggering getCanIfTTTxFrameTriggering(){
				containerValue.getByType(typeof(CanIfTTTxFrameTriggering))
			}
			
			def void setCanIfTTTxFrameTriggering(GContainer subContainer){
				containerValue.setContainer(subContainer, "CanIfTTTxFrameTriggering")
			}
			
			
			static class CanIfTTTxFrameTriggering implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getCanIfTTTxJoblistTimeMark(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTTxJoblistTimeMark"])
				}
				
				def void setCanIfTTTxJoblistTimeMark(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTTxJoblistTimeMark"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTTTxJoblistTimeMark"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger getCanIfTTTxHwObjectTriggerIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger), "CanIfTTTxHwObjectTriggerIdRef")
				}
						
				def void setCanIfTTTxHwObjectTriggerIdRef(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTTTxHwObjectTriggerIdRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class CanIfPrivateCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getCanIfFixedBuffer(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfFixedBuffer"])
		}
		
		def void setCanIfFixedBuffer(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfFixedBuffer"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfFixedBuffer"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPrivateDlcCheck(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPrivateDlcCheck"])
		}
		
		def void setCanIfPrivateDlcCheck(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPrivateDlcCheck"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPrivateDlcCheck"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanIfPrivateSoftwareFilterType getCanIfPrivateSoftwareFilterType(){
			getCanIfPrivateSoftwareFilterTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPrivateSoftwareFilterType"])
		}
		
		def void setCanIfPrivateSoftwareFilterType(CanIfPrivateSoftwareFilterType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPrivateSoftwareFilterType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPrivateSoftwareFilterType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanIfPrivateSoftwareFilterType {
			BINARY, 
			INDEX, 
			LINEAR, 
			TABLE
		}
			
		def CanIfPrivateSoftwareFilterType getCanIfPrivateSoftwareFilterTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "BINARY" : CanIfPrivateSoftwareFilterType.BINARY
				case "INDEX" : CanIfPrivateSoftwareFilterType.INDEX
				case "LINEAR" : CanIfPrivateSoftwareFilterType.LINEAR
				case "TABLE" : CanIfPrivateSoftwareFilterType.TABLE
			}
		}
		
		def void setCanIfPrivateSoftwareFilterTypeValue(GParameterValue paramValue, CanIfPrivateSoftwareFilterType value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getCanIfSupportTTCAN(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfSupportTTCAN"])
		}
		
		def void setCanIfSupportTTCAN(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfSupportTTCAN"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfSupportTTCAN"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def CanIfTTGeneral getCanIfTTGeneral(){
			containerValue.getByType(typeof(CanIfTTGeneral))
		}
		
		def void setCanIfTTGeneral(GContainer subContainer){
			containerValue.setContainer(subContainer, "CanIfTTGeneral")
		}
		
		
		static class CanIfTTGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Boolean getCanIfTTJoblist(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTJoblist"])
			}
			
			def void setCanIfTTJoblist(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTJoblist"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTTJoblist"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getCanIfTTMaxIsrDelay(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTMaxIsrDelay"])
			}
			
			def void setCanIfTTMaxIsrDelay(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTMaxIsrDelay"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTTMaxIsrDelay"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def CanIfTTDemEventParameterRefs getCanIfTTDemEventParameterRefs(){
				containerValue.getByType(typeof(CanIfTTDemEventParameterRefs))
			}
			
			def void setCanIfTTDemEventParameterRefs(GContainer subContainer){
				containerValue.setContainer(subContainer, "CanIfTTDemEventParameterRefs")
			}
			
			
			static class CanIfTTDemEventParameterRefs implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getCANIF_TT_E_JLE_SYNC(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "CANIF_TT_E_JLE_SYNC")
				}
						
				def void setCANIF_TT_E_JLE_SYNC(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CANIF_TT_E_JLE_SYNC"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class CanIfPublicCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getCanIfMetaDataSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMetaDataSupport"])
		}
		
		def void setCanIfMetaDataSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMetaDataSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfMetaDataSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicCancelTransmitSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicCancelTransmitSupport"])
		}
		
		def void setCanIfPublicCancelTransmitSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicCancelTransmitSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicCancelTransmitSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def List<String> getCanIfPublicCddHeaderFiles(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "CanIfPublicCddHeaderFile")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicCddHeaderFile"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getCanIfPublicDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicDevErrorDetect"])
		}
		
		def void setCanIfPublicDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanIfPublicHandleTypeEnum getCanIfPublicHandleTypeEnum(){
			getCanIfPublicHandleTypeEnumValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicHandleTypeEnum"])
		}
		
		def void setCanIfPublicHandleTypeEnum(CanIfPublicHandleTypeEnum value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicHandleTypeEnum"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicHandleTypeEnum"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanIfPublicHandleTypeEnum {
			UINT16, 
			UINT8
		}
			
		def CanIfPublicHandleTypeEnum getCanIfPublicHandleTypeEnumValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "UINT16" : CanIfPublicHandleTypeEnum.UINT16
				case "UINT8" : CanIfPublicHandleTypeEnum.UINT8
			}
		}
		
		def void setCanIfPublicHandleTypeEnumValue(GParameterValue paramValue, CanIfPublicHandleTypeEnum value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getCanIfPublicIcomSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicIcomSupport"])
		}
		
		def void setCanIfPublicIcomSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicIcomSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicIcomSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicMultipleDrvSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicMultipleDrvSupport"])
		}
		
		def void setCanIfPublicMultipleDrvSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicMultipleDrvSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicMultipleDrvSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicPnSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicPnSupport"])
		}
		
		def void setCanIfPublicPnSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicPnSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicPnSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicReadRxPduDataApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadRxPduDataApi"])
		}
		
		def void setCanIfPublicReadRxPduDataApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadRxPduDataApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicReadRxPduDataApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicReadRxPduNotifyStatusApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadRxPduNotifyStatusApi"])
		}
		
		def void setCanIfPublicReadRxPduNotifyStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadRxPduNotifyStatusApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicReadRxPduNotifyStatusApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicReadTxPduNotifyStatusApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadTxPduNotifyStatusApi"])
		}
		
		def void setCanIfPublicReadTxPduNotifyStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadTxPduNotifyStatusApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicReadTxPduNotifyStatusApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicSetDynamicTxIdApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicSetDynamicTxIdApi"])
		}
		
		def void setCanIfPublicSetDynamicTxIdApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicSetDynamicTxIdApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicSetDynamicTxIdApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicTxBuffering(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicTxBuffering"])
		}
		
		def void setCanIfPublicTxBuffering(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicTxBuffering"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicTxBuffering"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicTxConfirmPollingSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicTxConfirmPollingSupport"])
		}
		
		def void setCanIfPublicTxConfirmPollingSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicTxConfirmPollingSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicTxConfirmPollingSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicVersionInfoApi"])
		}
		
		def void setCanIfPublicVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicWakeupCheckValidByNM(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicWakeupCheckValidByNM"])
		}
		
		def void setCanIfPublicWakeupCheckValidByNM(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicWakeupCheckValidByNM"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicWakeupCheckValidByNM"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfPublicWakeupCheckValidSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicWakeupCheckValidSupport"])
		}
		
		def void setCanIfPublicWakeupCheckValidSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicWakeupCheckValidSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicWakeupCheckValidSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfSetBaudrateApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfSetBaudrateApi"])
		}
		
		def void setCanIfSetBaudrateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfSetBaudrateApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfSetBaudrateApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanIfTxOfflineActiveSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxOfflineActiveSupport"])
		}
		
		def void setCanIfTxOfflineActiveSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxOfflineActiveSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxOfflineActiveSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class CanIfTrcvDrvCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		
		def List<CanIfTrcvCfg> getCanIfTrcvCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfTrcvCfg")
				}
			}
			return new BasicWrappingEList<CanIfTrcvCfg, GContainer>(filteredContainers, typeof(CanIfTrcvCfg), typeof(GContainer))
		}
		
		
		static class CanIfTrcvCfg implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getCanIfTrcvId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTrcvId"])
			}
			
			def void setCanIfTrcvId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTrcvId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTrcvId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanIfTrcvWakeupSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTrcvWakeupSupport"])
			}
			
			def void setCanIfTrcvWakeupSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTrcvWakeupSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTrcvWakeupSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel getCanIfTrcvCanTrcvRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel), "CanIfTrcvCanTrcvRef")
			}
					
			def void setCanIfTrcvCanTrcvRef(org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTrcvCanTrcvRef"], object.getTarget())
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
