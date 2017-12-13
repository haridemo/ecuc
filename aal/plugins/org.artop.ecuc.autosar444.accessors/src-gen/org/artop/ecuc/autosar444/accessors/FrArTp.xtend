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

class FrArTp implements IWrapper<GModuleConfiguration> {
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

	def FrArTpGeneral getFrArTpGeneral(){
		moduleConfiguration.getByType(typeof(FrArTpGeneral))
	}

	def void setFrArTpGeneral(FrArTpGeneral frArTpGeneral){
		val GContainer container = frArTpGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "FrArTpGeneral")
	}
	def FrArTpMultipleConfig getFrArTpMultipleConfig(){
		moduleConfiguration.getByType(typeof(FrArTpMultipleConfig))
	}

	def void setFrArTpMultipleConfig(FrArTpMultipleConfig frArTpMultipleConfig){
		val GContainer container = frArTpMultipleConfig.getTarget()
	    moduleConfiguration.setContainer(container, "FrArTpMultipleConfig")
	}

	static class FrArTpGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrArTpGeneral)){
				return false
			}
			this.target == (object as FrArTpGeneral).target
		}
	
		def Boolean getFrArTpDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpDevErrorDetect"].getBooleanValue()
		}
		
		def void setFrArTpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrArTpHaveAckRt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpHaveAckRt"].getBooleanValue()
		}
		
		def void setFrArTpHaveAckRt(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpHaveAckRt"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpHaveAckRt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrArTpHaveGrpSeg(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpHaveGrpSeg"].getBooleanValue()
		}
		
		def void setFrArTpHaveGrpSeg(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpHaveGrpSeg"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpHaveGrpSeg"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrArTpHaveLm(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpHaveLm"].getBooleanValue()
		}
		
		def void setFrArTpHaveLm(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpHaveLm"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpHaveLm"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrArTpHaveTc(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpHaveTc"].getBooleanValue()
		}
		
		def void setFrArTpHaveTc(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpHaveTc"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpHaveTc"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getFrArTpMainFuncCycle(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMainFuncCycle"].getBigDecimalValue()
		}
		
		def void setFrArTpMainFuncCycle(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMainFuncCycle"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpMainFuncCycle"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrArTpVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpVersionInfoApi"].getBooleanValue()
		}
		
		def void setFrArTpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class FrArTpMultipleConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrArTpMultipleConfig)){
				return false
			}
			this.target == (object as FrArTpMultipleConfig).target
		}
	
		
		
		def List<FrArTpChannel> getFrArTpChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrArTpChannel")
				}
			}
			return new BasicWrappingEList<FrArTpChannel, GContainer>(filteredContainers, typeof(FrArTpChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrArTp.FrArTpMultipleConfig.FrArTpChannel frArTpChannel) {
					frArTpChannel.target?.gSetDefinition(containerValue.getContainerDefinition("FrArTpChannel"))
					super.delegateAdd(frArTpChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrArTp.FrArTpMultipleConfig.FrArTpChannel frArTpChannel) {
					frArTpChannel.target?.gSetDefinition(containerValue.getContainerDefinition("FrArTpChannel"))
					super.delegateAdd(index, frArTpChannel)
				}
			}
		}
		
		
		static class FrArTpChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrArTpChannel)){
					return false
				}
				this.target == (object as FrArTpChannel).target
			}
		
			def FrArTpAckType getFrArTpAckType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpAckType"].getFrArTpAckTypeValue()
			}
			
			def void setFrArTpAckType(FrArTpAckType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpAckType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpAckType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrArTpAckType {
				FRARTP_ACK_WITHOUT_RT, 
				FRARTP_ACK_WITH_RT, 
				FRARTP_NO
			}
			
			def FrArTpAckType getFrArTpAckTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "FRARTP_ACK_WITHOUT_RT" : FrArTpAckType.FRARTP_ACK_WITHOUT_RT
					case "FRARTP_ACK_WITH_RT" : FrArTpAckType.FRARTP_ACK_WITH_RT
					case "FRARTP_NO" : FrArTpAckType.FRARTP_NO
				}
			}
			
			def void setFrArTpAckTypeValue(GParameterValue parameterValue, FrArTpAckType value){
				parameterValue.setValue(value)
			}
			
			def FrArTpAdrType getFrArTpAdrType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpAdrType"].getFrArTpAdrTypeValue()
			}
			
			def void setFrArTpAdrType(FrArTpAdrType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpAdrType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpAdrType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrArTpAdrType {
				FRARTP_OB, 
				FRARTP_TB
			}
			
			def FrArTpAdrType getFrArTpAdrTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "FRARTP_OB" : FrArTpAdrType.FRARTP_OB
					case "FRARTP_TB" : FrArTpAdrType.FRARTP_TB
				}
			}
			
			def void setFrArTpAdrTypeValue(GParameterValue parameterValue, FrArTpAdrType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrArTpConcurrentConnections(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpConcurrentConnections"].getBigIntegerValue()
			}
			
			def void setFrArTpConcurrentConnections(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpConcurrentConnections"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpConcurrentConnections"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrArTpGrpSeg(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpGrpSeg"].getBooleanValue()
			}
			
			def void setFrArTpGrpSeg(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpGrpSeg"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpGrpSeg"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def FrArTpLm getFrArTpLm(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpLm"].getFrArTpLmValue()
			}
			
			def void setFrArTpLm(FrArTpLm value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpLm"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpLm"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrArTpLm {
				FRARTP_ISO, 
				FRARTP_ISO6, 
				FRARTP_L4G
			}
			
			def FrArTpLm getFrArTpLmValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "FRARTP_ISO" : FrArTpLm.FRARTP_ISO
					case "FRARTP_ISO6" : FrArTpLm.FRARTP_ISO6
					case "FRARTP_L4G" : FrArTpLm.FRARTP_L4G
				}
			}
			
			def void setFrArTpLmValue(GParameterValue parameterValue, FrArTpLm value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrArTpMaxAr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxAr"].getBigIntegerValue()
			}
			
			def void setFrArTpMaxAr(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxAr"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpMaxAr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrArTpMaxAs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxAs"].getBigIntegerValue()
			}
			
			def void setFrArTpMaxAs(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxAs"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpMaxAs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrArTpMaxBs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxBs"].getBigIntegerValue()
			}
			
			def void setFrArTpMaxBs(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxBs"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpMaxBs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrArTpMaxRn(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxRn"].getBigIntegerValue()
			}
			
			def void setFrArTpMaxRn(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxRn"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpMaxRn"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrArTpMaxWft(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxWft"].getBigIntegerValue()
			}
			
			def void setFrArTpMaxWft(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMaxWft"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpMaxWft"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrArTpStMin(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpStMin"].getBigDecimalValue()
			}
			
			def void setFrArTpStMin(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpStMin"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpStMin"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrArTpStMinGrpSeg(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpStMinGrpSeg"].getBigDecimalValue()
			}
			
			def void setFrArTpStMinGrpSeg(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpStMinGrpSeg"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpStMinGrpSeg"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrArTpTc(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTc"].getBooleanValue()
			}
			
			def void setFrArTpTc(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTc"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpTc"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getFrArTpTimeBr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeBr"].getBigDecimalValue()
			}
			
			def void setFrArTpTimeBr(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeBr"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpTimeBr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrArTpTimeCs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeCs"].getBigDecimalValue()
			}
			
			def void setFrArTpTimeCs(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeCs"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpTimeCs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrArTpTimeoutAr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeoutAr"].getBigDecimalValue()
			}
			
			def void setFrArTpTimeoutAr(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeoutAr"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpTimeoutAr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrArTpTimeoutAs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeoutAs"].getBigDecimalValue()
			}
			
			def void setFrArTpTimeoutAs(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeoutAs"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpTimeoutAs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrArTpTimeoutBs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeoutBs"].getBigDecimalValue()
			}
			
			def void setFrArTpTimeoutBs(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeoutBs"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpTimeoutBs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrArTpTimeoutCr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeoutCr"].getBigDecimalValue()
			}
			
			def void setFrArTpTimeoutCr(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpTimeoutCr"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpTimeoutCr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<FrArTpConnection> getFrArTpConnections(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrArTpConnection")
					}
				}
				return new BasicWrappingEList<FrArTpConnection, GContainer>(filteredContainers, typeof(FrArTpConnection), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrArTp.FrArTpMultipleConfig.FrArTpChannel.FrArTpConnection frArTpConnection) {
						frArTpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("FrArTpConnection"))
						super.delegateAdd(frArTpConnection)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrArTp.FrArTpMultipleConfig.FrArTpChannel.FrArTpConnection frArTpConnection) {
						frArTpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("FrArTpConnection"))
						super.delegateAdd(index, frArTpConnection)
					}
				}
			}
			
			def List<FrArTpPdu> getFrArTpPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrArTpPdu")
					}
				}
				return new BasicWrappingEList<FrArTpPdu, GContainer>(filteredContainers, typeof(FrArTpPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrArTp.FrArTpMultipleConfig.FrArTpChannel.FrArTpPdu frArTpPdu) {
						frArTpPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrArTpPdu"))
						super.delegateAdd(frArTpPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrArTp.FrArTpMultipleConfig.FrArTpChannel.FrArTpPdu frArTpPdu) {
						frArTpPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrArTpPdu"))
						super.delegateAdd(index, frArTpPdu)
					}
				}
			}
			
			
			static class FrArTpConnection implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrArTpConnection)){
						return false
					}
					this.target == (object as FrArTpConnection).target
				}
			
				def BigInteger getFrArTpConPrioPdus(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpConPrioPdus"].getBigIntegerValue()
				}
				
				def void setFrArTpConPrioPdus(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpConPrioPdus"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpConPrioPdus"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrArTpLa(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpLa"].getBigIntegerValue()
				}
				
				def void setFrArTpLa(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpLa"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpLa"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getFrArTpMultRec(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMultRec"].getBooleanValue()
				}
				
				def void setFrArTpMultRec(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpMultRec"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpMultRec"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getFrArTpRa(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpRa"].getBigIntegerValue()
				}
				
				def void setFrArTpRa(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpRa"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpRa"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def FrArTpRxSdu getFrArTpRxSdu(){
					containerValue.getByType(typeof(FrArTpRxSdu))
				}
				
				def void setFrArTpRxSdu(FrArTpRxSdu frArTpRxSdu){
					val GContainer subContainer = frArTpRxSdu.getTarget()
					containerValue.setContainer(subContainer, "FrArTpRxSdu")
				}
				
				def FrArTpTxSdu getFrArTpTxSdu(){
					containerValue.getByType(typeof(FrArTpTxSdu))
				}
				
				def void setFrArTpTxSdu(FrArTpTxSdu frArTpTxSdu){
					val GContainer subContainer = frArTpTxSdu.getTarget()
					containerValue.setContainer(subContainer, "FrArTpTxSdu")
				}
				
				
				static class FrArTpRxSdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof FrArTpRxSdu)){
							return false
						}
						this.target == (object as FrArTpRxSdu).target
					}
				
					def BigInteger getFrArTpSduRxId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpSduRxId"].getBigIntegerValue()
					}
					
					def void setFrArTpSduRxId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpSduRxId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpSduRxId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrArTpRxSduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrArTpRxSduRef")
					}
					
					def void setFrArTpRxSduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrArTpRxSduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class FrArTpTxSdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof FrArTpTxSdu)){
							return false
						}
						this.target == (object as FrArTpTxSdu).target
					}
				
					def BigInteger getFrArTpSduTxId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpSduTxId"].getBigIntegerValue()
					}
					
					def void setFrArTpSduTxId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpSduTxId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpSduTxId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrArTpTxSduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrArTpTxSduRef")
					}
					
					def void setFrArTpTxSduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrArTpTxSduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class FrArTpPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrArTpPdu)){
						return false
					}
					this.target == (object as FrArTpPdu).target
				}
			
				def FrArTpPduDirection getFrArTpPduDirection(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpPduDirection"].getFrArTpPduDirectionValue()
				}
				
				def void setFrArTpPduDirection(FrArTpPduDirection value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpPduDirection"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpPduDirection"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum FrArTpPduDirection {
					FRARTP_RX, 
					FRARTP_TX
				}
				
				def FrArTpPduDirection getFrArTpPduDirectionValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FRARTP_RX" : FrArTpPduDirection.FRARTP_RX
						case "FRARTP_TX" : FrArTpPduDirection.FRARTP_TX
					}
				}
				
				def void setFrArTpPduDirectionValue(GParameterValue parameterValue, FrArTpPduDirection value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrArTpPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpPduId"].getBigIntegerValue()
				}
				
				def void setFrArTpPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrArTpPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrArTpPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrArTpPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrArTpPduRef")
				}
				
				def void setFrArTpPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrArTpPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof FrArTp)){
			return false
		}
		this.target == (object as FrArTp).target
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
