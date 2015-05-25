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

class Com implements IWrapper<GModuleConfiguration> {
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
	
	def ComConfig getComConfig(){
		moduleConfiguration.getByType(typeof(ComConfig))
	}
	
	def void setComConfig(ComConfig comConfig){
		val GContainer container = comConfig.getTarget() 
	    moduleConfiguration.setContainer(container, "ComConfig")
	}
	def ComGeneral getComGeneral(){
		moduleConfiguration.getByType(typeof(ComGeneral))
	}
	
	def void setComGeneral(ComGeneral comGeneral){
		val GContainer container = comGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "ComGeneral")
	}
	
	static class ComConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof ComConfig)){
				return false
			}
			this.target == (object as ComConfig).target
		}
		
		def BigInteger getComDataMemSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataMemSize"])
		}
		
		def void setComDataMemSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataMemSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComDataMemSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getComMaxIPduCnt(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMaxIPduCnt"])
		}
		
		def void setComMaxIPduCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMaxIPduCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComMaxIPduCnt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<ComGwMapping> getComGwMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComGwMapping")
				}
			}
			return new BasicWrappingEList<ComGwMapping, GContainer>(filteredContainers, typeof(ComGwMapping), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComGwMapping comGwMapping) {
					comGwMapping.target?.gSetDefinition(containerValue.getContainerDefinition("ComGwMapping"))
					super.delegateAdd(comGwMapping)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComGwMapping comGwMapping) {
					comGwMapping.target?.gSetDefinition(containerValue.getContainerDefinition("ComGwMapping"))
					super.delegateAdd(index, comGwMapping)
				}	
			}
		}
		
		def List<ComIPdu> getComIPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComIPdu")
				}
			}
			return new BasicWrappingEList<ComIPdu, GContainer>(filteredContainers, typeof(ComIPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComIPdu comIPdu) {
					comIPdu.target?.gSetDefinition(containerValue.getContainerDefinition("ComIPdu"))
					super.delegateAdd(comIPdu)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComIPdu comIPdu) {
					comIPdu.target?.gSetDefinition(containerValue.getContainerDefinition("ComIPdu"))
					super.delegateAdd(index, comIPdu)
				}	
			}
		}
		
		def List<ComIPduGroup> getComIPduGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComIPduGroup")
				}
			}
			return new BasicWrappingEList<ComIPduGroup, GContainer>(filteredContainers, typeof(ComIPduGroup), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComIPduGroup comIPduGroup) {
					comIPduGroup.target?.gSetDefinition(containerValue.getContainerDefinition("ComIPduGroup"))
					super.delegateAdd(comIPduGroup)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComIPduGroup comIPduGroup) {
					comIPduGroup.target?.gSetDefinition(containerValue.getContainerDefinition("ComIPduGroup"))
					super.delegateAdd(index, comIPduGroup)
				}	
			}
		}
		
		def List<ComSignal> getComSignals(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComSignal")
				}
			}
			return new BasicWrappingEList<ComSignal, GContainer>(filteredContainers, typeof(ComSignal), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComSignal comSignal) {
					comSignal.target?.gSetDefinition(containerValue.getContainerDefinition("ComSignal"))
					super.delegateAdd(comSignal)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComSignal comSignal) {
					comSignal.target?.gSetDefinition(containerValue.getContainerDefinition("ComSignal"))
					super.delegateAdd(index, comSignal)
				}	
			}
		}
		
		def List<ComSignalGroup> getComSignalGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComSignalGroup")
				}
			}
			return new BasicWrappingEList<ComSignalGroup, GContainer>(filteredContainers, typeof(ComSignalGroup), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComSignalGroup comSignalGroup) {
					comSignalGroup.target?.gSetDefinition(containerValue.getContainerDefinition("ComSignalGroup"))
					super.delegateAdd(comSignalGroup)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComSignalGroup comSignalGroup) {
					comSignalGroup.target?.gSetDefinition(containerValue.getContainerDefinition("ComSignalGroup"))
					super.delegateAdd(index, comSignalGroup)
				}	
			}
		}
		
		def ComTimeBase getComTimeBase(){
			containerValue.getByType(typeof(ComTimeBase))
		}
		
		def void setComTimeBase(ComTimeBase comTimeBase){
			val GContainer subContainer = comTimeBase.getTarget()
			containerValue.setContainer(subContainer, "ComTimeBase")
		}
		
		
		static class ComGwMapping implements IWrapper<GContainer> {
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
		        if (!(object instanceof ComGwMapping)){
					return false
				}
				this.target == (object as ComGwMapping).target
			}
			
			
			
			def List<ComGwDestination> getComGwDestinations(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "ComGwDestination")
					}
				}
				return new BasicWrappingEList<ComGwDestination, GContainer>(filteredContainers, typeof(ComGwDestination), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComGwMapping$ComGwDestination comGwDestination) {
						comGwDestination.target?.gSetDefinition(containerValue.getContainerDefinition("ComGwDestination"))
						super.delegateAdd(comGwDestination)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComGwMapping$ComGwDestination comGwDestination) {
						comGwDestination.target?.gSetDefinition(containerValue.getContainerDefinition("ComGwDestination"))
						super.delegateAdd(index, comGwDestination)
					}	
				}
			}
			
			def ComGwSource getComGwSource(){
				containerValue.getByType(typeof(ComGwSource))
			}
			
			def void setComGwSource(ComGwSource comGwSource){
				val GContainer subContainer = comGwSource.getTarget()
				containerValue.setContainer(subContainer, "ComGwSource")
			}
			
			
			static class ComGwDestination implements IWrapper<GContainer> {
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
			        if (!(object instanceof ComGwDestination)){
						return false
					}
					this.target == (object as ComGwDestination).target
				}
				
				def ComGwDestinationDescription getComGwDestinationDescription(){
					containerValue.getByType(typeof(ComGwDestinationDescription))
				}
				
				def void setComGwDestinationDescription(ComGwDestinationDescription comGwDestinationDescription){
					val GContainer subContainer = comGwDestinationDescription.getTarget()
					containerValue.setContainer(subContainer, "ComGwDestinationDescription")
				}
				def ComGwSignal getComGwSignal(){
					containerValue.getByType(typeof(ComGwSignal))
				}
				
				def void setComGwSignal(ComGwSignal comGwSignal){
					val GContainer subContainer = comGwSignal.getTarget()
					containerValue.setContainer(subContainer, "ComGwSignal")
				}
				
				static class ComGwDestinationDescription implements IWrapper<GContainer> {
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
				        if (!(object instanceof ComGwDestinationDescription)){
							return false
						}
						this.target == (object as ComGwDestinationDescription).target
					}
					
					def BigInteger getComBitPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"])
					}
					
					def void setComBitPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def ComSignalEndianness getComSignalEndianness(){
						getComSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"])
					}
					
					def void setComSignalEndianness(ComSignalEndianness value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalEndianness"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum ComSignalEndianness {
						BIG_ENDIAN, 
						LITTLE_ENDIAN, 
						OPAQUE
					}
						
					def ComSignalEndianness getComSignalEndiannessValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "BIG_ENDIAN" : ComSignalEndianness.BIG_ENDIAN
							case "LITTLE_ENDIAN" : ComSignalEndianness.LITTLE_ENDIAN
							case "OPAQUE" : ComSignalEndianness.OPAQUE
						}
					}
					
					def void setComSignalEndiannessValue(GParameterValue paramValue, ComSignalEndianness value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def String getComSignalInitValue(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"])
					}
					
					def void setComSignalInitValue(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalInitValue"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def ComTransferProperty getComTransferProperty(){
						getComTransferPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"])
					}
					
					def void setComTransferProperty(ComTransferProperty value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTransferProperty"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum ComTransferProperty {
						PENDING, 
						TRIGGERED, 
						TRIGGERED_ON_CHANGE, 
						TRIGGERED_ON_CHANGE_WITHOUT_REPETITION, 
						TRIGGERED_WITHOUT_REPETITION
					}
						
					def ComTransferProperty getComTransferPropertyValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "PENDING" : ComTransferProperty.PENDING
							case "TRIGGERED" : ComTransferProperty.TRIGGERED
							case "TRIGGERED_ON_CHANGE" : ComTransferProperty.TRIGGERED_ON_CHANGE
							case "TRIGGERED_ON_CHANGE_WITHOUT_REPETITION" : ComTransferProperty.TRIGGERED_ON_CHANGE_WITHOUT_REPETITION
							case "TRIGGERED_WITHOUT_REPETITION" : ComTransferProperty.TRIGGERED_WITHOUT_REPETITION
						}
					}
					
					def void setComTransferPropertyValue(GParameterValue paramValue, ComTransferProperty value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def BigInteger getComUpdateBitPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"])
					}
					
					def void setComUpdateBitPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComUpdateBitPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu getComGwIPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu), "ComGwIPduRef")
					}
							
					def void setComGwIPduRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ComGwIPduRef"], object.getTarget())
						}
					}
					
					
					def ComFilter getComFilter(){
						containerValue.getByType(typeof(ComFilter))
					}
					
					def void setComFilter(ComFilter comFilter){
						val GContainer subContainer = comFilter.getTarget()
						containerValue.setContainer(subContainer, "ComFilter")
					}
					
					
					static class ComFilter implements IWrapper<GContainer> {
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
					        if (!(object instanceof ComFilter)){
								return false
							}
							this.target == (object as ComFilter).target
						}
						
						def ComFilterAlgorithm getComFilterAlgorithm(){
							getComFilterAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"])
						}
						
						def void setComFilterAlgorithm(ComFilterAlgorithm value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterAlgorithm"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum ComFilterAlgorithm {
							ALWAYS, 
							MASKED_NEW_DIFFERS_MASKED_OLD, 
							MASKED_NEW_DIFFERS_X, 
							MASKED_NEW_EQUALS_X, 
							NEVER, 
							NEW_IS_OUTSIDE, 
							NEW_IS_WITHIN, 
							ONE_EVERY_N
						}
							
						def ComFilterAlgorithm getComFilterAlgorithmValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "ALWAYS" : ComFilterAlgorithm.ALWAYS
								case "MASKED_NEW_DIFFERS_MASKED_OLD" : ComFilterAlgorithm.MASKED_NEW_DIFFERS_MASKED_OLD
								case "MASKED_NEW_DIFFERS_X" : ComFilterAlgorithm.MASKED_NEW_DIFFERS_X
								case "MASKED_NEW_EQUALS_X" : ComFilterAlgorithm.MASKED_NEW_EQUALS_X
								case "NEVER" : ComFilterAlgorithm.NEVER
								case "NEW_IS_OUTSIDE" : ComFilterAlgorithm.NEW_IS_OUTSIDE
								case "NEW_IS_WITHIN" : ComFilterAlgorithm.NEW_IS_WITHIN
								case "ONE_EVERY_N" : ComFilterAlgorithm.ONE_EVERY_N
							}
						}
						
						def void setComFilterAlgorithmValue(GParameterValue paramValue, ComFilterAlgorithm value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						def BigInteger getComFilterMask(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"])
						}
						
						def void setComFilterMask(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMask"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getComFilterMax(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"])
						}
						
						def void setComFilterMax(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMax"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getComFilterMin(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"])
						}
						
						def void setComFilterMin(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMin"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getComFilterOffset(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"])
						}
						
						def void setComFilterOffset(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterOffset"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getComFilterPeriod(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"])
						}
						
						def void setComFilterPeriod(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterPeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getComFilterX(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"])
						}
						
						def void setComFilterX(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterX"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
				static class ComGwSignal implements IWrapper<GContainer> {
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
				        if (!(object instanceof ComGwSignal)){
							return false
						}
						this.target == (object as ComGwSignal).target
					}
					
					
					
					
					
				}
				
			}
			
			static class ComGwSource implements IWrapper<GContainer> {
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
			        if (!(object instanceof ComGwSource)){
						return false
					}
					this.target == (object as ComGwSource).target
				}
				
				def ComGwSignal getComGwSignal(){
					containerValue.getByType(typeof(ComGwSignal))
				}
				
				def void setComGwSignal(ComGwSignal comGwSignal){
					val GContainer subContainer = comGwSignal.getTarget()
					containerValue.setContainer(subContainer, "ComGwSignal")
				}
				def ComGwSourceDescription getComGwSourceDescription(){
					containerValue.getByType(typeof(ComGwSourceDescription))
				}
				
				def void setComGwSourceDescription(ComGwSourceDescription comGwSourceDescription){
					val GContainer subContainer = comGwSourceDescription.getTarget()
					containerValue.setContainer(subContainer, "ComGwSourceDescription")
				}
				
				static class ComGwSignal implements IWrapper<GContainer> {
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
				        if (!(object instanceof ComGwSignal)){
							return false
						}
						this.target == (object as ComGwSignal).target
					}
					
					
					
					
					
				}
				
				static class ComGwSourceDescription implements IWrapper<GContainer> {
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
				        if (!(object instanceof ComGwSourceDescription)){
							return false
						}
						this.target == (object as ComGwSourceDescription).target
					}
					
					def BigInteger getComBitPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"])
					}
					
					def void setComBitPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getComBitSize(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"])
					}
					
					def void setComBitSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def ComSignalEndianness getComSignalEndianness(){
						getComSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"])
					}
					
					def void setComSignalEndianness(ComSignalEndianness value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalEndianness"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum ComSignalEndianness {
						BIG_ENDIAN, 
						LITTLE_ENDIAN, 
						OPAQUE
					}
						
					def ComSignalEndianness getComSignalEndiannessValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "BIG_ENDIAN" : ComSignalEndianness.BIG_ENDIAN
							case "LITTLE_ENDIAN" : ComSignalEndianness.LITTLE_ENDIAN
							case "OPAQUE" : ComSignalEndianness.OPAQUE
						}
					}
					
					def void setComSignalEndiannessValue(GParameterValue paramValue, ComSignalEndianness value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def BigInteger getComSignalLength(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"])
					}
					
					def void setComSignalLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def ComSignalType getComSignalType(){
						getComSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"])
					}
					
					def void setComSignalType(ComSignalType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum ComSignalType {
						BOOLEAN, 
						FLOAT32, 
						FLOAT64, 
						SINT16, 
						SINT32, 
						SINT8, 
						UINT16, 
						UINT32, 
						UINT8, 
						UINT8_DYN, 
						UINT8_N
					}
						
					def ComSignalType getComSignalTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "BOOLEAN" : ComSignalType.BOOLEAN
							case "FLOAT32" : ComSignalType.FLOAT32
							case "FLOAT64" : ComSignalType.FLOAT64
							case "SINT16" : ComSignalType.SINT16
							case "SINT32" : ComSignalType.SINT32
							case "SINT8" : ComSignalType.SINT8
							case "UINT16" : ComSignalType.UINT16
							case "UINT32" : ComSignalType.UINT32
							case "UINT8" : ComSignalType.UINT8
							case "UINT8_DYN" : ComSignalType.UINT8_DYN
							case "UINT8_N" : ComSignalType.UINT8_N
						}
					}
					
					def void setComSignalTypeValue(GParameterValue paramValue, ComSignalType value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def BigInteger getComUpdateBitPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"])
					}
					
					def void setComUpdateBitPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComUpdateBitPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu getComGwIPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu), "ComGwIPduRef")
					}
							
					def void setComGwIPduRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ComGwIPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
		static class ComIPdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof ComIPdu)){
					return false
				}
				this.target == (object as ComIPdu).target
			}
			
			def String getComIPduCallout(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCallout"])
			}
			
			def void setComIPduCallout(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCallout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCallout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getComIPduCancellationSupport(){
				EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCancellationSupport"])
			}
			
			def void setComIPduCancellationSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCancellationSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCancellationSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
			}
			
			def ComIPduDirection getComIPduDirection(){
				getComIPduDirectionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduDirection"])
			}
			
			def void setComIPduDirection(ComIPduDirection value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduDirection"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduDirection"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComIPduDirection {
				RECEIVE, 
				SEND
			}
				
			def ComIPduDirection getComIPduDirectionValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "RECEIVE" : ComIPduDirection.RECEIVE
					case "SEND" : ComIPduDirection.SEND
				}
			}
			
			def void setComIPduDirectionValue(GParameterValue paramValue, ComIPduDirection value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getComIPduHandleId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduHandleId"])
			}
			
			def void setComIPduHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def ComIPduSignalProcessing getComIPduSignalProcessing(){
				getComIPduSignalProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduSignalProcessing"])
			}
			
			def void setComIPduSignalProcessing(ComIPduSignalProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduSignalProcessing"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduSignalProcessing"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComIPduSignalProcessing {
				DEFERRED, 
				IMMEDIATE
			}
				
			def ComIPduSignalProcessing getComIPduSignalProcessingValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEFERRED" : ComIPduSignalProcessing.DEFERRED
					case "IMMEDIATE" : ComIPduSignalProcessing.IMMEDIATE
				}
			}
			
			def void setComIPduSignalProcessingValue(GParameterValue paramValue, ComIPduSignalProcessing value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def String getComIPduTriggerTransmitCallout(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduTriggerTransmitCallout"])
			}
			
			def void setComIPduTriggerTransmitCallout(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduTriggerTransmitCallout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduTriggerTransmitCallout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def ComIPduType getComIPduType(){
				getComIPduTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduType"])
			}
			
			def void setComIPduType(ComIPduType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComIPduType {
				NORMAL, 
				TP
			}
				
			def ComIPduType getComIPduTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "NORMAL" : ComIPduType.NORMAL
					case "TP" : ComIPduType.TP
				}
			}
			
			def void setComIPduTypeValue(GParameterValue paramValue, ComIPduType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup> getComIPduGroupRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduGroupRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "ComIPduGroupRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
						if (object != null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
					
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue != null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def List<org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignalGroup> getComIPduSignalGroupRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduSignalGroupRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "ComIPduSignalGroupRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignalGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignalGroup)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignalGroup object) throws CoreException {
						if (object != null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
					
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue != null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignalGroup(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def List<org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal> getComIPduSignalRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduSignalRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "ComIPduSignalRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal object) throws CoreException {
						if (object != null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
					
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue != null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getComPduIdRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "ComPduIdRef")
			}
					
			def void setComPduIdRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ComPduIdRef"], object.getTarget())
				}
			}
			
			
			def ComIPduCounter getComIPduCounter(){
				containerValue.getByType(typeof(ComIPduCounter))
			}
			
			def void setComIPduCounter(ComIPduCounter comIPduCounter){
				val GContainer subContainer = comIPduCounter.getTarget()
				containerValue.setContainer(subContainer, "ComIPduCounter")
			}
			
			def ComIPduReplication getComIPduReplication(){
				containerValue.getByType(typeof(ComIPduReplication))
			}
			
			def void setComIPduReplication(ComIPduReplication comIPduReplication){
				val GContainer subContainer = comIPduReplication.getTarget()
				containerValue.setContainer(subContainer, "ComIPduReplication")
			}
			
			def ComTxIPdu getComTxIPdu(){
				containerValue.getByType(typeof(ComTxIPdu))
			}
			
			def void setComTxIPdu(ComTxIPdu comTxIPdu){
				val GContainer subContainer = comTxIPdu.getTarget()
				containerValue.setContainer(subContainer, "ComTxIPdu")
			}
			
			
			static class ComIPduCounter implements IWrapper<GContainer> {
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
			        if (!(object instanceof ComIPduCounter)){
						return false
					}
					this.target == (object as ComIPduCounter).target
				}
				
				def String getComIPduCounterErrorNotification(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterErrorNotification"])
				}
				
				def void setComIPduCounterErrorNotification(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterErrorNotification"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCounterErrorNotification"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComIPduCounterSize(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterSize"])
				}
				
				def void setComIPduCounterSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCounterSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComIPduCounterStartPosition(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterStartPosition"])
				}
				
				def void setComIPduCounterStartPosition(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterStartPosition"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCounterStartPosition"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComIPduCounterThreshold(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterThreshold"])
				}
				
				def void setComIPduCounterThreshold(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterThreshold"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCounterThreshold"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class ComIPduReplication implements IWrapper<GContainer> {
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
			        if (!(object instanceof ComIPduReplication)){
						return false
					}
					this.target == (object as ComIPduReplication).target
				}
				
				def BigInteger getComIPduReplicationQuorum(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduReplicationQuorum"])
				}
				
				def void setComIPduReplicationQuorum(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduReplicationQuorum"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduReplicationQuorum"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def List<org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu> getComIPduReplicaRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduReplicaRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "ComIPduReplicaRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object) throws CoreException {
							if (object != null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
						
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue != null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
			static class ComTxIPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof ComTxIPdu)){
						return false
					}
					this.target == (object as ComTxIPdu).target
				}
				
				def String getComMetaDataDefault(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMetaDataDefault"])
				}
				
				def void setComMetaDataDefault(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMetaDataDefault"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComMetaDataDefault"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getComMinimumDelayTime(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMinimumDelayTime"])
				}
				
				def void setComMinimumDelayTime(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMinimumDelayTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComMinimumDelayTime"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def ComTxIPduClearUpdateBit getComTxIPduClearUpdateBit(){
					getComTxIPduClearUpdateBitValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxIPduClearUpdateBit"])
				}
				
				def void setComTxIPduClearUpdateBit(ComTxIPduClearUpdateBit value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxIPduClearUpdateBit"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxIPduClearUpdateBit"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum ComTxIPduClearUpdateBit {
					Confirmation, 
					Transmit, 
					TriggerTransmit
				}
					
				def ComTxIPduClearUpdateBit getComTxIPduClearUpdateBitValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "Confirmation" : ComTxIPduClearUpdateBit.Confirmation
						case "Transmit" : ComTxIPduClearUpdateBit.Transmit
						case "TriggerTransmit" : ComTxIPduClearUpdateBit.TriggerTransmit
					}
				}
				
				def void setComTxIPduClearUpdateBitValue(GParameterValue paramValue, ComTxIPduClearUpdateBit value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getComTxIPduUnusedAreasDefault(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxIPduUnusedAreasDefault"])
				}
				
				def void setComTxIPduUnusedAreasDefault(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxIPduUnusedAreasDefault"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxIPduUnusedAreasDefault"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def ComTxModeFalse getComTxModeFalse(){
					containerValue.getByType(typeof(ComTxModeFalse))
				}
				
				def void setComTxModeFalse(ComTxModeFalse comTxModeFalse){
					val GContainer subContainer = comTxModeFalse.getTarget()
					containerValue.setContainer(subContainer, "ComTxModeFalse")
				}
				
				def ComTxModeTrue getComTxModeTrue(){
					containerValue.getByType(typeof(ComTxModeTrue))
				}
				
				def void setComTxModeTrue(ComTxModeTrue comTxModeTrue){
					val GContainer subContainer = comTxModeTrue.getTarget()
					containerValue.setContainer(subContainer, "ComTxModeTrue")
				}
				
				
				static class ComTxModeFalse implements IWrapper<GContainer> {
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
				        if (!(object instanceof ComTxModeFalse)){
							return false
						}
						this.target == (object as ComTxModeFalse).target
					}
					
					
					
					def ComTxMode getComTxMode(){
						containerValue.getByType(typeof(ComTxMode))
					}
					
					def void setComTxMode(ComTxMode comTxMode){
						val GContainer subContainer = comTxMode.getTarget()
						containerValue.setContainer(subContainer, "ComTxMode")
					}
					
					
					static class ComTxMode implements IWrapper<GContainer> {
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
					        if (!(object instanceof ComTxMode)){
								return false
							}
							this.target == (object as ComTxMode).target
						}
						
						def ComTxModeMode getComTxModeMode(){
							getComTxModeModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeMode"])
						}
						
						def void setComTxModeMode(ComTxModeMode value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeMode"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeMode"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum ComTxModeMode {
							DIRECT, 
							MIXED, 
							NONE, 
							PERIODIC
						}
							
						def ComTxModeMode getComTxModeModeValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "DIRECT" : ComTxModeMode.DIRECT
								case "MIXED" : ComTxModeMode.MIXED
								case "NONE" : ComTxModeMode.NONE
								case "PERIODIC" : ComTxModeMode.PERIODIC
							}
						}
						
						def void setComTxModeModeValue(GParameterValue paramValue, ComTxModeMode value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						def BigInteger getComTxModeNumberOfRepetitions(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeNumberOfRepetitions"])
						}
						
						def void setComTxModeNumberOfRepetitions(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeNumberOfRepetitions"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeNumberOfRepetitions"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigDecimal getComTxModeRepetitionPeriod(){
							EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeRepetitionPeriod"])
						}
						
						def void setComTxModeRepetitionPeriod(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeRepetitionPeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeRepetitionPeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigDecimal getComTxModeTimeOffset(){
							EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimeOffset"])
						}
						
						def void setComTxModeTimeOffset(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimeOffset"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeTimeOffset"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigDecimal getComTxModeTimePeriod(){
							EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimePeriod"])
						}
						
						def void setComTxModeTimePeriod(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimePeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeTimePeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
				static class ComTxModeTrue implements IWrapper<GContainer> {
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
				        if (!(object instanceof ComTxModeTrue)){
							return false
						}
						this.target == (object as ComTxModeTrue).target
					}
					
					
					
					def ComTxMode getComTxMode(){
						containerValue.getByType(typeof(ComTxMode))
					}
					
					def void setComTxMode(ComTxMode comTxMode){
						val GContainer subContainer = comTxMode.getTarget()
						containerValue.setContainer(subContainer, "ComTxMode")
					}
					
					
					static class ComTxMode implements IWrapper<GContainer> {
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
					        if (!(object instanceof ComTxMode)){
								return false
							}
							this.target == (object as ComTxMode).target
						}
						
						def ComTxModeMode getComTxModeMode(){
							getComTxModeModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeMode"])
						}
						
						def void setComTxModeMode(ComTxModeMode value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeMode"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeMode"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum ComTxModeMode {
							DIRECT, 
							MIXED, 
							NONE, 
							PERIODIC
						}
							
						def ComTxModeMode getComTxModeModeValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "DIRECT" : ComTxModeMode.DIRECT
								case "MIXED" : ComTxModeMode.MIXED
								case "NONE" : ComTxModeMode.NONE
								case "PERIODIC" : ComTxModeMode.PERIODIC
							}
						}
						
						def void setComTxModeModeValue(GParameterValue paramValue, ComTxModeMode value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						def BigInteger getComTxModeNumberOfRepetitions(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeNumberOfRepetitions"])
						}
						
						def void setComTxModeNumberOfRepetitions(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeNumberOfRepetitions"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeNumberOfRepetitions"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigDecimal getComTxModeRepetitionPeriod(){
							EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeRepetitionPeriod"])
						}
						
						def void setComTxModeRepetitionPeriod(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeRepetitionPeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeRepetitionPeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigDecimal getComTxModeTimeOffset(){
							EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimeOffset"])
						}
						
						def void setComTxModeTimeOffset(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimeOffset"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeTimeOffset"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigDecimal getComTxModeTimePeriod(){
							EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimePeriod"])
						}
						
						def void setComTxModeTimePeriod(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimePeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeTimePeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
			}
			
		}
		
		static class ComIPduGroup implements IWrapper<GContainer> {
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
		        if (!(object instanceof ComIPduGroup)){
					return false
				}
				this.target == (object as ComIPduGroup).target
			}
			
			def BigInteger getComIPduGroupHandleId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduGroupHandleId"])
			}
			
			def void setComIPduGroupHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduGroupHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduGroupHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup> getComIPduGroupGroupRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduGroupGroupRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "ComIPduGroupGroupRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
						if (object != null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
					
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue != null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class ComSignal implements IWrapper<GContainer> {
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
		        if (!(object instanceof ComSignal)){
					return false
				}
				this.target == (object as ComSignal).target
			}
			
			def BigInteger getComBitPosition(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"])
			}
			
			def void setComBitPosition(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitPosition"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getComBitSize(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"])
			}
			
			def void setComBitSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def ComDataInvalidAction getComDataInvalidAction(){
				getComDataInvalidActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataInvalidAction"])
			}
			
			def void setComDataInvalidAction(ComDataInvalidAction value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataInvalidAction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComDataInvalidAction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComDataInvalidAction {
				NOTIFY, 
				REPLACE
			}
				
			def ComDataInvalidAction getComDataInvalidActionValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "NOTIFY" : ComDataInvalidAction.NOTIFY
					case "REPLACE" : ComDataInvalidAction.REPLACE
				}
			}
			
			def void setComDataInvalidActionValue(GParameterValue paramValue, ComDataInvalidAction value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def String getComErrorNotification(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComErrorNotification"])
			}
			
			def void setComErrorNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComErrorNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComErrorNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getComFirstTimeout(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFirstTimeout"])
			}
			
			def void setComFirstTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFirstTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFirstTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getComHandleId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"])
			}
			
			def void setComHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getComInitialValueOnly(){
				EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInitialValueOnly"])
			}
			
			def void setComInitialValueOnly(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInitialValueOnly"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComInitialValueOnly"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
			}
			
			def String getComInvalidNotification(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInvalidNotification"])
			}
			
			def void setComInvalidNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInvalidNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComInvalidNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getComNotification(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComNotification"])
			}
			
			def void setComNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def ComRxDataTimeoutAction getComRxDataTimeoutAction(){
				getComRxDataTimeoutActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxDataTimeoutAction"])
			}
			
			def void setComRxDataTimeoutAction(ComRxDataTimeoutAction value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxDataTimeoutAction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComRxDataTimeoutAction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComRxDataTimeoutAction {
				NONE, 
				REPLACE
			}
				
			def ComRxDataTimeoutAction getComRxDataTimeoutActionValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "NONE" : ComRxDataTimeoutAction.NONE
					case "REPLACE" : ComRxDataTimeoutAction.REPLACE
				}
			}
			
			def void setComRxDataTimeoutActionValue(GParameterValue paramValue, ComRxDataTimeoutAction value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def String getComSignalDataInvalidValue(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalDataInvalidValue"])
			}
			
			def void setComSignalDataInvalidValue(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalDataInvalidValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalDataInvalidValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def ComSignalEndianness getComSignalEndianness(){
				getComSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"])
			}
			
			def void setComSignalEndianness(ComSignalEndianness value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalEndianness"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComSignalEndianness {
				BIG_ENDIAN, 
				LITTLE_ENDIAN, 
				OPAQUE
			}
				
			def ComSignalEndianness getComSignalEndiannessValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "BIG_ENDIAN" : ComSignalEndianness.BIG_ENDIAN
					case "LITTLE_ENDIAN" : ComSignalEndianness.LITTLE_ENDIAN
					case "OPAQUE" : ComSignalEndianness.OPAQUE
				}
			}
			
			def void setComSignalEndiannessValue(GParameterValue paramValue, ComSignalEndianness value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def String getComSignalInitValue(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"])
			}
			
			def void setComSignalInitValue(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalInitValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getComSignalLength(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"])
			}
			
			def void setComSignalLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalLength"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def ComSignalType getComSignalType(){
				getComSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"])
			}
			
			def void setComSignalType(ComSignalType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComSignalType {
				BOOLEAN, 
				FLOAT32, 
				FLOAT64, 
				SINT16, 
				SINT32, 
				SINT8, 
				UINT16, 
				UINT32, 
				UINT8, 
				UINT8_DYN, 
				UINT8_N
			}
				
			def ComSignalType getComSignalTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "BOOLEAN" : ComSignalType.BOOLEAN
					case "FLOAT32" : ComSignalType.FLOAT32
					case "FLOAT64" : ComSignalType.FLOAT64
					case "SINT16" : ComSignalType.SINT16
					case "SINT32" : ComSignalType.SINT32
					case "SINT8" : ComSignalType.SINT8
					case "UINT16" : ComSignalType.UINT16
					case "UINT32" : ComSignalType.UINT32
					case "UINT8" : ComSignalType.UINT8
					case "UINT8_DYN" : ComSignalType.UINT8_DYN
					case "UINT8_N" : ComSignalType.UINT8_N
				}
			}
			
			def void setComSignalTypeValue(GParameterValue paramValue, ComSignalType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigDecimal getComTimeout(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeout"])
			}
			
			def void setComTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getComTimeoutNotification(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeoutNotification"])
			}
			
			def void setComTimeoutNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeoutNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTimeoutNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def ComTransferProperty getComTransferProperty(){
				getComTransferPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"])
			}
			
			def void setComTransferProperty(ComTransferProperty value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTransferProperty"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComTransferProperty {
				PENDING, 
				TRIGGERED, 
				TRIGGERED_ON_CHANGE, 
				TRIGGERED_ON_CHANGE_WITHOUT_REPETITION, 
				TRIGGERED_WITHOUT_REPETITION
			}
				
			def ComTransferProperty getComTransferPropertyValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "PENDING" : ComTransferProperty.PENDING
					case "TRIGGERED" : ComTransferProperty.TRIGGERED
					case "TRIGGERED_ON_CHANGE" : ComTransferProperty.TRIGGERED_ON_CHANGE
					case "TRIGGERED_ON_CHANGE_WITHOUT_REPETITION" : ComTransferProperty.TRIGGERED_ON_CHANGE_WITHOUT_REPETITION
					case "TRIGGERED_WITHOUT_REPETITION" : ComTransferProperty.TRIGGERED_WITHOUT_REPETITION
				}
			}
			
			def void setComTransferPropertyValue(GParameterValue paramValue, ComTransferProperty value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getComUpdateBitPosition(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"])
			}
			
			def void setComUpdateBitPosition(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComUpdateBitPosition"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
			def ComFilter getComFilter(){
				containerValue.getByType(typeof(ComFilter))
			}
			
			def void setComFilter(ComFilter comFilter){
				val GContainer subContainer = comFilter.getTarget()
				containerValue.setContainer(subContainer, "ComFilter")
			}
			
			
			static class ComFilter implements IWrapper<GContainer> {
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
			        if (!(object instanceof ComFilter)){
						return false
					}
					this.target == (object as ComFilter).target
				}
				
				def ComFilterAlgorithm getComFilterAlgorithm(){
					getComFilterAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"])
				}
				
				def void setComFilterAlgorithm(ComFilterAlgorithm value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterAlgorithm"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum ComFilterAlgorithm {
					ALWAYS, 
					MASKED_NEW_DIFFERS_MASKED_OLD, 
					MASKED_NEW_DIFFERS_X, 
					MASKED_NEW_EQUALS_X, 
					NEVER, 
					NEW_IS_OUTSIDE, 
					NEW_IS_WITHIN, 
					ONE_EVERY_N
				}
					
				def ComFilterAlgorithm getComFilterAlgorithmValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ALWAYS" : ComFilterAlgorithm.ALWAYS
						case "MASKED_NEW_DIFFERS_MASKED_OLD" : ComFilterAlgorithm.MASKED_NEW_DIFFERS_MASKED_OLD
						case "MASKED_NEW_DIFFERS_X" : ComFilterAlgorithm.MASKED_NEW_DIFFERS_X
						case "MASKED_NEW_EQUALS_X" : ComFilterAlgorithm.MASKED_NEW_EQUALS_X
						case "NEVER" : ComFilterAlgorithm.NEVER
						case "NEW_IS_OUTSIDE" : ComFilterAlgorithm.NEW_IS_OUTSIDE
						case "NEW_IS_WITHIN" : ComFilterAlgorithm.NEW_IS_WITHIN
						case "ONE_EVERY_N" : ComFilterAlgorithm.ONE_EVERY_N
					}
				}
				
				def void setComFilterAlgorithmValue(GParameterValue paramValue, ComFilterAlgorithm value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getComFilterMask(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"])
				}
				
				def void setComFilterMask(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMask"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComFilterMax(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"])
				}
				
				def void setComFilterMax(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMax"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComFilterMin(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"])
				}
				
				def void setComFilterMin(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMin"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComFilterOffset(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"])
				}
				
				def void setComFilterOffset(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterOffset"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComFilterPeriod(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"])
				}
				
				def void setComFilterPeriod(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterPeriod"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComFilterX(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"])
				}
				
				def void setComFilterX(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterX"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class ComSignalGroup implements IWrapper<GContainer> {
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
		        if (!(object instanceof ComSignalGroup)){
					return false
				}
				this.target == (object as ComSignalGroup).target
			}
			
			def ComDataInvalidAction getComDataInvalidAction(){
				getComDataInvalidActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataInvalidAction"])
			}
			
			def void setComDataInvalidAction(ComDataInvalidAction value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataInvalidAction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComDataInvalidAction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComDataInvalidAction {
				NOTIFY, 
				REPLACE
			}
				
			def ComDataInvalidAction getComDataInvalidActionValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "NOTIFY" : ComDataInvalidAction.NOTIFY
					case "REPLACE" : ComDataInvalidAction.REPLACE
				}
			}
			
			def void setComDataInvalidActionValue(GParameterValue paramValue, ComDataInvalidAction value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def String getComErrorNotification(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComErrorNotification"])
			}
			
			def void setComErrorNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComErrorNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComErrorNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getComFirstTimeout(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFirstTimeout"])
			}
			
			def void setComFirstTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFirstTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFirstTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getComHandleId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"])
			}
			
			def void setComHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getComInitialValueOnly(){
				EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInitialValueOnly"])
			}
			
			def void setComInitialValueOnly(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInitialValueOnly"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComInitialValueOnly"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
			}
			
			def String getComInvalidNotification(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInvalidNotification"])
			}
			
			def void setComInvalidNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInvalidNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComInvalidNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getComNotification(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComNotification"])
			}
			
			def void setComNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def ComRxDataTimeoutAction getComRxDataTimeoutAction(){
				getComRxDataTimeoutActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxDataTimeoutAction"])
			}
			
			def void setComRxDataTimeoutAction(ComRxDataTimeoutAction value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxDataTimeoutAction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComRxDataTimeoutAction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComRxDataTimeoutAction {
				NONE, 
				REPLACE
			}
				
			def ComRxDataTimeoutAction getComRxDataTimeoutActionValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "NONE" : ComRxDataTimeoutAction.NONE
					case "REPLACE" : ComRxDataTimeoutAction.REPLACE
				}
			}
			
			def void setComRxDataTimeoutActionValue(GParameterValue paramValue, ComRxDataTimeoutAction value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def Boolean getComSignalGroupArrayAccess(){
				EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalGroupArrayAccess"])
			}
			
			def void setComSignalGroupArrayAccess(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalGroupArrayAccess"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalGroupArrayAccess"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getComTimeout(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeout"])
			}
			
			def void setComTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getComTimeoutNotification(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeoutNotification"])
			}
			
			def void setComTimeoutNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeoutNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTimeoutNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def ComTransferProperty getComTransferProperty(){
				getComTransferPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"])
			}
			
			def void setComTransferProperty(ComTransferProperty value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTransferProperty"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum ComTransferProperty {
				PENDING, 
				TRIGGERED, 
				TRIGGERED_ON_CHANGE, 
				TRIGGERED_ON_CHANGE_WITHOUT_REPETITION, 
				TRIGGERED_WITHOUT_REPETITION
			}
				
			def ComTransferProperty getComTransferPropertyValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "PENDING" : ComTransferProperty.PENDING
					case "TRIGGERED" : ComTransferProperty.TRIGGERED
					case "TRIGGERED_ON_CHANGE" : ComTransferProperty.TRIGGERED_ON_CHANGE
					case "TRIGGERED_ON_CHANGE_WITHOUT_REPETITION" : ComTransferProperty.TRIGGERED_ON_CHANGE_WITHOUT_REPETITION
					case "TRIGGERED_WITHOUT_REPETITION" : ComTransferProperty.TRIGGERED_WITHOUT_REPETITION
				}
			}
			
			def void setComTransferPropertyValue(GParameterValue paramValue, ComTransferProperty value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getComUpdateBitPosition(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"])
			}
			
			def void setComUpdateBitPosition(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComUpdateBitPosition"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
			def List<ComGroupSignal> getComGroupSignals(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "ComGroupSignal")
					}
				}
				return new BasicWrappingEList<ComGroupSignal, GContainer>(filteredContainers, typeof(ComGroupSignal), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComSignalGroup$ComGroupSignal comGroupSignal) {
						comGroupSignal.target?.gSetDefinition(containerValue.getContainerDefinition("ComGroupSignal"))
						super.delegateAdd(comGroupSignal)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Com$ComConfig$ComSignalGroup$ComGroupSignal comGroupSignal) {
						comGroupSignal.target?.gSetDefinition(containerValue.getContainerDefinition("ComGroupSignal"))
						super.delegateAdd(index, comGroupSignal)
					}	
				}
			}
			
			
			static class ComGroupSignal implements IWrapper<GContainer> {
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
			        if (!(object instanceof ComGroupSignal)){
						return false
					}
					this.target == (object as ComGroupSignal).target
				}
				
				def BigInteger getComBitPosition(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"])
				}
				
				def void setComBitPosition(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitPosition"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComBitSize(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"])
				}
				
				def void setComBitSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComHandleId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"])
				}
				
				def void setComHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getComSignalDataInvalidValue(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalDataInvalidValue"])
				}
				
				def void setComSignalDataInvalidValue(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalDataInvalidValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalDataInvalidValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def ComSignalEndianness getComSignalEndianness(){
					getComSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"])
				}
				
				def void setComSignalEndianness(ComSignalEndianness value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalEndianness"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum ComSignalEndianness {
					BIG_ENDIAN, 
					LITTLE_ENDIAN, 
					OPAQUE
				}
					
				def ComSignalEndianness getComSignalEndiannessValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BIG_ENDIAN" : ComSignalEndianness.BIG_ENDIAN
						case "LITTLE_ENDIAN" : ComSignalEndianness.LITTLE_ENDIAN
						case "OPAQUE" : ComSignalEndianness.OPAQUE
					}
				}
				
				def void setComSignalEndiannessValue(GParameterValue paramValue, ComSignalEndianness value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def String getComSignalInitValue(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"])
				}
				
				def void setComSignalInitValue(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalInitValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getComSignalLength(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"])
				}
				
				def void setComSignalLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def ComSignalType getComSignalType(){
					getComSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"])
				}
				
				def void setComSignalType(ComSignalType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum ComSignalType {
					BOOLEAN, 
					FLOAT32, 
					FLOAT64, 
					SINT16, 
					SINT32, 
					SINT8, 
					UINT16, 
					UINT32, 
					UINT8, 
					UINT8_DYN, 
					UINT8_N
				}
					
				def ComSignalType getComSignalTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BOOLEAN" : ComSignalType.BOOLEAN
						case "FLOAT32" : ComSignalType.FLOAT32
						case "FLOAT64" : ComSignalType.FLOAT64
						case "SINT16" : ComSignalType.SINT16
						case "SINT32" : ComSignalType.SINT32
						case "SINT8" : ComSignalType.SINT8
						case "UINT16" : ComSignalType.UINT16
						case "UINT32" : ComSignalType.UINT32
						case "UINT8" : ComSignalType.UINT8
						case "UINT8_DYN" : ComSignalType.UINT8_DYN
						case "UINT8_N" : ComSignalType.UINT8_N
					}
				}
				
				def void setComSignalTypeValue(GParameterValue paramValue, ComSignalType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def ComTransferProperty getComTransferProperty(){
					getComTransferPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"])
				}
				
				def void setComTransferProperty(ComTransferProperty value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTransferProperty"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum ComTransferProperty {
					PENDING, 
					TRIGGERED_ON_CHANGE
				}
					
				def ComTransferProperty getComTransferPropertyValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "PENDING" : ComTransferProperty.PENDING
						case "TRIGGERED_ON_CHANGE" : ComTransferProperty.TRIGGERED_ON_CHANGE
					}
				}
				
				def void setComTransferPropertyValue(GParameterValue paramValue, ComTransferProperty value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				
				
				def ComFilter getComFilter(){
					containerValue.getByType(typeof(ComFilter))
				}
				
				def void setComFilter(ComFilter comFilter){
					val GContainer subContainer = comFilter.getTarget()
					containerValue.setContainer(subContainer, "ComFilter")
				}
				
				
				static class ComFilter implements IWrapper<GContainer> {
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
				        if (!(object instanceof ComFilter)){
							return false
						}
						this.target == (object as ComFilter).target
					}
					
					def ComFilterAlgorithm getComFilterAlgorithm(){
						getComFilterAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"])
					}
					
					def void setComFilterAlgorithm(ComFilterAlgorithm value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterAlgorithm"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum ComFilterAlgorithm {
						ALWAYS, 
						MASKED_NEW_DIFFERS_MASKED_OLD, 
						MASKED_NEW_DIFFERS_X, 
						MASKED_NEW_EQUALS_X, 
						NEVER, 
						NEW_IS_OUTSIDE, 
						NEW_IS_WITHIN, 
						ONE_EVERY_N
					}
						
					def ComFilterAlgorithm getComFilterAlgorithmValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "ALWAYS" : ComFilterAlgorithm.ALWAYS
							case "MASKED_NEW_DIFFERS_MASKED_OLD" : ComFilterAlgorithm.MASKED_NEW_DIFFERS_MASKED_OLD
							case "MASKED_NEW_DIFFERS_X" : ComFilterAlgorithm.MASKED_NEW_DIFFERS_X
							case "MASKED_NEW_EQUALS_X" : ComFilterAlgorithm.MASKED_NEW_EQUALS_X
							case "NEVER" : ComFilterAlgorithm.NEVER
							case "NEW_IS_OUTSIDE" : ComFilterAlgorithm.NEW_IS_OUTSIDE
							case "NEW_IS_WITHIN" : ComFilterAlgorithm.NEW_IS_WITHIN
							case "ONE_EVERY_N" : ComFilterAlgorithm.ONE_EVERY_N
						}
					}
					
					def void setComFilterAlgorithmValue(GParameterValue paramValue, ComFilterAlgorithm value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def BigInteger getComFilterMask(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"])
					}
					
					def void setComFilterMask(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMask"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getComFilterMax(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"])
					}
					
					def void setComFilterMax(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMax"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getComFilterMin(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"])
					}
					
					def void setComFilterMin(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMin"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getComFilterOffset(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"])
					}
					
					def void setComFilterOffset(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterOffset"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getComFilterPeriod(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"])
					}
					
					def void setComFilterPeriod(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterPeriod"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getComFilterX(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"])
					}
					
					def void setComFilterX(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterX"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class ComTimeBase implements IWrapper<GContainer> {
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
		        if (!(object instanceof ComTimeBase)){
					return false
				}
				this.target == (object as ComTimeBase).target
			}
			
			def BigDecimal getComGwTimeBase(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComGwTimeBase"])
			}
			
			def void setComGwTimeBase(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComGwTimeBase"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComGwTimeBase"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getComRxTimeBase(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxTimeBase"])
			}
			
			def void setComRxTimeBase(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxTimeBase"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComRxTimeBase"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getComTxTimeBase(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxTimeBase"])
			}
			
			def void setComTxTimeBase(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxTimeBase"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxTimeBase"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class ComGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof ComGeneral)){
				return false
			}
			this.target == (object as ComGeneral).target
		}
		
		def Boolean getComCancellationSupport(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComCancellationSupport"])
		}
		
		def void setComCancellationSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComCancellationSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComCancellationSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComConfigurationUseDet(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComConfigurationUseDet"])
		}
		
		def void setComConfigurationUseDet(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComConfigurationUseDet"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComConfigurationUseDet"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComEnableMDTForCyclicTransmission(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComEnableMDTForCyclicTransmission"])
		}
		
		def void setComEnableMDTForCyclicTransmission(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComEnableMDTForCyclicTransmission"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComEnableMDTForCyclicTransmission"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComEnableSignalGroupArrayApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComEnableSignalGroupArrayApi"])
		}
		
		def void setComEnableSignalGroupArrayApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComEnableSignalGroupArrayApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComEnableSignalGroupArrayApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComMetaDataSupport(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMetaDataSupport"])
		}
		
		def void setComMetaDataSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMetaDataSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComMetaDataSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getComRetryFailedTransmitRequests(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRetryFailedTransmitRequests"])
		}
		
		def void setComRetryFailedTransmitRequests(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRetryFailedTransmitRequests"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComRetryFailedTransmitRequests"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getComSupportedIPduGroups(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSupportedIPduGroups"])
		}
		
		def void setComSupportedIPduGroups(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSupportedIPduGroups"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSupportedIPduGroups"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def List<String> getComUserCbkHeaderFiles(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "ComUserCbkHeaderFile")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "ComUserCbkHeaderFile"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getComVersionInfoApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComVersionInfoApi"])
		}
		
		def void setComVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof Com)){
			return false
		}
		this.target == (object as Com).target
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
