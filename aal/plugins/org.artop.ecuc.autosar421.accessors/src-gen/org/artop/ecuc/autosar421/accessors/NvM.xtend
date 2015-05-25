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
import org.artop.ecuc.autosar421.accessors.lib.BigIntegerValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.BigDecimalValueUnwrappingEList
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
import java.math.BigInteger
import java.math.BigDecimal

class NvM implements IWrapper<GModuleConfiguration> {
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
	
	def List<NvMBlockDescriptor> getNvMBlockDescriptors(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "NvMBlockDescriptor")
			}
		}
		return new BasicWrappingEList<NvMBlockDescriptor, GContainer>(filteredContainers, typeof(NvMBlockDescriptor), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.NvM$NvMBlockDescriptor nvMBlockDescriptor) {
				nvMBlockDescriptor.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("NvMBlockDescriptor"))
				super.delegateAdd(nvMBlockDescriptor)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.NvM$NvMBlockDescriptor nvMBlockDescriptor) {
				nvMBlockDescriptor.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("NvMBlockDescriptor"))
				super.delegateAdd(index, nvMBlockDescriptor)
			}
		}
	}
	def NvMCommon getNvMCommon(){
		moduleConfiguration.getByType(typeof(NvMCommon))
	}
	
	def void setNvMCommon(NvMCommon nvMCommon){
		val GContainer container = nvMCommon.getTarget() 
	    moduleConfiguration.setContainer(container, "NvMCommon")
	}
	def NvmDemEventParameterRefs getNvmDemEventParameterRefs(){
		moduleConfiguration.getByType(typeof(NvmDemEventParameterRefs))
	}
	
	def void setNvmDemEventParameterRefs(NvmDemEventParameterRefs nvmDemEventParameterRefs){
		val GContainer container = nvmDemEventParameterRefs.getTarget() 
	    moduleConfiguration.setContainer(container, "NvmDemEventParameterRefs")
	}
	
	static class NvMBlockDescriptor implements IWrapper<GContainer> {
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
	        if (!(object instanceof NvMBlockDescriptor)){
				return false
			}
			this.target == (object as NvMBlockDescriptor).target
		}
		
		def NvMBlockCrcType getNvMBlockCrcType(){
			getNvMBlockCrcTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockCrcType"])
		}
		
		def void setNvMBlockCrcType(NvMBlockCrcType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockCrcType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockCrcType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum NvMBlockCrcType {
			NVM_CRC16, 
			NVM_CRC32, 
			NVM_CRC8
		}
			
		def NvMBlockCrcType getNvMBlockCrcTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "NVM_CRC16" : NvMBlockCrcType.NVM_CRC16
				case "NVM_CRC32" : NvMBlockCrcType.NVM_CRC32
				case "NVM_CRC8" : NvMBlockCrcType.NVM_CRC8
			}
		}
		
		def void setNvMBlockCrcTypeValue(GParameterValue paramValue, NvMBlockCrcType value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def String getNvMBlockHeaderInclude(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockHeaderInclude"])
		}
		
		def void setNvMBlockHeaderInclude(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockHeaderInclude"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockHeaderInclude"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMBlockJobPriority(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockJobPriority"])
		}
		
		def void setNvMBlockJobPriority(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockJobPriority"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockJobPriority"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def NvMBlockManagementType getNvMBlockManagementType(){
			getNvMBlockManagementTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockManagementType"])
		}
		
		def void setNvMBlockManagementType(NvMBlockManagementType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockManagementType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockManagementType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum NvMBlockManagementType {
			NVM_BLOCK_DATASET, 
			NVM_BLOCK_NATIVE, 
			NVM_BLOCK_REDUNDANT
		}
			
		def NvMBlockManagementType getNvMBlockManagementTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "NVM_BLOCK_DATASET" : NvMBlockManagementType.NVM_BLOCK_DATASET
				case "NVM_BLOCK_NATIVE" : NvMBlockManagementType.NVM_BLOCK_NATIVE
				case "NVM_BLOCK_REDUNDANT" : NvMBlockManagementType.NVM_BLOCK_REDUNDANT
			}
		}
		
		def void setNvMBlockManagementTypeValue(GParameterValue paramValue, NvMBlockManagementType value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getNvMBlockUseAutoValidation(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseAutoValidation"])
		}
		
		def void setNvMBlockUseAutoValidation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseAutoValidation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseAutoValidation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockUseCRCCompMechanism(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseCRCCompMechanism"])
		}
		
		def void setNvMBlockUseCRCCompMechanism(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseCRCCompMechanism"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseCRCCompMechanism"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockUseCrc(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseCrc"])
		}
		
		def void setNvMBlockUseCrc(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseCrc"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseCrc"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockUseSetRamBlockStatus(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseSetRamBlockStatus"])
		}
		
		def void setNvMBlockUseSetRamBlockStatus(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseSetRamBlockStatus"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseSetRamBlockStatus"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockUseSyncMechanism(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseSyncMechanism"])
		}
		
		def void setNvMBlockUseSyncMechanism(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseSyncMechanism"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseSyncMechanism"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockWriteProt(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockWriteProt"])
		}
		
		def void setNvMBlockWriteProt(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockWriteProt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockWriteProt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBswMBlockStatusInformation(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBswMBlockStatusInformation"])
		}
		
		def void setNvMBswMBlockStatusInformation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBswMBlockStatusInformation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBswMBlockStatusInformation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMCalcRamBlockCrc(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCalcRamBlockCrc"])
		}
		
		def void setNvMCalcRamBlockCrc(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCalcRamBlockCrc"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMCalcRamBlockCrc"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def String getNvMInitBlockCallback(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMInitBlockCallback"])
		}
		
		def void setNvMInitBlockCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMInitBlockCallback"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMInitBlockCallback"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMMaxNumOfReadRetries(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMaxNumOfReadRetries"])
		}
		
		def void setNvMMaxNumOfReadRetries(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMaxNumOfReadRetries"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMMaxNumOfReadRetries"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMMaxNumOfWriteRetries(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMaxNumOfWriteRetries"])
		}
		
		def void setNvMMaxNumOfWriteRetries(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMaxNumOfWriteRetries"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMMaxNumOfWriteRetries"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMNvBlockBaseNumber(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockBaseNumber"])
		}
		
		def void setNvMNvBlockBaseNumber(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockBaseNumber"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvBlockBaseNumber"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMNvBlockLength(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockLength"])
		}
		
		def void setNvMNvBlockLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockLength"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvBlockLength"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMNvBlockNum(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockNum"])
		}
		
		def void setNvMNvBlockNum(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockNum"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvBlockNum"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMNvramBlockIdentifier(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvramBlockIdentifier"])
		}
		
		def void setNvMNvramBlockIdentifier(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvramBlockIdentifier"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvramBlockIdentifier"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMNvramDeviceId(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvramDeviceId"])
		}
		
		def void setNvMNvramDeviceId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvramDeviceId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvramDeviceId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getNvMRamBlockDataAddress(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRamBlockDataAddress"])
		}
		
		def void setNvMRamBlockDataAddress(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRamBlockDataAddress"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMRamBlockDataAddress"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getNvMReadRamBlockFromNvCallback(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMReadRamBlockFromNvCallback"])
		}
		
		def void setNvMReadRamBlockFromNvCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMReadRamBlockFromNvCallback"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMReadRamBlockFromNvCallback"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getNvMResistantToChangedSw(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMResistantToChangedSw"])
		}
		
		def void setNvMResistantToChangedSw(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMResistantToChangedSw"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMResistantToChangedSw"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def String getNvMRomBlockDataAddress(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRomBlockDataAddress"])
		}
		
		def void setNvMRomBlockDataAddress(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRomBlockDataAddress"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMRomBlockDataAddress"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMRomBlockNum(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRomBlockNum"])
		}
		
		def void setNvMRomBlockNum(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRomBlockNum"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMRomBlockNum"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getNvMSelectBlockForReadAll(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSelectBlockForReadAll"])
		}
		
		def void setNvMSelectBlockForReadAll(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSelectBlockForReadAll"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMSelectBlockForReadAll"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMSelectBlockForWriteAll(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSelectBlockForWriteAll"])
		}
		
		def void setNvMSelectBlockForWriteAll(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSelectBlockForWriteAll"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMSelectBlockForWriteAll"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def String getNvMSingleBlockCallback(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSingleBlockCallback"])
		}
		
		def void setNvMSingleBlockCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSingleBlockCallback"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMSingleBlockCallback"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getNvMStaticBlockIDCheck(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMStaticBlockIDCheck"])
		}
		
		def void setNvMStaticBlockIDCheck(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMStaticBlockIDCheck"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMStaticBlockIDCheck"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMWriteBlockOnce(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteBlockOnce"])
		}
		
		def void setNvMWriteBlockOnce(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteBlockOnce"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMWriteBlockOnce"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def String getNvMWriteRamBlockToNvCallback(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteRamBlockToNvCallback"])
		}
		
		def void setNvMWriteRamBlockToNvCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteRamBlockToNvCallback"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMWriteRamBlockToNvCallback"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getNvMWriteVerification(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteVerification"])
		}
		
		def void setNvMWriteVerification(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteVerification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMWriteVerification"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getNvMWriteVerificationDataSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteVerificationDataSize"])
		}
		
		def void setNvMWriteVerificationDataSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteVerificationDataSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMWriteVerificationDataSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def NvMTargetBlockReference getNvMTargetBlockReference(){
			containerValue.getByType(typeof(NvMTargetBlockReference))
		}
		
		def void setNvMTargetBlockReference(NvMTargetBlockReference nvMTargetBlockReference){
			val GContainer subContainer = nvMTargetBlockReference.getTarget()
			containerValue.setContainer(subContainer, "NvMTargetBlockReference")
		}
		
		
		static class NvMTargetBlockReference implements IWrapper<GContainer> {
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
		        if (!(object instanceof NvMTargetBlockReference)){
					return false
				}
				this.target == (object as NvMTargetBlockReference).target
			}
			
			def NvMEaRef getNvMEaRef(){
				containerValue.getByType(typeof(NvMEaRef))
			}
			
			def void setNvMEaRef(NvMEaRef nvMEaRef){
				val GContainer subContainer = nvMEaRef.getTarget()
				containerValue.setContainer(subContainer, "NvMEaRef")
			}
			def NvMFeeRef getNvMFeeRef(){
				containerValue.getByType(typeof(NvMFeeRef))
			}
			
			def void setNvMFeeRef(NvMFeeRef nvMFeeRef){
				val GContainer subContainer = nvMFeeRef.getTarget()
				containerValue.setContainer(subContainer, "NvMFeeRef")
			}
			
			static class NvMEaRef implements IWrapper<GContainer> {
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
			        if (!(object instanceof NvMEaRef)){
						return false
					}
					this.target == (object as NvMEaRef).target
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Ea.EaBlockConfiguration getNvMNameOfEaBlock(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Ea.EaBlockConfiguration), "NvMNameOfEaBlock")
				}
						
				def void setNvMNameOfEaBlock(org.artop.ecuc.autosar421.accessors.Ea.EaBlockConfiguration object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NvMNameOfEaBlock"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class NvMFeeRef implements IWrapper<GContainer> {
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
			        if (!(object instanceof NvMFeeRef)){
						return false
					}
					this.target == (object as NvMFeeRef).target
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Fee.FeeBlockConfiguration getNvMNameOfFeeBlock(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Fee.FeeBlockConfiguration), "NvMNameOfFeeBlock")
				}
						
				def void setNvMNameOfFeeBlock(org.artop.ecuc.autosar421.accessors.Fee.FeeBlockConfiguration object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NvMNameOfFeeBlock"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class NvMCommon implements IWrapper<GContainer> {
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
	        if (!(object instanceof NvMCommon)){
				return false
			}
			this.target == (object as NvMCommon).target
		}
		
		def NvMApiConfigClass getNvMApiConfigClass(){
			getNvMApiConfigClassValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMApiConfigClass"])
		}
		
		def void setNvMApiConfigClass(NvMApiConfigClass value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMApiConfigClass"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMApiConfigClass"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum NvMApiConfigClass {
			NVM_API_CONFIG_CLASS_1, 
			NVM_API_CONFIG_CLASS_2, 
			NVM_API_CONFIG_CLASS_3
		}
			
		def NvMApiConfigClass getNvMApiConfigClassValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "NVM_API_CONFIG_CLASS_1" : NvMApiConfigClass.NVM_API_CONFIG_CLASS_1
				case "NVM_API_CONFIG_CLASS_2" : NvMApiConfigClass.NVM_API_CONFIG_CLASS_2
				case "NVM_API_CONFIG_CLASS_3" : NvMApiConfigClass.NVM_API_CONFIG_CLASS_3
			}
		}
		
		def void setNvMApiConfigClassValue(GParameterValue paramValue, NvMApiConfigClass value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getNvMBswMMultiBlockJobStatusInformation(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBswMMultiBlockJobStatusInformation"])
		}
		
		def void setNvMBswMMultiBlockJobStatusInformation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBswMMultiBlockJobStatusInformation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMBswMMultiBlockJobStatusInformation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getNvMCompiledConfigId(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCompiledConfigId"])
		}
		
		def void setNvMCompiledConfigId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCompiledConfigId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMCompiledConfigId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMCrcNumOfBytes(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCrcNumOfBytes"])
		}
		
		def void setNvMCrcNumOfBytes(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCrcNumOfBytes"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMCrcNumOfBytes"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMDatasetSelectionBits(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDatasetSelectionBits"])
		}
		
		def void setNvMDatasetSelectionBits(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDatasetSelectionBits"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMDatasetSelectionBits"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getNvMDevErrorDetect(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDevErrorDetect"])
		}
		
		def void setNvMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMDrvModeSwitch(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDrvModeSwitch"])
		}
		
		def void setNvMDrvModeSwitch(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDrvModeSwitch"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMDrvModeSwitch"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMDynamicConfiguration(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDynamicConfiguration"])
		}
		
		def void setNvMDynamicConfiguration(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDynamicConfiguration"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMDynamicConfiguration"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMJobPrioritization(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMJobPrioritization"])
		}
		
		def void setNvMJobPrioritization(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMJobPrioritization"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMJobPrioritization"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getNvMMainFunctionPeriod(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMainFunctionPeriod"])
		}
		
		def void setNvMMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getNvMMultiBlockCallback(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMultiBlockCallback"])
		}
		
		def void setNvMMultiBlockCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMultiBlockCallback"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMMultiBlockCallback"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getNvMPollingMode(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMPollingMode"])
		}
		
		def void setNvMPollingMode(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMPollingMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMPollingMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getNvMRepeatMirrorOperations(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRepeatMirrorOperations"])
		}
		
		def void setNvMRepeatMirrorOperations(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRepeatMirrorOperations"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMRepeatMirrorOperations"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getNvMSetRamBlockStatusApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSetRamBlockStatusApi"])
		}
		
		def void setNvMSetRamBlockStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSetRamBlockStatusApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMSetRamBlockStatusApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getNvMSizeImmediateJobQueue(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSizeImmediateJobQueue"])
		}
		
		def void setNvMSizeImmediateJobQueue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSizeImmediateJobQueue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMSizeImmediateJobQueue"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getNvMSizeStandardJobQueue(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSizeStandardJobQueue"])
		}
		
		def void setNvMSizeStandardJobQueue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSizeStandardJobQueue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMSizeStandardJobQueue"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getNvMVersionInfoApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMVersionInfoApi"])
		}
		
		def void setNvMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "NvMVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class NvmDemEventParameterRefs implements IWrapper<GContainer> {
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
	        if (!(object instanceof NvmDemEventParameterRefs)){
				return false
			}
			this.target == (object as NvmDemEventParameterRefs).target
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_HARDWARE(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_HARDWARE")
		}
				
		def void setNVM_E_HARDWARE(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_HARDWARE"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_INTEGRITY_FAILED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_INTEGRITY_FAILED")
		}
				
		def void setNVM_E_INTEGRITY_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_INTEGRITY_FAILED"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_LOSS_OF_REDUNDANCY(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_LOSS_OF_REDUNDANCY")
		}
				
		def void setNVM_E_LOSS_OF_REDUNDANCY(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_LOSS_OF_REDUNDANCY"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_QUEUE_OVERFLOW(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_QUEUE_OVERFLOW")
		}
				
		def void setNVM_E_QUEUE_OVERFLOW(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_QUEUE_OVERFLOW"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_REQ_FAILED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_REQ_FAILED")
		}
				
		def void setNVM_E_REQ_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_REQ_FAILED"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_VERIFY_FAILED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_VERIFY_FAILED")
		}
				
		def void setNVM_E_VERIFY_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_VERIFY_FAILED"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_WRITE_PROTECTED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_WRITE_PROTECTED")
		}
				
		def void setNVM_E_WRITE_PROTECTED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_WRITE_PROTECTED"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_WRONG_BLOCK_ID(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_WRONG_BLOCK_ID")
		}
				
		def void setNVM_E_WRONG_BLOCK_ID(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_WRONG_BLOCK_ID"], object.getTarget())
			}
		}
		
		
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof NvM)){
			return false
		}
		this.target == (object as NvM).target
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
