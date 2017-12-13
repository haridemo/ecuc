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
package org.artop.ecuc.autosar444.accessors

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

class LinTrcv implements IWrapper<GModuleConfiguration> {
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

	def List<LinTrcvChannel> getLinTrcvChannels(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "LinTrcvChannel")
			}
		}
		return new BasicWrappingEList<LinTrcvChannel, GContainer>(filteredContainers, typeof(LinTrcvChannel), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinTrcv.LinTrcvChannel linTrcvChannel) {
				linTrcvChannel.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("LinTrcvChannel"))
				super.delegateAdd(linTrcvChannel)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinTrcv.LinTrcvChannel linTrcvChannel) {
				linTrcvChannel.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("LinTrcvChannel"))
				super.delegateAdd(index, linTrcvChannel)
			}
		}
	}
	def LinTrcvGeneral getLinTrcvGeneral(){
		moduleConfiguration.getByType(typeof(LinTrcvGeneral))
	}

	def void setLinTrcvGeneral(LinTrcvGeneral linTrcvGeneral){
		val GContainer container = linTrcvGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "LinTrcvGeneral")
	}

	static class LinTrcvChannel implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinTrcvChannel)){
				return false
			}
			this.target == (object as LinTrcvChannel).target
		}
	
		def BigInteger getLinTrcvChannelId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvChannelId"].getBigIntegerValue()
		}
		
		def void setLinTrcvChannelId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvChannelId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvChannelId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getLinTrcvChannelUsed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvChannelUsed"].getBooleanValue()
		}
		
		def void setLinTrcvChannelUsed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvChannelUsed"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvChannelUsed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def LinTrcvInitState getLinTrcvInitState(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvInitState"].getLinTrcvInitStateValue()
		}
		
		def void setLinTrcvInitState(LinTrcvInitState value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvInitState"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvInitState"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum LinTrcvInitState {
			LINTRCV_TRCV_MODE_NORMAL, 
			LINTRCV_TRCV_MODE_SLEEP, 
			LINTRCV_TRCV_MODE_STANDBY
		}
		
		def LinTrcvInitState getLinTrcvInitStateValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "LINTRCV_TRCV_MODE_NORMAL" : LinTrcvInitState.LINTRCV_TRCV_MODE_NORMAL
				case "LINTRCV_TRCV_MODE_SLEEP" : LinTrcvInitState.LINTRCV_TRCV_MODE_SLEEP
				case "LINTRCV_TRCV_MODE_STANDBY" : LinTrcvInitState.LINTRCV_TRCV_MODE_STANDBY
			}
		}
		
		def void setLinTrcvInitStateValue(GParameterValue parameterValue, LinTrcvInitState value){
			parameterValue.setValue(value)
		}
		
		def Boolean getLinTrcvWakeupByBusUsed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWakeupByBusUsed"].getBooleanValue()
		}
		
		def void setLinTrcvWakeupByBusUsed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWakeupByBusUsed"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvWakeupByBusUsed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar444.accessors.Icu.IcuConfigSet.IcuChannel getLinTrcvIcuChannelRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Icu.IcuConfigSet.IcuChannel), "LinTrcvIcuChannelRef")
		}
		
		def void setLinTrcvIcuChannelRef(org.artop.ecuc.autosar444.accessors.Icu.IcuConfigSet.IcuChannel object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinTrcvIcuChannelRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getLinTrcvWakeupSourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "LinTrcvWakeupSourceRef")
		}
		
		def void setLinTrcvWakeupSourceRef(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinTrcvWakeupSourceRef"], object.getTarget())
			}
		}
		
		
		def LinTrcvAccess getLinTrcvAccess(){
			containerValue.getByType(typeof(LinTrcvAccess))
		}
		
		def void setLinTrcvAccess(LinTrcvAccess linTrcvAccess){
			val GContainer subContainer = linTrcvAccess.getTarget()
			containerValue.setContainer(subContainer, "LinTrcvAccess")
		}
		
		
		static class LinTrcvAccess implements IWrapper<GContainer> {
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
		        if (!(object instanceof LinTrcvAccess)){
					return false
				}
				this.target == (object as LinTrcvAccess).target
			}
		
			def LinTrcvDioAccess getLinTrcvDioAccess(){
				containerValue.getByType(typeof(LinTrcvDioAccess))
			}
			
			def void setLinTrcvDioAccess(LinTrcvDioAccess linTrcvDioAccess){
				val GContainer subContainer = linTrcvDioAccess.getTarget()
				containerValue.setContainer(subContainer, "LinTrcvDioAccess")
			}
			def LinTrcvSpiSequence getLinTrcvSpiSequence(){
				containerValue.getByType(typeof(LinTrcvSpiSequence))
			}
			
			def void setLinTrcvSpiSequence(LinTrcvSpiSequence linTrcvSpiSequence){
				val GContainer subContainer = linTrcvSpiSequence.getTarget()
				containerValue.setContainer(subContainer, "LinTrcvSpiSequence")
			}
			
			static class LinTrcvDioAccess implements IWrapper<GContainer> {
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
			        if (!(object instanceof LinTrcvDioAccess)){
						return false
					}
					this.target == (object as LinTrcvDioAccess).target
				}
			
				
				
				def List<LinTrcvDioChannelAccess> getLinTrcvDioChannelAccess(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "LinTrcvDioChannelAccess")
						}
					}
					return new BasicWrappingEList<LinTrcvDioChannelAccess, GContainer>(filteredContainers, typeof(LinTrcvDioChannelAccess), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinTrcv.LinTrcvChannel.LinTrcvAccess.LinTrcvDioAccess.LinTrcvDioChannelAccess linTrcvDioChannelAccess) {
							linTrcvDioChannelAccess.target?.gSetDefinition(containerValue.getContainerDefinition("LinTrcvDioChannelAccess"))
							super.delegateAdd(linTrcvDioChannelAccess)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinTrcv.LinTrcvChannel.LinTrcvAccess.LinTrcvDioAccess.LinTrcvDioChannelAccess linTrcvDioChannelAccess) {
							linTrcvDioChannelAccess.target?.gSetDefinition(containerValue.getContainerDefinition("LinTrcvDioChannelAccess"))
							super.delegateAdd(index, linTrcvDioChannelAccess)
						}
					}
				}
				
				
				static class LinTrcvDioChannelAccess implements IWrapper<GContainer> {
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
				        if (!(object instanceof LinTrcvDioChannelAccess)){
							return false
						}
						this.target == (object as LinTrcvDioChannelAccess).target
					}
				
					def String getLinTrcvHardwareInterfaceName(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvHardwareInterfaceName"].getStringValue()
					}
					
					def void setLinTrcvHardwareInterfaceName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvHardwareInterfaceName"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvHardwareInterfaceName"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
					
				}
				
			}
			
			static class LinTrcvSpiSequence implements IWrapper<GContainer> {
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
			        if (!(object instanceof LinTrcvSpiSequence)){
						return false
					}
					this.target == (object as LinTrcvSpiSequence).target
				}
			
				
				def org.artop.ecuc.autosar444.accessors.Spi.SpiDriver.SpiSequence getLinTrcvSpiSequenceName(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Spi.SpiDriver.SpiSequence), "LinTrcvSpiSequenceName")
				}
				
				def void setLinTrcvSpiSequenceName(org.artop.ecuc.autosar444.accessors.Spi.SpiDriver.SpiSequence object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinTrcvSpiSequenceName"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class LinTrcvGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinTrcvGeneral)){
				return false
			}
			this.target == (object as LinTrcvGeneral).target
		}
	
		def Boolean getLinTrcvDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvDevErrorDetect"].getBooleanValue()
		}
		
		def void setLinTrcvDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getLinTrcvIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvIndex"].getBigIntegerValue()
		}
		
		def void setLinTrcvIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def LinTrcvTimerType getLinTrcvTimerType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvTimerType"].getLinTrcvTimerTypeValue()
		}
		
		def void setLinTrcvTimerType(LinTrcvTimerType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvTimerType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvTimerType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum LinTrcvTimerType {
			None, 
			Timer_1us16bit
		}
		
		def LinTrcvTimerType getLinTrcvTimerTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "None" : LinTrcvTimerType.None
				case "Timer_1us16bit" : LinTrcvTimerType.Timer_1us16bit
			}
		}
		
		def void setLinTrcvTimerTypeValue(GParameterValue parameterValue, LinTrcvTimerType value){
			parameterValue.setValue(value)
		}
		
		def Boolean getLinTrcvVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvVersionInfoApi"].getBooleanValue()
		}
		
		def void setLinTrcvVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getLinTrcvWaitTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWaitTime"].getBigDecimalValue()
		}
		
		def void setLinTrcvWaitTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWaitTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvWaitTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getLinTrcvWakeUpSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWakeUpSupport"].getBooleanValue()
		}
		
		def void setLinTrcvWakeUpSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWakeUpSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvWakeUpSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof LinTrcv)){
			return false
		}
		this.target == (object as LinTrcv).target
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
