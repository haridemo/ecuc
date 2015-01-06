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

class Port implements IWrapper<GModuleConfiguration> {
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
	
	def PortConfigSet getPortConfigSet(){
		moduleConfiguration.getByType(typeof(PortConfigSet))
	}
	
	def void setPortConfigSet(PortConfigSet portConfigSet){
		val GContainer container = portConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "PortConfigSet")
	}
	def PortGeneral getPortGeneral(){
		moduleConfiguration.getByType(typeof(PortGeneral))
	}
	
	def void setPortGeneral(PortGeneral portGeneral){
		val GContainer container = portGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "PortGeneral")
	}
	
	static class PortConfigSet implements IWrapper<GContainer> {
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
		
		
		
		def List<PortContainer> getPortContainers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "PortContainer")
				}
			}
			return new BasicWrappingEList<PortContainer, GContainer>(filteredContainers, typeof(PortContainer), typeof(GContainer)) {
				override protected delegateAdd(PortContainer portContainer) {
					portContainer.target?.gSetDefinition(containerValue.getContainerDefinition("PortContainer"))
					super.delegateAdd(portContainer)
				}
				
				override protected delegateAdd(int index, PortContainer portContainer) {
					portContainer.target?.gSetDefinition(containerValue.getContainerDefinition("PortContainer"))
					super.delegateAdd(index, portContainer)
				}	
			}
		}
		
		
		static class PortContainer implements IWrapper<GContainer> {
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
			
			def Integer getPortNumberOfPortPins(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortNumberOfPortPins"])
			}
			
			def void setPortNumberOfPortPins(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortNumberOfPortPins"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortNumberOfPortPins"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<PortPin> getPortPins(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "PortPin")
					}
				}
				return new BasicWrappingEList<PortPin, GContainer>(filteredContainers, typeof(PortPin), typeof(GContainer)) {
					override protected delegateAdd(PortPin portPin) {
						portPin.target?.gSetDefinition(containerValue.getContainerDefinition("PortPin"))
						super.delegateAdd(portPin)
					}
					
					override protected delegateAdd(int index, PortPin portPin) {
						portPin.target?.gSetDefinition(containerValue.getContainerDefinition("PortPin"))
						super.delegateAdd(index, portPin)
					}	
				}
			}
			
			
			static class PortPin implements IWrapper<GContainer> {
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
				
				def PortPinDirection getPortPinDirection(){
					getPortPinDirectionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinDirection"])
				}
				
				def void setPortPinDirection(PortPinDirection value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinDirection"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortPinDirection"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum PortPinDirection {
					PORT_PIN_IN, 
					PORT_PIN_OUT
				}
					
				def PortPinDirection getPortPinDirectionValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "PORT_PIN_IN" : PortPinDirection.PORT_PIN_IN
						case "PORT_PIN_OUT" : PortPinDirection.PORT_PIN_OUT
					}
				}
				
				def void setPortPinDirectionValue(GParameterValue paramValue, PortPinDirection value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def Boolean getPortPinDirectionChangeable(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinDirectionChangeable"])
				}
				
				def void setPortPinDirectionChangeable(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinDirectionChangeable"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortPinDirectionChangeable"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getPortPinId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinId"])
				}
				
				def void setPortPinId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortPinId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def PortPinInitialMode getPortPinInitialMode(){
					getPortPinInitialModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinInitialMode"])
				}
				
				def void setPortPinInitialMode(PortPinInitialMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinInitialMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortPinInitialMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum PortPinInitialMode {
					PORT_PIN_MODE_ADC, 
					PORT_PIN_MODE_CAN, 
					PORT_PIN_MODE_DIO, 
					PORT_PIN_MODE_DIO_GPT, 
					PORT_PIN_MODE_DIO_WDG, 
					PORT_PIN_MODE_FLEXRAY, 
					PORT_PIN_MODE_ICU, 
					PORT_PIN_MODE_LIN, 
					PORT_PIN_MODE_MEM, 
					PORT_PIN_MODE_PWM, 
					PORT_PIN_MODE_SPI
				}
					
				def PortPinInitialMode getPortPinInitialModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "PORT_PIN_MODE_ADC" : PortPinInitialMode.PORT_PIN_MODE_ADC
						case "PORT_PIN_MODE_CAN" : PortPinInitialMode.PORT_PIN_MODE_CAN
						case "PORT_PIN_MODE_DIO" : PortPinInitialMode.PORT_PIN_MODE_DIO
						case "PORT_PIN_MODE_DIO_GPT" : PortPinInitialMode.PORT_PIN_MODE_DIO_GPT
						case "PORT_PIN_MODE_DIO_WDG" : PortPinInitialMode.PORT_PIN_MODE_DIO_WDG
						case "PORT_PIN_MODE_FLEXRAY" : PortPinInitialMode.PORT_PIN_MODE_FLEXRAY
						case "PORT_PIN_MODE_ICU" : PortPinInitialMode.PORT_PIN_MODE_ICU
						case "PORT_PIN_MODE_LIN" : PortPinInitialMode.PORT_PIN_MODE_LIN
						case "PORT_PIN_MODE_MEM" : PortPinInitialMode.PORT_PIN_MODE_MEM
						case "PORT_PIN_MODE_PWM" : PortPinInitialMode.PORT_PIN_MODE_PWM
						case "PORT_PIN_MODE_SPI" : PortPinInitialMode.PORT_PIN_MODE_SPI
					}
				}
				
				def void setPortPinInitialModeValue(GParameterValue paramValue, PortPinInitialMode value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def PortPinLevelValue getPortPinLevelValue(){
					getPortPinLevelValueValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinLevelValue"])
				}
				
				def void setPortPinLevelValue(PortPinLevelValue value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinLevelValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortPinLevelValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum PortPinLevelValue {
					PORT_PIN_LEVEL_HIGH, 
					PORT_PIN_LEVEL_LOW
				}
					
				def PortPinLevelValue getPortPinLevelValueValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "PORT_PIN_LEVEL_HIGH" : PortPinLevelValue.PORT_PIN_LEVEL_HIGH
						case "PORT_PIN_LEVEL_LOW" : PortPinLevelValue.PORT_PIN_LEVEL_LOW
					}
				}
				
				def void setPortPinLevelValueValue(GParameterValue paramValue, PortPinLevelValue value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def List<PortPinMode> getPortPinModes(){
					val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
						override protected accept(EcucTextualParamValue item) {
							return accept(item, typeof(GConfigParameter), "PortPinMode")
						}
					}
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "PortPinMode"]
						return new AbstractUnwrappingEList<EcucTextualParamValue, PortPinMode>(filteredParameterValues, typeof(EcucTextualParamValue), typeof(PortPinMode)) {
							override protected wrap(PortPinMode object) throws CoreException {
								val parameterValue = Autosar40Factory.eINSTANCE.createEcucTextualParamValue
								parameterValue.gSetDefinition(parameterDef)
								EcucValueAccessor421Util.setParameterValue(parameterValue, object)
								parameterValue
							}
							
							override protected unwrap(EcucTextualParamValue parameterValue) {
								getPortPinModeValue(parameterValue)
							}
						}
					}
				}
				
				enum PortPinMode {
					PORT_PIN_MODE_ADC, 
					PORT_PIN_MODE_CAN, 
					PORT_PIN_MODE_DIO, 
					PORT_PIN_MODE_DIO_GPT, 
					PORT_PIN_MODE_DIO_WDG, 
					PORT_PIN_MODE_FLEXRAY, 
					PORT_PIN_MODE_ICU, 
					PORT_PIN_MODE_LIN, 
					PORT_PIN_MODE_MEM, 
					PORT_PIN_MODE_PWM, 
					PORT_PIN_MODE_SPI
				}
					
				def PortPinMode getPortPinModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "PORT_PIN_MODE_ADC" : PortPinMode.PORT_PIN_MODE_ADC
						case "PORT_PIN_MODE_CAN" : PortPinMode.PORT_PIN_MODE_CAN
						case "PORT_PIN_MODE_DIO" : PortPinMode.PORT_PIN_MODE_DIO
						case "PORT_PIN_MODE_DIO_GPT" : PortPinMode.PORT_PIN_MODE_DIO_GPT
						case "PORT_PIN_MODE_DIO_WDG" : PortPinMode.PORT_PIN_MODE_DIO_WDG
						case "PORT_PIN_MODE_FLEXRAY" : PortPinMode.PORT_PIN_MODE_FLEXRAY
						case "PORT_PIN_MODE_ICU" : PortPinMode.PORT_PIN_MODE_ICU
						case "PORT_PIN_MODE_LIN" : PortPinMode.PORT_PIN_MODE_LIN
						case "PORT_PIN_MODE_MEM" : PortPinMode.PORT_PIN_MODE_MEM
						case "PORT_PIN_MODE_PWM" : PortPinMode.PORT_PIN_MODE_PWM
						case "PORT_PIN_MODE_SPI" : PortPinMode.PORT_PIN_MODE_SPI
					}
				}
				
				def void setPortPinModeValue(GParameterValue paramValue, PortPinMode value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def Boolean getPortPinModeChangeable(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinModeChangeable"])
				}
				
				def void setPortPinModeChangeable(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinModeChangeable"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortPinModeChangeable"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class PortGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getPortDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortDevErrorDetect"])
		}
		
		def void setPortDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getPortSetPinDirectionApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortSetPinDirectionApi"])
		}
		
		def void setPortSetPinDirectionApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortSetPinDirectionApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortSetPinDirectionApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getPortSetPinModeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortSetPinModeApi"])
		}
		
		def void setPortSetPinModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortSetPinModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortSetPinModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getPortVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortVersionInfoApi"])
		}
		
		def void setPortVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "PortVersionInfoApi"])
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
