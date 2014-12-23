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

class Crc implements IWrapper<GModuleConfiguration> {
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
	
	def CrcGeneral getCrcGeneral(){
		moduleConfiguration.getByType(typeof(CrcGeneral))
	}
	
	def void setCrcGeneral(CrcGeneral crcGeneral){
		val GContainer container = crcGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "CrcGeneral")
	}
	
	static class CrcGeneral implements IWrapper<GContainer> {
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
		
		def Crc16Mode getCrc16Mode(){
			getCrc16ModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc16Mode"])
		}
		
		def void setCrc16Mode(Crc16Mode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc16Mode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "Crc16Mode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum Crc16Mode {
			CRC_16_HARDWARE, 
			CRC_16_RUNTIME, 
			CRC_16_TABLE
		}
			
		def Crc16Mode getCrc16ModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CRC_16_HARDWARE" : Crc16Mode.CRC_16_HARDWARE
				case "CRC_16_RUNTIME" : Crc16Mode.CRC_16_RUNTIME
				case "CRC_16_TABLE" : Crc16Mode.CRC_16_TABLE
			}
		}
		
		def void setCrc16ModeValue(GParameterValue paramValue, Crc16Mode value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Crc32Mode getCrc32Mode(){
			getCrc32ModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc32Mode"])
		}
		
		def void setCrc32Mode(Crc32Mode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc32Mode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "Crc32Mode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum Crc32Mode {
			CRC_32_HARDWARE, 
			CRC_32_RUNTIME, 
			CRC_32_TABLE
		}
			
		def Crc32Mode getCrc32ModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CRC_32_HARDWARE" : Crc32Mode.CRC_32_HARDWARE
				case "CRC_32_RUNTIME" : Crc32Mode.CRC_32_RUNTIME
				case "CRC_32_TABLE" : Crc32Mode.CRC_32_TABLE
			}
		}
		
		def void setCrc32ModeValue(GParameterValue paramValue, Crc32Mode value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Crc32P4Mode getCrc32P4Mode(){
			getCrc32P4ModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc32P4Mode"])
		}
		
		def void setCrc32P4Mode(Crc32P4Mode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc32P4Mode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "Crc32P4Mode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum Crc32P4Mode {
			CRC_32P4_HARDWARE, 
			CRC_32P4_RUNTIME, 
			CRC_32P4_TABLE
		}
			
		def Crc32P4Mode getCrc32P4ModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CRC_32P4_HARDWARE" : Crc32P4Mode.CRC_32P4_HARDWARE
				case "CRC_32P4_RUNTIME" : Crc32P4Mode.CRC_32P4_RUNTIME
				case "CRC_32P4_TABLE" : Crc32P4Mode.CRC_32P4_TABLE
			}
		}
		
		def void setCrc32P4ModeValue(GParameterValue paramValue, Crc32P4Mode value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Crc8H2FMode getCrc8H2FMode(){
			getCrc8H2FModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc8H2FMode"])
		}
		
		def void setCrc8H2FMode(Crc8H2FMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc8H2FMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "Crc8H2FMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum Crc8H2FMode {
			CRC_8H2F_HARDWARE, 
			CRC_8H2F_RUNTIME, 
			CRC_8H2F_TABLE
		}
			
		def Crc8H2FMode getCrc8H2FModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CRC_8H2F_HARDWARE" : Crc8H2FMode.CRC_8H2F_HARDWARE
				case "CRC_8H2F_RUNTIME" : Crc8H2FMode.CRC_8H2F_RUNTIME
				case "CRC_8H2F_TABLE" : Crc8H2FMode.CRC_8H2F_TABLE
			}
		}
		
		def void setCrc8H2FModeValue(GParameterValue paramValue, Crc8H2FMode value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Crc8Mode getCrc8Mode(){
			getCrc8ModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc8Mode"])
		}
		
		def void setCrc8Mode(Crc8Mode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "Crc8Mode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "Crc8Mode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum Crc8Mode {
			CRC_8_HARDWARE, 
			CRC_8_RUNTIME, 
			CRC_8_TABLE
		}
			
		def Crc8Mode getCrc8ModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CRC_8_HARDWARE" : Crc8Mode.CRC_8_HARDWARE
				case "CRC_8_RUNTIME" : Crc8Mode.CRC_8_RUNTIME
				case "CRC_8_TABLE" : Crc8Mode.CRC_8_TABLE
			}
		}
		
		def void setCrc8ModeValue(GParameterValue paramValue, Crc8Mode value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
