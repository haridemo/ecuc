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
			override protected delegateAdd(org.artop.ecuc.autosar422.accessors.EthTSyn.EthTSynGlobalTimeDomain ethTSynGlobalTimeDomain) {
				ethTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EthTSynGlobalTimeDomain"))
				super.delegateAdd(ethTSynGlobalTimeDomain)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.EthTSyn.EthTSynGlobalTimeDomain ethTSynGlobalTimeDomain) {
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
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynDevErrorDetect"].getBooleanValue()
		}
		
		def void setEthTSynDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthTSynHardwareTimestampSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynHardwareTimestampSupport"].getBooleanValue()
		}
		
		def void setEthTSynHardwareTimestampSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynHardwareTimestampSupport"]
			if (parameterValue == null) {
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
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthTSynVersionInfo(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynVersionInfo"].getBooleanValue()
		}
		
		def void setEthTSynVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynVersionInfo"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynVersionInfo"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeDomainId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getEthTSynGlobalTimeFollowUpTimeout(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpTimeout"].getBigDecimalValue()
		}
		
		def void setEthTSynGlobalTimeFollowUpTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeFollowUpTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeFollowUpTimeout"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase getEthTSynSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase), "EthTSynSynchronizedTimeBaseRef")
		}
		
		def void setEthTSynSynchronizedTimeBaseRef(org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynSynchronizedTimeBaseRef"], object.getTarget())
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
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"].getBigDecimalValue()
			}
			
			def void setEthTSynGlobalTimeTxFollowUpOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"].createParameterValue()
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
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getEthTSynGlobalTimeTxPeriod(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPeriod"].getBigDecimalValue()
			}
			
			def void setEthTSynGlobalTimeTxPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfController getEthTSynGlobalTimeEthIfRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfController), "EthTSynGlobalTimeEthIfRef")
			}
			
			def void setEthTSynGlobalTimeEthIfRef(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynGlobalTimeEthIfRef"], object.getTarget())
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
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"].getBigDecimalValue()
			}
			
			def void setEthTSynGlobalTimeTxFollowUpOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxFollowUpOffset"].createParameterValue()
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
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynGlobalTimeTxPdelayReqPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getEthTSynTimeHardwareCorrectionThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTimeHardwareCorrectionThreshold"].getBigDecimalValue()
			}
			
			def void setEthTSynTimeHardwareCorrectionThreshold(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTSynTimeHardwareCorrectionThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthTSynTimeHardwareCorrectionThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfController getEthTSynGlobalTimeEthIfRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfController), "EthTSynGlobalTimeEthIfRef")
			}
			
			def void setEthTSynGlobalTimeEthIfRef(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthTSynGlobalTimeEthIfRef"], object.getTarget())
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
