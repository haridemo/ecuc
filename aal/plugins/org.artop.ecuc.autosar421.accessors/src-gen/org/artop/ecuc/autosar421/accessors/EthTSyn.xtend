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
package org.artop.ecuc.autosar421.accessors

import java.util.List

import autosar40.ecucdescription.EcucTextualParamValue
import autosar40.ecucdescription.EcucNumericalParamValue
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock
import autosar40.util.Autosar40Factory

import static extension org.artop.ecuc.autosar421.accessors.lib.EcucValueAccessor421Util.*
import org.artop.ecuc.autosar421.accessors.lib.EcucValueAccessor421Util
import org.artop.ecuc.autosar421.accessors.lib.BigIntegerValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.BigDecimalValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.BooleanValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.StringValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.DocumentationBlockValueUnwrappingEList

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
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthTSyn$EthTSynGlobalTimeDomain ethTSynGlobalTimeDomain) {
				ethTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EthTSynGlobalTimeDomain"))
				super.delegateAdd(ethTSynGlobalTimeDomain)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthTSyn$EthTSynGlobalTimeDomain ethTSynGlobalTimeDomain) {
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
		
		def Boolean getEthTSynDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynDevErrorDetect"])
		}
		
		def void setEthTSynDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTSynHardwareTimestampSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynHardwareTimestampSupport"])
		}
		
		def void setEthTSynHardwareTimestampSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynHardwareTimestampSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynHardwareTimestampSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getEthTSynMainFunctionPeriod(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynMainFunctionPeriod"])
		}
		
		def void setEthTSynMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTSynVersionInfo(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynVersionInfo"])
		}
		
		def void setEthTSynVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynVersionInfo"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynVersionInfo"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeDomainId"])
		}
		
		def void setEthTSynGlobalTimeDomainId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeDomainId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeDomainId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getEthTSynGlobalTimeFollowUpTimeout(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpTimeout"])
		}
		
		def void setEthTSynGlobalTimeFollowUpTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeFollowUpTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase getEthTSynSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase), "EthTSynSynchronizedTimeBaseRef")
		}
				
		def void setEthTSynSynchronizedTimeBaseRef(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynSynchronizedTimeBaseRef"], object.getTarget())
			}
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
			
			def BigDecimal getEthTSynGlobalTimeTxFollowUpOffset(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"])
			}
			
			def void setEthTSynGlobalTimeTxFollowUpOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getEthTSynGlobalTimeTxPdelayReqPeriod(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"])
			}
			
			def void setEthTSynGlobalTimeTxPdelayReqPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getEthTSynGlobalTimeTxPeriod(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPeriod"])
			}
			
			def void setEthTSynGlobalTimeTxPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxPeriod"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfController getEthTSynGlobalTimeEthIfRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfController), "EthTSynGlobalTimeEthIfRef")
			}
					
			def void setEthTSynGlobalTimeEthIfRef(org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynGlobalTimeEthIfRef"], object.getTarget())
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
			
			def BigDecimal getEthTSynGlobalTimeTxFollowUpOffset(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"])
			}
			
			def void setEthTSynGlobalTimeTxFollowUpOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getEthTSynGlobalTimeTxPdelayReqPeriod(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"])
			}
			
			def void setEthTSynGlobalTimeTxPdelayReqPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getEthTSynTimeHardwareCorrectionThreshold(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTimeHardwareCorrectionThreshold"])
			}
			
			def void setEthTSynTimeHardwareCorrectionThreshold(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTimeHardwareCorrectionThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynTimeHardwareCorrectionThreshold"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfController getEthTSynGlobalTimeEthIfRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfController), "EthTSynGlobalTimeEthIfRef")
			}
					
			def void setEthTSynGlobalTimeEthIfRef(org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynGlobalTimeEthIfRef"], object.getTarget())
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
		if (definitionFeature != null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
