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

class CanIf implements IWrapper<GModuleConfiguration> {
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
		return new BasicWrappingEList<CanIfCtrlDrvCfg, GContainer>(filteredContainers, typeof(CanIfCtrlDrvCfg), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg canIfCtrlDrvCfg) {
				canIfCtrlDrvCfg.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CanIfCtrlDrvCfg"))
				super.delegateAdd(canIfCtrlDrvCfg)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg canIfCtrlDrvCfg) {
				canIfCtrlDrvCfg.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CanIfCtrlDrvCfg"))
				super.delegateAdd(index, canIfCtrlDrvCfg)
			}
		}
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
		return new BasicWrappingEList<CanIfTrcvDrvCfg, GContainer>(filteredContainers, typeof(CanIfTrcvDrvCfg), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfTrcvDrvCfg canIfTrcvDrvCfg) {
				canIfTrcvDrvCfg.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CanIfTrcvDrvCfg"))
				super.delegateAdd(canIfTrcvDrvCfg)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfTrcvDrvCfg canIfTrcvDrvCfg) {
				canIfTrcvDrvCfg.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CanIfTrcvDrvCfg"))
				super.delegateAdd(index, canIfTrcvDrvCfg)
			}
		}
	}

	static class CanIfCtrlDrvCfg implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanIfCtrlDrvCfg)){
				return false
			}
			this.target == (object as CanIfCtrlDrvCfg).target
		}
	
		
		def org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg getCanIfCtrlDrvInitHohConfigRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg), "CanIfCtrlDrvInitHohConfigRef")
		}
		
		def void setCanIfCtrlDrvInitHohConfigRef(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfCtrlDrvInitHohConfigRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.Can.CanGeneral getCanIfCtrlDrvNameRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Can.CanGeneral), "CanIfCtrlDrvNameRef")
		}
		
		def void setCanIfCtrlDrvNameRef(org.artop.ecuc.autosar430.accessors.Can.CanGeneral object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfCtrlDrvNameRef"], object.getTarget())
			}
		}
		
		
		def List<CanIfCtrlCfg> getCanIfCtrlCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfCtrlCfg")
				}
			}
			return new BasicWrappingEList<CanIfCtrlCfg, GContainer>(filteredContainers, typeof(CanIfCtrlCfg), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg canIfCtrlCfg) {
					canIfCtrlCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfCtrlCfg"))
					super.delegateAdd(canIfCtrlCfg)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg canIfCtrlCfg) {
					canIfCtrlCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfCtrlCfg"))
					super.delegateAdd(index, canIfCtrlCfg)
				}
			}
		}
		
		
		static class CanIfCtrlCfg implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanIfCtrlCfg)){
					return false
				}
				this.target == (object as CanIfCtrlCfg).target
			}
		
			def BigInteger getCanIfCtrlId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfCtrlId"].getBigIntegerValue()
			}
			
			def void setCanIfCtrlId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfCtrlId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfCtrlId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanIfCtrlWakeupSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfCtrlWakeupSupport"].getBooleanValue()
			}
			
			def void setCanIfCtrlWakeupSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfCtrlWakeupSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfCtrlWakeupSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanController getCanIfCtrlCanCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanController), "CanIfCtrlCanCtrlRef")
			}
			
			def void setCanIfCtrlCanCtrlRef(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfCtrlCanCtrlRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class CanIfDispatchCfg implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanIfDispatchCfg)){
				return false
			}
			this.target == (object as CanIfDispatchCfg).target
		}
	
		def String getCanIfDispatchUserCheckTrcvWakeFlagIndicationName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationName"].getStringValue()
		}
		
		def void setCanIfDispatchUserCheckTrcvWakeFlagIndicationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def CanIfDispatchUserCheckTrcvWakeFlagIndicationUL getCanIfDispatchUserCheckTrcvWakeFlagIndicationUL(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationUL"].getCanIfDispatchUserCheckTrcvWakeFlagIndicationULValue()
		}
		
		def void setCanIfDispatchUserCheckTrcvWakeFlagIndicationUL(CanIfDispatchUserCheckTrcvWakeFlagIndicationUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationUL"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCheckTrcvWakeFlagIndicationUL"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanIfDispatchUserCheckTrcvWakeFlagIndicationUL {
			CAN_SM, 
			CDD
		}
		
		def CanIfDispatchUserCheckTrcvWakeFlagIndicationUL getCanIfDispatchUserCheckTrcvWakeFlagIndicationULValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CAN_SM" : CanIfDispatchUserCheckTrcvWakeFlagIndicationUL.CAN_SM
				case "CDD" : CanIfDispatchUserCheckTrcvWakeFlagIndicationUL.CDD
			}
		}
		
		def void setCanIfDispatchUserCheckTrcvWakeFlagIndicationULValue(GParameterValue parameterValue, CanIfDispatchUserCheckTrcvWakeFlagIndicationUL value){
			parameterValue.setValue(value)
		}
		
		def String getCanIfDispatchUserClearTrcvWufFlagIndicationName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationName"].getStringValue()
		}
		
		def void setCanIfDispatchUserClearTrcvWufFlagIndicationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def CanIfDispatchUserClearTrcvWufFlagIndicationUL getCanIfDispatchUserClearTrcvWufFlagIndicationUL(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationUL"].getCanIfDispatchUserClearTrcvWufFlagIndicationULValue()
		}
		
		def void setCanIfDispatchUserClearTrcvWufFlagIndicationUL(CanIfDispatchUserClearTrcvWufFlagIndicationUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationUL"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserClearTrcvWufFlagIndicationUL"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanIfDispatchUserClearTrcvWufFlagIndicationUL {
			CAN_SM, 
			CDD
		}
		
		def CanIfDispatchUserClearTrcvWufFlagIndicationUL getCanIfDispatchUserClearTrcvWufFlagIndicationULValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CAN_SM" : CanIfDispatchUserClearTrcvWufFlagIndicationUL.CAN_SM
				case "CDD" : CanIfDispatchUserClearTrcvWufFlagIndicationUL.CDD
			}
		}
		
		def void setCanIfDispatchUserClearTrcvWufFlagIndicationULValue(GParameterValue parameterValue, CanIfDispatchUserClearTrcvWufFlagIndicationUL value){
			parameterValue.setValue(value)
		}
		
		def String getCanIfDispatchUserConfirmPnAvailabilityName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityName"].getStringValue()
		}
		
		def void setCanIfDispatchUserConfirmPnAvailabilityName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def CanIfDispatchUserConfirmPnAvailabilityUL getCanIfDispatchUserConfirmPnAvailabilityUL(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityUL"].getCanIfDispatchUserConfirmPnAvailabilityULValue()
		}
		
		def void setCanIfDispatchUserConfirmPnAvailabilityUL(CanIfDispatchUserConfirmPnAvailabilityUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityUL"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserConfirmPnAvailabilityUL"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanIfDispatchUserConfirmPnAvailabilityUL {
			CAN_SM, 
			CDD
		}
		
		def CanIfDispatchUserConfirmPnAvailabilityUL getCanIfDispatchUserConfirmPnAvailabilityULValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CAN_SM" : CanIfDispatchUserConfirmPnAvailabilityUL.CAN_SM
				case "CDD" : CanIfDispatchUserConfirmPnAvailabilityUL.CDD
			}
		}
		
		def void setCanIfDispatchUserConfirmPnAvailabilityULValue(GParameterValue parameterValue, CanIfDispatchUserConfirmPnAvailabilityUL value){
			parameterValue.setValue(value)
		}
		
		def String getCanIfDispatchUserCtrlBusOffName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlBusOffName"].getStringValue()
		}
		
		def void setCanIfDispatchUserCtrlBusOffName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlBusOffName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCtrlBusOffName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def CanIfDispatchUserCtrlBusOffUL getCanIfDispatchUserCtrlBusOffUL(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlBusOffUL"].getCanIfDispatchUserCtrlBusOffULValue()
		}
		
		def void setCanIfDispatchUserCtrlBusOffUL(CanIfDispatchUserCtrlBusOffUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlBusOffUL"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCtrlBusOffUL"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanIfDispatchUserCtrlBusOffUL {
			CAN_SM, 
			CDD
		}
		
		def CanIfDispatchUserCtrlBusOffUL getCanIfDispatchUserCtrlBusOffULValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CAN_SM" : CanIfDispatchUserCtrlBusOffUL.CAN_SM
				case "CDD" : CanIfDispatchUserCtrlBusOffUL.CDD
			}
		}
		
		def void setCanIfDispatchUserCtrlBusOffULValue(GParameterValue parameterValue, CanIfDispatchUserCtrlBusOffUL value){
			parameterValue.setValue(value)
		}
		
		def String getCanIfDispatchUserCtrlModeIndicationName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlModeIndicationName"].getStringValue()
		}
		
		def void setCanIfDispatchUserCtrlModeIndicationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlModeIndicationName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCtrlModeIndicationName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def CanIfDispatchUserCtrlModeIndicationUL getCanIfDispatchUserCtrlModeIndicationUL(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlModeIndicationUL"].getCanIfDispatchUserCtrlModeIndicationULValue()
		}
		
		def void setCanIfDispatchUserCtrlModeIndicationUL(CanIfDispatchUserCtrlModeIndicationUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserCtrlModeIndicationUL"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserCtrlModeIndicationUL"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanIfDispatchUserCtrlModeIndicationUL {
			CAN_SM, 
			CDD
		}
		
		def CanIfDispatchUserCtrlModeIndicationUL getCanIfDispatchUserCtrlModeIndicationULValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CAN_SM" : CanIfDispatchUserCtrlModeIndicationUL.CAN_SM
				case "CDD" : CanIfDispatchUserCtrlModeIndicationUL.CDD
			}
		}
		
		def void setCanIfDispatchUserCtrlModeIndicationULValue(GParameterValue parameterValue, CanIfDispatchUserCtrlModeIndicationUL value){
			parameterValue.setValue(value)
		}
		
		def String getCanIfDispatchUserTrcvModeIndicationName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserTrcvModeIndicationName"].getStringValue()
		}
		
		def void setCanIfDispatchUserTrcvModeIndicationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserTrcvModeIndicationName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserTrcvModeIndicationName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def CanIfDispatchUserTrcvModeIndicationUL getCanIfDispatchUserTrcvModeIndicationUL(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserTrcvModeIndicationUL"].getCanIfDispatchUserTrcvModeIndicationULValue()
		}
		
		def void setCanIfDispatchUserTrcvModeIndicationUL(CanIfDispatchUserTrcvModeIndicationUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserTrcvModeIndicationUL"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserTrcvModeIndicationUL"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanIfDispatchUserTrcvModeIndicationUL {
			CAN_SM, 
			CDD
		}
		
		def CanIfDispatchUserTrcvModeIndicationUL getCanIfDispatchUserTrcvModeIndicationULValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CAN_SM" : CanIfDispatchUserTrcvModeIndicationUL.CAN_SM
				case "CDD" : CanIfDispatchUserTrcvModeIndicationUL.CDD
			}
		}
		
		def void setCanIfDispatchUserTrcvModeIndicationULValue(GParameterValue parameterValue, CanIfDispatchUserTrcvModeIndicationUL value){
			parameterValue.setValue(value)
		}
		
		def String getCanIfDispatchUserValidateWakeupEventName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserValidateWakeupEventName"].getStringValue()
		}
		
		def void setCanIfDispatchUserValidateWakeupEventName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserValidateWakeupEventName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserValidateWakeupEventName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def CanIfDispatchUserValidateWakeupEventUL getCanIfDispatchUserValidateWakeupEventUL(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserValidateWakeupEventUL"].getCanIfDispatchUserValidateWakeupEventULValue()
		}
		
		def void setCanIfDispatchUserValidateWakeupEventUL(CanIfDispatchUserValidateWakeupEventUL value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDispatchUserValidateWakeupEventUL"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDispatchUserValidateWakeupEventUL"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanIfDispatchUserValidateWakeupEventUL {
			CDD, 
			ECUM
		}
		
		def CanIfDispatchUserValidateWakeupEventUL getCanIfDispatchUserValidateWakeupEventULValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CDD" : CanIfDispatchUserValidateWakeupEventUL.CDD
				case "ECUM" : CanIfDispatchUserValidateWakeupEventUL.ECUM
			}
		}
		
		def void setCanIfDispatchUserValidateWakeupEventULValue(GParameterValue parameterValue, CanIfDispatchUserValidateWakeupEventUL value){
			parameterValue.setValue(value)
		}
		
		
		
		
	}
	static class CanIfInitCfg implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanIfInitCfg)){
				return false
			}
			this.target == (object as CanIfInitCfg).target
		}
	
		def String getCanIfInitCfgSet(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfInitCfgSet"].getStringValue()
		}
		
		def void setCanIfInitCfgSet(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfInitCfgSet"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfInitCfgSet"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCanIfMaxBufferSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxBufferSize"].getBigIntegerValue()
		}
		
		def void setCanIfMaxBufferSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxBufferSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfMaxBufferSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCanIfMaxRxPduCfg(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxRxPduCfg"].getBigIntegerValue()
		}
		
		def void setCanIfMaxRxPduCfg(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxRxPduCfg"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfMaxRxPduCfg"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCanIfMaxTxPduCfg(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxTxPduCfg"].getBigIntegerValue()
		}
		
		def void setCanIfMaxTxPduCfg(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMaxTxPduCfg"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfMaxTxPduCfg"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CanIfBufferCfg> getCanIfBufferCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfBufferCfg")
				}
			}
			return new BasicWrappingEList<CanIfBufferCfg, GContainer>(filteredContainers, typeof(CanIfBufferCfg), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfBufferCfg canIfBufferCfg) {
					canIfBufferCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfBufferCfg"))
					super.delegateAdd(canIfBufferCfg)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfBufferCfg canIfBufferCfg) {
					canIfBufferCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfBufferCfg"))
					super.delegateAdd(index, canIfBufferCfg)
				}
			}
		}
		
		def List<CanIfInitHohCfg> getCanIfInitHohCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfInitHohCfg")
				}
			}
			return new BasicWrappingEList<CanIfInitHohCfg, GContainer>(filteredContainers, typeof(CanIfInitHohCfg), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg canIfInitHohCfg) {
					canIfInitHohCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfInitHohCfg"))
					super.delegateAdd(canIfInitHohCfg)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg canIfInitHohCfg) {
					canIfInitHohCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfInitHohCfg"))
					super.delegateAdd(index, canIfInitHohCfg)
				}
			}
		}
		
		def List<CanIfRxPduCfg> getCanIfRxPduCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfRxPduCfg")
				}
			}
			return new BasicWrappingEList<CanIfRxPduCfg, GContainer>(filteredContainers, typeof(CanIfRxPduCfg), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfRxPduCfg canIfRxPduCfg) {
					canIfRxPduCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfRxPduCfg"))
					super.delegateAdd(canIfRxPduCfg)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfRxPduCfg canIfRxPduCfg) {
					canIfRxPduCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfRxPduCfg"))
					super.delegateAdd(index, canIfRxPduCfg)
				}
			}
		}
		
		def List<CanIfTxPduCfg> getCanIfTxPduCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfTxPduCfg")
				}
			}
			return new BasicWrappingEList<CanIfTxPduCfg, GContainer>(filteredContainers, typeof(CanIfTxPduCfg), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfTxPduCfg canIfTxPduCfg) {
					canIfTxPduCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfTxPduCfg"))
					super.delegateAdd(canIfTxPduCfg)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfTxPduCfg canIfTxPduCfg) {
					canIfTxPduCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfTxPduCfg"))
					super.delegateAdd(index, canIfTxPduCfg)
				}
			}
		}
		
		
		static class CanIfBufferCfg implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanIfBufferCfg)){
					return false
				}
				this.target == (object as CanIfBufferCfg).target
			}
		
			def BigInteger getCanIfBufferSize(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfBufferSize"].getBigIntegerValue()
			}
			
			def void setCanIfBufferSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfBufferSize"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfBufferSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHthCfg getCanIfBufferHthRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHthCfg), "CanIfBufferHthRef")
			}
			
			def void setCanIfBufferHthRef(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHthCfg object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfBufferHthRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class CanIfInitHohCfg implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanIfInitHohCfg)){
					return false
				}
				this.target == (object as CanIfInitHohCfg).target
			}
		
			
			
			def List<CanIfHrhCfg> getCanIfHrhCfgs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanIfHrhCfg")
					}
				}
				return new BasicWrappingEList<CanIfHrhCfg, GContainer>(filteredContainers, typeof(CanIfHrhCfg), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg canIfHrhCfg) {
						canIfHrhCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfHrhCfg"))
						super.delegateAdd(canIfHrhCfg)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg canIfHrhCfg) {
						canIfHrhCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfHrhCfg"))
						super.delegateAdd(index, canIfHrhCfg)
					}
				}
			}
			
			def List<CanIfHthCfg> getCanIfHthCfgs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanIfHthCfg")
					}
				}
				return new BasicWrappingEList<CanIfHthCfg, GContainer>(filteredContainers, typeof(CanIfHthCfg), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHthCfg canIfHthCfg) {
						canIfHthCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfHthCfg"))
						super.delegateAdd(canIfHthCfg)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHthCfg canIfHthCfg) {
						canIfHthCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfHthCfg"))
						super.delegateAdd(index, canIfHthCfg)
					}
				}
			}
			
			
			static class CanIfHrhCfg implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanIfHrhCfg)){
						return false
					}
					this.target == (object as CanIfHrhCfg).target
				}
			
				def Boolean getCanIfHrhSoftwareFilter(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhSoftwareFilter"].getBooleanValue()
				}
				
				def void setCanIfHrhSoftwareFilter(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhSoftwareFilter"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhSoftwareFilter"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				def org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg getCanIfHrhCanCtrlIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg), "CanIfHrhCanCtrlIdRef")
				}
				
				def void setCanIfHrhCanCtrlIdRef(org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfHrhCanCtrlIdRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject getCanIfHrhIdSymRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject), "CanIfHrhIdSymRef")
				}
				
				def void setCanIfHrhIdSymRef(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfHrhIdSymRef"], object.getTarget())
					}
				}
				
				
				def List<CanIfHrhRangeCfg> getCanIfHrhRangeCfgs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CanIfHrhRangeCfg")
						}
					}
					return new BasicWrappingEList<CanIfHrhRangeCfg, GContainer>(filteredContainers, typeof(CanIfHrhRangeCfg), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg.CanIfHrhRangeCfg canIfHrhRangeCfg) {
							canIfHrhRangeCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfHrhRangeCfg"))
							super.delegateAdd(canIfHrhRangeCfg)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg.CanIfHrhRangeCfg canIfHrhRangeCfg) {
							canIfHrhRangeCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfHrhRangeCfg"))
							super.delegateAdd(index, canIfHrhRangeCfg)
						}
					}
				}
				
				
				static class CanIfHrhRangeCfg implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanIfHrhRangeCfg)){
							return false
						}
						this.target == (object as CanIfHrhRangeCfg).target
					}
				
					def BigInteger getCanIfHrhRangeBaseId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeBaseId"].getBigIntegerValue()
					}
					
					def void setCanIfHrhRangeBaseId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeBaseId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeBaseId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getCanIfHrhRangeMask(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeMask"].getBigIntegerValue()
					}
					
					def void setCanIfHrhRangeMask(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeMask"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeMask"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getCanIfHrhRangeRxPduLowerCanId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduLowerCanId"].getBigIntegerValue()
					}
					
					def void setCanIfHrhRangeRxPduLowerCanId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduLowerCanId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeRxPduLowerCanId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def CanIfHrhRangeRxPduRangeCanIdType getCanIfHrhRangeRxPduRangeCanIdType(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduRangeCanIdType"].getCanIfHrhRangeRxPduRangeCanIdTypeValue()
					}
					
					def void setCanIfHrhRangeRxPduRangeCanIdType(CanIfHrhRangeRxPduRangeCanIdType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduRangeCanIdType"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeRxPduRangeCanIdType"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum CanIfHrhRangeRxPduRangeCanIdType {
						EXTENDED, 
						STANDARD
					}
					
					def CanIfHrhRangeRxPduRangeCanIdType getCanIfHrhRangeRxPduRangeCanIdTypeValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "EXTENDED" : CanIfHrhRangeRxPduRangeCanIdType.EXTENDED
							case "STANDARD" : CanIfHrhRangeRxPduRangeCanIdType.STANDARD
						}
					}
					
					def void setCanIfHrhRangeRxPduRangeCanIdTypeValue(GParameterValue parameterValue, CanIfHrhRangeRxPduRangeCanIdType value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getCanIfHrhRangeRxPduUpperCanId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduUpperCanId"].getBigIntegerValue()
					}
					
					def void setCanIfHrhRangeRxPduUpperCanId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfHrhRangeRxPduUpperCanId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfHrhRangeRxPduUpperCanId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
			static class CanIfHthCfg implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanIfHthCfg)){
						return false
					}
					this.target == (object as CanIfHthCfg).target
				}
			
				
				def org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg getCanIfHthCanCtrlIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg), "CanIfHthCanCtrlIdRef")
				}
				
				def void setCanIfHthCanCtrlIdRef(org.artop.ecuc.autosar430.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfHthCanCtrlIdRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject getCanIfHthIdSymRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject), "CanIfHthIdSymRef")
				}
				
				def void setCanIfHthIdSymRef(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfHthIdSymRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CanIfRxPduCfg implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanIfRxPduCfg)){
					return false
				}
				this.target == (object as CanIfRxPduCfg).target
			}
		
			def BigInteger getCanIfRxPduCanId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanId"].getBigIntegerValue()
			}
			
			def void setCanIfRxPduCanId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanIfRxPduCanIdMask(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdMask"].getBigIntegerValue()
			}
			
			def void setCanIfRxPduCanIdMask(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdMask"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanIdMask"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CanIfRxPduCanIdType getCanIfRxPduCanIdType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdType"].getCanIfRxPduCanIdTypeValue()
			}
			
			def void setCanIfRxPduCanIdType(CanIfRxPduCanIdType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanIdType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanIfRxPduCanIdType {
				EXTENDED_CAN, 
				EXTENDED_FD_CAN, 
				EXTENDED_NO_FD_CAN, 
				STANDARD_CAN, 
				STANDARD_FD_CAN, 
				STANDARD_NO_FD_CAN
			}
			
			def CanIfRxPduCanIdType getCanIfRxPduCanIdTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "EXTENDED_CAN" : CanIfRxPduCanIdType.EXTENDED_CAN
					case "EXTENDED_FD_CAN" : CanIfRxPduCanIdType.EXTENDED_FD_CAN
					case "EXTENDED_NO_FD_CAN" : CanIfRxPduCanIdType.EXTENDED_NO_FD_CAN
					case "STANDARD_CAN" : CanIfRxPduCanIdType.STANDARD_CAN
					case "STANDARD_FD_CAN" : CanIfRxPduCanIdType.STANDARD_FD_CAN
					case "STANDARD_NO_FD_CAN" : CanIfRxPduCanIdType.STANDARD_NO_FD_CAN
				}
			}
			
			def void setCanIfRxPduCanIdTypeValue(GParameterValue parameterValue, CanIfRxPduCanIdType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanIfRxPduDataLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduDataLength"].getBigIntegerValue()
			}
			
			def void setCanIfRxPduDataLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduDataLength"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduDataLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanIfRxPduId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduId"].getBigIntegerValue()
			}
			
			def void setCanIfRxPduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanIfRxPduReadData(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduReadData"].getBooleanValue()
			}
			
			def void setCanIfRxPduReadData(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduReadData"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduReadData"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanIfRxPduReadNotifyStatus(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduReadNotifyStatus"].getBooleanValue()
			}
			
			def void setCanIfRxPduReadNotifyStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduReadNotifyStatus"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduReadNotifyStatus"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def String getCanIfRxPduUserRxIndicationName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduUserRxIndicationName"].getStringValue()
			}
			
			def void setCanIfRxPduUserRxIndicationName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduUserRxIndicationName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduUserRxIndicationName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CanIfRxPduUserRxIndicationUL getCanIfRxPduUserRxIndicationUL(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduUserRxIndicationUL"].getCanIfRxPduUserRxIndicationULValue()
			}
			
			def void setCanIfRxPduUserRxIndicationUL(CanIfRxPduUserRxIndicationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduUserRxIndicationUL"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduUserRxIndicationUL"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanIfRxPduUserRxIndicationUL {
				CAN_NM, 
				CAN_TP, 
				CAN_TSYN, 
				CDD, 
				J1939NM, 
				J1939TP, 
				PDUR, 
				XCP
			}
			
			def CanIfRxPduUserRxIndicationUL getCanIfRxPduUserRxIndicationULValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CAN_NM" : CanIfRxPduUserRxIndicationUL.CAN_NM
					case "CAN_TP" : CanIfRxPduUserRxIndicationUL.CAN_TP
					case "CAN_TSYN" : CanIfRxPduUserRxIndicationUL.CAN_TSYN
					case "CDD" : CanIfRxPduUserRxIndicationUL.CDD
					case "J1939NM" : CanIfRxPduUserRxIndicationUL.J1939NM
					case "J1939TP" : CanIfRxPduUserRxIndicationUL.J1939TP
					case "PDUR" : CanIfRxPduUserRxIndicationUL.PDUR
					case "XCP" : CanIfRxPduUserRxIndicationUL.XCP
				}
			}
			
			def void setCanIfRxPduUserRxIndicationULValue(GParameterValue parameterValue, CanIfRxPduUserRxIndicationUL value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg getCanIfRxPduHrhIdRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg), "CanIfRxPduHrhIdRef")
			}
			
			def void setCanIfRxPduHrhIdRef(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfInitHohCfg.CanIfHrhCfg object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfRxPduHrhIdRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanIfRxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanIfRxPduRef")
			}
			
			def void setCanIfRxPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfRxPduRef"], object.getTarget())
				}
			}
			
			
			def CanIfRxPduCanIdRange getCanIfRxPduCanIdRange(){
				containerValue.getByType(typeof(CanIfRxPduCanIdRange))
			}
			
			def void setCanIfRxPduCanIdRange(CanIfRxPduCanIdRange canIfRxPduCanIdRange){
				val GContainer subContainer = canIfRxPduCanIdRange.getTarget()
				containerValue.setContainer(subContainer, "CanIfRxPduCanIdRange")
			}
			
			def CanIfTTRxFrameTriggering getCanIfTTRxFrameTriggering(){
				containerValue.getByType(typeof(CanIfTTRxFrameTriggering))
			}
			
			def void setCanIfTTRxFrameTriggering(CanIfTTRxFrameTriggering canIfTTRxFrameTriggering){
				val GContainer subContainer = canIfTTRxFrameTriggering.getTarget()
				containerValue.setContainer(subContainer, "CanIfTTRxFrameTriggering")
			}
			
			
			static class CanIfRxPduCanIdRange implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanIfRxPduCanIdRange)){
						return false
					}
					this.target == (object as CanIfRxPduCanIdRange).target
				}
			
				def BigInteger getCanIfRxPduCanIdRangeLowerCanId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdRangeLowerCanId"].getBigIntegerValue()
				}
				
				def void setCanIfRxPduCanIdRangeLowerCanId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdRangeLowerCanId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanIdRangeLowerCanId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanIfRxPduCanIdRangeUpperCanId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdRangeUpperCanId"].getBigIntegerValue()
				}
				
				def void setCanIfRxPduCanIdRangeUpperCanId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfRxPduCanIdRangeUpperCanId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfRxPduCanIdRangeUpperCanId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class CanIfTTRxFrameTriggering implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanIfTTRxFrameTriggering)){
						return false
					}
					this.target == (object as CanIfTTRxFrameTriggering).target
				}
			
				def BigInteger getCanTTRxJoblistTimeMark(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTRxJoblistTimeMark"].getBigIntegerValue()
				}
				
				def void setCanTTRxJoblistTimeMark(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTRxJoblistTimeMark"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTRxJoblistTimeMark"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger getCanIfTTRxHwObjectTriggerIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger), "CanIfTTRxHwObjectTriggerIdRef")
				}
				
				def void setCanIfTTRxHwObjectTriggerIdRef(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTTRxHwObjectTriggerIdRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CanIfTxPduCfg implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanIfTxPduCfg)){
					return false
				}
				this.target == (object as CanIfTxPduCfg).target
			}
		
			def BigInteger getCanIfTxPduCanId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanId"].getBigIntegerValue()
			}
			
			def void setCanIfTxPduCanId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduCanId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanIfTxPduCanIdMask(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanIdMask"].getBigIntegerValue()
			}
			
			def void setCanIfTxPduCanIdMask(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanIdMask"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduCanIdMask"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CanIfTxPduCanIdType getCanIfTxPduCanIdType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanIdType"].getCanIfTxPduCanIdTypeValue()
			}
			
			def void setCanIfTxPduCanIdType(CanIfTxPduCanIdType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduCanIdType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduCanIdType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanIfTxPduCanIdType {
				EXTENDED_CAN, 
				EXTENDED_FD_CAN, 
				STANDARD_CAN, 
				STANDARD_FD_CAN
			}
			
			def CanIfTxPduCanIdType getCanIfTxPduCanIdTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "EXTENDED_CAN" : CanIfTxPduCanIdType.EXTENDED_CAN
					case "EXTENDED_FD_CAN" : CanIfTxPduCanIdType.EXTENDED_FD_CAN
					case "STANDARD_CAN" : CanIfTxPduCanIdType.STANDARD_CAN
					case "STANDARD_FD_CAN" : CanIfTxPduCanIdType.STANDARD_FD_CAN
				}
			}
			
			def void setCanIfTxPduCanIdTypeValue(GParameterValue parameterValue, CanIfTxPduCanIdType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanIfTxPduId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduId"].getBigIntegerValue()
			}
			
			def void setCanIfTxPduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanIfTxPduPnFilterPdu(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduPnFilterPdu"].getBooleanValue()
			}
			
			def void setCanIfTxPduPnFilterPdu(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduPnFilterPdu"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduPnFilterPdu"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanIfTxPduReadNotifyStatus(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduReadNotifyStatus"].getBooleanValue()
			}
			
			def void setCanIfTxPduReadNotifyStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduReadNotifyStatus"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduReadNotifyStatus"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanIfTxPduTriggerTransmit(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduTriggerTransmit"].getBooleanValue()
			}
			
			def void setCanIfTxPduTriggerTransmit(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduTriggerTransmit"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduTriggerTransmit"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def CanIfTxPduType getCanIfTxPduType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduType"].getCanIfTxPduTypeValue()
			}
			
			def void setCanIfTxPduType(CanIfTxPduType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanIfTxPduType {
				DYNAMIC, 
				STATIC
			}
			
			def CanIfTxPduType getCanIfTxPduTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DYNAMIC" : CanIfTxPduType.DYNAMIC
					case "STATIC" : CanIfTxPduType.STATIC
				}
			}
			
			def void setCanIfTxPduTypeValue(GParameterValue parameterValue, CanIfTxPduType value){
				parameterValue.setValue(value)
			}
			
			def String getCanIfTxPduUserTriggerTransmitName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTriggerTransmitName"].getStringValue()
			}
			
			def void setCanIfTxPduUserTriggerTransmitName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTriggerTransmitName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduUserTriggerTransmitName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getCanIfTxPduUserTxConfirmationName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTxConfirmationName"].getStringValue()
			}
			
			def void setCanIfTxPduUserTxConfirmationName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTxConfirmationName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduUserTxConfirmationName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CanIfTxPduUserTxConfirmationUL getCanIfTxPduUserTxConfirmationUL(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTxConfirmationUL"].getCanIfTxPduUserTxConfirmationULValue()
			}
			
			def void setCanIfTxPduUserTxConfirmationUL(CanIfTxPduUserTxConfirmationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxPduUserTxConfirmationUL"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxPduUserTxConfirmationUL"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanIfTxPduUserTxConfirmationUL {
				CAN_NM, 
				CAN_TP, 
				CAN_TSYN, 
				CDD, 
				J1939NM, 
				J1939TP, 
				PDUR, 
				XCP
			}
			
			def CanIfTxPduUserTxConfirmationUL getCanIfTxPduUserTxConfirmationULValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CAN_NM" : CanIfTxPduUserTxConfirmationUL.CAN_NM
					case "CAN_TP" : CanIfTxPduUserTxConfirmationUL.CAN_TP
					case "CAN_TSYN" : CanIfTxPduUserTxConfirmationUL.CAN_TSYN
					case "CDD" : CanIfTxPduUserTxConfirmationUL.CDD
					case "J1939NM" : CanIfTxPduUserTxConfirmationUL.J1939NM
					case "J1939TP" : CanIfTxPduUserTxConfirmationUL.J1939TP
					case "PDUR" : CanIfTxPduUserTxConfirmationUL.PDUR
					case "XCP" : CanIfTxPduUserTxConfirmationUL.XCP
				}
			}
			
			def void setCanIfTxPduUserTxConfirmationULValue(GParameterValue parameterValue, CanIfTxPduUserTxConfirmationUL value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfBufferCfg getCanIfTxPduBufferRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfBufferCfg), "CanIfTxPduBufferRef")
			}
			
			def void setCanIfTxPduBufferRef(org.artop.ecuc.autosar430.accessors.CanIf.CanIfInitCfg.CanIfBufferCfg object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTxPduBufferRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanIfTxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanIfTxPduRef")
			}
			
			def void setCanIfTxPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTxPduRef"], object.getTarget())
				}
			}
			
			
			def CanIfTTTxFrameTriggering getCanIfTTTxFrameTriggering(){
				containerValue.getByType(typeof(CanIfTTTxFrameTriggering))
			}
			
			def void setCanIfTTTxFrameTriggering(CanIfTTTxFrameTriggering canIfTTTxFrameTriggering){
				val GContainer subContainer = canIfTTTxFrameTriggering.getTarget()
				containerValue.setContainer(subContainer, "CanIfTTTxFrameTriggering")
			}
			
			
			static class CanIfTTTxFrameTriggering implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanIfTTTxFrameTriggering)){
						return false
					}
					this.target == (object as CanIfTTTxFrameTriggering).target
				}
			
				def BigInteger getCanIfTTTxJoblistTimeMark(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTTxJoblistTimeMark"].getBigIntegerValue()
				}
				
				def void setCanIfTTTxJoblistTimeMark(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTTxJoblistTimeMark"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTTTxJoblistTimeMark"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger getCanIfTTTxHwObjectTriggerIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger), "CanIfTTTxHwObjectTriggerIdRef")
				}
				
				def void setCanIfTTTxHwObjectTriggerIdRef(org.artop.ecuc.autosar430.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTTTxHwObjectTriggerIdRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class CanIfPrivateCfg implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanIfPrivateCfg)){
				return false
			}
			this.target == (object as CanIfPrivateCfg).target
		}
	
		def Boolean getCanIfFixedBuffer(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfFixedBuffer"].getBooleanValue()
		}
		
		def void setCanIfFixedBuffer(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfFixedBuffer"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfFixedBuffer"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPrivateDataLengthCheck(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPrivateDataLengthCheck"].getBooleanValue()
		}
		
		def void setCanIfPrivateDataLengthCheck(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPrivateDataLengthCheck"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPrivateDataLengthCheck"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def CanIfPrivateSoftwareFilterType getCanIfPrivateSoftwareFilterType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPrivateSoftwareFilterType"].getCanIfPrivateSoftwareFilterTypeValue()
		}
		
		def void setCanIfPrivateSoftwareFilterType(CanIfPrivateSoftwareFilterType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPrivateSoftwareFilterType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPrivateSoftwareFilterType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanIfPrivateSoftwareFilterType {
			BINARY, 
			INDEX, 
			LINEAR, 
			TABLE
		}
		
		def CanIfPrivateSoftwareFilterType getCanIfPrivateSoftwareFilterTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "BINARY" : CanIfPrivateSoftwareFilterType.BINARY
				case "INDEX" : CanIfPrivateSoftwareFilterType.INDEX
				case "LINEAR" : CanIfPrivateSoftwareFilterType.LINEAR
				case "TABLE" : CanIfPrivateSoftwareFilterType.TABLE
			}
		}
		
		def void setCanIfPrivateSoftwareFilterTypeValue(GParameterValue parameterValue, CanIfPrivateSoftwareFilterType value){
			parameterValue.setValue(value)
		}
		
		def Boolean getCanIfSupportTTCAN(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfSupportTTCAN"].getBooleanValue()
		}
		
		def void setCanIfSupportTTCAN(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfSupportTTCAN"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfSupportTTCAN"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def CanIfTTGeneral getCanIfTTGeneral(){
			containerValue.getByType(typeof(CanIfTTGeneral))
		}
		
		def void setCanIfTTGeneral(CanIfTTGeneral canIfTTGeneral){
			val GContainer subContainer = canIfTTGeneral.getTarget()
			containerValue.setContainer(subContainer, "CanIfTTGeneral")
		}
		
		
		static class CanIfTTGeneral implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanIfTTGeneral)){
					return false
				}
				this.target == (object as CanIfTTGeneral).target
			}
		
			def Boolean getCanIfTTJoblist(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTJoblist"].getBooleanValue()
			}
			
			def void setCanIfTTJoblist(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTJoblist"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTTJoblist"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getCanIfTTMaxIsrDelay(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTMaxIsrDelay"].getBigIntegerValue()
			}
			
			def void setCanIfTTMaxIsrDelay(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTTMaxIsrDelay"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTTMaxIsrDelay"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def CanIfTTDemEventParameterRefs getCanIfTTDemEventParameterRefs(){
				containerValue.getByType(typeof(CanIfTTDemEventParameterRefs))
			}
			
			def void setCanIfTTDemEventParameterRefs(CanIfTTDemEventParameterRefs canIfTTDemEventParameterRefs){
				val GContainer subContainer = canIfTTDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "CanIfTTDemEventParameterRefs")
			}
			
			
			static class CanIfTTDemEventParameterRefs implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanIfTTDemEventParameterRefs)){
						return false
					}
					this.target == (object as CanIfTTDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getCANIF_TT_E_JLE_SYNC(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "CANIF_TT_E_JLE_SYNC")
				}
				
				def void setCANIF_TT_E_JLE_SYNC(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CANIF_TT_E_JLE_SYNC"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class CanIfPublicCfg implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanIfPublicCfg)){
				return false
			}
			this.target == (object as CanIfPublicCfg).target
		}
	
		def Boolean getCanIfDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDevErrorDetect"].getBooleanValue()
		}
		
		def void setCanIfDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfMetaDataSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMetaDataSupport"].getBooleanValue()
		}
		
		def void setCanIfMetaDataSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfMetaDataSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfMetaDataSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicCancelTransmitSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicCancelTransmitSupport"].getBooleanValue()
		}
		
		def void setCanIfPublicCancelTransmitSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicCancelTransmitSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicCancelTransmitSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
		
		def CanIfPublicHandleTypeEnum getCanIfPublicHandleTypeEnum(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicHandleTypeEnum"].getCanIfPublicHandleTypeEnumValue()
		}
		
		def void setCanIfPublicHandleTypeEnum(CanIfPublicHandleTypeEnum value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicHandleTypeEnum"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicHandleTypeEnum"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanIfPublicHandleTypeEnum {
			UINT16, 
			UINT8
		}
		
		def CanIfPublicHandleTypeEnum getCanIfPublicHandleTypeEnumValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "UINT16" : CanIfPublicHandleTypeEnum.UINT16
				case "UINT8" : CanIfPublicHandleTypeEnum.UINT8
			}
		}
		
		def void setCanIfPublicHandleTypeEnumValue(GParameterValue parameterValue, CanIfPublicHandleTypeEnum value){
			parameterValue.setValue(value)
		}
		
		def Boolean getCanIfPublicIcomSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicIcomSupport"].getBooleanValue()
		}
		
		def void setCanIfPublicIcomSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicIcomSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicIcomSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicMultipleDrvSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicMultipleDrvSupport"].getBooleanValue()
		}
		
		def void setCanIfPublicMultipleDrvSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicMultipleDrvSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicMultipleDrvSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicPnSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicPnSupport"].getBooleanValue()
		}
		
		def void setCanIfPublicPnSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicPnSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicPnSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicReadRxPduDataApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadRxPduDataApi"].getBooleanValue()
		}
		
		def void setCanIfPublicReadRxPduDataApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadRxPduDataApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicReadRxPduDataApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicReadRxPduNotifyStatusApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadRxPduNotifyStatusApi"].getBooleanValue()
		}
		
		def void setCanIfPublicReadRxPduNotifyStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadRxPduNotifyStatusApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicReadRxPduNotifyStatusApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicReadTxPduNotifyStatusApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadTxPduNotifyStatusApi"].getBooleanValue()
		}
		
		def void setCanIfPublicReadTxPduNotifyStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicReadTxPduNotifyStatusApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicReadTxPduNotifyStatusApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicSetDynamicTxIdApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicSetDynamicTxIdApi"].getBooleanValue()
		}
		
		def void setCanIfPublicSetDynamicTxIdApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicSetDynamicTxIdApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicSetDynamicTxIdApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicTxBuffering(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicTxBuffering"].getBooleanValue()
		}
		
		def void setCanIfPublicTxBuffering(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicTxBuffering"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicTxBuffering"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicTxConfirmPollingSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicTxConfirmPollingSupport"].getBooleanValue()
		}
		
		def void setCanIfPublicTxConfirmPollingSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicTxConfirmPollingSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicTxConfirmPollingSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicWakeupCheckValidByNM(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicWakeupCheckValidByNM"].getBooleanValue()
		}
		
		def void setCanIfPublicWakeupCheckValidByNM(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicWakeupCheckValidByNM"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicWakeupCheckValidByNM"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfPublicWakeupCheckValidSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicWakeupCheckValidSupport"].getBooleanValue()
		}
		
		def void setCanIfPublicWakeupCheckValidSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfPublicWakeupCheckValidSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfPublicWakeupCheckValidSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfSetBaudrateApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfSetBaudrateApi"].getBooleanValue()
		}
		
		def void setCanIfSetBaudrateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfSetBaudrateApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfSetBaudrateApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfTriggerTransmitSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTriggerTransmitSupport"].getBooleanValue()
		}
		
		def void setCanIfTriggerTransmitSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTriggerTransmitSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTriggerTransmitSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfTxOfflineActiveSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxOfflineActiveSupport"].getBooleanValue()
		}
		
		def void setCanIfTxOfflineActiveSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTxOfflineActiveSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTxOfflineActiveSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfVersionInfoApi"].getBooleanValue()
		}
		
		def void setCanIfVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanIfWakeupSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfWakeupSupport"].getBooleanValue()
		}
		
		def void setCanIfWakeupSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfWakeupSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfWakeupSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class CanIfTrcvDrvCfg implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanIfTrcvDrvCfg)){
				return false
			}
			this.target == (object as CanIfTrcvDrvCfg).target
		}
	
		
		
		def List<CanIfTrcvCfg> getCanIfTrcvCfgs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanIfTrcvCfg")
				}
			}
			return new BasicWrappingEList<CanIfTrcvCfg, GContainer>(filteredContainers, typeof(CanIfTrcvCfg), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.CanIf.CanIfTrcvDrvCfg.CanIfTrcvCfg canIfTrcvCfg) {
					canIfTrcvCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfTrcvCfg"))
					super.delegateAdd(canIfTrcvCfg)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.CanIf.CanIfTrcvDrvCfg.CanIfTrcvCfg canIfTrcvCfg) {
					canIfTrcvCfg.target?.gSetDefinition(containerValue.getContainerDefinition("CanIfTrcvCfg"))
					super.delegateAdd(index, canIfTrcvCfg)
				}
			}
		}
		
		
		static class CanIfTrcvCfg implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanIfTrcvCfg)){
					return false
				}
				this.target == (object as CanIfTrcvCfg).target
			}
		
			def BigInteger getCanIfTrcvId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTrcvId"].getBigIntegerValue()
			}
			
			def void setCanIfTrcvId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTrcvId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTrcvId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanIfTrcvWakeupSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTrcvWakeupSupport"].getBooleanValue()
			}
			
			def void setCanIfTrcvWakeupSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIfTrcvWakeupSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIfTrcvWakeupSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar430.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel getCanIfTrcvCanTrcvRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel), "CanIfTrcvCanTrcvRef")
			}
			
			def void setCanIfTrcvCanTrcvRef(org.artop.ecuc.autosar430.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIfTrcvCanTrcvRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof CanIf)){
			return false
		}
		this.target == (object as CanIf).target
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
