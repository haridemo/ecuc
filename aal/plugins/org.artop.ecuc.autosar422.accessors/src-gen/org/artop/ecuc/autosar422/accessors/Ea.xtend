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

class Ea implements IWrapper<GModuleConfiguration> {
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

	def List<EaBlockConfiguration> getEaBlockConfigurations(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "EaBlockConfiguration")
			}
		}
		return new BasicWrappingEList<EaBlockConfiguration, GContainer>(filteredContainers, typeof(EaBlockConfiguration), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Ea.EaBlockConfiguration eaBlockConfiguration) {
				eaBlockConfiguration.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EaBlockConfiguration"))
				super.delegateAdd(eaBlockConfiguration)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Ea.EaBlockConfiguration eaBlockConfiguration) {
				eaBlockConfiguration.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EaBlockConfiguration"))
				super.delegateAdd(index, eaBlockConfiguration)
			}
		}
	}
	def EaGeneral getEaGeneral(){
		moduleConfiguration.getByType(typeof(EaGeneral))
	}

	def void setEaGeneral(EaGeneral eaGeneral){
		val GContainer container = eaGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "EaGeneral")
	}
	def EaPublishedInformation getEaPublishedInformation(){
		moduleConfiguration.getByType(typeof(EaPublishedInformation))
	}

	def void setEaPublishedInformation(EaPublishedInformation eaPublishedInformation){
		val GContainer container = eaPublishedInformation.getTarget()
	    moduleConfiguration.setContainer(container, "EaPublishedInformation")
	}

	static class EaBlockConfiguration implements IWrapper<GContainer> {
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
	        if (!(object instanceof EaBlockConfiguration)){
				return false
			}
			this.target == (object as EaBlockConfiguration).target
		}
	
		def BigInteger getEaBlockNumber(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaBlockNumber"].getBigIntegerValue()
		}
		
		def void setEaBlockNumber(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaBlockNumber"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaBlockNumber"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEaBlockSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaBlockSize"].getBigIntegerValue()
		}
		
		def void setEaBlockSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaBlockSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaBlockSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEaImmediateData(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaImmediateData"].getBooleanValue()
		}
		
		def void setEaImmediateData(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaImmediateData"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaImmediateData"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getEaNumberOfWriteCycles(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaNumberOfWriteCycles"].getBigIntegerValue()
		}
		
		def void setEaNumberOfWriteCycles(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaNumberOfWriteCycles"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaNumberOfWriteCycles"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar422.accessors.Eep.EepGeneral getEaDeviceIndex(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Eep.EepGeneral), "EaDeviceIndex")
		}
		
		def void setEaDeviceIndex(org.artop.ecuc.autosar422.accessors.Eep.EepGeneral object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EaDeviceIndex"], object.getTarget())
			}
		}
		
		
		
	}
	static class EaGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof EaGeneral)){
				return false
			}
			this.target == (object as EaGeneral).target
		}
	
		def Boolean getEaDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaDevErrorDetect"].getBooleanValue()
		}
		
		def void setEaDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getEaMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setEaMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getEaNvmJobEndNotification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaNvmJobEndNotification"].getStringValue()
		}
		
		def void setEaNvmJobEndNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaNvmJobEndNotification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaNvmJobEndNotification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getEaNvmJobErrorNotification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaNvmJobErrorNotification"].getStringValue()
		}
		
		def void setEaNvmJobErrorNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaNvmJobErrorNotification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaNvmJobErrorNotification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEaPollingMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaPollingMode"].getBooleanValue()
		}
		
		def void setEaPollingMode(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaPollingMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaPollingMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEaSetModeSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaSetModeSupported"].getBooleanValue()
		}
		
		def void setEaSetModeSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaSetModeSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaSetModeSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEaVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaVersionInfoApi"].getBooleanValue()
		}
		
		def void setEaVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getEaVirtualPageSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaVirtualPageSize"].getBigIntegerValue()
		}
		
		def void setEaVirtualPageSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaVirtualPageSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaVirtualPageSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}
	static class EaPublishedInformation implements IWrapper<GContainer> {
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
	        if (!(object instanceof EaPublishedInformation)){
				return false
			}
			this.target == (object as EaPublishedInformation).target
		}
	
		def BigInteger getEaBlockOverhead(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaBlockOverhead"].getBigIntegerValue()
		}
		
		def void setEaBlockOverhead(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaBlockOverhead"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaBlockOverhead"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEaPageOverhead(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaPageOverhead"].getBigIntegerValue()
		}
		
		def void setEaPageOverhead(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EaPageOverhead"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EaPageOverhead"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Ea)){
			return false
		}
		this.target == (object as Ea).target
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
