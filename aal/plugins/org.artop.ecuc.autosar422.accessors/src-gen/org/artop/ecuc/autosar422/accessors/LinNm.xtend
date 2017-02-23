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
package org.artop.ecuc.autosar422.accessors

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

class LinNm implements IWrapper<GModuleConfiguration> {
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

	def LinNmGlobalConfig getLinNmGlobalConfig(){
		moduleConfiguration.getByType(typeof(LinNmGlobalConfig))
	}

	def void setLinNmGlobalConfig(LinNmGlobalConfig linNmGlobalConfig){
		val GContainer container = linNmGlobalConfig.getTarget()
	    moduleConfiguration.setContainer(container, "LinNmGlobalConfig")
	}

	static class LinNmGlobalConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinNmGlobalConfig)){
				return false
			}
			this.target == (object as LinNmGlobalConfig).target
		}
	
		def Boolean getLinNmBusSynchronizationEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmBusSynchronizationEnabled"].getBooleanValue()
		}
		
		def void setLinNmBusSynchronizationEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmBusSynchronizationEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmBusSynchronizationEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmComControlEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmComControlEnabled"].getBooleanValue()
		}
		
		def void setLinNmComControlEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmComControlEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmComControlEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmComUserDataSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmComUserDataSupport"].getBooleanValue()
		}
		
		def void setLinNmComUserDataSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmComUserDataSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmComUserDataSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmCoordinatorSyncSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmCoordinatorSyncSupport"].getBooleanValue()
		}
		
		def void setLinNmCoordinatorSyncSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmCoordinatorSyncSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmCoordinatorSyncSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmDevErrorDetect"].getBooleanValue()
		}
		
		def void setLinNmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getLinNmMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setLinNmMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getLinNmNodeDetectionEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmNodeDetectionEnabled"].getBooleanValue()
		}
		
		def void setLinNmNodeDetectionEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmNodeDetectionEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmNodeDetectionEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmNodeIdEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmNodeIdEnabled"].getBooleanValue()
		}
		
		def void setLinNmNodeIdEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmNodeIdEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmNodeIdEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmPassiveModeEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmPassiveModeEnabled"].getBooleanValue()
		}
		
		def void setLinNmPassiveModeEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmPassiveModeEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmPassiveModeEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmRemoteSleepIndicationEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmRemoteSleepIndicationEnabled"].getBooleanValue()
		}
		
		def void setLinNmRemoteSleepIndicationEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmRemoteSleepIndicationEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmRemoteSleepIndicationEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmStateChangeIndEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmStateChangeIndEnabled"].getBooleanValue()
		}
		
		def void setLinNmStateChangeIndEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmStateChangeIndEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmStateChangeIndEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmSynchronizationPointEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmSynchronizationPointEnabled"].getBooleanValue()
		}
		
		def void setLinNmSynchronizationPointEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmSynchronizationPointEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmSynchronizationPointEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmUserDataEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmUserDataEnabled"].getBooleanValue()
		}
		
		def void setLinNmUserDataEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmUserDataEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmUserDataEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinNmVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmVersionInfoApi"].getBooleanValue()
		}
		
		def void setLinNmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def List<LinNmChannelConfig> getLinNmChannelConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "LinNmChannelConfig")
				}
			}
			return new BasicWrappingEList<LinNmChannelConfig, GContainer>(filteredContainers, typeof(LinNmChannelConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.LinNm.LinNmGlobalConfig.LinNmChannelConfig linNmChannelConfig) {
					linNmChannelConfig.target?.gSetDefinition(containerValue.getContainerDefinition("LinNmChannelConfig"))
					super.delegateAdd(linNmChannelConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.LinNm.LinNmGlobalConfig.LinNmChannelConfig linNmChannelConfig) {
					linNmChannelConfig.target?.gSetDefinition(containerValue.getContainerDefinition("LinNmChannelConfig"))
					super.delegateAdd(index, linNmChannelConfig)
				}
			}
		}
		
		
		static class LinNmChannelConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof LinNmChannelConfig)){
					return false
				}
				this.target == (object as LinNmChannelConfig).target
			}
		
			def BigDecimal getLinNmTimeoutTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmTimeoutTime"].getBigDecimalValue()
			}
			
			def void setLinNmTimeoutTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinNmTimeoutTime"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinNmTimeoutTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar422.accessors.ComM.ComMConfigSet.ComMChannel getLinNmComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.ComM.ComMConfigSet.ComMChannel), "LinNmComMNetworkHandleRef")
			}
			
			def void setLinNmComMNetworkHandleRef(org.artop.ecuc.autosar422.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinNmComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof LinNm)){
			return false
		}
		this.target == (object as LinNm).target
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
