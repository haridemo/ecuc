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

class V2xFac implements IWrapper<GModuleConfiguration> {
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

	def V2xFacGeneral getV2xFacGeneral(){
		moduleConfiguration.getByType(typeof(V2xFacGeneral))
	}

	def void setV2xFacGeneral(V2xFacGeneral v2xFacGeneral){
		val GContainer container = v2xFacGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "V2xFacGeneral")
	}

	static class V2xFacGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof V2xFacGeneral)){
				return false
			}
			this.target == (object as V2xFacGeneral).target
		}
	
		def BigDecimal getV2xFacCaBsMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacCaBsMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setV2xFacCaBsMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacCaBsMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xFacCaBsMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getV2xFacDenBsMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacDenBsMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setV2xFacDenBsMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacDenBsMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xFacDenBsMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getV2xFacDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacDevErrorDetect"].getBooleanValue()
		}
		
		def void setV2xFacDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xFacDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def V2xFacStationType getV2xFacStationType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacStationType"].getV2xFacStationTypeValue()
		}
		
		def void setV2xFacStationType(V2xFacStationType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacStationType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xFacStationType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum V2xFacStationType {
			V2XFAC_ST_BUS, 
			V2XFAC_ST_CYCLIST, 
			V2XFAC_ST_HEAVYTRUCK, 
			V2XFAC_ST_LIGHTTRUCK, 
			V2XFAC_ST_MOPED, 
			V2XFAC_ST_MOTORCYCLE, 
			V2XFAC_ST_PASSENGERCAR, 
			V2XFAC_ST_PEDESTRIAN, 
			V2XFAC_ST_SPECIALVEHICLES, 
			V2XFAC_ST_TRAILER, 
			V2XFAC_ST_TRAM, 
			V2XFAC_ST_UNKNOWN
		}
		
		def V2xFacStationType getV2xFacStationTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "V2XFAC_ST_BUS" : V2xFacStationType.V2XFAC_ST_BUS
				case "V2XFAC_ST_CYCLIST" : V2xFacStationType.V2XFAC_ST_CYCLIST
				case "V2XFAC_ST_HEAVYTRUCK" : V2xFacStationType.V2XFAC_ST_HEAVYTRUCK
				case "V2XFAC_ST_LIGHTTRUCK" : V2xFacStationType.V2XFAC_ST_LIGHTTRUCK
				case "V2XFAC_ST_MOPED" : V2xFacStationType.V2XFAC_ST_MOPED
				case "V2XFAC_ST_MOTORCYCLE" : V2xFacStationType.V2XFAC_ST_MOTORCYCLE
				case "V2XFAC_ST_PASSENGERCAR" : V2xFacStationType.V2XFAC_ST_PASSENGERCAR
				case "V2XFAC_ST_PEDESTRIAN" : V2xFacStationType.V2XFAC_ST_PEDESTRIAN
				case "V2XFAC_ST_SPECIALVEHICLES" : V2xFacStationType.V2XFAC_ST_SPECIALVEHICLES
				case "V2XFAC_ST_TRAILER" : V2xFacStationType.V2XFAC_ST_TRAILER
				case "V2XFAC_ST_TRAM" : V2xFacStationType.V2XFAC_ST_TRAM
				case "V2XFAC_ST_UNKNOWN" : V2xFacStationType.V2XFAC_ST_UNKNOWN
			}
		}
		
		def void setV2xFacStationTypeValue(GParameterValue parameterValue, V2xFacStationType value){
			parameterValue.setValue(value)
		}
		
		def Boolean getV2xFacVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacVersionInfoApi"].getBooleanValue()
		}
		
		def void setV2xFacVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xFacVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xFacVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof V2xFac)){
			return false
		}
		this.target == (object as V2xFac).target
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
