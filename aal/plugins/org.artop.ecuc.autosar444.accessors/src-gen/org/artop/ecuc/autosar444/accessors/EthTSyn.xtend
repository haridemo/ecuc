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

class EthTSyn implements IWrapper<GModuleConfiguration> {
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

	def EthTSynGeneral getEthTSynGeneral(){
		moduleConfiguration.getByType(typeof(EthTSynGeneral))
	}

	def void setEthTSynGeneral(EthTSynGeneral ethTSynGeneral){
		val GContainer container = ethTSynGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "EthTSynGeneral")
	}
	def List<EthTSynGlobalTimeDomain> getEthTSynGlobalTimeDomains(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "EthTSynGlobalTimeDomain")
			}
		}
		return new BasicWrappingEList<EthTSynGlobalTimeDomain, GContainer>(filteredContainers, typeof(EthTSynGlobalTimeDomain), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EthTSyn.EthTSynGlobalTimeDomain ethTSynGlobalTimeDomain) {
				ethTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EthTSynGlobalTimeDomain"))
				super.delegateAdd(ethTSynGlobalTimeDomain)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EthTSyn.EthTSynGlobalTimeDomain ethTSynGlobalTimeDomain) {
				ethTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EthTSynGlobalTimeDomain"))
				super.delegateAdd(index, ethTSynGlobalTimeDomain)
			}
		}
	}

	static class EthTSynGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof EthTSynGeneral)){
				return false
			}
			this.target == (object as EthTSynGeneral).target
		}
	
		def String getEthTSynDestPhyAddr(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynDestPhyAddr"].getStringValue()
		}
		
		def void setEthTSynDestPhyAddr(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynDestPhyAddr"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynDestPhyAddr"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthTSynDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynDevErrorDetect"].getBooleanValue()
		}
		
		def void setEthTSynDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getEthTSynGlobalTimeRxToUplinkSwitchResidenceTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeRxToUplinkSwitchResidenceTime"].getBigDecimalValue()
		}
		
		def void setEthTSynGlobalTimeRxToUplinkSwitchResidenceTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeRxToUplinkSwitchResidenceTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeRxToUplinkSwitchResidenceTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getEthTSynGlobalTimeUplinkToTxSwitchResidenceTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeUplinkToTxSwitchResidenceTime"].getBigDecimalValue()
		}
		
		def void setEthTSynGlobalTimeUplinkToTxSwitchResidenceTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeUplinkToTxSwitchResidenceTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeUplinkToTxSwitchResidenceTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthTSynHardwareTimestampSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynHardwareTimestampSupport"].getBooleanValue()
		}
		
		def void setEthTSynHardwareTimestampSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynHardwareTimestampSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynHardwareTimestampSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getEthTSynMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setEthTSynMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthTSynMasterSlaveConflictDetection(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynMasterSlaveConflictDetection"].getBooleanValue()
		}
		
		def void setEthTSynMasterSlaveConflictDetection(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynMasterSlaveConflictDetection"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynMasterSlaveConflictDetection"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthTSynMessageCompliance(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynMessageCompliance"].getBooleanValue()
		}
		
		def void setEthTSynMessageCompliance(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynMessageCompliance"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynMessageCompliance"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getEthTSynSwitchMgmtRxMessageBufferCount(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynSwitchMgmtRxMessageBufferCount"].getBigIntegerValue()
		}
		
		def void setEthTSynSwitchMgmtRxMessageBufferCount(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynSwitchMgmtRxMessageBufferCount"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynSwitchMgmtRxMessageBufferCount"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthTSynVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynVersionInfoApi"].getBooleanValue()
		}
		
		def void setEthTSynVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfFrameOwnerConfig getEthTSynEthIfFrameType(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfFrameOwnerConfig), "EthTSynEthIfFrameType")
		}
		
		def void setEthTSynEthIfFrameType(org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfFrameOwnerConfig object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynEthIfFrameType"], object.getTarget())
			}
		}
		
		
		
	}
	static class EthTSynGlobalTimeDomain implements IWrapper<GContainer> {
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
	        if (!(object instanceof EthTSynGlobalTimeDomain)){
				return false
			}
			this.target == (object as EthTSynGlobalTimeDomain).target
		}
	
		def BigInteger getEthTSynGlobalTimeDomainId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeDomainId"].getBigIntegerValue()
		}
		
		def void setEthTSynGlobalTimeDomainId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeDomainId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeDomainId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase getEthTSynSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase), "EthTSynSynchronizedTimeBaseRef")
		}
		
		def void setEthTSynSynchronizedTimeBaseRef(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynSynchronizedTimeBaseRef"], object.getTarget())
			}
		}
		
		
		def EthTSynGlobalTimeFollowUpDataIDList getEthTSynGlobalTimeFollowUpDataIDList(){
			containerValue.getByType(typeof(EthTSynGlobalTimeFollowUpDataIDList))
		}
		
		def void setEthTSynGlobalTimeFollowUpDataIDList(EthTSynGlobalTimeFollowUpDataIDList ethTSynGlobalTimeFollowUpDataIDList){
			val GContainer subContainer = ethTSynGlobalTimeFollowUpDataIDList.getTarget()
			containerValue.setContainer(subContainer, "EthTSynGlobalTimeFollowUpDataIDList")
		}
		
		def List<EthTSynPortConfig> getEthTSynPortConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthTSynPortConfig")
				}
			}
			return new BasicWrappingEList<EthTSynPortConfig, GContainer>(filteredContainers, typeof(EthTSynPortConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EthTSyn.EthTSynGlobalTimeDomain.EthTSynPortConfig ethTSynPortConfig) {
					ethTSynPortConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthTSynPortConfig"))
					super.delegateAdd(ethTSynPortConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EthTSyn.EthTSynGlobalTimeDomain.EthTSynPortConfig ethTSynPortConfig) {
					ethTSynPortConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthTSynPortConfig"))
					super.delegateAdd(index, ethTSynPortConfig)
				}
			}
		}
		
		
		static class EthTSynGlobalTimeFollowUpDataIDList implements IWrapper<GContainer> {
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
		        if (!(object instanceof EthTSynGlobalTimeFollowUpDataIDList)){
					return false
				}
				this.target == (object as EthTSynGlobalTimeFollowUpDataIDList).target
			}
		
			
			
			def List<EthTSynGlobalTimeFollowUpDataIDListElement> getEthTSynGlobalTimeFollowUpDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EthTSynGlobalTimeFollowUpDataIDListElement")
					}
				}
				return new BasicWrappingEList<EthTSynGlobalTimeFollowUpDataIDListElement, GContainer>(filteredContainers, typeof(EthTSynGlobalTimeFollowUpDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EthTSyn.EthTSynGlobalTimeDomain.EthTSynGlobalTimeFollowUpDataIDList.EthTSynGlobalTimeFollowUpDataIDListElement ethTSynGlobalTimeFollowUpDataIDListElement) {
						ethTSynGlobalTimeFollowUpDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("EthTSynGlobalTimeFollowUpDataIDListElement"))
						super.delegateAdd(ethTSynGlobalTimeFollowUpDataIDListElement)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EthTSyn.EthTSynGlobalTimeDomain.EthTSynGlobalTimeFollowUpDataIDList.EthTSynGlobalTimeFollowUpDataIDListElement ethTSynGlobalTimeFollowUpDataIDListElement) {
						ethTSynGlobalTimeFollowUpDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("EthTSynGlobalTimeFollowUpDataIDListElement"))
						super.delegateAdd(index, ethTSynGlobalTimeFollowUpDataIDListElement)
					}
				}
			}
			
			
			static class EthTSynGlobalTimeFollowUpDataIDListElement implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthTSynGlobalTimeFollowUpDataIDListElement)){
						return false
					}
					this.target == (object as EthTSynGlobalTimeFollowUpDataIDListElement).target
				}
			
				def BigInteger getEthTSynGlobalTimeFollowUpDataIDListIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpDataIDListIndex"].getBigIntegerValue()
				}
				
				def void setEthTSynGlobalTimeFollowUpDataIDListIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpDataIDListIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeFollowUpDataIDListIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getEthTSynGlobalTimeFollowUpDataIDListValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpDataIDListValue"].getBigIntegerValue()
				}
				
				def void setEthTSynGlobalTimeFollowUpDataIDListValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpDataIDListValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeFollowUpDataIDListValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class EthTSynPortConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof EthTSynPortConfig)){
					return false
				}
				this.target == (object as EthTSynPortConfig).target
			}
		
			def BigInteger getEthTSynFramePrio(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynFramePrio"].getBigIntegerValue()
			}
			
			def void setEthTSynFramePrio(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynFramePrio"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynFramePrio"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getEthTSynGlobalTimeDebounceTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeDebounceTime"].getBigDecimalValue()
			}
			
			def void setEthTSynGlobalTimeDebounceTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeDebounceTime"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeDebounceTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfController getEthTSynGlobalTimeEthIfRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfController), "EthTSynGlobalTimeEthIfRef")
			}
			
			def void setEthTSynGlobalTimeEthIfRef(org.artop.ecuc.autosar444.accessors.EthIf.EthIfConfigSet.EthIfController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynGlobalTimeEthIfRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.EthSwt.EthSwtConfig.EthSwtPort getEthTSynSwitchManagementEthSwitchPortRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EthSwt.EthSwtConfig.EthSwtPort), "EthTSynSwitchManagementEthSwitchPortRef")
			}
			
			def void setEthTSynSwitchManagementEthSwitchPortRef(org.artop.ecuc.autosar444.accessors.EthSwt.EthSwtConfig.EthSwtPort object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynSwitchManagementEthSwitchPortRef"], object.getTarget())
				}
			}
			
			
			def EthTSynPdelayConfig getEthTSynPdelayConfig(){
				containerValue.getByType(typeof(EthTSynPdelayConfig))
			}
			
			def void setEthTSynPdelayConfig(EthTSynPdelayConfig ethTSynPdelayConfig){
				val GContainer subContainer = ethTSynPdelayConfig.getTarget()
				containerValue.setContainer(subContainer, "EthTSynPdelayConfig")
			}
			
			def EthTSynPortRole getEthTSynPortRole(){
				containerValue.getByType(typeof(EthTSynPortRole))
			}
			
			def void setEthTSynPortRole(EthTSynPortRole ethTSynPortRole){
				val GContainer subContainer = ethTSynPortRole.getTarget()
				containerValue.setContainer(subContainer, "EthTSynPortRole")
			}
			
			
			static class EthTSynPdelayConfig implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthTSynPdelayConfig)){
						return false
					}
					this.target == (object as EthTSynPdelayConfig).target
				}
			
				def Boolean getEthTSynGlobalTimePdelayRespEnable(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimePdelayRespEnable"].getBooleanValue()
				}
				
				def void setEthTSynGlobalTimePdelayRespEnable(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimePdelayRespEnable"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimePdelayRespEnable"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigDecimal getEthTSynGlobalTimePropagationDelay(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimePropagationDelay"].getBigDecimalValue()
				}
				
				def void setEthTSynGlobalTimePropagationDelay(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimePropagationDelay"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimePropagationDelay"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getEthTSynGlobalTimeTxPdelayReqPeriod(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"].getBigDecimalValue()
				}
				
				def void setEthTSynGlobalTimeTxPdelayReqPeriod(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getEthTSynPdelayLatencyThreshold(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynPdelayLatencyThreshold"].getBigDecimalValue()
				}
				
				def void setEthTSynPdelayLatencyThreshold(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynPdelayLatencyThreshold"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynPdelayLatencyThreshold"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getEthTSynPdelayRespAndRespFollowUpTimeout(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynPdelayRespAndRespFollowUpTimeout"].getBigDecimalValue()
				}
				
				def void setEthTSynPdelayRespAndRespFollowUpTimeout(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynPdelayRespAndRespFollowUpTimeout"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynPdelayRespAndRespFollowUpTimeout"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class EthTSynPortRole implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthTSynPortRole)){
						return false
					}
					this.target == (object as EthTSynPortRole).target
				}
			
				def EthTSynGlobalTimeMaster getEthTSynGlobalTimeMaster(){
					containerValue.getByType(typeof(EthTSynGlobalTimeMaster))
				}
				
				def void setEthTSynGlobalTimeMaster(EthTSynGlobalTimeMaster ethTSynGlobalTimeMaster){
					val GContainer subContainer = ethTSynGlobalTimeMaster.getTarget()
					containerValue.setContainer(subContainer, "EthTSynGlobalTimeMaster")
				}
				def EthTSynGlobalTimeSlave getEthTSynGlobalTimeSlave(){
					containerValue.getByType(typeof(EthTSynGlobalTimeSlave))
				}
				
				def void setEthTSynGlobalTimeSlave(EthTSynGlobalTimeSlave ethTSynGlobalTimeSlave){
					val GContainer subContainer = ethTSynGlobalTimeSlave.getTarget()
					containerValue.setContainer(subContainer, "EthTSynGlobalTimeSlave")
				}
				
				static class EthTSynGlobalTimeMaster implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthTSynGlobalTimeMaster)){
							return false
						}
						this.target == (object as EthTSynGlobalTimeMaster).target
					}
				
					def BigDecimal getEthTSynCyclicMsgResumeTime(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCyclicMsgResumeTime"].getBigDecimalValue()
					}
					
					def void setEthTSynCyclicMsgResumeTime(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCyclicMsgResumeTime"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCyclicMsgResumeTime"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def EthTSynGlobalTimeTxCrcSecured getEthTSynGlobalTimeTxCrcSecured(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxCrcSecured"].getEthTSynGlobalTimeTxCrcSecuredValue()
					}
					
					def void setEthTSynGlobalTimeTxCrcSecured(EthTSynGlobalTimeTxCrcSecured value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxCrcSecured"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxCrcSecured"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EthTSynGlobalTimeTxCrcSecured {
						CRC_NOT_SUPPORTED, 
						CRC_SUPPORTED
					}
					
					def EthTSynGlobalTimeTxCrcSecured getEthTSynGlobalTimeTxCrcSecuredValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "CRC_NOT_SUPPORTED" : EthTSynGlobalTimeTxCrcSecured.CRC_NOT_SUPPORTED
							case "CRC_SUPPORTED" : EthTSynGlobalTimeTxCrcSecured.CRC_SUPPORTED
						}
					}
					
					def void setEthTSynGlobalTimeTxCrcSecuredValue(GParameterValue parameterValue, EthTSynGlobalTimeTxCrcSecured value){
						parameterValue.setValue(value)
					}
					
					def BigDecimal getEthTSynGlobalTimeTxPeriod(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPeriod"].getBigDecimalValue()
					}
					
					def void setEthTSynGlobalTimeTxPeriod(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPeriod"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxPeriod"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getEthTSynImmediateTimeSync(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynImmediateTimeSync"].getBooleanValue()
					}
					
					def void setEthTSynImmediateTimeSync(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynImmediateTimeSync"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynImmediateTimeSync"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getEthTSynIsSystemWideGlobalTimeMaster(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynIsSystemWideGlobalTimeMaster"].getBooleanValue()
					}
					
					def void setEthTSynIsSystemWideGlobalTimeMaster(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynIsSystemWideGlobalTimeMaster"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynIsSystemWideGlobalTimeMaster"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getEthTSynTLVFollowUpOFSSubTLV(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTLVFollowUpOFSSubTLV"].getBooleanValue()
					}
					
					def void setEthTSynTLVFollowUpOFSSubTLV(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTLVFollowUpOFSSubTLV"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynTLVFollowUpOFSSubTLV"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getEthTSynTLVFollowUpStatusSubTLV(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTLVFollowUpStatusSubTLV"].getBooleanValue()
					}
					
					def void setEthTSynTLVFollowUpStatusSubTLV(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTLVFollowUpStatusSubTLV"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynTLVFollowUpStatusSubTLV"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getEthTSynTLVFollowUpTimeSubTLV(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTLVFollowUpTimeSubTLV"].getBooleanValue()
					}
					
					def void setEthTSynTLVFollowUpTimeSubTLV(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTLVFollowUpTimeSubTLV"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynTLVFollowUpTimeSubTLV"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getEthTSynTLVFollowUpUserDataSubTLV(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTLVFollowUpUserDataSubTLV"].getBooleanValue()
					}
					
					def void setEthTSynTLVFollowUpUserDataSubTLV(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTLVFollowUpUserDataSubTLV"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynTLVFollowUpUserDataSubTLV"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					
					def EthTSynCrcTimeFlagsTxSecured getEthTSynCrcTimeFlagsTxSecured(){
						containerValue.getByType(typeof(EthTSynCrcTimeFlagsTxSecured))
					}
					
					def void setEthTSynCrcTimeFlagsTxSecured(EthTSynCrcTimeFlagsTxSecured ethTSynCrcTimeFlagsTxSecured){
						val GContainer subContainer = ethTSynCrcTimeFlagsTxSecured.getTarget()
						containerValue.setContainer(subContainer, "EthTSynCrcTimeFlagsTxSecured")
					}
					
					
					static class EthTSynCrcTimeFlagsTxSecured implements IWrapper<GContainer> {
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
					        if (!(object instanceof EthTSynCrcTimeFlagsTxSecured)){
								return false
							}
							this.target == (object as EthTSynCrcTimeFlagsTxSecured).target
						}
					
						def Boolean getEthTSynCrcCorrectionField(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcCorrectionField"].getBooleanValue()
						}
						
						def void setEthTSynCrcCorrectionField(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcCorrectionField"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcCorrectionField"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcDomainNumber(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcDomainNumber"].getBooleanValue()
						}
						
						def void setEthTSynCrcDomainNumber(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcDomainNumber"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcDomainNumber"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcMessageLength(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcMessageLength"].getBooleanValue()
						}
						
						def void setEthTSynCrcMessageLength(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcMessageLength"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcMessageLength"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcPreciseOriginTimestamp(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcPreciseOriginTimestamp"].getBooleanValue()
						}
						
						def void setEthTSynCrcPreciseOriginTimestamp(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcPreciseOriginTimestamp"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcPreciseOriginTimestamp"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcSequenceId(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcSequenceId"].getBooleanValue()
						}
						
						def void setEthTSynCrcSequenceId(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcSequenceId"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcSequenceId"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcSourcePortIdentity(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcSourcePortIdentity"].getBooleanValue()
						}
						
						def void setEthTSynCrcSourcePortIdentity(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcSourcePortIdentity"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcSourcePortIdentity"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						
						
					}
					
				}
				
				static class EthTSynGlobalTimeSlave implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthTSynGlobalTimeSlave)){
							return false
						}
						this.target == (object as EthTSynGlobalTimeSlave).target
					}
				
					def BigDecimal getEthTSynGlobalTimeFollowUpTimeout(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpTimeout"].getBigDecimalValue()
					}
					
					def void setEthTSynGlobalTimeFollowUpTimeout(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpTimeout"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeFollowUpTimeout"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def EthTSynRxCrcValidated getEthTSynRxCrcValidated(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynRxCrcValidated"].getEthTSynRxCrcValidatedValue()
					}
					
					def void setEthTSynRxCrcValidated(EthTSynRxCrcValidated value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynRxCrcValidated"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynRxCrcValidated"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EthTSynRxCrcValidated {
						CRC_IGNORED, 
						CRC_NOT_VALIDATED, 
						CRC_OPTIONAL, 
						CRC_VALIDATED
					}
					
					def EthTSynRxCrcValidated getEthTSynRxCrcValidatedValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "CRC_IGNORED" : EthTSynRxCrcValidated.CRC_IGNORED
							case "CRC_NOT_VALIDATED" : EthTSynRxCrcValidated.CRC_NOT_VALIDATED
							case "CRC_OPTIONAL" : EthTSynRxCrcValidated.CRC_OPTIONAL
							case "CRC_VALIDATED" : EthTSynRxCrcValidated.CRC_VALIDATED
						}
					}
					
					def void setEthTSynRxCrcValidatedValue(GParameterValue parameterValue, EthTSynRxCrcValidated value){
						parameterValue.setValue(value)
					}
					
					
					
					def EthTSynCrcFlagsRxValidated getEthTSynCrcFlagsRxValidated(){
						containerValue.getByType(typeof(EthTSynCrcFlagsRxValidated))
					}
					
					def void setEthTSynCrcFlagsRxValidated(EthTSynCrcFlagsRxValidated ethTSynCrcFlagsRxValidated){
						val GContainer subContainer = ethTSynCrcFlagsRxValidated.getTarget()
						containerValue.setContainer(subContainer, "EthTSynCrcFlagsRxValidated")
					}
					
					
					static class EthTSynCrcFlagsRxValidated implements IWrapper<GContainer> {
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
					        if (!(object instanceof EthTSynCrcFlagsRxValidated)){
								return false
							}
							this.target == (object as EthTSynCrcFlagsRxValidated).target
						}
					
						def Boolean getEthTSynCrcCorrectionField(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcCorrectionField"].getBooleanValue()
						}
						
						def void setEthTSynCrcCorrectionField(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcCorrectionField"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcCorrectionField"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcDomainNumber(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcDomainNumber"].getBooleanValue()
						}
						
						def void setEthTSynCrcDomainNumber(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcDomainNumber"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcDomainNumber"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcMessageLength(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcMessageLength"].getBooleanValue()
						}
						
						def void setEthTSynCrcMessageLength(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcMessageLength"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcMessageLength"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcPreciseOriginTimestamp(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcPreciseOriginTimestamp"].getBooleanValue()
						}
						
						def void setEthTSynCrcPreciseOriginTimestamp(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcPreciseOriginTimestamp"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcPreciseOriginTimestamp"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcSequenceId(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcSequenceId"].getBooleanValue()
						}
						
						def void setEthTSynCrcSequenceId(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcSequenceId"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcSequenceId"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getEthTSynCrcSourcePortIdentity(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcSourcePortIdentity"].getBooleanValue()
						}
						
						def void setEthTSynCrcSourcePortIdentity(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynCrcSourcePortIdentity"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynCrcSourcePortIdentity"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						
						
					}
					
				}
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof EthTSyn)){
			return false
		}
		this.target == (object as EthTSyn).target
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
