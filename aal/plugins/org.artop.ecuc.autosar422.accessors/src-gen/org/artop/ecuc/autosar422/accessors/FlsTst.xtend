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
package org.artop.ecuc.autosar422.accessors

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

class FlsTst implements IWrapper<GModuleConfiguration> {
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

	def FlsTstConfigSet getFlsTstConfigSet(){
		moduleConfiguration.getByType(typeof(FlsTstConfigSet))
	}

	def void setFlsTstConfigSet(FlsTstConfigSet flsTstConfigSet){
		val GContainer container = flsTstConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "FlsTstConfigSet")
	}
	def FlsTstConfigurationOfOptApiServices getFlsTstConfigurationOfOptApiServices(){
		moduleConfiguration.getByType(typeof(FlsTstConfigurationOfOptApiServices))
	}

	def void setFlsTstConfigurationOfOptApiServices(FlsTstConfigurationOfOptApiServices flsTstConfigurationOfOptApiServices){
		val GContainer container = flsTstConfigurationOfOptApiServices.getTarget()
	    moduleConfiguration.setContainer(container, "FlsTstConfigurationOfOptApiServices")
	}
	def FlsTstDemEventParameterRefs getFlsTstDemEventParameterRefs(){
		moduleConfiguration.getByType(typeof(FlsTstDemEventParameterRefs))
	}

	def void setFlsTstDemEventParameterRefs(FlsTstDemEventParameterRefs flsTstDemEventParameterRefs){
		val GContainer container = flsTstDemEventParameterRefs.getTarget()
	    moduleConfiguration.setContainer(container, "FlsTstDemEventParameterRefs")
	}
	def FlsTstGeneral getFlsTstGeneral(){
		moduleConfiguration.getByType(typeof(FlsTstGeneral))
	}

	def void setFlsTstGeneral(FlsTstGeneral flsTstGeneral){
		val GContainer container = flsTstGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "FlsTstGeneral")
	}

	static class FlsTstConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof FlsTstConfigSet)){
				return false
			}
			this.target == (object as FlsTstConfigSet).target
		}
	
		def BigInteger getFlsTstBlockNumberBgnd(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockNumberBgnd"].getBigIntegerValue()
		}
		
		def void setFlsTstBlockNumberBgnd(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockNumberBgnd"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockNumberBgnd"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsTstBlockNumberFgnd(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockNumberFgnd"].getBigIntegerValue()
		}
		
		def void setFlsTstBlockNumberFgnd(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockNumberFgnd"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockNumberFgnd"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getFlsTstTestCompletedNotification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestCompletedNotification"].getStringValue()
		}
		
		def void setFlsTstTestCompletedNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestCompletedNotification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestCompletedNotification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def FlsTstBlockBgndConfigSet getFlsTstBlockBgndConfigSet(){
			containerValue.getByType(typeof(FlsTstBlockBgndConfigSet))
		}
		
		def void setFlsTstBlockBgndConfigSet(FlsTstBlockBgndConfigSet flsTstBlockBgndConfigSet){
			val GContainer subContainer = flsTstBlockBgndConfigSet.getTarget()
			containerValue.setContainer(subContainer, "FlsTstBlockBgndConfigSet")
		}
		
		def FlsTstBlockFgndConfigSet getFlsTstBlockFgndConfigSet(){
			containerValue.getByType(typeof(FlsTstBlockFgndConfigSet))
		}
		
		def void setFlsTstBlockFgndConfigSet(FlsTstBlockFgndConfigSet flsTstBlockFgndConfigSet){
			val GContainer subContainer = flsTstBlockFgndConfigSet.getTarget()
			containerValue.setContainer(subContainer, "FlsTstBlockFgndConfigSet")
		}
		
		
		static class FlsTstBlockBgndConfigSet implements IWrapper<GContainer> {
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
		        if (!(object instanceof FlsTstBlockBgndConfigSet)){
					return false
				}
				this.target == (object as FlsTstBlockBgndConfigSet).target
			}
		
			
			
			def List<FlsTstBlock> getFlsTstBlocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FlsTstBlock")
					}
				}
				return new BasicWrappingEList<FlsTstBlock, GContainer>(filteredContainers, typeof(FlsTstBlock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar422.accessors.FlsTst.FlsTstConfigSet.FlsTstBlockBgndConfigSet.FlsTstBlock flsTstBlock) {
						flsTstBlock.target?.gSetDefinition(containerValue.getContainerDefinition("FlsTstBlock"))
						super.delegateAdd(flsTstBlock)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.FlsTst.FlsTstConfigSet.FlsTstBlockBgndConfigSet.FlsTstBlock flsTstBlock) {
						flsTstBlock.target?.gSetDefinition(containerValue.getContainerDefinition("FlsTstBlock"))
						super.delegateAdd(index, flsTstBlock)
					}
				}
			}
			
			
			static class FlsTstBlock implements IWrapper<GContainer> {
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
			        if (!(object instanceof FlsTstBlock)){
						return false
					}
					this.target == (object as FlsTstBlock).target
				}
			
				def BigInteger getFlsTstBlockBaseAddress(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockBaseAddress"].getBigIntegerValue()
				}
				
				def void setFlsTstBlockBaseAddress(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockBaseAddress"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockBaseAddress"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsTstBlockIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockIndex"].getBigIntegerValue()
				}
				
				def void setFlsTstBlockIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsTstBlockSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockSize"].getBigIntegerValue()
				}
				
				def void setFlsTstBlockSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsTstNumberOfTestedCells(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"].getBigIntegerValue()
				}
				
				def void setFlsTstNumberOfTestedCells(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstNumberOfTestedCells"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsTstSignatureAddress(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSignatureAddress"].getBigIntegerValue()
				}
				
				def void setFlsTstSignatureAddress(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSignatureAddress"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstSignatureAddress"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def FlsTstTestAlgorithm getFlsTstTestAlgorithm(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestAlgorithm"].getFlsTstTestAlgorithmValue()
				}
				
				def void setFlsTstTestAlgorithm(FlsTstTestAlgorithm value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestAlgorithm"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestAlgorithm"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum FlsTstTestAlgorithm {
					FLSTST_16BIT_CRC, 
					FLSTST_32BIT_CRC, 
					FLSTST_8BIT_CRC, 
					FLSTST_CHECKSUM, 
					FLSTST_DUPLICATED_MEMORY, 
					FLSTST_ECC
				}
				
				def FlsTstTestAlgorithm getFlsTstTestAlgorithmValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FLSTST_16BIT_CRC" : FlsTstTestAlgorithm.FLSTST_16BIT_CRC
						case "FLSTST_32BIT_CRC" : FlsTstTestAlgorithm.FLSTST_32BIT_CRC
						case "FLSTST_8BIT_CRC" : FlsTstTestAlgorithm.FLSTST_8BIT_CRC
						case "FLSTST_CHECKSUM" : FlsTstTestAlgorithm.FLSTST_CHECKSUM
						case "FLSTST_DUPLICATED_MEMORY" : FlsTstTestAlgorithm.FLSTST_DUPLICATED_MEMORY
						case "FLSTST_ECC" : FlsTstTestAlgorithm.FLSTST_ECC
					}
				}
				
				def void setFlsTstTestAlgorithmValue(GParameterValue parameterValue, FlsTstTestAlgorithm value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class FlsTstBlockFgndConfigSet implements IWrapper<GContainer> {
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
		        if (!(object instanceof FlsTstBlockFgndConfigSet)){
					return false
				}
				this.target == (object as FlsTstBlockFgndConfigSet).target
			}
		
			
			
			def List<FlsTstBlock> getFlsTstBlocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FlsTstBlock")
					}
				}
				return new BasicWrappingEList<FlsTstBlock, GContainer>(filteredContainers, typeof(FlsTstBlock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar422.accessors.FlsTst.FlsTstConfigSet.FlsTstBlockFgndConfigSet.FlsTstBlock flsTstBlock) {
						flsTstBlock.target?.gSetDefinition(containerValue.getContainerDefinition("FlsTstBlock"))
						super.delegateAdd(flsTstBlock)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.FlsTst.FlsTstConfigSet.FlsTstBlockFgndConfigSet.FlsTstBlock flsTstBlock) {
						flsTstBlock.target?.gSetDefinition(containerValue.getContainerDefinition("FlsTstBlock"))
						super.delegateAdd(index, flsTstBlock)
					}
				}
			}
			
			
			static class FlsTstBlock implements IWrapper<GContainer> {
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
			        if (!(object instanceof FlsTstBlock)){
						return false
					}
					this.target == (object as FlsTstBlock).target
				}
			
				def BigInteger getFlsTstBlockBaseAddress(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockBaseAddress"].getBigIntegerValue()
				}
				
				def void setFlsTstBlockBaseAddress(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockBaseAddress"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockBaseAddress"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsTstBlockIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockIndex"].getBigIntegerValue()
				}
				
				def void setFlsTstBlockIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsTstBlockSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockSize"].getBigIntegerValue()
				}
				
				def void setFlsTstBlockSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsTstNumberOfTestedCells(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"].getBigIntegerValue()
				}
				
				def void setFlsTstNumberOfTestedCells(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstNumberOfTestedCells"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsTstSignatureAddress(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSignatureAddress"].getBigIntegerValue()
				}
				
				def void setFlsTstSignatureAddress(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSignatureAddress"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstSignatureAddress"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def FlsTstTestAlgorithm getFlsTstTestAlgorithm(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestAlgorithm"].getFlsTstTestAlgorithmValue()
				}
				
				def void setFlsTstTestAlgorithm(FlsTstTestAlgorithm value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestAlgorithm"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestAlgorithm"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum FlsTstTestAlgorithm {
					FLSTST_16BIT_CRC, 
					FLSTST_32BIT_CRC, 
					FLSTST_8BIT_CRC, 
					FLSTST_CHECKSUM, 
					FLSTST_DUPLICATED_MEMORY, 
					FLSTST_ECC
				}
				
				def FlsTstTestAlgorithm getFlsTstTestAlgorithmValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FLSTST_16BIT_CRC" : FlsTstTestAlgorithm.FLSTST_16BIT_CRC
						case "FLSTST_32BIT_CRC" : FlsTstTestAlgorithm.FLSTST_32BIT_CRC
						case "FLSTST_8BIT_CRC" : FlsTstTestAlgorithm.FLSTST_8BIT_CRC
						case "FLSTST_CHECKSUM" : FlsTstTestAlgorithm.FLSTST_CHECKSUM
						case "FLSTST_DUPLICATED_MEMORY" : FlsTstTestAlgorithm.FLSTST_DUPLICATED_MEMORY
						case "FLSTST_ECC" : FlsTstTestAlgorithm.FLSTST_ECC
					}
				}
				
				def void setFlsTstTestAlgorithmValue(GParameterValue parameterValue, FlsTstTestAlgorithm value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class FlsTstConfigurationOfOptApiServices implements IWrapper<GContainer> {
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
	        if (!(object instanceof FlsTstConfigurationOfOptApiServices)){
				return false
			}
			this.target == (object as FlsTstConfigurationOfOptApiServices).target
		}
	
		def Boolean getFlsTstGetCurrentStateApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetCurrentStateApi"].getBooleanValue()
		}
		
		def void setFlsTstGetCurrentStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetCurrentStateApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetCurrentStateApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTstGetErrorDetailsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetErrorDetailsApi"].getBooleanValue()
		}
		
		def void setFlsTstGetErrorDetailsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetErrorDetailsApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetErrorDetailsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTstGetTestResultBgndApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestResultBgndApi"].getBooleanValue()
		}
		
		def void setFlsTstGetTestResultBgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestResultBgndApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetTestResultBgndApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTstGetTestResultFgndApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestResultFgndApi"].getBooleanValue()
		}
		
		def void setFlsTstGetTestResultFgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestResultFgndApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetTestResultFgndApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTstGetTestSignatureBgndApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestSignatureBgndApi"].getBooleanValue()
		}
		
		def void setFlsTstGetTestSignatureBgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestSignatureBgndApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetTestSignatureBgndApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTstGetTestSignatureFgndApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestSignatureFgndApi"].getBooleanValue()
		}
		
		def void setFlsTstGetTestSignatureFgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestSignatureFgndApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetTestSignatureFgndApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTstStartFgndApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstStartFgndApi"].getBooleanValue()
		}
		
		def void setFlsTstStartFgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstStartFgndApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstStartFgndApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTstSuspendResumeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSuspendResumeApi"].getBooleanValue()
		}
		
		def void setFlsTstSuspendResumeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSuspendResumeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstSuspendResumeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTstTestEccApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestEccApi"].getBooleanValue()
		}
		
		def void setFlsTstTestEccApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestEccApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestEccApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTstVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstVersionInfoApi"].getBooleanValue()
		}
		
		def void setFlsTstVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class FlsTstDemEventParameterRefs implements IWrapper<GContainer> {
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
	        if (!(object instanceof FlsTstDemEventParameterRefs)){
				return false
			}
			this.target == (object as FlsTstDemEventParameterRefs).target
		}
	
		
		def org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter getFLSTST_E_FLSTST_FAILURE(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter), "FLSTST_E_FLSTST_FAILURE")
		}
		
		def void setFLSTST_E_FLSTST_FAILURE(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FLSTST_E_FLSTST_FAILURE"], object.getTarget())
			}
		}
		
		
		
	}
	static class FlsTstGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof FlsTstGeneral)){
				return false
			}
			this.target == (object as FlsTstGeneral).target
		}
	
		def Boolean getFlsTstDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstDevErrorDetect"].getBooleanValue()
		}
		
		def void setFlsTstDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFlsTstNumberOfTestedCells(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"].getBigIntegerValue()
		}
		
		def void setFlsTstNumberOfTestedCells(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstNumberOfTestedCells"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsTstNumberOfTestedCellsAtomic(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCellsAtomic"].getBigIntegerValue()
		}
		
		def void setFlsTstNumberOfTestedCellsAtomic(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCellsAtomic"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstNumberOfTestedCellsAtomic"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFlsTstTestCompletedNotificationSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestCompletedNotificationSupported"].getBooleanValue()
		}
		
		def void setFlsTstTestCompletedNotificationSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestCompletedNotificationSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestCompletedNotificationSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFlsTstTestIntervalIdEndValue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestIntervalIdEndValue"].getBigIntegerValue()
		}
		
		def void setFlsTstTestIntervalIdEndValue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestIntervalIdEndValue"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestIntervalIdEndValue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFlsTstTestResultSignature(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestResultSignature"].getBooleanValue()
		}
		
		def void setFlsTstTestResultSignature(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestResultSignature"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestResultSignature"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof FlsTst)){
			return false
		}
		this.target == (object as FlsTst).target
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
