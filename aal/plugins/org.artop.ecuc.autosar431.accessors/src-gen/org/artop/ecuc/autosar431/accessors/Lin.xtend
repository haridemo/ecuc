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
package org.artop.ecuc.autosar431.accessors

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

class Lin implements IWrapper<GModuleConfiguration> {
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

	def LinDemEventParameterRefs getLinDemEventParameterRefs(){
		moduleConfiguration.getByType(typeof(LinDemEventParameterRefs))
	}

	def void setLinDemEventParameterRefs(LinDemEventParameterRefs linDemEventParameterRefs){
		val GContainer container = linDemEventParameterRefs.getTarget()
	    moduleConfiguration.setContainer(container, "LinDemEventParameterRefs")
	}
	def LinGeneral getLinGeneral(){
		moduleConfiguration.getByType(typeof(LinGeneral))
	}

	def void setLinGeneral(LinGeneral linGeneral){
		val GContainer container = linGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "LinGeneral")
	}
	def LinGlobalConfig getLinGlobalConfig(){
		moduleConfiguration.getByType(typeof(LinGlobalConfig))
	}

	def void setLinGlobalConfig(LinGlobalConfig linGlobalConfig){
		val GContainer container = linGlobalConfig.getTarget()
	    moduleConfiguration.setContainer(container, "LinGlobalConfig")
	}

	static class LinDemEventParameterRefs implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinDemEventParameterRefs)){
				return false
			}
			this.target == (object as LinDemEventParameterRefs).target
		}
	
		
		def org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter getLIN_E_TIMEOUT(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter), "LIN_E_TIMEOUT")
		}
		
		def void setLIN_E_TIMEOUT(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LIN_E_TIMEOUT"], object.getTarget())
			}
		}
		
		
		
	}
	static class LinGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinGeneral)){
				return false
			}
			this.target == (object as LinGeneral).target
		}
	
		def Boolean getLinDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinDevErrorDetect"].getBooleanValue()
		}
		
		def void setLinDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getLinIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIndex"].getBigIntegerValue()
		}
		
		def void setLinIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getLinTimeoutDuration(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTimeoutDuration"].getBigIntegerValue()
		}
		
		def void setLinTimeoutDuration(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTimeoutDuration"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTimeoutDuration"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getLinVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinVersionInfoApi"].getBooleanValue()
		}
		
		def void setLinVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class LinGlobalConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinGlobalConfig)){
				return false
			}
			this.target == (object as LinGlobalConfig).target
		}
	
		
		
		def List<LinChannel> getLinChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "LinChannel")
				}
			}
			return new BasicWrappingEList<LinChannel, GContainer>(filteredContainers, typeof(LinChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Lin.LinGlobalConfig.LinChannel linChannel) {
					linChannel.target?.gSetDefinition(containerValue.getContainerDefinition("LinChannel"))
					super.delegateAdd(linChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Lin.LinGlobalConfig.LinChannel linChannel) {
					linChannel.target?.gSetDefinition(containerValue.getContainerDefinition("LinChannel"))
					super.delegateAdd(index, linChannel)
				}
			}
		}
		
		
		static class LinChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof LinChannel)){
					return false
				}
				this.target == (object as LinChannel).target
			}
		
			def BigInteger getLinChannelBaudRate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinChannelBaudRate"].getBigIntegerValue()
			}
			
			def void setLinChannelBaudRate(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinChannelBaudRate"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinChannelBaudRate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getLinChannelId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinChannelId"].getBigIntegerValue()
			}
			
			def void setLinChannelId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinChannelId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinChannelId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getLinChannelWakeupSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinChannelWakeupSupport"].getBooleanValue()
			}
			
			def void setLinChannelWakeupSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinChannelWakeupSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinChannelWakeupSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar431.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getLinChannelEcuMWakeupSource(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "LinChannelEcuMWakeupSource")
			}
			
			def void setLinChannelEcuMWakeupSource(org.artop.ecuc.autosar431.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinChannelEcuMWakeupSource"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar431.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint getLinClockRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint), "LinClockRef")
			}
			
			def void setLinClockRef(org.artop.ecuc.autosar431.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinClockRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Lin)){
			return false
		}
		this.target == (object as Lin).target
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
