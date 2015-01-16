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
		
		def Integer getFlsTstBlockNumberBgnd(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockNumberBgnd"])
		}
		
		def void setFlsTstBlockNumberBgnd(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockNumberBgnd"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockNumberBgnd"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsTstBlockNumberFgnd(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockNumberFgnd"])
		}
		
		def void setFlsTstBlockNumberFgnd(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockNumberFgnd"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockNumberFgnd"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getFlsTstTestCompletedNotification(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestCompletedNotification"])
		}
		
		def void setFlsTstTestCompletedNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestCompletedNotification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestCompletedNotification"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			
			
			def List<FlsTstBlock> getFlsTstBlocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FlsTstBlock")
					}
				}
				return new BasicWrappingEList<FlsTstBlock, GContainer>(filteredContainers, typeof(FlsTstBlock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FlsTst$FlsTstConfigSet$FlsTstBlockBgndConfigSet$FlsTstBlock flsTstBlock) {
						flsTstBlock.target?.gSetDefinition(containerValue.getContainerDefinition("FlsTstBlock"))
						super.delegateAdd(flsTstBlock)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FlsTst$FlsTstConfigSet$FlsTstBlockBgndConfigSet$FlsTstBlock flsTstBlock) {
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
				
				def Integer getFlsTstBlockBaseAddress(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockBaseAddress"])
				}
				
				def void setFlsTstBlockBaseAddress(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockBaseAddress"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockBaseAddress"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsTstBlockIndex(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockIndex"])
				}
				
				def void setFlsTstBlockIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsTstBlockSize(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockSize"])
				}
				
				def void setFlsTstBlockSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsTstNumberOfTestedCells(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"])
				}
				
				def void setFlsTstNumberOfTestedCells(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstNumberOfTestedCells"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsTstSignatureAddress(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSignatureAddress"])
				}
				
				def void setFlsTstSignatureAddress(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSignatureAddress"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstSignatureAddress"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def FlsTstTestAlgorithm getFlsTstTestAlgorithm(){
					getFlsTstTestAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestAlgorithm"])
				}
				
				def void setFlsTstTestAlgorithm(FlsTstTestAlgorithm value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestAlgorithm"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestAlgorithm"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum FlsTstTestAlgorithm {
					FLSTST_16BIT_CRC, 
					FLSTST_32BIT_CRC, 
					FLSTST_8BIT_CRC, 
					FLSTST_CHECKSUM, 
					FLSTST_DUPLICATED_MEMORY, 
					FLSTST_ECC
				}
					
				def FlsTstTestAlgorithm getFlsTstTestAlgorithmValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "FLSTST_16BIT_CRC" : FlsTstTestAlgorithm.FLSTST_16BIT_CRC
						case "FLSTST_32BIT_CRC" : FlsTstTestAlgorithm.FLSTST_32BIT_CRC
						case "FLSTST_8BIT_CRC" : FlsTstTestAlgorithm.FLSTST_8BIT_CRC
						case "FLSTST_CHECKSUM" : FlsTstTestAlgorithm.FLSTST_CHECKSUM
						case "FLSTST_DUPLICATED_MEMORY" : FlsTstTestAlgorithm.FLSTST_DUPLICATED_MEMORY
						case "FLSTST_ECC" : FlsTstTestAlgorithm.FLSTST_ECC
					}
				}
				
				def void setFlsTstTestAlgorithmValue(GParameterValue paramValue, FlsTstTestAlgorithm value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
			
			
			
			def List<FlsTstBlock> getFlsTstBlocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FlsTstBlock")
					}
				}
				return new BasicWrappingEList<FlsTstBlock, GContainer>(filteredContainers, typeof(FlsTstBlock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FlsTst$FlsTstConfigSet$FlsTstBlockFgndConfigSet$FlsTstBlock flsTstBlock) {
						flsTstBlock.target?.gSetDefinition(containerValue.getContainerDefinition("FlsTstBlock"))
						super.delegateAdd(flsTstBlock)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FlsTst$FlsTstConfigSet$FlsTstBlockFgndConfigSet$FlsTstBlock flsTstBlock) {
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
				
				def Integer getFlsTstBlockBaseAddress(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockBaseAddress"])
				}
				
				def void setFlsTstBlockBaseAddress(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockBaseAddress"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockBaseAddress"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsTstBlockIndex(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockIndex"])
				}
				
				def void setFlsTstBlockIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsTstBlockSize(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockSize"])
				}
				
				def void setFlsTstBlockSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstBlockSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstBlockSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsTstNumberOfTestedCells(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"])
				}
				
				def void setFlsTstNumberOfTestedCells(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCells"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstNumberOfTestedCells"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsTstSignatureAddress(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSignatureAddress"])
				}
				
				def void setFlsTstSignatureAddress(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSignatureAddress"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstSignatureAddress"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def FlsTstTestAlgorithm getFlsTstTestAlgorithm(){
					getFlsTstTestAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestAlgorithm"])
				}
				
				def void setFlsTstTestAlgorithm(FlsTstTestAlgorithm value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestAlgorithm"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestAlgorithm"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum FlsTstTestAlgorithm {
					FLSTST_16BIT_CRC, 
					FLSTST_32BIT_CRC, 
					FLSTST_8BIT_CRC, 
					FLSTST_CHECKSUM, 
					FLSTST_DUPLICATED_MEMORY, 
					FLSTST_ECC
				}
					
				def FlsTstTestAlgorithm getFlsTstTestAlgorithmValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "FLSTST_16BIT_CRC" : FlsTstTestAlgorithm.FLSTST_16BIT_CRC
						case "FLSTST_32BIT_CRC" : FlsTstTestAlgorithm.FLSTST_32BIT_CRC
						case "FLSTST_8BIT_CRC" : FlsTstTestAlgorithm.FLSTST_8BIT_CRC
						case "FLSTST_CHECKSUM" : FlsTstTestAlgorithm.FLSTST_CHECKSUM
						case "FLSTST_DUPLICATED_MEMORY" : FlsTstTestAlgorithm.FLSTST_DUPLICATED_MEMORY
						case "FLSTST_ECC" : FlsTstTestAlgorithm.FLSTST_ECC
					}
				}
				
				def void setFlsTstTestAlgorithmValue(GParameterValue paramValue, FlsTstTestAlgorithm value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
		
		def Boolean getFlsTstGetCurrentStateApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetCurrentStateApi"])
		}
		
		def void setFlsTstGetCurrentStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetCurrentStateApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetCurrentStateApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstGetErrorDetailsApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetErrorDetailsApi"])
		}
		
		def void setFlsTstGetErrorDetailsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetErrorDetailsApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetErrorDetailsApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstGetTestResultBgndApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestResultBgndApi"])
		}
		
		def void setFlsTstGetTestResultBgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestResultBgndApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetTestResultBgndApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstGetTestResultFgndApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestResultFgndApi"])
		}
		
		def void setFlsTstGetTestResultFgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestResultFgndApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetTestResultFgndApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstGetTestSignatureBgndApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestSignatureBgndApi"])
		}
		
		def void setFlsTstGetTestSignatureBgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestSignatureBgndApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetTestSignatureBgndApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstGetTestSignatureFgndApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestSignatureFgndApi"])
		}
		
		def void setFlsTstGetTestSignatureFgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstGetTestSignatureFgndApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstGetTestSignatureFgndApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstStartFgndApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstStartFgndApi"])
		}
		
		def void setFlsTstStartFgndApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstStartFgndApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstStartFgndApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstSuspendResumeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSuspendResumeApi"])
		}
		
		def void setFlsTstSuspendResumeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstSuspendResumeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstSuspendResumeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstTestEccApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestEccApi"])
		}
		
		def void setFlsTstTestEccApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestEccApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestEccApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstVersionInfoApi"])
		}
		
		def void setFlsTstVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFLSTST_E_FLSTST_FAILURE(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FLSTST_E_FLSTST_FAILURE")
		}
				
		def void setFLSTST_E_FLSTST_FAILURE(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FLSTST_E_FLSTST_FAILURE"], object.getTarget())
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
		
		def Boolean getFlsTstDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstDevErrorDetect"])
		}
		
		def void setFlsTstDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsTstNumberOfTestedCellsAtomic(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCellsAtomic"])
		}
		
		def void setFlsTstNumberOfTestedCellsAtomic(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstNumberOfTestedCellsAtomic"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstNumberOfTestedCellsAtomic"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstTestCompletedNotificationSupported(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestCompletedNotificationSupported"])
		}
		
		def void setFlsTstTestCompletedNotificationSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestCompletedNotificationSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestCompletedNotificationSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsTstTestIntervalIdEndValue(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestIntervalIdEndValue"])
		}
		
		def void setFlsTstTestIntervalIdEndValue(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestIntervalIdEndValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestIntervalIdEndValue"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsTstTestResultSignature(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestResultSignature"])
		}
		
		def void setFlsTstTestResultSignature(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTstTestResultSignature"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTstTestResultSignature"])
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
