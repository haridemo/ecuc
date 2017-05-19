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

class FrTSyn implements IWrapper<GModuleConfiguration> {
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

	def FrTSynGeneral getFrTSynGeneral(){
		moduleConfiguration.getByType(typeof(FrTSynGeneral))
	}

	def void setFrTSynGeneral(FrTSynGeneral frTSynGeneral){
		val GContainer container = frTSynGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "FrTSynGeneral")
	}
	def List<FrTSynGlobalTimeDomain> getFrTSynGlobalTimeDomains(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "FrTSynGlobalTimeDomain")
			}
		}
		return new BasicWrappingEList<FrTSynGlobalTimeDomain, GContainer>(filteredContainers, typeof(FrTSynGlobalTimeDomain), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar431.accessors.FrTSyn.FrTSynGlobalTimeDomain frTSynGlobalTimeDomain) {
				frTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("FrTSynGlobalTimeDomain"))
				super.delegateAdd(frTSynGlobalTimeDomain)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.FrTSyn.FrTSynGlobalTimeDomain frTSynGlobalTimeDomain) {
				frTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("FrTSynGlobalTimeDomain"))
				super.delegateAdd(index, frTSynGlobalTimeDomain)
			}
		}
	}

	static class FrTSynGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrTSynGeneral)){
				return false
			}
			this.target == (object as FrTSynGeneral).target
		}
	
		def Boolean getFrTSynDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynDevErrorDetect"].getBooleanValue()
		}
		
		def void setFrTSynDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getFrTSynMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setFrTSynMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrTSynVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynVersionInfoApi"].getBooleanValue()
		}
		
		def void setFrTSynVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class FrTSynGlobalTimeDomain implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrTSynGlobalTimeDomain)){
				return false
			}
			this.target == (object as FrTSynGlobalTimeDomain).target
		}
	
		def BigInteger getFrTSynGlobalTimeDomainId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeDomainId"].getBigIntegerValue()
		}
		
		def void setFrTSynGlobalTimeDomainId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeDomainId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeDomainId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar431.accessors.StbM.StbMSynchronizedTimeBase getFrTSynSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.StbM.StbMSynchronizedTimeBase), "FrTSynSynchronizedTimeBaseRef")
		}
		
		def void setFrTSynSynchronizedTimeBaseRef(org.artop.ecuc.autosar431.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTSynSynchronizedTimeBaseRef"], object.getTarget())
			}
		}
		
		
		def FrTSynGlobalTimeMaster getFrTSynGlobalTimeMaster(){
			containerValue.getByType(typeof(FrTSynGlobalTimeMaster))
		}
		
		def void setFrTSynGlobalTimeMaster(FrTSynGlobalTimeMaster frTSynGlobalTimeMaster){
			val GContainer subContainer = frTSynGlobalTimeMaster.getTarget()
			containerValue.setContainer(subContainer, "FrTSynGlobalTimeMaster")
		}
		
		def FrTSynGlobalTimeOfsDataIDList getFrTSynGlobalTimeOfsDataIDList(){
			containerValue.getByType(typeof(FrTSynGlobalTimeOfsDataIDList))
		}
		
		def void setFrTSynGlobalTimeOfsDataIDList(FrTSynGlobalTimeOfsDataIDList frTSynGlobalTimeOfsDataIDList){
			val GContainer subContainer = frTSynGlobalTimeOfsDataIDList.getTarget()
			containerValue.setContainer(subContainer, "FrTSynGlobalTimeOfsDataIDList")
		}
		
		def FrTSynGlobalTimeSlave getFrTSynGlobalTimeSlave(){
			containerValue.getByType(typeof(FrTSynGlobalTimeSlave))
		}
		
		def void setFrTSynGlobalTimeSlave(FrTSynGlobalTimeSlave frTSynGlobalTimeSlave){
			val GContainer subContainer = frTSynGlobalTimeSlave.getTarget()
			containerValue.setContainer(subContainer, "FrTSynGlobalTimeSlave")
		}
		
		def FrTSynGlobalTimeSyncDataIDList getFrTSynGlobalTimeSyncDataIDList(){
			containerValue.getByType(typeof(FrTSynGlobalTimeSyncDataIDList))
		}
		
		def void setFrTSynGlobalTimeSyncDataIDList(FrTSynGlobalTimeSyncDataIDList frTSynGlobalTimeSyncDataIDList){
			val GContainer subContainer = frTSynGlobalTimeSyncDataIDList.getTarget()
			containerValue.setContainer(subContainer, "FrTSynGlobalTimeSyncDataIDList")
		}
		
		
		static class FrTSynGlobalTimeMaster implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrTSynGlobalTimeMaster)){
					return false
				}
				this.target == (object as FrTSynGlobalTimeMaster).target
			}
		
			def BigDecimal getFrTSynCyclicMsgResumeTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynCyclicMsgResumeTime"].getBigDecimalValue()
			}
			
			def void setFrTSynCyclicMsgResumeTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynCyclicMsgResumeTime"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynCyclicMsgResumeTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTSynGlobalTimeDebounceTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeDebounceTime"].getBigDecimalValue()
			}
			
			def void setFrTSynGlobalTimeDebounceTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeDebounceTime"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeDebounceTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def FrTSynGlobalTimeTxCrcSecured getFrTSynGlobalTimeTxCrcSecured(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeTxCrcSecured"].getFrTSynGlobalTimeTxCrcSecuredValue()
			}
			
			def void setFrTSynGlobalTimeTxCrcSecured(FrTSynGlobalTimeTxCrcSecured value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeTxCrcSecured"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeTxCrcSecured"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrTSynGlobalTimeTxCrcSecured {
				CRC_NOT_SUPPORTED, 
				CRC_SUPPORTED
			}
			
			def FrTSynGlobalTimeTxCrcSecured getFrTSynGlobalTimeTxCrcSecuredValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRC_NOT_SUPPORTED" : FrTSynGlobalTimeTxCrcSecured.CRC_NOT_SUPPORTED
					case "CRC_SUPPORTED" : FrTSynGlobalTimeTxCrcSecured.CRC_SUPPORTED
				}
			}
			
			def void setFrTSynGlobalTimeTxCrcSecuredValue(GParameterValue parameterValue, FrTSynGlobalTimeTxCrcSecured value){
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTSynGlobalTimeTxPeriod(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeTxPeriod"].getBigDecimalValue()
			}
			
			def void setFrTSynGlobalTimeTxPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeTxPeriod"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeTxPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrTSynImmediateTimeSync(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynImmediateTimeSync"].getBooleanValue()
			}
			
			def void setFrTSynImmediateTimeSync(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynImmediateTimeSync"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynImmediateTimeSync"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			def FrTSynGlobalTimeMasterPdu getFrTSynGlobalTimeMasterPdu(){
				containerValue.getByType(typeof(FrTSynGlobalTimeMasterPdu))
			}
			
			def void setFrTSynGlobalTimeMasterPdu(FrTSynGlobalTimeMasterPdu frTSynGlobalTimeMasterPdu){
				val GContainer subContainer = frTSynGlobalTimeMasterPdu.getTarget()
				containerValue.setContainer(subContainer, "FrTSynGlobalTimeMasterPdu")
			}
			
			
			static class FrTSynGlobalTimeMasterPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrTSynGlobalTimeMasterPdu)){
						return false
					}
					this.target == (object as FrTSynGlobalTimeMasterPdu).target
				}
			
				def BigInteger getFrTSynGlobalTimeMasterHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeMasterHandleId"].getBigIntegerValue()
				}
				
				def void setFrTSynGlobalTimeMasterHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeMasterHandleId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeMasterHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrTSynGlobalTimePduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrTSynGlobalTimePduRef")
				}
				
				def void setFrTSynGlobalTimePduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTSynGlobalTimePduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class FrTSynGlobalTimeOfsDataIDList implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrTSynGlobalTimeOfsDataIDList)){
					return false
				}
				this.target == (object as FrTSynGlobalTimeOfsDataIDList).target
			}
		
			
			
			def List<FrTSynGlobalTimeOfsDataIDListElement> getFrTSynGlobalTimeOfsDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrTSynGlobalTimeOfsDataIDListElement")
					}
				}
				return new BasicWrappingEList<FrTSynGlobalTimeOfsDataIDListElement, GContainer>(filteredContainers, typeof(FrTSynGlobalTimeOfsDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.FrTSyn.FrTSynGlobalTimeDomain.FrTSynGlobalTimeOfsDataIDList.FrTSynGlobalTimeOfsDataIDListElement frTSynGlobalTimeOfsDataIDListElement) {
						frTSynGlobalTimeOfsDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("FrTSynGlobalTimeOfsDataIDListElement"))
						super.delegateAdd(frTSynGlobalTimeOfsDataIDListElement)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.FrTSyn.FrTSynGlobalTimeDomain.FrTSynGlobalTimeOfsDataIDList.FrTSynGlobalTimeOfsDataIDListElement frTSynGlobalTimeOfsDataIDListElement) {
						frTSynGlobalTimeOfsDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("FrTSynGlobalTimeOfsDataIDListElement"))
						super.delegateAdd(index, frTSynGlobalTimeOfsDataIDListElement)
					}
				}
			}
			
			
			static class FrTSynGlobalTimeOfsDataIDListElement implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrTSynGlobalTimeOfsDataIDListElement)){
						return false
					}
					this.target == (object as FrTSynGlobalTimeOfsDataIDListElement).target
				}
			
				def BigInteger getFrTSynGlobalTimeOfsDataIDListIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeOfsDataIDListIndex"].getBigIntegerValue()
				}
				
				def void setFrTSynGlobalTimeOfsDataIDListIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeOfsDataIDListIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeOfsDataIDListIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrTSynGlobalTimeOfsDataIDListValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeOfsDataIDListValue"].getBigIntegerValue()
				}
				
				def void setFrTSynGlobalTimeOfsDataIDListValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeOfsDataIDListValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeOfsDataIDListValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class FrTSynGlobalTimeSlave implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrTSynGlobalTimeSlave)){
					return false
				}
				this.target == (object as FrTSynGlobalTimeSlave).target
			}
		
			def BigInteger getFrTSynGlobalTimeSequenceCounterJumpWidth(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSequenceCounterJumpWidth"].getBigIntegerValue()
			}
			
			def void setFrTSynGlobalTimeSequenceCounterJumpWidth(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSequenceCounterJumpWidth"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeSequenceCounterJumpWidth"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def FrTSynRxCrcValidated getFrTSynRxCrcValidated(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynRxCrcValidated"].getFrTSynRxCrcValidatedValue()
			}
			
			def void setFrTSynRxCrcValidated(FrTSynRxCrcValidated value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynRxCrcValidated"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynRxCrcValidated"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrTSynRxCrcValidated {
				CRC_IGNORED, 
				CRC_NOT_VALIDATED, 
				CRC_OPTIONAL, 
				CRC_VALIDATED
			}
			
			def FrTSynRxCrcValidated getFrTSynRxCrcValidatedValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRC_IGNORED" : FrTSynRxCrcValidated.CRC_IGNORED
					case "CRC_NOT_VALIDATED" : FrTSynRxCrcValidated.CRC_NOT_VALIDATED
					case "CRC_OPTIONAL" : FrTSynRxCrcValidated.CRC_OPTIONAL
					case "CRC_VALIDATED" : FrTSynRxCrcValidated.CRC_VALIDATED
				}
			}
			
			def void setFrTSynRxCrcValidatedValue(GParameterValue parameterValue, FrTSynRxCrcValidated value){
				parameterValue.setValue(value)
			}
			
			
			
			def FrTSynGlobalTimeSlavePdu getFrTSynGlobalTimeSlavePdu(){
				containerValue.getByType(typeof(FrTSynGlobalTimeSlavePdu))
			}
			
			def void setFrTSynGlobalTimeSlavePdu(FrTSynGlobalTimeSlavePdu frTSynGlobalTimeSlavePdu){
				val GContainer subContainer = frTSynGlobalTimeSlavePdu.getTarget()
				containerValue.setContainer(subContainer, "FrTSynGlobalTimeSlavePdu")
			}
			
			
			static class FrTSynGlobalTimeSlavePdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrTSynGlobalTimeSlavePdu)){
						return false
					}
					this.target == (object as FrTSynGlobalTimeSlavePdu).target
				}
			
				def BigInteger getFrTSynGlobalTimeSlaveHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSlaveHandleId"].getBigIntegerValue()
				}
				
				def void setFrTSynGlobalTimeSlaveHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSlaveHandleId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeSlaveHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrTSynGlobalTimePduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrTSynGlobalTimePduRef")
				}
				
				def void setFrTSynGlobalTimePduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTSynGlobalTimePduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class FrTSynGlobalTimeSyncDataIDList implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrTSynGlobalTimeSyncDataIDList)){
					return false
				}
				this.target == (object as FrTSynGlobalTimeSyncDataIDList).target
			}
		
			
			
			def List<FrTSynGlobalTimeSyncDataIDListElement> getFrTSynGlobalTimeSyncDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrTSynGlobalTimeSyncDataIDListElement")
					}
				}
				return new BasicWrappingEList<FrTSynGlobalTimeSyncDataIDListElement, GContainer>(filteredContainers, typeof(FrTSynGlobalTimeSyncDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.FrTSyn.FrTSynGlobalTimeDomain.FrTSynGlobalTimeSyncDataIDList.FrTSynGlobalTimeSyncDataIDListElement frTSynGlobalTimeSyncDataIDListElement) {
						frTSynGlobalTimeSyncDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("FrTSynGlobalTimeSyncDataIDListElement"))
						super.delegateAdd(frTSynGlobalTimeSyncDataIDListElement)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.FrTSyn.FrTSynGlobalTimeDomain.FrTSynGlobalTimeSyncDataIDList.FrTSynGlobalTimeSyncDataIDListElement frTSynGlobalTimeSyncDataIDListElement) {
						frTSynGlobalTimeSyncDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("FrTSynGlobalTimeSyncDataIDListElement"))
						super.delegateAdd(index, frTSynGlobalTimeSyncDataIDListElement)
					}
				}
			}
			
			
			static class FrTSynGlobalTimeSyncDataIDListElement implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrTSynGlobalTimeSyncDataIDListElement)){
						return false
					}
					this.target == (object as FrTSynGlobalTimeSyncDataIDListElement).target
				}
			
				def BigInteger getFrTSynGlobalTimeSyncDataIDListIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSyncDataIDListIndex"].getBigIntegerValue()
				}
				
				def void setFrTSynGlobalTimeSyncDataIDListIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSyncDataIDListIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeSyncDataIDListIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrTSynGlobalTimeSyncDataIDListValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSyncDataIDListValue"].getBigIntegerValue()
				}
				
				def void setFrTSynGlobalTimeSyncDataIDListValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSyncDataIDListValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeSyncDataIDListValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof FrTSyn)){
			return false
		}
		this.target == (object as FrTSyn).target
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
