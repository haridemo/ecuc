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

class LinSM implements IWrapper<GModuleConfiguration> {
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

	def LinSMConfigSet getLinSMConfigSet(){
		moduleConfiguration.getByType(typeof(LinSMConfigSet))
	}

	def void setLinSMConfigSet(LinSMConfigSet linSMConfigSet){
		val GContainer container = linSMConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "LinSMConfigSet")
	}
	def LinSMGeneral getLinSMGeneral(){
		moduleConfiguration.getByType(typeof(LinSMGeneral))
	}

	def void setLinSMGeneral(LinSMGeneral linSMGeneral){
		val GContainer container = linSMGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "LinSMGeneral")
	}

	static class LinSMConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinSMConfigSet)){
				return false
			}
			this.target == (object as LinSMConfigSet).target
		}
	
		def BigInteger getLinSMModeRequestRepetitionMax(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMModeRequestRepetitionMax"].getBigIntegerValue()
		}
		
		def void setLinSMModeRequestRepetitionMax(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMModeRequestRepetitionMax"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinSMModeRequestRepetitionMax"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<LinSMChannel> getLinSMChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "LinSMChannel")
				}
			}
			return new BasicWrappingEList<LinSMChannel, GContainer>(filteredContainers, typeof(LinSMChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinSM.LinSMConfigSet.LinSMChannel linSMChannel) {
					linSMChannel.target?.gSetDefinition(containerValue.getContainerDefinition("LinSMChannel"))
					super.delegateAdd(linSMChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinSM.LinSMConfigSet.LinSMChannel linSMChannel) {
					linSMChannel.target?.gSetDefinition(containerValue.getContainerDefinition("LinSMChannel"))
					super.delegateAdd(index, linSMChannel)
				}
			}
		}
		
		
		static class LinSMChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof LinSMChannel)){
					return false
				}
				this.target == (object as LinSMChannel).target
			}
		
			def BigDecimal getLinSMConfirmationTimeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMConfirmationTimeout"].getBigDecimalValue()
			}
			
			def void setLinSMConfirmationTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMConfirmationTimeout"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinSMConfirmationTimeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getLinSMTransceiverPassiveMode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMTransceiverPassiveMode"].getBooleanValue()
			}
			
			def void setLinSMTransceiverPassiveMode(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMTransceiverPassiveMode"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinSMTransceiverPassiveMode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel getLinSMComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel), "LinSMComMNetworkHandleRef")
			}
			
			def void setLinSMComMNetworkHandleRef(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinSMComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			
			def List<LinSMSchedule> getLinSMSchedules(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "LinSMSchedule")
					}
				}
				return new BasicWrappingEList<LinSMSchedule, GContainer>(filteredContainers, typeof(LinSMSchedule), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule linSMSchedule) {
						linSMSchedule.target?.gSetDefinition(containerValue.getContainerDefinition("LinSMSchedule"))
						super.delegateAdd(linSMSchedule)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule linSMSchedule) {
						linSMSchedule.target?.gSetDefinition(containerValue.getContainerDefinition("LinSMSchedule"))
						super.delegateAdd(index, linSMSchedule)
					}
				}
			}
			
			
			static class LinSMSchedule implements IWrapper<GContainer> {
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
			        if (!(object instanceof LinSMSchedule)){
						return false
					}
					this.target == (object as LinSMSchedule).target
				}
			
				def BigInteger getLinSMScheduleIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMScheduleIndex"].getBigIntegerValue()
				}
				
				def void setLinSMScheduleIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMScheduleIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinSMScheduleIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable getLinSMScheduleIndexRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable), "LinSMScheduleIndexRef")
				}
				
				def void setLinSMScheduleIndexRef(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinSMScheduleIndexRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class LinSMGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinSMGeneral)){
				return false
			}
			this.target == (object as LinSMGeneral).target
		}
	
		def Boolean getLinSMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMDevErrorDetect"].getBooleanValue()
		}
		
		def void setLinSMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinSMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getLinSMMainProcessingPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMMainProcessingPeriod"].getBigDecimalValue()
		}
		
		def void setLinSMMainProcessingPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMMainProcessingPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinSMMainProcessingPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getLinSMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMVersionInfoApi"].getBooleanValue()
		}
		
		def void setLinSMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinSMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinSMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof LinSM)){
			return false
		}
		this.target == (object as LinSM).target
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
