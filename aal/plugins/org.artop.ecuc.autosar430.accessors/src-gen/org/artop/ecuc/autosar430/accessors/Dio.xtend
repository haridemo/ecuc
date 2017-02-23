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

class Dio implements IWrapper<GModuleConfiguration> {
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

	def DioConfig getDioConfig(){
		moduleConfiguration.getByType(typeof(DioConfig))
	}

	def void setDioConfig(DioConfig dioConfig){
		val GContainer container = dioConfig.getTarget()
	    moduleConfiguration.setContainer(container, "DioConfig")
	}
	def DioGeneral getDioGeneral(){
		moduleConfiguration.getByType(typeof(DioGeneral))
	}

	def void setDioGeneral(DioGeneral dioGeneral){
		val GContainer container = dioGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "DioGeneral")
	}

	static class DioConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof DioConfig)){
				return false
			}
			this.target == (object as DioConfig).target
		}
	
		
		
		def List<DioPort> getDioPorts(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DioPort")
				}
			}
			return new BasicWrappingEList<DioPort, GContainer>(filteredContainers, typeof(DioPort), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Dio.DioConfig.DioPort dioPort) {
					dioPort.target?.gSetDefinition(containerValue.getContainerDefinition("DioPort"))
					super.delegateAdd(dioPort)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Dio.DioConfig.DioPort dioPort) {
					dioPort.target?.gSetDefinition(containerValue.getContainerDefinition("DioPort"))
					super.delegateAdd(index, dioPort)
				}
			}
		}
		
		
		static class DioPort implements IWrapper<GContainer> {
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
		        if (!(object instanceof DioPort)){
					return false
				}
				this.target == (object as DioPort).target
			}
		
			def BigInteger getDioPortId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioPortId"].getBigIntegerValue()
			}
			
			def void setDioPortId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioPortId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DioPortId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<DioChannel> getDioChannels(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DioChannel")
					}
				}
				return new BasicWrappingEList<DioChannel, GContainer>(filteredContainers, typeof(DioChannel), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Dio.DioConfig.DioPort.DioChannel dioChannel) {
						dioChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DioChannel"))
						super.delegateAdd(dioChannel)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Dio.DioConfig.DioPort.DioChannel dioChannel) {
						dioChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DioChannel"))
						super.delegateAdd(index, dioChannel)
					}
				}
			}
			
			def List<DioChannelGroup> getDioChannelGroups(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DioChannelGroup")
					}
				}
				return new BasicWrappingEList<DioChannelGroup, GContainer>(filteredContainers, typeof(DioChannelGroup), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Dio.DioConfig.DioPort.DioChannelGroup dioChannelGroup) {
						dioChannelGroup.target?.gSetDefinition(containerValue.getContainerDefinition("DioChannelGroup"))
						super.delegateAdd(dioChannelGroup)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Dio.DioConfig.DioPort.DioChannelGroup dioChannelGroup) {
						dioChannelGroup.target?.gSetDefinition(containerValue.getContainerDefinition("DioChannelGroup"))
						super.delegateAdd(index, dioChannelGroup)
					}
				}
			}
			
			
			static class DioChannel implements IWrapper<GContainer> {
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
			        if (!(object instanceof DioChannel)){
						return false
					}
					this.target == (object as DioChannel).target
				}
			
				def BigInteger getDioChannelId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioChannelId"].getBigIntegerValue()
				}
				
				def void setDioChannelId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioChannelId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DioChannelId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DioChannelGroup implements IWrapper<GContainer> {
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
			        if (!(object instanceof DioChannelGroup)){
						return false
					}
					this.target == (object as DioChannelGroup).target
				}
			
				def String getDioChannelGroupIdentification(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioChannelGroupIdentification"].getStringValue()
				}
				
				def void setDioChannelGroupIdentification(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioChannelGroupIdentification"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DioChannelGroupIdentification"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDioPortMask(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioPortMask"].getBigIntegerValue()
				}
				
				def void setDioPortMask(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioPortMask"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DioPortMask"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDioPortOffset(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioPortOffset"].getBigIntegerValue()
				}
				
				def void setDioPortOffset(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioPortOffset"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DioPortOffset"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class DioGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof DioGeneral)){
				return false
			}
			this.target == (object as DioGeneral).target
		}
	
		def Boolean getDioDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioDevErrorDetect"].getBooleanValue()
		}
		
		def void setDioDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DioDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDioFlipChannelApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioFlipChannelApi"].getBooleanValue()
		}
		
		def void setDioFlipChannelApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioFlipChannelApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DioFlipChannelApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDioVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioVersionInfoApi"].getBooleanValue()
		}
		
		def void setDioVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DioVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DioVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Dio)){
			return false
		}
		this.target == (object as Dio).target
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
