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

class FrSM implements IWrapper<GModuleConfiguration> {
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

	def FrSMConfig getFrSMConfig(){
		moduleConfiguration.getByType(typeof(FrSMConfig))
	}

	def void setFrSMConfig(FrSMConfig frSMConfig){
		val GContainer container = frSMConfig.getTarget()
	    moduleConfiguration.setContainer(container, "FrSMConfig")
	}
	def FrSMGeneral getFrSMGeneral(){
		moduleConfiguration.getByType(typeof(FrSMGeneral))
	}

	def void setFrSMGeneral(FrSMGeneral frSMGeneral){
		val GContainer container = frSMGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "FrSMGeneral")
	}

	static class FrSMConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrSMConfig)){
				return false
			}
			this.target == (object as FrSMConfig).target
		}
	
		
		
		def List<FrSMCluster> getFrSMClusters(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrSMCluster")
				}
			}
			return new BasicWrappingEList<FrSMCluster, GContainer>(filteredContainers, typeof(FrSMCluster), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.FrSM.FrSMConfig.FrSMCluster frSMCluster) {
					frSMCluster.target?.gSetDefinition(containerValue.getContainerDefinition("FrSMCluster"))
					super.delegateAdd(frSMCluster)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.FrSM.FrSMConfig.FrSMCluster frSMCluster) {
					frSMCluster.target?.gSetDefinition(containerValue.getContainerDefinition("FrSMCluster"))
					super.delegateAdd(index, frSMCluster)
				}
			}
		}
		
		
		static class FrSMCluster implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrSMCluster)){
					return false
				}
				this.target == (object as FrSMCluster).target
			}
		
			def Boolean getFrSMCheckWakeupReason(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMCheckWakeupReason"].getBooleanValue()
			}
			
			def void setFrSMCheckWakeupReason(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMCheckWakeupReason"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMCheckWakeupReason"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrSMDelayStartupWithoutWakeup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDelayStartupWithoutWakeup"].getBooleanValue()
			}
			
			def void setFrSMDelayStartupWithoutWakeup(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDelayStartupWithoutWakeup"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMDelayStartupWithoutWakeup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getFrSMDurationT1(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDurationT1"].getBigDecimalValue()
			}
			
			def void setFrSMDurationT1(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDurationT1"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMDurationT1"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrSMDurationT2(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDurationT2"].getBigDecimalValue()
			}
			
			def void setFrSMDurationT2(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDurationT2"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMDurationT2"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrSMDurationT3(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDurationT3"].getBigDecimalValue()
			}
			
			def void setFrSMDurationT3(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDurationT3"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMDurationT3"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrSMIsColdstartEcu(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMIsColdstartEcu"].getBooleanValue()
			}
			
			def void setFrSMIsColdstartEcu(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMIsColdstartEcu"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMIsColdstartEcu"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrSMIsWakeupEcu(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMIsWakeupEcu"].getBooleanValue()
			}
			
			def void setFrSMIsWakeupEcu(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMIsWakeupEcu"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMIsWakeupEcu"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getFrSMMainFunctionCycleTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMMainFunctionCycleTime"].getBigDecimalValue()
			}
			
			def void setFrSMMainFunctionCycleTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMMainFunctionCycleTime"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMMainFunctionCycleTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrSMMinNumberOfColdstarter(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMMinNumberOfColdstarter"].getBigIntegerValue()
			}
			
			def void setFrSMMinNumberOfColdstarter(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMMinNumberOfColdstarter"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMMinNumberOfColdstarter"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrSMNumWakeupPatterns(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMNumWakeupPatterns"].getBigIntegerValue()
			}
			
			def void setFrSMNumWakeupPatterns(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMNumWakeupPatterns"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMNumWakeupPatterns"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrSMStartupRepetitions(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMStartupRepetitions"].getBigIntegerValue()
			}
			
			def void setFrSMStartupRepetitions(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMStartupRepetitions"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMStartupRepetitions"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrSMStartupRepetitionsWithWakeup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMStartupRepetitionsWithWakeup"].getBigIntegerValue()
			}
			
			def void setFrSMStartupRepetitionsWithWakeup(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMStartupRepetitionsWithWakeup"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMStartupRepetitionsWithWakeup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrSMTrcvStdbyDelay(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMTrcvStdbyDelay"].getBigDecimalValue()
			}
			
			def void setFrSMTrcvStdbyDelay(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMTrcvStdbyDelay"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMTrcvStdbyDelay"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar422.accessors.ComM.ComMConfigSet.ComMChannel getFrSMComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.ComM.ComMConfigSet.ComMChannel), "FrSMComMNetworkHandleRef")
			}
			
			def void setFrSMComMNetworkHandleRef(org.artop.ecuc.autosar422.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrSMComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar422.accessors.FrIf.FrIfConfig.FrIfCluster getFrSMFrIfClusterRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.FrIf.FrIfConfig.FrIfCluster), "FrSMFrIfClusterRef")
			}
			
			def void setFrSMFrIfClusterRef(org.artop.ecuc.autosar422.accessors.FrIf.FrIfConfig.FrIfCluster object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrSMFrIfClusterRef"], object.getTarget())
				}
			}
			
			
			def FrSMClusterDemEventParameterRefs getFrSMClusterDemEventParameterRefs(){
				containerValue.getByType(typeof(FrSMClusterDemEventParameterRefs))
			}
			
			def void setFrSMClusterDemEventParameterRefs(FrSMClusterDemEventParameterRefs frSMClusterDemEventParameterRefs){
				val GContainer subContainer = frSMClusterDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "FrSMClusterDemEventParameterRefs")
			}
			
			
			static class FrSMClusterDemEventParameterRefs implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrSMClusterDemEventParameterRefs)){
						return false
					}
					this.target == (object as FrSMClusterDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter getFRSM_E_CLUSTER_STARTUP(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter), "FRSM_E_CLUSTER_STARTUP")
				}
				
				def void setFRSM_E_CLUSTER_STARTUP(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRSM_E_CLUSTER_STARTUP"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter getFRSM_E_CLUSTER_SYNC_LOSS(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter), "FRSM_E_CLUSTER_SYNC_LOSS")
				}
				
				def void setFRSM_E_CLUSTER_SYNC_LOSS(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRSM_E_CLUSTER_SYNC_LOSS"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class FrSMGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrSMGeneral)){
				return false
			}
			this.target == (object as FrSMGeneral).target
		}
	
		def Boolean getFrSMAllSlotsSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMAllSlotsSupport"].getBooleanValue()
		}
		
		def void setFrSMAllSlotsSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMAllSlotsSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMAllSlotsSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getFrSMCddHeaderFile(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMCddHeaderFile"].getStringValue()
		}
		
		def void setFrSMCddHeaderFile(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMCddHeaderFile"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMCddHeaderFile"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrSMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDevErrorDetect"].getBooleanValue()
		}
		
		def void setFrSMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getFrSMSyncLossErrorIndicationName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMSyncLossErrorIndicationName"].getStringValue()
		}
		
		def void setFrSMSyncLossErrorIndicationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMSyncLossErrorIndicationName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMSyncLossErrorIndicationName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrSMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMVersionInfoApi"].getBooleanValue()
		}
		
		def void setFrSMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrSMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrSMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof FrSM)){
			return false
		}
		this.target == (object as FrSM).target
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
