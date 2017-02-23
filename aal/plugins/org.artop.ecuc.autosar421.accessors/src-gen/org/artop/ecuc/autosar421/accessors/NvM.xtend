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
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor nvMBlockDescriptor) {
				nvMBlockDescriptor.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("NvMBlockDescriptor"))
				super.delegateAdd(nvMBlockDescriptor)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor nvMBlockDescriptor) {
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
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockCrcType"].getNvMBlockCrcTypeValue()
		}
		
		def void setNvMBlockCrcType(NvMBlockCrcType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockCrcType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockCrcType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum NvMBlockCrcType {
			NVM_CRC16, 
			NVM_CRC32, 
			NVM_CRC8
		}
		
		def NvMBlockCrcType getNvMBlockCrcTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "NVM_CRC16" : NvMBlockCrcType.NVM_CRC16
				case "NVM_CRC32" : NvMBlockCrcType.NVM_CRC32
				case "NVM_CRC8" : NvMBlockCrcType.NVM_CRC8
			}
		}
		
		def void setNvMBlockCrcTypeValue(GParameterValue parameterValue, NvMBlockCrcType value){
			parameterValue.setValue(value)
		}
		
		def String getNvMBlockHeaderInclude(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockHeaderInclude"].getStringValue()
		}
		
		def void setNvMBlockHeaderInclude(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockHeaderInclude"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockHeaderInclude"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMBlockJobPriority(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockJobPriority"].getBigIntegerValue()
		}
		
		def void setNvMBlockJobPriority(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockJobPriority"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockJobPriority"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def NvMBlockManagementType getNvMBlockManagementType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockManagementType"].getNvMBlockManagementTypeValue()
		}
		
		def void setNvMBlockManagementType(NvMBlockManagementType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockManagementType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockManagementType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum NvMBlockManagementType {
			NVM_BLOCK_DATASET, 
			NVM_BLOCK_NATIVE, 
			NVM_BLOCK_REDUNDANT
		}
		
		def NvMBlockManagementType getNvMBlockManagementTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "NVM_BLOCK_DATASET" : NvMBlockManagementType.NVM_BLOCK_DATASET
				case "NVM_BLOCK_NATIVE" : NvMBlockManagementType.NVM_BLOCK_NATIVE
				case "NVM_BLOCK_REDUNDANT" : NvMBlockManagementType.NVM_BLOCK_REDUNDANT
			}
		}
		
		def void setNvMBlockManagementTypeValue(GParameterValue parameterValue, NvMBlockManagementType value){
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMBlockUseAutoValidation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseAutoValidation"].getBooleanValue()
		}
		
		def void setNvMBlockUseAutoValidation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseAutoValidation"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseAutoValidation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockUseCRCCompMechanism(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseCRCCompMechanism"].getBooleanValue()
		}
		
		def void setNvMBlockUseCRCCompMechanism(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseCRCCompMechanism"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseCRCCompMechanism"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockUseCrc(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseCrc"].getBooleanValue()
		}
		
		def void setNvMBlockUseCrc(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseCrc"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseCrc"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockUseSetRamBlockStatus(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseSetRamBlockStatus"].getBooleanValue()
		}
		
		def void setNvMBlockUseSetRamBlockStatus(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseSetRamBlockStatus"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseSetRamBlockStatus"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockUseSyncMechanism(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseSyncMechanism"].getBooleanValue()
		}
		
		def void setNvMBlockUseSyncMechanism(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockUseSyncMechanism"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockUseSyncMechanism"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBlockWriteProt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockWriteProt"].getBooleanValue()
		}
		
		def void setNvMBlockWriteProt(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBlockWriteProt"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockWriteProt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMBswMBlockStatusInformation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBswMBlockStatusInformation"].getBooleanValue()
		}
		
		def void setNvMBswMBlockStatusInformation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBswMBlockStatusInformation"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBswMBlockStatusInformation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMCalcRamBlockCrc(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCalcRamBlockCrc"].getBooleanValue()
		}
		
		def void setNvMCalcRamBlockCrc(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCalcRamBlockCrc"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMCalcRamBlockCrc"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getNvMInitBlockCallback(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMInitBlockCallback"].getStringValue()
		}
		
		def void setNvMInitBlockCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMInitBlockCallback"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMInitBlockCallback"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMMaxNumOfReadRetries(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMaxNumOfReadRetries"].getBigIntegerValue()
		}
		
		def void setNvMMaxNumOfReadRetries(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMaxNumOfReadRetries"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMMaxNumOfReadRetries"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMMaxNumOfWriteRetries(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMaxNumOfWriteRetries"].getBigIntegerValue()
		}
		
		def void setNvMMaxNumOfWriteRetries(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMaxNumOfWriteRetries"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMMaxNumOfWriteRetries"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMNvBlockBaseNumber(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockBaseNumber"].getBigIntegerValue()
		}
		
		def void setNvMNvBlockBaseNumber(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockBaseNumber"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvBlockBaseNumber"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMNvBlockLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockLength"].getBigIntegerValue()
		}
		
		def void setNvMNvBlockLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvBlockLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMNvBlockNum(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockNum"].getBigIntegerValue()
		}
		
		def void setNvMNvBlockNum(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvBlockNum"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvBlockNum"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMNvramBlockIdentifier(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvramBlockIdentifier"].getBigIntegerValue()
		}
		
		def void setNvMNvramBlockIdentifier(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvramBlockIdentifier"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvramBlockIdentifier"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMNvramDeviceId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvramDeviceId"].getBigIntegerValue()
		}
		
		def void setNvMNvramDeviceId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMNvramDeviceId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMNvramDeviceId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getNvMRamBlockDataAddress(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRamBlockDataAddress"].getStringValue()
		}
		
		def void setNvMRamBlockDataAddress(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRamBlockDataAddress"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMRamBlockDataAddress"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getNvMReadRamBlockFromNvCallback(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMReadRamBlockFromNvCallback"].getStringValue()
		}
		
		def void setNvMReadRamBlockFromNvCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMReadRamBlockFromNvCallback"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMReadRamBlockFromNvCallback"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMResistantToChangedSw(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMResistantToChangedSw"].getBooleanValue()
		}
		
		def void setNvMResistantToChangedSw(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMResistantToChangedSw"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMResistantToChangedSw"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getNvMRomBlockDataAddress(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRomBlockDataAddress"].getStringValue()
		}
		
		def void setNvMRomBlockDataAddress(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRomBlockDataAddress"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMRomBlockDataAddress"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMRomBlockNum(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRomBlockNum"].getBigIntegerValue()
		}
		
		def void setNvMRomBlockNum(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRomBlockNum"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMRomBlockNum"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMSelectBlockForReadAll(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSelectBlockForReadAll"].getBooleanValue()
		}
		
		def void setNvMSelectBlockForReadAll(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSelectBlockForReadAll"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMSelectBlockForReadAll"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMSelectBlockForWriteAll(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSelectBlockForWriteAll"].getBooleanValue()
		}
		
		def void setNvMSelectBlockForWriteAll(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSelectBlockForWriteAll"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMSelectBlockForWriteAll"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getNvMSingleBlockCallback(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSingleBlockCallback"].getStringValue()
		}
		
		def void setNvMSingleBlockCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSingleBlockCallback"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMSingleBlockCallback"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMStaticBlockIDCheck(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMStaticBlockIDCheck"].getBooleanValue()
		}
		
		def void setNvMStaticBlockIDCheck(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMStaticBlockIDCheck"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMStaticBlockIDCheck"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMWriteBlockOnce(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteBlockOnce"].getBooleanValue()
		}
		
		def void setNvMWriteBlockOnce(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteBlockOnce"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMWriteBlockOnce"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getNvMWriteRamBlockToNvCallback(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteRamBlockToNvCallback"].getStringValue()
		}
		
		def void setNvMWriteRamBlockToNvCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteRamBlockToNvCallback"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMWriteRamBlockToNvCallback"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMWriteVerification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteVerification"].getBooleanValue()
		}
		
		def void setNvMWriteVerification(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteVerification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMWriteVerification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getNvMWriteVerificationDataSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteVerificationDataSize"].getBigIntegerValue()
		}
		
		def void setNvMWriteVerificationDataSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMWriteVerificationDataSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMWriteVerificationDataSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
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
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NvMNameOfEaBlock"], object.getTarget())
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
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NvMNameOfFeeBlock"], object.getTarget())
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
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMApiConfigClass"].getNvMApiConfigClassValue()
		}
		
		def void setNvMApiConfigClass(NvMApiConfigClass value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMApiConfigClass"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMApiConfigClass"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum NvMApiConfigClass {
			NVM_API_CONFIG_CLASS_1, 
			NVM_API_CONFIG_CLASS_2, 
			NVM_API_CONFIG_CLASS_3
		}
		
		def NvMApiConfigClass getNvMApiConfigClassValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "NVM_API_CONFIG_CLASS_1" : NvMApiConfigClass.NVM_API_CONFIG_CLASS_1
				case "NVM_API_CONFIG_CLASS_2" : NvMApiConfigClass.NVM_API_CONFIG_CLASS_2
				case "NVM_API_CONFIG_CLASS_3" : NvMApiConfigClass.NVM_API_CONFIG_CLASS_3
			}
		}
		
		def void setNvMApiConfigClassValue(GParameterValue parameterValue, NvMApiConfigClass value){
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMBswMMultiBlockJobStatusInformation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBswMMultiBlockJobStatusInformation"].getBooleanValue()
		}
		
		def void setNvMBswMMultiBlockJobStatusInformation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMBswMMultiBlockJobStatusInformation"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBswMMultiBlockJobStatusInformation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getNvMCompiledConfigId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCompiledConfigId"].getBigIntegerValue()
		}
		
		def void setNvMCompiledConfigId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCompiledConfigId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMCompiledConfigId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMCrcNumOfBytes(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCrcNumOfBytes"].getBigIntegerValue()
		}
		
		def void setNvMCrcNumOfBytes(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMCrcNumOfBytes"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMCrcNumOfBytes"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMDatasetSelectionBits(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDatasetSelectionBits"].getBigIntegerValue()
		}
		
		def void setNvMDatasetSelectionBits(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDatasetSelectionBits"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMDatasetSelectionBits"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDevErrorDetect"].getBooleanValue()
		}
		
		def void setNvMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMDrvModeSwitch(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDrvModeSwitch"].getBooleanValue()
		}
		
		def void setNvMDrvModeSwitch(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDrvModeSwitch"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMDrvModeSwitch"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMDynamicConfiguration(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDynamicConfiguration"].getBooleanValue()
		}
		
		def void setNvMDynamicConfiguration(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMDynamicConfiguration"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMDynamicConfiguration"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNvMJobPrioritization(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMJobPrioritization"].getBooleanValue()
		}
		
		def void setNvMJobPrioritization(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMJobPrioritization"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMJobPrioritization"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getNvMMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setNvMMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getNvMMultiBlockCallback(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMultiBlockCallback"].getStringValue()
		}
		
		def void setNvMMultiBlockCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMMultiBlockCallback"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMMultiBlockCallback"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMPollingMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMPollingMode"].getBooleanValue()
		}
		
		def void setNvMPollingMode(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMPollingMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMPollingMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getNvMRepeatMirrorOperations(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRepeatMirrorOperations"].getBigIntegerValue()
		}
		
		def void setNvMRepeatMirrorOperations(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMRepeatMirrorOperations"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMRepeatMirrorOperations"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMSetRamBlockStatusApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSetRamBlockStatusApi"].getBooleanValue()
		}
		
		def void setNvMSetRamBlockStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSetRamBlockStatusApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMSetRamBlockStatusApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getNvMSizeImmediateJobQueue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSizeImmediateJobQueue"].getBigIntegerValue()
		}
		
		def void setNvMSizeImmediateJobQueue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSizeImmediateJobQueue"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMSizeImmediateJobQueue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getNvMSizeStandardJobQueue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSizeStandardJobQueue"].getBigIntegerValue()
		}
		
		def void setNvMSizeStandardJobQueue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMSizeStandardJobQueue"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMSizeStandardJobQueue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getNvMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMVersionInfoApi"].getBooleanValue()
		}
		
		def void setNvMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NvMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NvMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_HARDWARE"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_INTEGRITY_FAILED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_INTEGRITY_FAILED")
		}
		
		def void setNVM_E_INTEGRITY_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_INTEGRITY_FAILED"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_LOSS_OF_REDUNDANCY(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_LOSS_OF_REDUNDANCY")
		}
		
		def void setNVM_E_LOSS_OF_REDUNDANCY(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_LOSS_OF_REDUNDANCY"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_QUEUE_OVERFLOW(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_QUEUE_OVERFLOW")
		}
		
		def void setNVM_E_QUEUE_OVERFLOW(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_QUEUE_OVERFLOW"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_REQ_FAILED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_REQ_FAILED")
		}
		
		def void setNVM_E_REQ_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_REQ_FAILED"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_VERIFY_FAILED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_VERIFY_FAILED")
		}
		
		def void setNVM_E_VERIFY_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_VERIFY_FAILED"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_WRITE_PROTECTED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_WRITE_PROTECTED")
		}
		
		def void setNVM_E_WRITE_PROTECTED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_WRITE_PROTECTED"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getNVM_E_WRONG_BLOCK_ID(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "NVM_E_WRONG_BLOCK_ID")
		}
		
		def void setNVM_E_WRONG_BLOCK_ID(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NVM_E_WRONG_BLOCK_ID"], object.getTarget())
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
		if (definitionFeature !== null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
