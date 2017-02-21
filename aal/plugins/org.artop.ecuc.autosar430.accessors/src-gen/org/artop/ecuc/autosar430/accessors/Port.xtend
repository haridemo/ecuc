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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof PortConfigSet)){
				return false
			}
			this.target == (object as PortConfigSet).target
		}
	
		
		
		def List<PortContainer> getPortContainers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "PortContainer")
				}
			}
			return new BasicWrappingEList<PortContainer, GContainer>(filteredContainers, typeof(PortContainer), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Port.PortConfigSet.PortContainer portContainer) {
					portContainer.target?.gSetDefinition(containerValue.getContainerDefinition("PortContainer"))
					super.delegateAdd(portContainer)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Port.PortConfigSet.PortContainer portContainer) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof PortContainer)){
					return false
				}
				this.target == (object as PortContainer).target
			}
		
			def BigInteger getPortNumberOfPortPins(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortNumberOfPortPins"].getBigIntegerValue()
			}
			
			def void setPortNumberOfPortPins(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortNumberOfPortPins"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortNumberOfPortPins"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<PortPin> getPortPins(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "PortPin")
					}
				}
				return new BasicWrappingEList<PortPin, GContainer>(filteredContainers, typeof(PortPin), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Port.PortConfigSet.PortContainer.PortPin portPin) {
						portPin.target?.gSetDefinition(containerValue.getContainerDefinition("PortPin"))
						super.delegateAdd(portPin)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Port.PortConfigSet.PortContainer.PortPin portPin) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof PortPin)){
						return false
					}
					this.target == (object as PortPin).target
				}
			
				def PortPinDirection getPortPinDirection(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinDirection"].getPortPinDirectionValue()
				}
				
				def void setPortPinDirection(PortPinDirection value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinDirection"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortPinDirection"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum PortPinDirection {
					PORT_PIN_IN, 
					PORT_PIN_OUT
				}
				
				def PortPinDirection getPortPinDirectionValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "PORT_PIN_IN" : PortPinDirection.PORT_PIN_IN
						case "PORT_PIN_OUT" : PortPinDirection.PORT_PIN_OUT
					}
				}
				
				def void setPortPinDirectionValue(GParameterValue parameterValue, PortPinDirection value){
					parameterValue.setValue(value)
				}
				
				def Boolean getPortPinDirectionChangeable(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinDirectionChangeable"].getBooleanValue()
				}
				
				def void setPortPinDirectionChangeable(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinDirectionChangeable"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortPinDirectionChangeable"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getPortPinId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinId"].getBigIntegerValue()
				}
				
				def void setPortPinId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortPinId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def PortPinInitialMode getPortPinInitialMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinInitialMode"].getPortPinInitialModeValue()
				}
				
				def void setPortPinInitialMode(PortPinInitialMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinInitialMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortPinInitialMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
				
				def PortPinInitialMode getPortPinInitialModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
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
				
				def void setPortPinInitialModeValue(GParameterValue parameterValue, PortPinInitialMode value){
					parameterValue.setValue(value)
				}
				
				def PortPinLevelValue getPortPinLevelValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinLevelValue"].getPortPinLevelValueValue()
				}
				
				def void setPortPinLevelValue(PortPinLevelValue value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinLevelValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortPinLevelValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum PortPinLevelValue {
					PORT_PIN_LEVEL_HIGH, 
					PORT_PIN_LEVEL_LOW
				}
				
				def PortPinLevelValue getPortPinLevelValueValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "PORT_PIN_LEVEL_HIGH" : PortPinLevelValue.PORT_PIN_LEVEL_HIGH
						case "PORT_PIN_LEVEL_LOW" : PortPinLevelValue.PORT_PIN_LEVEL_LOW
					}
				}
				
				def void setPortPinLevelValueValue(GParameterValue parameterValue, PortPinLevelValue value){
					parameterValue.setValue(value)
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
								parameterValue.setValue(object)
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
				
				def PortPinMode getPortPinModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
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
				
				def void setPortPinModeValue(GParameterValue parameterValue, PortPinMode value){
					parameterValue.setValue(value)
				}
				
				def Boolean getPortPinModeChangeable(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinModeChangeable"].getBooleanValue()
				}
				
				def void setPortPinModeChangeable(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortPinModeChangeable"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortPinModeChangeable"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof PortGeneral)){
				return false
			}
			this.target == (object as PortGeneral).target
		}
	
		def Boolean getPortDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortDevErrorDetect"].getBooleanValue()
		}
		
		def void setPortDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPortSetPinDirectionApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortSetPinDirectionApi"].getBooleanValue()
		}
		
		def void setPortSetPinDirectionApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortSetPinDirectionApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortSetPinDirectionApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPortSetPinModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortSetPinModeApi"].getBooleanValue()
		}
		
		def void setPortSetPinModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortSetPinModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortSetPinModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPortVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortVersionInfoApi"].getBooleanValue()
		}
		
		def void setPortVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PortVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PortVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Port)){
			return false
		}
		this.target == (object as Port).target
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
