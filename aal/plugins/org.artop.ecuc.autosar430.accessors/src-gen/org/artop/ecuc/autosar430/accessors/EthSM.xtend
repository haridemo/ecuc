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

class EthSM implements IWrapper<GModuleConfiguration> {
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

	def EthSMGeneral getEthSMGeneral(){
		moduleConfiguration.getByType(typeof(EthSMGeneral))
	}

	def void setEthSMGeneral(EthSMGeneral ethSMGeneral){
		val GContainer container = ethSMGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "EthSMGeneral")
	}
	def List<EthSMNetwork> getEthSMNetworks(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "EthSMNetwork")
			}
		}
		return new BasicWrappingEList<EthSMNetwork, GContainer>(filteredContainers, typeof(EthSMNetwork), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.EthSM.EthSMNetwork ethSMNetwork) {
				ethSMNetwork.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EthSMNetwork"))
				super.delegateAdd(ethSMNetwork)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.EthSM.EthSMNetwork ethSMNetwork) {
				ethSMNetwork.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EthSMNetwork"))
				super.delegateAdd(index, ethSMNetwork)
			}
		}
	}

	static class EthSMGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof EthSMGeneral)){
				return false
			}
			this.target == (object as EthSMGeneral).target
		}
	
		def Boolean getEthSMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSMDevErrorDetect"].getBooleanValue()
		}
		
		def void setEthSMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSMDummyMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSMDummyMode"].getBooleanValue()
		}
		
		def void setEthSMDummyMode(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSMDummyMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSMDummyMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getEthSMMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSMMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setEthSMMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSMMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSMMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthSMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSMVersionInfoApi"].getBooleanValue()
		}
		
		def void setEthSMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class EthSMNetwork implements IWrapper<GContainer> {
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
	        if (!(object instanceof EthSMNetwork)){
				return false
			}
			this.target == (object as EthSMNetwork).target
		}
	
		
		def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getEthSMComMNetworkHandleRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "EthSMComMNetworkHandleRef")
		}
		
		def void setEthSMComMNetworkHandleRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthSMComMNetworkHandleRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfController getEthSMEthIfControllerRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfController), "EthSMEthIfControllerRef")
		}
		
		def void setEthSMEthIfControllerRef(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfController object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthSMEthIfControllerRef"], object.getTarget())
			}
		}
		
		
		def EthSMDemEventParameterRefs getEthSMDemEventParameterRefs(){
			containerValue.getByType(typeof(EthSMDemEventParameterRefs))
		}
		
		def void setEthSMDemEventParameterRefs(EthSMDemEventParameterRefs ethSMDemEventParameterRefs){
			val GContainer subContainer = ethSMDemEventParameterRefs.getTarget()
			containerValue.setContainer(subContainer, "EthSMDemEventParameterRefs")
		}
		
		
		static class EthSMDemEventParameterRefs implements IWrapper<GContainer> {
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
		        if (!(object instanceof EthSMDemEventParameterRefs)){
					return false
				}
				this.target == (object as EthSMDemEventParameterRefs).target
			}
		
			
			def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETHSM_E_LINK_DOWN(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETHSM_E_LINK_DOWN")
			}
			
			def void setETHSM_E_LINK_DOWN(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETHSM_E_LINK_DOWN"], object.getTarget())
				}
			}
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof EthSM)){
			return false
		}
		this.target == (object as EthSM).target
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
