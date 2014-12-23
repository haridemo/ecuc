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

class MemMap implements IWrapper<GModuleConfiguration> {
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
	
	def List<MemMapAddressingModeSet> getMemMapAddressingModeSets(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "MemMapAddressingModeSet")
			}
		}
		return new BasicWrappingEList<MemMapAddressingModeSet, GContainer>(filteredContainers, typeof(MemMapAddressingModeSet), typeof(GContainer))
	}
	def List<MemMapAllocation> getMemMapAllocations(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "MemMapAllocation")
			}
		}
		return new BasicWrappingEList<MemMapAllocation, GContainer>(filteredContainers, typeof(MemMapAllocation), typeof(GContainer))
	}
	def List<MemMapGenericCompilerMemClass> getMemMapGenericCompilerMemClass(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "MemMapGenericCompilerMemClass")
			}
		}
		return new BasicWrappingEList<MemMapGenericCompilerMemClass, GContainer>(filteredContainers, typeof(MemMapGenericCompilerMemClass), typeof(GContainer))
	}
	
	static class MemMapAddressingModeSet implements IWrapper<GContainer> {
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
		
		def String getMemMapCompilerMemClassSymbolImpl(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapCompilerMemClassSymbolImpl"])
		}
		
		def void setMemMapCompilerMemClassSymbolImpl(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapCompilerMemClassSymbolImpl"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "MemMapCompilerMemClassSymbolImpl"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def List<String> getMemMapSupportedAddressingMethodOptions(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "MemMapSupportedAddressingMethodOption")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "MemMapSupportedAddressingMethodOption"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def List<MemMapSupportedMemoryAllocationKeywordPolicy> getMemMapSupportedMemoryAllocationKeywordPolicies(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "MemMapSupportedMemoryAllocationKeywordPolicy")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "MemMapSupportedMemoryAllocationKeywordPolicy"]
				return new AbstractUnwrappingEList<EcucTextualParamValue, MemMapSupportedMemoryAllocationKeywordPolicy>(filteredParameterValues, typeof(EcucTextualParamValue), typeof(MemMapSupportedMemoryAllocationKeywordPolicy)) {
					override protected wrap(MemMapSupportedMemoryAllocationKeywordPolicy object) throws CoreException {
						val parameterValue = Autosar40Factory.eINSTANCE.createEcucTextualParamValue
						parameterValue.gSetDefinition(parameterDef)
						EcucValueAccessor421Util.setParameterValue(parameterValue, object)
						parameterValue
					}
					
					override protected unwrap(EcucTextualParamValue parameterValue) {
						getMemMapSupportedMemoryAllocationKeywordPolicyValue(parameterValue)
					}
				}
			}
		}
		
		enum MemMapSupportedMemoryAllocationKeywordPolicy {
			MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME, 
			MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT
		}
			
		def MemMapSupportedMemoryAllocationKeywordPolicy getMemMapSupportedMemoryAllocationKeywordPolicyValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME" : MemMapSupportedMemoryAllocationKeywordPolicy.MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME
				case "MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT" : MemMapSupportedMemoryAllocationKeywordPolicy.MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT
			}
		}
		
		def void setMemMapSupportedMemoryAllocationKeywordPolicyValue(GParameterValue paramValue, MemMapSupportedMemoryAllocationKeywordPolicy value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def List<String> getMemMapSupportedSectionInitializationPolicies(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "MemMapSupportedSectionInitializationPolicy")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "MemMapSupportedSectionInitializationPolicy"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def List<MemMapSupportedSectionType> getMemMapSupportedSectionTypes(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "MemMapSupportedSectionType")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "MemMapSupportedSectionType"]
				return new AbstractUnwrappingEList<EcucTextualParamValue, MemMapSupportedSectionType>(filteredParameterValues, typeof(EcucTextualParamValue), typeof(MemMapSupportedSectionType)) {
					override protected wrap(MemMapSupportedSectionType object) throws CoreException {
						val parameterValue = Autosar40Factory.eINSTANCE.createEcucTextualParamValue
						parameterValue.gSetDefinition(parameterDef)
						EcucValueAccessor421Util.setParameterValue(parameterValue, object)
						parameterValue
					}
					
					override protected unwrap(EcucTextualParamValue parameterValue) {
						getMemMapSupportedSectionTypeValue(parameterValue)
					}
				}
			}
		}
		
		enum MemMapSupportedSectionType {
			MEMMAP_SECTION_TYPE_CALIBRATION_OFFLINE, 
			MEMMAP_SECTION_TYPE_CALIBRATION_ONLINE, 
			MEMMAP_SECTION_TYPE_CAL_PRM, 
			MEMMAP_SECTION_TYPE_CODE, 
			MEMMAP_SECTION_TYPE_CONFIG_DATA, 
			MEMMAP_SECTION_TYPE_CONST, 
			MEMMAP_SECTION_TYPE_EXCLUDE_FROM_FLASH, 
			MEMMAP_SECTION_TYPE_USER_DEFINED, 
			MEMMAP_SECTION_TYPE_VAR, 
			MEMMAP_SECTION_TYPE_VAR_FAST, 
			MEMMAP_SECTION_TYPE_VAR_NO_INIT, 
			MEMMAP_SECTION_TYPE_VAR_POWER_ON_INIT
		}
			
		def MemMapSupportedSectionType getMemMapSupportedSectionTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "MEMMAP_SECTION_TYPE_CALIBRATION_OFFLINE" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CALIBRATION_OFFLINE
				case "MEMMAP_SECTION_TYPE_CALIBRATION_ONLINE" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CALIBRATION_ONLINE
				case "MEMMAP_SECTION_TYPE_CAL_PRM" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CAL_PRM
				case "MEMMAP_SECTION_TYPE_CODE" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CODE
				case "MEMMAP_SECTION_TYPE_CONFIG_DATA" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CONFIG_DATA
				case "MEMMAP_SECTION_TYPE_CONST" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CONST
				case "MEMMAP_SECTION_TYPE_EXCLUDE_FROM_FLASH" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_EXCLUDE_FROM_FLASH
				case "MEMMAP_SECTION_TYPE_USER_DEFINED" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_USER_DEFINED
				case "MEMMAP_SECTION_TYPE_VAR" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_VAR
				case "MEMMAP_SECTION_TYPE_VAR_FAST" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_VAR_FAST
				case "MEMMAP_SECTION_TYPE_VAR_NO_INIT" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_VAR_NO_INIT
				case "MEMMAP_SECTION_TYPE_VAR_POWER_ON_INIT" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_VAR_POWER_ON_INIT
			}
		}
		
		def void setMemMapSupportedSectionTypeValue(GParameterValue paramValue, MemMapSupportedSectionType value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		
		def List<MemMapAddressingMode> getMemMapAddressingModes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "MemMapAddressingMode")
				}
			}
			return new BasicWrappingEList<MemMapAddressingMode, GContainer>(filteredContainers, typeof(MemMapAddressingMode), typeof(GContainer))
		}
		
		
		static class MemMapAddressingMode implements IWrapper<GContainer> {
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
			
			def String getMemMapAddressingModeStart(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapAddressingModeStart"])
			}
			
			def void setMemMapAddressingModeStart(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapAddressingModeStart"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "MemMapAddressingModeStart"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getMemMapAddressingModeStop(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapAddressingModeStop"])
			}
			
			def void setMemMapAddressingModeStop(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapAddressingModeStop"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "MemMapAddressingModeStop"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def List<String> getMemMapAlignmentSelectors(){
				val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
					override protected accept(EcucTextualParamValue item) {
						return accept(item, typeof(GConfigParameter), "MemMapAlignmentSelector")
					}
				}
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "MemMapAlignmentSelector"]
					return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
				}
			}
			
			
			
			
		}
		
	}
	static class MemMapAllocation implements IWrapper<GContainer> {
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
		
		
		
		def List<MemMapGenericMapping> getMemMapGenericMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "MemMapGenericMapping")
				}
			}
			return new BasicWrappingEList<MemMapGenericMapping, GContainer>(filteredContainers, typeof(MemMapGenericMapping), typeof(GContainer))
		}
		
		def List<MemMapSectionSpecificMapping> getMemMapSectionSpecificMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "MemMapSectionSpecificMapping")
				}
			}
			return new BasicWrappingEList<MemMapSectionSpecificMapping, GContainer>(filteredContainers, typeof(MemMapSectionSpecificMapping), typeof(GContainer))
		}
		
		
		static class MemMapGenericMapping implements IWrapper<GContainer> {
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
			
			
			
			def org.artop.ecuc.autosar421.accessors.MemMap.MemMapAddressingModeSet getMemMapAddressingModeSetRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.MemMap.MemMapAddressingModeSet), "MemMapAddressingModeSetRef")
			}
					
			def void setMemMapAddressingModeSetRef(org.artop.ecuc.autosar421.accessors.MemMap.MemMapAddressingModeSet object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "MemMapAddressingModeSetRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class MemMapSectionSpecificMapping implements IWrapper<GContainer> {
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
			
			
			
			def org.artop.ecuc.autosar421.accessors.MemMap.MemMapAddressingModeSet getMemMapAddressingModeSetRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.MemMap.MemMapAddressingModeSet), "MemMapAddressingModeSetRef")
			}
					
			def void setMemMapAddressingModeSetRef(org.artop.ecuc.autosar421.accessors.MemMap.MemMapAddressingModeSet object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "MemMapAddressingModeSetRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class MemMapGenericCompilerMemClass implements IWrapper<GContainer> {
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
		
		def String getMemMapGenericCompilerMemClassSymbolImpl(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapGenericCompilerMemClassSymbolImpl"])
		}
		
		def void setMemMapGenericCompilerMemClassSymbolImpl(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapGenericCompilerMemClassSymbolImpl"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "MemMapGenericCompilerMemClassSymbolImpl"])
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
