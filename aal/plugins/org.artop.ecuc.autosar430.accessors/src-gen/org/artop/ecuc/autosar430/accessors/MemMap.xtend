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
		return new BasicWrappingEList<MemMapAddressingModeSet, GContainer>(filteredContainers, typeof(MemMapAddressingModeSet), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet memMapAddressingModeSet) {
				memMapAddressingModeSet.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("MemMapAddressingModeSet"))
				super.delegateAdd(memMapAddressingModeSet)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet memMapAddressingModeSet) {
				memMapAddressingModeSet.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("MemMapAddressingModeSet"))
				super.delegateAdd(index, memMapAddressingModeSet)
			}
		}
	}
	def List<MemMapAllocation> getMemMapAllocations(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "MemMapAllocation")
			}
		}
		return new BasicWrappingEList<MemMapAllocation, GContainer>(filteredContainers, typeof(MemMapAllocation), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.MemMap.MemMapAllocation memMapAllocation) {
				memMapAllocation.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("MemMapAllocation"))
				super.delegateAdd(memMapAllocation)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.MemMap.MemMapAllocation memMapAllocation) {
				memMapAllocation.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("MemMapAllocation"))
				super.delegateAdd(index, memMapAllocation)
			}
		}
	}
	def List<MemMapGenericCompilerMemClass> getMemMapGenericCompilerMemClass(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "MemMapGenericCompilerMemClass")
			}
		}
		return new BasicWrappingEList<MemMapGenericCompilerMemClass, GContainer>(filteredContainers, typeof(MemMapGenericCompilerMemClass), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.MemMap.MemMapGenericCompilerMemClass memMapGenericCompilerMemClass) {
				memMapGenericCompilerMemClass.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("MemMapGenericCompilerMemClass"))
				super.delegateAdd(memMapGenericCompilerMemClass)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.MemMap.MemMapGenericCompilerMemClass memMapGenericCompilerMemClass) {
				memMapGenericCompilerMemClass.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("MemMapGenericCompilerMemClass"))
				super.delegateAdd(index, memMapGenericCompilerMemClass)
			}
		}
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof MemMapAddressingModeSet)){
				return false
			}
			this.target == (object as MemMapAddressingModeSet).target
		}
	
		def String getMemMapCompilerMemClassSymbolImpl(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapCompilerMemClassSymbolImpl"].getStringValue()
		}
		
		def void setMemMapCompilerMemClassSymbolImpl(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapCompilerMemClassSymbolImpl"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "MemMapCompilerMemClassSymbolImpl"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
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
						parameterValue.setValue(object)
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
		
		def MemMapSupportedMemoryAllocationKeywordPolicy getMemMapSupportedMemoryAllocationKeywordPolicyValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME" : MemMapSupportedMemoryAllocationKeywordPolicy.MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME
				case "MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT" : MemMapSupportedMemoryAllocationKeywordPolicy.MEMMAP_ALLOCATION_KEYWORD_POLICY_ADDR_METHOD_SHORT_NAME_AND_ALIGNMENT
			}
		}
		
		def void setMemMapSupportedMemoryAllocationKeywordPolicyValue(GParameterValue parameterValue, MemMapSupportedMemoryAllocationKeywordPolicy value){
			parameterValue.setValue(value)
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
						parameterValue.setValue(object)
						parameterValue
					}
		
					override protected unwrap(EcucTextualParamValue parameterValue) {
						getMemMapSupportedSectionTypeValue(parameterValue)
					}
				}
			}
		}
		
		enum MemMapSupportedSectionType {
			MEMMAP_SECTION_TYPE_CAL_PRM, 
			MEMMAP_SECTION_TYPE_CODE, 
			MEMMAP_SECTION_TYPE_CONFIG_DATA, 
			MEMMAP_SECTION_TYPE_CONST, 
			MEMMAP_SECTION_TYPE_EXCLUDE_FROM_FLASH, 
			MEMMAP_SECTION_TYPE_VAR
		}
		
		def MemMapSupportedSectionType getMemMapSupportedSectionTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "MEMMAP_SECTION_TYPE_CAL_PRM" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CAL_PRM
				case "MEMMAP_SECTION_TYPE_CODE" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CODE
				case "MEMMAP_SECTION_TYPE_CONFIG_DATA" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CONFIG_DATA
				case "MEMMAP_SECTION_TYPE_CONST" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_CONST
				case "MEMMAP_SECTION_TYPE_EXCLUDE_FROM_FLASH" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_EXCLUDE_FROM_FLASH
				case "MEMMAP_SECTION_TYPE_VAR" : MemMapSupportedSectionType.MEMMAP_SECTION_TYPE_VAR
			}
		}
		
		def void setMemMapSupportedSectionTypeValue(GParameterValue parameterValue, MemMapSupportedSectionType value){
			parameterValue.setValue(value)
		}
		
		
		
		def List<MemMapAddressingMode> getMemMapAddressingModes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "MemMapAddressingMode")
				}
			}
			return new BasicWrappingEList<MemMapAddressingMode, GContainer>(filteredContainers, typeof(MemMapAddressingMode), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet.MemMapAddressingMode memMapAddressingMode) {
					memMapAddressingMode.target?.gSetDefinition(containerValue.getContainerDefinition("MemMapAddressingMode"))
					super.delegateAdd(memMapAddressingMode)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet.MemMapAddressingMode memMapAddressingMode) {
					memMapAddressingMode.target?.gSetDefinition(containerValue.getContainerDefinition("MemMapAddressingMode"))
					super.delegateAdd(index, memMapAddressingMode)
				}
			}
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof MemMapAddressingMode)){
					return false
				}
				this.target == (object as MemMapAddressingMode).target
			}
		
			def String getMemMapAddressingModeStart(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapAddressingModeStart"].getStringValue()
			}
			
			def void setMemMapAddressingModeStart(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapAddressingModeStart"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "MemMapAddressingModeStart"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getMemMapAddressingModeStop(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapAddressingModeStop"].getStringValue()
			}
			
			def void setMemMapAddressingModeStop(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapAddressingModeStop"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "MemMapAddressingModeStop"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof MemMapAllocation)){
				return false
			}
			this.target == (object as MemMapAllocation).target
		}
	
		
		
		def List<MemMapGenericMapping> getMemMapGenericMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "MemMapGenericMapping")
				}
			}
			return new BasicWrappingEList<MemMapGenericMapping, GContainer>(filteredContainers, typeof(MemMapGenericMapping), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.MemMap.MemMapAllocation.MemMapGenericMapping memMapGenericMapping) {
					memMapGenericMapping.target?.gSetDefinition(containerValue.getContainerDefinition("MemMapGenericMapping"))
					super.delegateAdd(memMapGenericMapping)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.MemMap.MemMapAllocation.MemMapGenericMapping memMapGenericMapping) {
					memMapGenericMapping.target?.gSetDefinition(containerValue.getContainerDefinition("MemMapGenericMapping"))
					super.delegateAdd(index, memMapGenericMapping)
				}
			}
		}
		
		def List<MemMapSectionSpecificMapping> getMemMapSectionSpecificMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "MemMapSectionSpecificMapping")
				}
			}
			return new BasicWrappingEList<MemMapSectionSpecificMapping, GContainer>(filteredContainers, typeof(MemMapSectionSpecificMapping), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.MemMap.MemMapAllocation.MemMapSectionSpecificMapping memMapSectionSpecificMapping) {
					memMapSectionSpecificMapping.target?.gSetDefinition(containerValue.getContainerDefinition("MemMapSectionSpecificMapping"))
					super.delegateAdd(memMapSectionSpecificMapping)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.MemMap.MemMapAllocation.MemMapSectionSpecificMapping memMapSectionSpecificMapping) {
					memMapSectionSpecificMapping.target?.gSetDefinition(containerValue.getContainerDefinition("MemMapSectionSpecificMapping"))
					super.delegateAdd(index, memMapSectionSpecificMapping)
				}
			}
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof MemMapGenericMapping)){
					return false
				}
				this.target == (object as MemMapGenericMapping).target
			}
		
			
			def org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet getMemMapAddressingModeSetRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet), "MemMapAddressingModeSetRef")
			}
			
			def void setMemMapAddressingModeSetRef(org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "MemMapAddressingModeSetRef"], object.getTarget())
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof MemMapSectionSpecificMapping)){
					return false
				}
				this.target == (object as MemMapSectionSpecificMapping).target
			}
		
			
			def org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet getMemMapAddressingModeSetRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet), "MemMapAddressingModeSetRef")
			}
			
			def void setMemMapAddressingModeSetRef(org.artop.ecuc.autosar430.accessors.MemMap.MemMapAddressingModeSet object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "MemMapAddressingModeSetRef"], object.getTarget())
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof MemMapGenericCompilerMemClass)){
				return false
			}
			this.target == (object as MemMapGenericCompilerMemClass).target
		}
	
		def String getMemMapGenericCompilerMemClassSymbolImpl(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapGenericCompilerMemClassSymbolImpl"].getStringValue()
		}
		
		def void setMemMapGenericCompilerMemClassSymbolImpl(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MemMapGenericCompilerMemClassSymbolImpl"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "MemMapGenericCompilerMemClassSymbolImpl"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof MemMap)){
			return false
		}
		this.target == (object as MemMap).target
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
