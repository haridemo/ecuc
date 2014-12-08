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

class IpduM implements IWrapper<GModuleConfiguration> {
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
	
	def IpduMConfig getIpduMConfig(){
		moduleConfiguration.getByType(typeof(IpduMConfig))
	}
	
	def void setIpduMConfig(IpduMConfig ipduMConfig){
		val GContainer container = ipduMConfig.getTarget() 
	    moduleConfiguration.setContainer(container, "IpduMConfig")
	}
	def IpduMGeneral getIpduMGeneral(){
		moduleConfiguration.getByType(typeof(IpduMGeneral))
	}
	
	def void setIpduMGeneral(IpduMGeneral ipduMGeneral){
		val GContainer container = ipduMGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "IpduMGeneral")
	}
	def IpduMPublishedInformation getIpduMPublishedInformation(){
		moduleConfiguration.getByType(typeof(IpduMPublishedInformation))
	}
	
	def void setIpduMPublishedInformation(IpduMPublishedInformation ipduMPublishedInformation){
		val GContainer container = ipduMPublishedInformation.getTarget() 
	    moduleConfiguration.setContainer(container, "IpduMPublishedInformation")
	}
	
	static class IpduMConfig implements IWrapper<GContainer> {
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
		
		def Integer getIpduMMaxTxBufferSize(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxBufferSize"])
		}
		
		def void setIpduMMaxTxBufferSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxBufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMMaxTxBufferSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getIpduMMaxTxPathwayCnt(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxPathwayCnt"])
		}
		
		def void setIpduMMaxTxPathwayCnt(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxPathwayCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMMaxTxPathwayCnt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<IpduMRxPathway> getIpduMRxPathways(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IpduMRxPathway")
				}
			}
			return new BasicWrappingEList<IpduMRxPathway, GContainer>(filteredContainers, typeof(IpduMRxPathway), typeof(GContainer))
		}
		
		def List<IpduMTxPathway> getIpduMTxPathways(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IpduMTxPathway")
				}
			}
			return new BasicWrappingEList<IpduMTxPathway, GContainer>(filteredContainers, typeof(IpduMTxPathway), typeof(GContainer))
		}
		
		
		static class IpduMRxPathway implements IWrapper<GContainer> {
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
			
			
			
			def IpduMRxIndication getIpduMRxIndication(){
				containerValue.getByType(typeof(IpduMRxIndication))
			}
			
			def void setIpduMRxIndication(GContainer subContainer){
				containerValue.setContainer(subContainer, "IpduMRxIndication")
			}
			
			
			static class IpduMRxIndication implements IWrapper<GContainer> {
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
				
				def IpduMByteOrder getIpduMByteOrder(){
					getIpduMByteOrderValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"])
				}
				
				def void setIpduMByteOrder(IpduMByteOrder value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMByteOrder"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum IpduMByteOrder {
					BIG_ENDIAN, 
					LITTLE_ENDIAN
				}
					
				def IpduMByteOrder getIpduMByteOrderValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BIG_ENDIAN" : IpduMByteOrder.BIG_ENDIAN
						case "LITTLE_ENDIAN" : IpduMByteOrder.LITTLE_ENDIAN
					}
				}
				
				def void setIpduMByteOrderValue(GParameterValue paramValue, IpduMByteOrder value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getIpduMRxHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxHandleId"])
				}
				
				def void setIpduMRxHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMRxIndicationPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMRxIndicationPduRef")
				}
						
				def void setIpduMRxIndicationPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMRxIndicationPduRef"], object.getTarget())
					}
				}
				
				
				def List<IpduMRxDynamicPart> getIpduMRxDynamicParts(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMRxDynamicPart")
						}
					}
					return new BasicWrappingEList<IpduMRxDynamicPart, GContainer>(filteredContainers, typeof(IpduMRxDynamicPart), typeof(GContainer))
				}
				
				def List<IpduMRxDynamicSegment> getIpduMRxDynamicSegments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMRxDynamicSegment")
						}
					}
					return new BasicWrappingEList<IpduMRxDynamicSegment, GContainer>(filteredContainers, typeof(IpduMRxDynamicSegment), typeof(GContainer))
				}
				
				def IpduMRxStaticPart getIpduMRxStaticPart(){
					containerValue.getByType(typeof(IpduMRxStaticPart))
				}
				
				def void setIpduMRxStaticPart(GContainer subContainer){
					containerValue.setContainer(subContainer, "IpduMRxStaticPart")
				}
				
				def List<IpduMRxStaticSegment> getIpduMRxStaticSegments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMRxStaticSegment")
						}
					}
					return new BasicWrappingEList<IpduMRxStaticSegment, GContainer>(filteredContainers, typeof(IpduMRxStaticSegment), typeof(GContainer))
				}
				
				def IpduMSelectorField getIpduMSelectorField(){
					containerValue.getByType(typeof(IpduMSelectorField))
				}
				
				def void setIpduMSelectorField(GContainer subContainer){
					containerValue.setContainer(subContainer, "IpduMSelectorField")
				}
				
				
				static class IpduMRxDynamicPart implements IWrapper<GContainer> {
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
					
					def Integer getIpduMRxSelectorValue(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxSelectorValue"])
					}
					
					def void setIpduMRxSelectorValue(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxSelectorValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxSelectorValue"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMOutgoingDynamicPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMOutgoingDynamicPduRef")
					}
							
					def void setIpduMOutgoingDynamicPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMOutgoingDynamicPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class IpduMRxDynamicSegment implements IWrapper<GContainer> {
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
					
					def Integer getIpduMSegmentLength(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"])
					}
					
					def void setIpduMSegmentLength(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getIpduMSegmentPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"])
					}
					
					def void setIpduMSegmentPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class IpduMRxStaticPart implements IWrapper<GContainer> {
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
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMOutgoingStaticPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMOutgoingStaticPduRef")
					}
							
					def void setIpduMOutgoingStaticPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMOutgoingStaticPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class IpduMRxStaticSegment implements IWrapper<GContainer> {
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
					
					def Integer getIpduMSegmentLength(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"])
					}
					
					def void setIpduMSegmentLength(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getIpduMSegmentPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"])
					}
					
					def void setIpduMSegmentPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class IpduMSelectorField implements IWrapper<GContainer> {
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
					
					def Integer getIpduMSelectorFieldLength(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"])
					}
					
					def void setIpduMSelectorFieldLength(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getIpduMSelectorFieldPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"])
					}
					
					def void setIpduMSelectorFieldPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class IpduMTxPathway implements IWrapper<GContainer> {
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
			
			
			
			def IpduMTxRequest getIpduMTxRequest(){
				containerValue.getByType(typeof(IpduMTxRequest))
			}
			
			def void setIpduMTxRequest(GContainer subContainer){
				containerValue.setContainer(subContainer, "IpduMTxRequest")
			}
			
			
			static class IpduMTxRequest implements IWrapper<GContainer> {
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
				
				def IpduMByteOrder getIpduMByteOrder(){
					getIpduMByteOrderValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"])
				}
				
				def void setIpduMByteOrder(IpduMByteOrder value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMByteOrder"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum IpduMByteOrder {
					BIG_ENDIAN, 
					LITTLE_ENDIAN
				}
					
				def IpduMByteOrder getIpduMByteOrderValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BIG_ENDIAN" : IpduMByteOrder.BIG_ENDIAN
						case "LITTLE_ENDIAN" : IpduMByteOrder.LITTLE_ENDIAN
					}
				}
				
				def void setIpduMByteOrderValue(GParameterValue paramValue, IpduMByteOrder value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getIpduMIPduUnusedAreasDefault(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMIPduUnusedAreasDefault"])
				}
				
				def void setIpduMIPduUnusedAreasDefault(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMIPduUnusedAreasDefault"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMIPduUnusedAreasDefault"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getIpduMTxConfirmationPduId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationPduId"])
				}
				
				def void setIpduMTxConfirmationPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxConfirmationPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getIpduMTxConfirmationTimeout(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationTimeout"])
				}
				
				def void setIpduMTxConfirmationTimeout(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationTimeout"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxConfirmationTimeout"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def IpduMTxTriggerMode getIpduMTxTriggerMode(){
					getIpduMTxTriggerModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxTriggerMode"])
				}
				
				def void setIpduMTxTriggerMode(IpduMTxTriggerMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxTriggerMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxTriggerMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum IpduMTxTriggerMode {
					DYNAMIC_PART_TRIGGER, 
					NONE, 
					STATIC_OR_DYNAMIC_PART_TRIGGER, 
					STATIC_PART_TRIGGER
				}
					
				def IpduMTxTriggerMode getIpduMTxTriggerModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DYNAMIC_PART_TRIGGER" : IpduMTxTriggerMode.DYNAMIC_PART_TRIGGER
						case "NONE" : IpduMTxTriggerMode.NONE
						case "STATIC_OR_DYNAMIC_PART_TRIGGER" : IpduMTxTriggerMode.STATIC_OR_DYNAMIC_PART_TRIGGER
						case "STATIC_PART_TRIGGER" : IpduMTxTriggerMode.STATIC_PART_TRIGGER
					}
				}
				
				def void setIpduMTxTriggerModeValue(GParameterValue paramValue, IpduMTxTriggerMode value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart getIpduMInitialDynamicPart(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart), "IpduMInitialDynamicPart")
				}
						
				def void setIpduMInitialDynamicPart(org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMInitialDynamicPart"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMOutgoingPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMOutgoingPduRef")
				}
						
				def void setIpduMOutgoingPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMOutgoingPduRef"], object.getTarget())
					}
				}
				
				
				def IpduMSelectorField getIpduMSelectorField(){
					containerValue.getByType(typeof(IpduMSelectorField))
				}
				
				def void setIpduMSelectorField(GContainer subContainer){
					containerValue.setContainer(subContainer, "IpduMSelectorField")
				}
				
				def List<IpduMTxDynamicPart> getIpduMTxDynamicParts(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMTxDynamicPart")
						}
					}
					return new BasicWrappingEList<IpduMTxDynamicPart, GContainer>(filteredContainers, typeof(IpduMTxDynamicPart), typeof(GContainer))
				}
				
				def List<IpduMTxDynamicSegment> getIpduMTxDynamicSegments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMTxDynamicSegment")
						}
					}
					return new BasicWrappingEList<IpduMTxDynamicSegment, GContainer>(filteredContainers, typeof(IpduMTxDynamicSegment), typeof(GContainer))
				}
				
				def IpduMTxStaticPart getIpduMTxStaticPart(){
					containerValue.getByType(typeof(IpduMTxStaticPart))
				}
				
				def void setIpduMTxStaticPart(GContainer subContainer){
					containerValue.setContainer(subContainer, "IpduMTxStaticPart")
				}
				
				def List<IpduMTxStaticSegment> getIpduMTxStaticSegments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMTxStaticSegment")
						}
					}
					return new BasicWrappingEList<IpduMTxStaticSegment, GContainer>(filteredContainers, typeof(IpduMTxStaticSegment), typeof(GContainer))
				}
				
				
				static class IpduMSelectorField implements IWrapper<GContainer> {
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
					
					def Integer getIpduMSelectorFieldLength(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"])
					}
					
					def void setIpduMSelectorFieldLength(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getIpduMSelectorFieldPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"])
					}
					
					def void setIpduMSelectorFieldPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class IpduMTxDynamicPart implements IWrapper<GContainer> {
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
					
					def Boolean getIpduMJitUpdate(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"])
					}
					
					def void setIpduMJitUpdate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMJitUpdate"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Boolean getIpduMTxDynamicConfirmation(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicConfirmation"])
					}
					
					def void setIpduMTxDynamicConfirmation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicConfirmation"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxDynamicConfirmation"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getIpduMTxDynamicHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicHandleId"])
					}
					
					def void setIpduMTxDynamicHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxDynamicHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMTxDynamicPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMTxDynamicPduRef")
					}
							
					def void setIpduMTxDynamicPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMTxDynamicPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class IpduMTxDynamicSegment implements IWrapper<GContainer> {
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
					
					def Integer getIpduMSegmentLength(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"])
					}
					
					def void setIpduMSegmentLength(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getIpduMSegmentPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"])
					}
					
					def void setIpduMSegmentPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class IpduMTxStaticPart implements IWrapper<GContainer> {
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
					
					def Boolean getIpduMJitUpdate(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"])
					}
					
					def void setIpduMJitUpdate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMJitUpdate"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Boolean getIpduMTxStaticConfirmation(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticConfirmation"])
					}
					
					def void setIpduMTxStaticConfirmation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticConfirmation"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxStaticConfirmation"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getIpduMTxStaticHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticHandleId"])
					}
					
					def void setIpduMTxStaticHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxStaticHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMTxStaticPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMTxStaticPduRef")
					}
							
					def void setIpduMTxStaticPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMTxStaticPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class IpduMTxStaticSegment implements IWrapper<GContainer> {
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
					
					def Integer getIpduMSegmentLength(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"])
					}
					
					def void setIpduMSegmentLength(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getIpduMSegmentPosition(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"])
					}
					
					def void setIpduMSegmentPosition(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
	}
	static class IpduMGeneral implements IWrapper<GContainer> {
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
		
		def Float getIpduMConfigurationTimeBase(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMConfigurationTimeBase"])
		}
		
		def void setIpduMConfigurationTimeBase(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMConfigurationTimeBase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMConfigurationTimeBase"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getIpduMDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMDevErrorDetect"])
		}
		
		def void setIpduMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getIpduMStaticPartExists(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMStaticPartExists"])
		}
		
		def void setIpduMStaticPartExists(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMStaticPartExists"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMStaticPartExists"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getIpduMVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMVersionInfoApi"])
		}
		
		def void setIpduMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class IpduMPublishedInformation implements IWrapper<GContainer> {
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
		
		def Boolean getIpduMRxDirectComInvocation(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxDirectComInvocation"])
		}
		
		def void setIpduMRxDirectComInvocation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxDirectComInvocation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxDirectComInvocation"])
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
