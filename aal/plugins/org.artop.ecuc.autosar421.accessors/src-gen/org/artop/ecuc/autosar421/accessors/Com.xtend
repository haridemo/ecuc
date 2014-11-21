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

import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil
import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.BooleanValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.StringValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.DocumentationBlockValueUnwrappingEList

import org.eclipse.sphinx.emf.util.AbstractFilteringEList
import org.eclipse.sphinx.emf.util.BasicWrappingEList

import gautosar.gecucdescription.GContainer
import gautosar.gecucdescription.GModuleConfiguration
import gautosar.gecucdescription.GParameterValue
import gautosar.gecucdescription.GecucdescriptionPackage
import gautosar.gecucparameterdef.GConfigParameter
import gautosar.gecucparameterdef.GContainerDef
import gautosar.gecucparameterdef.GParamConfContainerDef
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable
import static extension org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil.*
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import org.eclipse.core.runtime.CoreException

class Com implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	static class ComConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getComDataMemSize(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataMemSize"])
		}
		
		def void setComDataMemSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataMemSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComDataMemSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getComMaxIPduCnt(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMaxIPduCnt"])
		}
		
		def void setComMaxIPduCnt(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMaxIPduCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComMaxIPduCnt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<ComGwMapping> getComGwMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComGwMapping")
				}
			}
			return new BasicWrappingEList<ComGwMapping, GContainer>(filteredContainers, typeof(ComGwMapping), typeof(GContainer))
		}
		
		def List<ComIPdu> getComIPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComIPdu")
				}
			}
			return new BasicWrappingEList<ComIPdu, GContainer>(filteredContainers, typeof(ComIPdu), typeof(GContainer))
		}
		
		def List<ComIPduGroup> getComIPduGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComIPduGroup")
				}
			}
			return new BasicWrappingEList<ComIPduGroup, GContainer>(filteredContainers, typeof(ComIPduGroup), typeof(GContainer))
		}
		
		def List<ComSignal> getComSignals(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComSignal")
				}
			}
			return new BasicWrappingEList<ComSignal, GContainer>(filteredContainers, typeof(ComSignal), typeof(GContainer))
		}
		
		def List<ComSignalGroup> getComSignalGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "ComSignalGroup")
				}
			}
			return new BasicWrappingEList<ComSignalGroup, GContainer>(filteredContainers, typeof(ComSignalGroup), typeof(GContainer))
		}
		
		def ComTimeBase getComTimeBase(){
			containerValue.getByType(typeof(ComTimeBase))
		}
		
		def void setComTimeBase(GContainer subContainer){
			containerValue.setContainer(subContainer, "ComTimeBase")
		}
		
		
		static class ComGwMapping implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			
			def List<ComGwDestination> getComGwDestinations(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "ComGwDestination")
					}
				}
				return new BasicWrappingEList<ComGwDestination, GContainer>(filteredContainers, typeof(ComGwDestination), typeof(GContainer))
			}
			
			def ComGwSource getComGwSource(){
				containerValue.getByType(typeof(ComGwSource))
			}
			
			def void setComGwSource(GContainer subContainer){
				containerValue.setContainer(subContainer, "ComGwSource")
			}
			
			
			static class ComGwDestination implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def ComGwDestinationDescription getComGwDestinationDescription(){
					containerValue.getByType(typeof(ComGwDestinationDescription))
				}
				
				def void setComGwDestinationDescription(GContainer subContainer){
					containerValue.setContainer(subContainer, "ComGwDestinationDescription")
				}
				def ComGwSignal getComGwSignal(){
					containerValue.getByType(typeof(ComGwSignal))
				}
				
				def void setComGwSignal(GContainer subContainer){
					containerValue.setContainer(subContainer, "ComGwSignal")
				}
				
				static class ComGwDestinationDescription implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getComBitPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"])
					}
					
					def void setComBitPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def ComSignalEndianness getComSignalEndianness(){
						getComSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"])
					}
					
					def void setComSignalEndianness(ComSignalEndianness value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalEndianness"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def String getComSignalInitValue(){
						EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"])
					}
					
					def void setComSignalInitValue(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalInitValue"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def ComTransferProperty getComTransferProperty(){
						getComTransferPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"])
					}
					
					def void setComTransferProperty(ComTransferProperty value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTransferProperty"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getComUpdateBitPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"])
					}
					
					def void setComUpdateBitPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComUpdateBitPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
					
					def void setComFilter(GContainer subContainer){
						containerValue.setContainer(subContainer, "ComFilter")
					}
					
					
					static class ComFilter implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def ComFilterAlgorithm getComFilterAlgorithm(){
							getComFilterAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"])
						}
						
						def void setComFilterAlgorithm(ComFilterAlgorithm value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterAlgorithm"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
							EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
						}
						
						def Integer getComFilterMask(){
							EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"])
						}
						
						def void setComFilterMask(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMask"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Integer getComFilterMax(){
							EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"])
						}
						
						def void setComFilterMax(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMax"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Integer getComFilterMin(){
							EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"])
						}
						
						def void setComFilterMin(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMin"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Integer getComFilterOffset(){
							EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"])
						}
						
						def void setComFilterOffset(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterOffset"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Integer getComFilterPeriod(){
							EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"])
						}
						
						def void setComFilterPeriod(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterPeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Integer getComFilterX(){
							EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"])
						}
						
						def void setComFilterX(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterX"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
				static class ComGwSignal implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					
					
					
				}
				
			}
			
			static class ComGwSource implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def ComGwSignal getComGwSignal(){
					containerValue.getByType(typeof(ComGwSignal))
				}
				
				def void setComGwSignal(GContainer subContainer){
					containerValue.setContainer(subContainer, "ComGwSignal")
				}
				def ComGwSourceDescription getComGwSourceDescription(){
					containerValue.getByType(typeof(ComGwSourceDescription))
				}
				
				def void setComGwSourceDescription(GContainer subContainer){
					containerValue.setContainer(subContainer, "ComGwSourceDescription")
				}
				
				static class ComGwSignal implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					
					
					
				}
				
				static class ComGwSourceDescription implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getComBitPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"])
					}
					
					def void setComBitPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getComBitSize(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"])
					}
					
					def void setComBitSize(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def ComSignalEndianness getComSignalEndianness(){
						getComSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"])
					}
					
					def void setComSignalEndianness(ComSignalEndianness value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalEndianness"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getComSignalLength(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"])
					}
					
					def void setComSignalLength(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def ComSignalType getComSignalType(){
						getComSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"])
					}
					
					def void setComSignalType(ComSignalType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getComUpdateBitPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"])
					}
					
					def void setComUpdateBitPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComUpdateBitPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
		
		static class ComIPdu implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def String getComIPduCallout(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCallout"])
			}
			
			def void setComIPduCallout(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCallout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCallout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getComIPduCancellationSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCancellationSupport"])
			}
			
			def void setComIPduCancellationSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCancellationSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCancellationSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComIPduDirection getComIPduDirection(){
				getComIPduDirectionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduDirection"])
			}
			
			def void setComIPduDirection(ComIPduDirection value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduDirection"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduDirection"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getComIPduHandleId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduHandleId"])
			}
			
			def void setComIPduHandleId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComIPduSignalProcessing getComIPduSignalProcessing(){
				getComIPduSignalProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduSignalProcessing"])
			}
			
			def void setComIPduSignalProcessing(ComIPduSignalProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduSignalProcessing"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduSignalProcessing"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def String getComIPduTriggerTransmitCallout(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduTriggerTransmitCallout"])
			}
			
			def void setComIPduTriggerTransmitCallout(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduTriggerTransmitCallout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduTriggerTransmitCallout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComIPduType getComIPduType(){
				getComIPduTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduType"])
			}
			
			def void setComIPduType(ComIPduType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup getComIPduGroupRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup), "ComIPduGroupRef")
			}
					
			def void setComIPduGroupRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduGroupRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignalGroup getComIPduSignalGroupRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignalGroup), "ComIPduSignalGroupRef")
			}
					
			def void setComIPduSignalGroupRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignalGroup object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduSignalGroupRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal getComIPduSignalRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal), "ComIPduSignalRef")
			}
					
			def void setComIPduSignalRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduSignalRef"], object.getTarget())
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
			
			def void setComIPduCounter(GContainer subContainer){
				containerValue.setContainer(subContainer, "ComIPduCounter")
			}
			
			def ComIPduReplication getComIPduReplication(){
				containerValue.getByType(typeof(ComIPduReplication))
			}
			
			def void setComIPduReplication(GContainer subContainer){
				containerValue.setContainer(subContainer, "ComIPduReplication")
			}
			
			def ComTxIPdu getComTxIPdu(){
				containerValue.getByType(typeof(ComTxIPdu))
			}
			
			def void setComTxIPdu(GContainer subContainer){
				containerValue.setContainer(subContainer, "ComTxIPdu")
			}
			
			
			static class ComIPduCounter implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def String getComIPduCounterErrorNotification(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterErrorNotification"])
				}
				
				def void setComIPduCounterErrorNotification(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterErrorNotification"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCounterErrorNotification"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComIPduCounterSize(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterSize"])
				}
				
				def void setComIPduCounterSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCounterSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComIPduCounterStartPosition(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterStartPosition"])
				}
				
				def void setComIPduCounterStartPosition(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterStartPosition"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCounterStartPosition"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComIPduCounterThreshold(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterThreshold"])
				}
				
				def void setComIPduCounterThreshold(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduCounterThreshold"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduCounterThreshold"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class ComIPduReplication implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getComIPduReplicationQuorum(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduReplicationQuorum"])
				}
				
				def void setComIPduReplicationQuorum(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduReplicationQuorum"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduReplicationQuorum"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getComIPduReplicaRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "ComIPduReplicaRef")
				}
						
				def void setComIPduReplicaRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduReplicaRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class ComTxIPdu implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Float getComMinimumDelayTime(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMinimumDelayTime"])
				}
				
				def void setComMinimumDelayTime(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComMinimumDelayTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComMinimumDelayTime"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def ComTxIPduClearUpdateBit getComTxIPduClearUpdateBit(){
					getComTxIPduClearUpdateBitValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxIPduClearUpdateBit"])
				}
				
				def void setComTxIPduClearUpdateBit(ComTxIPduClearUpdateBit value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxIPduClearUpdateBit"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxIPduClearUpdateBit"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getComTxIPduUnusedAreasDefault(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxIPduUnusedAreasDefault"])
				}
				
				def void setComTxIPduUnusedAreasDefault(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxIPduUnusedAreasDefault"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxIPduUnusedAreasDefault"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				def ComTxModeFalse getComTxModeFalse(){
					containerValue.getByType(typeof(ComTxModeFalse))
				}
				
				def void setComTxModeFalse(GContainer subContainer){
					containerValue.setContainer(subContainer, "ComTxModeFalse")
				}
				
				def ComTxModeTrue getComTxModeTrue(){
					containerValue.getByType(typeof(ComTxModeTrue))
				}
				
				def void setComTxModeTrue(GContainer subContainer){
					containerValue.setContainer(subContainer, "ComTxModeTrue")
				}
				
				
				static class ComTxModeFalse implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					
					def ComTxMode getComTxMode(){
						containerValue.getByType(typeof(ComTxMode))
					}
					
					def void setComTxMode(GContainer subContainer){
						containerValue.setContainer(subContainer, "ComTxMode")
					}
					
					
					static class ComTxMode implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def ComTxModeMode getComTxModeMode(){
							getComTxModeModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeMode"])
						}
						
						def void setComTxModeMode(ComTxModeMode value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeMode"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeMode"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
							EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
						}
						
						def Integer getComTxModeNumberOfRepetitions(){
							EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeNumberOfRepetitions"])
						}
						
						def void setComTxModeNumberOfRepetitions(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeNumberOfRepetitions"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeNumberOfRepetitions"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Float getComTxModeRepetitionPeriod(){
							EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeRepetitionPeriod"])
						}
						
						def void setComTxModeRepetitionPeriod(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeRepetitionPeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeRepetitionPeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Float getComTxModeTimeOffset(){
							EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimeOffset"])
						}
						
						def void setComTxModeTimeOffset(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimeOffset"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeTimeOffset"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Float getComTxModeTimePeriod(){
							EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimePeriod"])
						}
						
						def void setComTxModeTimePeriod(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimePeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeTimePeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
				static class ComTxModeTrue implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					
					def ComTxMode getComTxMode(){
						containerValue.getByType(typeof(ComTxMode))
					}
					
					def void setComTxMode(GContainer subContainer){
						containerValue.setContainer(subContainer, "ComTxMode")
					}
					
					
					static class ComTxMode implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def ComTxModeMode getComTxModeMode(){
							getComTxModeModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeMode"])
						}
						
						def void setComTxModeMode(ComTxModeMode value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeMode"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeMode"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
							EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
						}
						
						def Integer getComTxModeNumberOfRepetitions(){
							EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeNumberOfRepetitions"])
						}
						
						def void setComTxModeNumberOfRepetitions(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeNumberOfRepetitions"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeNumberOfRepetitions"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Float getComTxModeRepetitionPeriod(){
							EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeRepetitionPeriod"])
						}
						
						def void setComTxModeRepetitionPeriod(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeRepetitionPeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeRepetitionPeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Float getComTxModeTimeOffset(){
							EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimeOffset"])
						}
						
						def void setComTxModeTimeOffset(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimeOffset"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeTimeOffset"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Float getComTxModeTimePeriod(){
							EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimePeriod"])
						}
						
						def void setComTxModeTimePeriod(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxModeTimePeriod"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxModeTimePeriod"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
			}
			
		}
		
		static class ComIPduGroup implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getComIPduGroupHandleId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduGroupHandleId"])
			}
			
			def void setComIPduGroupHandleId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComIPduGroupHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComIPduGroupHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup getComIPduGroupGroupRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup), "ComIPduGroupGroupRef")
			}
					
			def void setComIPduGroupGroupRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ComIPduGroupGroupRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class ComSignal implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getComBitPosition(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"])
			}
			
			def void setComBitPosition(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitPosition"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getComBitSize(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"])
			}
			
			def void setComBitSize(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComDataInvalidAction getComDataInvalidAction(){
				getComDataInvalidActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataInvalidAction"])
			}
			
			def void setComDataInvalidAction(ComDataInvalidAction value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataInvalidAction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComDataInvalidAction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def String getComErrorNotification(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComErrorNotification"])
			}
			
			def void setComErrorNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComErrorNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComErrorNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getComFirstTimeout(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFirstTimeout"])
			}
			
			def void setComFirstTimeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFirstTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFirstTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getComHandleId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"])
			}
			
			def void setComHandleId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getComInitialValueOnly(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInitialValueOnly"])
			}
			
			def void setComInitialValueOnly(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInitialValueOnly"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComInitialValueOnly"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def String getComInvalidNotification(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInvalidNotification"])
			}
			
			def void setComInvalidNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInvalidNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComInvalidNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def String getComNotification(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComNotification"])
			}
			
			def void setComNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComRxDataTimeoutAction getComRxDataTimeoutAction(){
				getComRxDataTimeoutActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxDataTimeoutAction"])
			}
			
			def void setComRxDataTimeoutAction(ComRxDataTimeoutAction value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxDataTimeoutAction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComRxDataTimeoutAction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def String getComSignalDataInvalidValue(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalDataInvalidValue"])
			}
			
			def void setComSignalDataInvalidValue(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalDataInvalidValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalDataInvalidValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComSignalEndianness getComSignalEndianness(){
				getComSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"])
			}
			
			def void setComSignalEndianness(ComSignalEndianness value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalEndianness"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def String getComSignalInitValue(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"])
			}
			
			def void setComSignalInitValue(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalInitValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getComSignalLength(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"])
			}
			
			def void setComSignalLength(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalLength"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComSignalType getComSignalType(){
				getComSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"])
			}
			
			def void setComSignalType(ComSignalType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Float getComTimeout(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeout"])
			}
			
			def void setComTimeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def String getComTimeoutNotification(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeoutNotification"])
			}
			
			def void setComTimeoutNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeoutNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTimeoutNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComTransferProperty getComTransferProperty(){
				getComTransferPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"])
			}
			
			def void setComTransferProperty(ComTransferProperty value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTransferProperty"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getComUpdateBitPosition(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"])
			}
			
			def void setComUpdateBitPosition(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComUpdateBitPosition"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
			def ComFilter getComFilter(){
				containerValue.getByType(typeof(ComFilter))
			}
			
			def void setComFilter(GContainer subContainer){
				containerValue.setContainer(subContainer, "ComFilter")
			}
			
			
			static class ComFilter implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def ComFilterAlgorithm getComFilterAlgorithm(){
					getComFilterAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"])
				}
				
				def void setComFilterAlgorithm(ComFilterAlgorithm value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterAlgorithm"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getComFilterMask(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"])
				}
				
				def void setComFilterMask(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMask"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComFilterMax(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"])
				}
				
				def void setComFilterMax(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMax"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComFilterMin(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"])
				}
				
				def void setComFilterMin(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMin"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComFilterOffset(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"])
				}
				
				def void setComFilterOffset(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterOffset"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComFilterPeriod(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"])
				}
				
				def void setComFilterPeriod(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterPeriod"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComFilterX(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"])
				}
				
				def void setComFilterX(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterX"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class ComSignalGroup implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def ComDataInvalidAction getComDataInvalidAction(){
				getComDataInvalidActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataInvalidAction"])
			}
			
			def void setComDataInvalidAction(ComDataInvalidAction value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComDataInvalidAction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComDataInvalidAction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def String getComErrorNotification(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComErrorNotification"])
			}
			
			def void setComErrorNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComErrorNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComErrorNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getComFirstTimeout(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFirstTimeout"])
			}
			
			def void setComFirstTimeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFirstTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFirstTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getComHandleId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"])
			}
			
			def void setComHandleId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getComInitialValueOnly(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInitialValueOnly"])
			}
			
			def void setComInitialValueOnly(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInitialValueOnly"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComInitialValueOnly"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def String getComInvalidNotification(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInvalidNotification"])
			}
			
			def void setComInvalidNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComInvalidNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComInvalidNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def String getComNotification(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComNotification"])
			}
			
			def void setComNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComRxDataTimeoutAction getComRxDataTimeoutAction(){
				getComRxDataTimeoutActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxDataTimeoutAction"])
			}
			
			def void setComRxDataTimeoutAction(ComRxDataTimeoutAction value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxDataTimeoutAction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComRxDataTimeoutAction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Boolean getComSignalGroupArrayAccess(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalGroupArrayAccess"])
			}
			
			def void setComSignalGroupArrayAccess(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalGroupArrayAccess"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalGroupArrayAccess"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getComTimeout(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeout"])
			}
			
			def void setComTimeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def String getComTimeoutNotification(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeoutNotification"])
			}
			
			def void setComTimeoutNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTimeoutNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTimeoutNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def ComTransferProperty getComTransferProperty(){
				getComTransferPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"])
			}
			
			def void setComTransferProperty(ComTransferProperty value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTransferProperty"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getComUpdateBitPosition(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"])
			}
			
			def void setComUpdateBitPosition(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComUpdateBitPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComUpdateBitPosition"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
			def List<ComGroupSignal> getComGroupSignals(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "ComGroupSignal")
					}
				}
				return new BasicWrappingEList<ComGroupSignal, GContainer>(filteredContainers, typeof(ComGroupSignal), typeof(GContainer))
			}
			
			
			static class ComGroupSignal implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getComBitPosition(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"])
				}
				
				def void setComBitPosition(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitPosition"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitPosition"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComBitSize(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"])
				}
				
				def void setComBitSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComBitSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComBitSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"])
				}
				
				def void setComHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def String getComSignalDataInvalidValue(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalDataInvalidValue"])
				}
				
				def void setComSignalDataInvalidValue(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalDataInvalidValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalDataInvalidValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def ComSignalEndianness getComSignalEndianness(){
					getComSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"])
				}
				
				def void setComSignalEndianness(ComSignalEndianness value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalEndianness"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalEndianness"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def String getComSignalInitValue(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"])
				}
				
				def void setComSignalInitValue(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalInitValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalInitValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getComSignalLength(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"])
				}
				
				def void setComSignalLength(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def ComSignalType getComSignalType(){
					getComSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"])
				}
				
				def void setComSignalType(ComSignalType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSignalType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSignalType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def ComTransferProperty getComTransferProperty(){
					getComTransferPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"])
				}
				
				def void setComTransferProperty(ComTransferProperty value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTransferProperty"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTransferProperty"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				
				
				def ComFilter getComFilter(){
					containerValue.getByType(typeof(ComFilter))
				}
				
				def void setComFilter(GContainer subContainer){
					containerValue.setContainer(subContainer, "ComFilter")
				}
				
				
				static class ComFilter implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def ComFilterAlgorithm getComFilterAlgorithm(){
						getComFilterAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"])
					}
					
					def void setComFilterAlgorithm(ComFilterAlgorithm value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterAlgorithm"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterAlgorithm"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getComFilterMask(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"])
					}
					
					def void setComFilterMask(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMask"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMask"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getComFilterMax(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"])
					}
					
					def void setComFilterMax(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMax"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getComFilterMin(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"])
					}
					
					def void setComFilterMin(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterMin"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getComFilterOffset(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"])
					}
					
					def void setComFilterOffset(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterOffset"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterOffset"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getComFilterPeriod(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"])
					}
					
					def void setComFilterPeriod(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterPeriod"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterPeriod"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getComFilterX(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"])
					}
					
					def void setComFilterX(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComFilterX"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComFilterX"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class ComTimeBase implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Float getComGwTimeBase(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComGwTimeBase"])
			}
			
			def void setComGwTimeBase(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComGwTimeBase"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComGwTimeBase"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getComRxTimeBase(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxTimeBase"])
			}
			
			def void setComRxTimeBase(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRxTimeBase"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComRxTimeBase"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getComTxTimeBase(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxTimeBase"])
			}
			
			def void setComTxTimeBase(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComTxTimeBase"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComTxTimeBase"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class ComGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getComCancellationSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComCancellationSupport"])
		}
		
		def void setComCancellationSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComCancellationSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComCancellationSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getComConfigurationUseDet(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComConfigurationUseDet"])
		}
		
		def void setComConfigurationUseDet(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComConfigurationUseDet"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComConfigurationUseDet"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getComEnableMDTForCyclicTransmission(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComEnableMDTForCyclicTransmission"])
		}
		
		def void setComEnableMDTForCyclicTransmission(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComEnableMDTForCyclicTransmission"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComEnableMDTForCyclicTransmission"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getComEnableSignalGroupArrayApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComEnableSignalGroupArrayApi"])
		}
		
		def void setComEnableSignalGroupArrayApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComEnableSignalGroupArrayApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComEnableSignalGroupArrayApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getComRetryFailedTransmitRequests(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRetryFailedTransmitRequests"])
		}
		
		def void setComRetryFailedTransmitRequests(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComRetryFailedTransmitRequests"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComRetryFailedTransmitRequests"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getComSupportedIPduGroups(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSupportedIPduGroups"])
		}
		
		def void setComSupportedIPduGroups(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComSupportedIPduGroups"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComSupportedIPduGroups"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComVersionInfoApi"])
		}
		
		def void setComVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "ComVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "ComVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
