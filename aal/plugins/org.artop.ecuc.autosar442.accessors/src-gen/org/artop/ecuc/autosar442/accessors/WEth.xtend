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
package org.artop.ecuc.autosar442.accessors

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

class WEth implements IWrapper<GModuleConfiguration> {
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

	def WEthConfigSet getWEthConfigSet(){
		moduleConfiguration.getByType(typeof(WEthConfigSet))
	}

	def void setWEthConfigSet(WEthConfigSet wEthConfigSet){
		val GContainer container = wEthConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "WEthConfigSet")
	}
	def WEthGeneral getWEthGeneral(){
		moduleConfiguration.getByType(typeof(WEthGeneral))
	}

	def void setWEthGeneral(WEthGeneral wEthGeneral){
		val GContainer container = wEthGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "WEthGeneral")
	}

	static class WEthConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof WEthConfigSet)){
				return false
			}
			this.target == (object as WEthConfigSet).target
		}
	
		
		
		def List<WEthCtrlConfig> getWEthCtrlConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WEthCtrlConfig")
				}
			}
			return new BasicWrappingEList<WEthCtrlConfig, GContainer>(filteredContainers, typeof(WEthCtrlConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WEth.WEthConfigSet.WEthCtrlConfig wEthCtrlConfig) {
					wEthCtrlConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthCtrlConfig"))
					super.delegateAdd(wEthCtrlConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WEth.WEthConfigSet.WEthCtrlConfig wEthCtrlConfig) {
					wEthCtrlConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthCtrlConfig"))
					super.delegateAdd(index, wEthCtrlConfig)
				}
			}
		}
		
		
		static class WEthCtrlConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof WEthCtrlConfig)){
					return false
				}
				this.target == (object as WEthCtrlConfig).target
			}
		
			def BigInteger getWEthCtrlId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthCtrlId"].getBigIntegerValue()
			}
			
			def void setWEthCtrlId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthCtrlId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthCtrlId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getWEthCtrlPhyAddress(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthCtrlPhyAddress"].getStringValue()
			}
			
			def void setWEthCtrlPhyAddress(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthCtrlPhyAddress"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthCtrlPhyAddress"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getWEthCtrlRxBufLenByte(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthCtrlRxBufLenByte"].getBigIntegerValue()
			}
			
			def void setWEthCtrlRxBufLenByte(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthCtrlRxBufLenByte"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthCtrlRxBufLenByte"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getWEthCtrlTxBufLenByte(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthCtrlTxBufLenByte"].getBigIntegerValue()
			}
			
			def void setWEthCtrlTxBufLenByte(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthCtrlTxBufLenByte"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthCtrlTxBufLenByte"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getWEthRxBufTotal(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthRxBufTotal"].getBigIntegerValue()
			}
			
			def void setWEthRxBufTotal(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthRxBufTotal"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthRxBufTotal"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getWEthTxBufTotal(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTxBufTotal"].getBigIntegerValue()
			}
			
			def void setWEthTxBufTotal(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTxBufTotal"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTxBufTotal"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def WEthDemEventParameterRefs getWEthDemEventParameterRefs(){
				containerValue.getByType(typeof(WEthDemEventParameterRefs))
			}
			
			def void setWEthDemEventParameterRefs(WEthDemEventParameterRefs wEthDemEventParameterRefs){
				val GContainer subContainer = wEthDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "WEthDemEventParameterRefs")
			}
			
			
			static class WEthDemEventParameterRefs implements IWrapper<GContainer> {
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
			        if (!(object instanceof WEthDemEventParameterRefs)){
						return false
					}
					this.target == (object as WEthDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter getWETH_E_ACCESS(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter), "WETH_E_ACCESS")
				}
				
				def void setWETH_E_ACCESS(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WETH_E_ACCESS"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class WEthGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof WEthGeneral)){
				return false
			}
			this.target == (object as WEthGeneral).target
		}
	
		def Boolean getWEthDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthDevErrorDetect"].getBooleanValue()
		}
		
		def void setWEthDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWEthGetWEtherStatsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthGetWEtherStatsApi"].getBooleanValue()
		}
		
		def void setWEthGetWEtherStatsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthGetWEtherStatsApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthGetWEtherStatsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getWEthIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthIndex"].getBigIntegerValue()
		}
		
		def void setWEthIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getWEthMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setWEthMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getWEthUpdatePhysAddrFilter(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthUpdatePhysAddrFilter"].getBooleanValue()
		}
		
		def void setWEthUpdatePhysAddrFilter(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthUpdatePhysAddrFilter"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthUpdatePhysAddrFilter"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWEthVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthVersionInfoApi"].getBooleanValue()
		}
		
		def void setWEthVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof WEth)){
			return false
		}
		this.target == (object as WEth).target
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
