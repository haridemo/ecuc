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

class EcuC implements IWrapper<GModuleConfiguration> {
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
	
	def EcucConfigSet getEcucConfigSet(){
		moduleConfiguration.getByType(typeof(EcucConfigSet))
	}
	
	def void setEcucConfigSet(EcucConfigSet ecucConfigSet){
		val GContainer container = ecucConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "EcucConfigSet")
	}
	def EcucHardware getEcucHardware(){
		moduleConfiguration.getByType(typeof(EcucHardware))
	}
	
	def void setEcucHardware(EcucHardware ecucHardware){
		val GContainer container = ecucHardware.getTarget() 
	    moduleConfiguration.setContainer(container, "EcucHardware")
	}
	def EcucPartitionCollection getEcucPartitionCollection(){
		moduleConfiguration.getByType(typeof(EcucPartitionCollection))
	}
	
	def void setEcucPartitionCollection(EcucPartitionCollection ecucPartitionCollection){
		val GContainer container = ecucPartitionCollection.getTarget() 
	    moduleConfiguration.setContainer(container, "EcucPartitionCollection")
	}
	def EcucPostBuildVariants getEcucPostBuildVariants(){
		moduleConfiguration.getByType(typeof(EcucPostBuildVariants))
	}
	
	def void setEcucPostBuildVariants(EcucPostBuildVariants ecucPostBuildVariants){
		val GContainer container = ecucPostBuildVariants.getTarget() 
	    moduleConfiguration.setContainer(container, "EcucPostBuildVariants")
	}
	def EcucUnitGroupAssignment getEcucUnitGroupAssignment(){
		moduleConfiguration.getByType(typeof(EcucUnitGroupAssignment))
	}
	
	def void setEcucUnitGroupAssignment(EcucUnitGroupAssignment ecucUnitGroupAssignment){
		val GContainer container = ecucUnitGroupAssignment.getTarget() 
	    moduleConfiguration.setContainer(container, "EcucUnitGroupAssignment")
	}
	def EcucVariationResolver getEcucVariationResolver(){
		moduleConfiguration.getByType(typeof(EcucVariationResolver))
	}
	
	def void setEcucVariationResolver(EcucVariationResolver ecucVariationResolver){
		val GContainer container = ecucVariationResolver.getTarget() 
	    moduleConfiguration.setContainer(container, "EcucVariationResolver")
	}
	
	static class EcucConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof EcucConfigSet)){
				return false
			}
			this.target == (object as EcucConfigSet).target
		}
		
		
		
		def EcucPduCollection getEcucPduCollection(){
			containerValue.getByType(typeof(EcucPduCollection))
		}
		
		def void setEcucPduCollection(EcucPduCollection ecucPduCollection){
			val GContainer subContainer = ecucPduCollection.getTarget()
			containerValue.setContainer(subContainer, "EcucPduCollection")
		}
		
		
		static class EcucPduCollection implements IWrapper<GContainer> {
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
		        if (!(object instanceof EcucPduCollection)){
					return false
				}
				this.target == (object as EcucPduCollection).target
			}
			
			def PduIdTypeEnum getPduIdTypeEnum(){
				getPduIdTypeEnumValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduIdTypeEnum"])
			}
			
			def void setPduIdTypeEnum(PduIdTypeEnum value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduIdTypeEnum"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PduIdTypeEnum"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum PduIdTypeEnum {
				UINT16, 
				UINT8
			}
				
			def PduIdTypeEnum getPduIdTypeEnumValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "UINT16" : PduIdTypeEnum.UINT16
					case "UINT8" : PduIdTypeEnum.UINT8
				}
			}
			
			def void setPduIdTypeEnumValue(GParameterValue paramValue, PduIdTypeEnum value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def PduLengthTypeEnum getPduLengthTypeEnum(){
				getPduLengthTypeEnumValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduLengthTypeEnum"])
			}
			
			def void setPduLengthTypeEnum(PduLengthTypeEnum value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduLengthTypeEnum"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PduLengthTypeEnum"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum PduLengthTypeEnum {
				UINT16, 
				UINT32, 
				UINT8
			}
				
			def PduLengthTypeEnum getPduLengthTypeEnumValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "UINT16" : PduLengthTypeEnum.UINT16
					case "UINT32" : PduLengthTypeEnum.UINT32
					case "UINT8" : PduLengthTypeEnum.UINT8
				}
			}
			
			def void setPduLengthTypeEnumValue(GParameterValue paramValue, PduLengthTypeEnum value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			
			def List<Pdu> getPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "Pdu")
					}
				}
				return new BasicWrappingEList<Pdu, GContainer>(filteredContainers, typeof(Pdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuC$EcucConfigSet$EcucPduCollection$Pdu pdu) {
						pdu.target?.gSetDefinition(containerValue.getContainerDefinition("Pdu"))
						super.delegateAdd(pdu)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuC$EcucConfigSet$EcucPduCollection$Pdu pdu) {
						pdu.target?.gSetDefinition(containerValue.getContainerDefinition("Pdu"))
						super.delegateAdd(index, pdu)
					}	
				}
			}
			
			
			static class Pdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof Pdu)){
						return false
					}
					this.target == (object as Pdu).target
				}
				
				def BigInteger getMetaDataLength(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MetaDataLength"])
				}
				
				def void setMetaDataLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MetaDataLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "MetaDataLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getPduLength(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduLength"])
				}
				
				def void setPduLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PduLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
				
				
			}
			
		}
		
	}
	static class EcucHardware implements IWrapper<GContainer> {
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
	        if (!(object instanceof EcucHardware)){
				return false
			}
			this.target == (object as EcucHardware).target
		}
		
		
		
		def List<EcucCoreDefinition> getEcucCoreDefinitions(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EcucCoreDefinition")
				}
			}
			return new BasicWrappingEList<EcucCoreDefinition, GContainer>(filteredContainers, typeof(EcucCoreDefinition), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuC$EcucHardware$EcucCoreDefinition ecucCoreDefinition) {
					ecucCoreDefinition.target?.gSetDefinition(containerValue.getContainerDefinition("EcucCoreDefinition"))
					super.delegateAdd(ecucCoreDefinition)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuC$EcucHardware$EcucCoreDefinition ecucCoreDefinition) {
					ecucCoreDefinition.target?.gSetDefinition(containerValue.getContainerDefinition("EcucCoreDefinition"))
					super.delegateAdd(index, ecucCoreDefinition)
				}	
			}
		}
		
		
		static class EcucCoreDefinition implements IWrapper<GContainer> {
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
		        if (!(object instanceof EcucCoreDefinition)){
					return false
				}
				this.target == (object as EcucCoreDefinition).target
			}
			
			def BigInteger getEcucCoreId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcucCoreId"])
			}
			
			def void setEcucCoreId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcucCoreId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcucCoreId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
			
		}
		
	}
	static class EcucPartitionCollection implements IWrapper<GContainer> {
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
	        if (!(object instanceof EcucPartitionCollection)){
				return false
			}
			this.target == (object as EcucPartitionCollection).target
		}
		
		
		
		def List<EcucPartition> getEcucPartitions(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EcucPartition")
				}
			}
			return new BasicWrappingEList<EcucPartition, GContainer>(filteredContainers, typeof(EcucPartition), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuC$EcucPartitionCollection$EcucPartition ecucPartition) {
					ecucPartition.target?.gSetDefinition(containerValue.getContainerDefinition("EcucPartition"))
					super.delegateAdd(ecucPartition)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuC$EcucPartitionCollection$EcucPartition ecucPartition) {
					ecucPartition.target?.gSetDefinition(containerValue.getContainerDefinition("EcucPartition"))
					super.delegateAdd(index, ecucPartition)
				}	
			}
		}
		
		
		static class EcucPartition implements IWrapper<GContainer> {
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
		        if (!(object instanceof EcucPartition)){
					return false
				}
				this.target == (object as EcucPartition).target
			}
			
			def Boolean getEcucPartitionBswModuleExecution(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcucPartitionBswModuleExecution"])
			}
			
			def void setEcucPartitionBswModuleExecution(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcucPartitionBswModuleExecution"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcucPartitionBswModuleExecution"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getEcucPartitionQmBswModuleExecution(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcucPartitionQmBswModuleExecution"])
			}
			
			def void setEcucPartitionQmBswModuleExecution(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcucPartitionQmBswModuleExecution"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcucPartitionQmBswModuleExecution"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getPartitionCanBeRestarted(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PartitionCanBeRestarted"])
			}
			
			def void setPartitionCanBeRestarted(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PartitionCanBeRestarted"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PartitionCanBeRestarted"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
			
			
		}
		
	}
	static class EcucPostBuildVariants implements IWrapper<GContainer> {
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
	        if (!(object instanceof EcucPostBuildVariants)){
				return false
			}
			this.target == (object as EcucPostBuildVariants).target
		}
		
		
		
		
		
	}
	static class EcucUnitGroupAssignment implements IWrapper<GContainer> {
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
	        if (!(object instanceof EcucUnitGroupAssignment)){
				return false
			}
			this.target == (object as EcucUnitGroupAssignment).target
		}
		
		
		
		
		
	}
	static class EcucVariationResolver implements IWrapper<GContainer> {
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
	        if (!(object instanceof EcucVariationResolver)){
				return false
			}
			this.target == (object as EcucVariationResolver).target
		}
		
		
		
		
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof EcuC)){
			return false
		}
		this.target == (object as EcuC).target
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
