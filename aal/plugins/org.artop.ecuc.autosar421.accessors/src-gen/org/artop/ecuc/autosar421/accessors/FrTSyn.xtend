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
import org.artop.ecuc.autosar421.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.FloatValueUnwrappingEList
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
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTSyn$FrTSynGlobalTimeDomain frTSynGlobalTimeDomain) {
				frTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("FrTSynGlobalTimeDomain"))
				super.delegateAdd(frTSynGlobalTimeDomain)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTSyn$FrTSynGlobalTimeDomain frTSynGlobalTimeDomain) {
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
		
		def Boolean getFrTSynDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynDevErrorDetect"])
		}
		
		def void setFrTSynDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getFrTSynMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynMainFunctionPeriod"])
		}
		
		def void setFrTSynMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrTSynVersionInfo(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynVersionInfo"])
		}
		
		def void setFrTSynVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynVersionInfo"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynVersionInfo"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def FrTSynGlobalTimeOfsDataIDList getFrTSynGlobalTimeOfsDataIDList(){
			containerValue.getByType(typeof(FrTSynGlobalTimeOfsDataIDList))
		}
		
		def void setFrTSynGlobalTimeOfsDataIDList(FrTSynGlobalTimeOfsDataIDList frTSynGlobalTimeOfsDataIDList){
			val GContainer subContainer = frTSynGlobalTimeOfsDataIDList.getTarget()
			containerValue.setContainer(subContainer, "FrTSynGlobalTimeOfsDataIDList")
		}
		
		def FrTSynGlobalTimeSyncDataIDList getFrTSynGlobalTimeSyncDataIDList(){
			containerValue.getByType(typeof(FrTSynGlobalTimeSyncDataIDList))
		}
		
		def void setFrTSynGlobalTimeSyncDataIDList(FrTSynGlobalTimeSyncDataIDList frTSynGlobalTimeSyncDataIDList){
			val GContainer subContainer = frTSynGlobalTimeSyncDataIDList.getTarget()
			containerValue.setContainer(subContainer, "FrTSynGlobalTimeSyncDataIDList")
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
			
			
			
			def List<FrTSynGlobalTimeOfsDataIDListElement> getFrTSynGlobalTimeOfsDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrTSynGlobalTimeOfsDataIDListElement")
					}
				}
				return new BasicWrappingEList<FrTSynGlobalTimeOfsDataIDListElement, GContainer>(filteredContainers, typeof(FrTSynGlobalTimeOfsDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTSyn$FrTSynGeneral$FrTSynGlobalTimeOfsDataIDList$FrTSynGlobalTimeOfsDataIDListElement frTSynGlobalTimeOfsDataIDListElement) {
						frTSynGlobalTimeOfsDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("FrTSynGlobalTimeOfsDataIDListElement"))
						super.delegateAdd(frTSynGlobalTimeOfsDataIDListElement)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTSyn$FrTSynGeneral$FrTSynGlobalTimeOfsDataIDList$FrTSynGlobalTimeOfsDataIDListElement frTSynGlobalTimeOfsDataIDListElement) {
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
				
				def Integer getFrTSynGlobalTimeOfsDataIDListIndex(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeOfsDataIDListIndex"])
				}
				
				def void setFrTSynGlobalTimeOfsDataIDListIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeOfsDataIDListIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeOfsDataIDListIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFrTSynGlobalTimeOfsDataIDListValue(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeOfsDataIDListValue"])
				}
				
				def void setFrTSynGlobalTimeOfsDataIDListValue(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeOfsDataIDListValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeOfsDataIDListValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			
			
			def List<FrTSynGlobalTimeSyncDataIDListElement> getFrTSynGlobalTimeSyncDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrTSynGlobalTimeSyncDataIDListElement")
					}
				}
				return new BasicWrappingEList<FrTSynGlobalTimeSyncDataIDListElement, GContainer>(filteredContainers, typeof(FrTSynGlobalTimeSyncDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTSyn$FrTSynGeneral$FrTSynGlobalTimeSyncDataIDList$FrTSynGlobalTimeSyncDataIDListElement frTSynGlobalTimeSyncDataIDListElement) {
						frTSynGlobalTimeSyncDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("FrTSynGlobalTimeSyncDataIDListElement"))
						super.delegateAdd(frTSynGlobalTimeSyncDataIDListElement)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTSyn$FrTSynGeneral$FrTSynGlobalTimeSyncDataIDList$FrTSynGlobalTimeSyncDataIDListElement frTSynGlobalTimeSyncDataIDListElement) {
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
				
				def Integer getFrTSynGlobalTimeSyncDataIDListIndex(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSyncDataIDListIndex"])
				}
				
				def void setFrTSynGlobalTimeSyncDataIDListIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSyncDataIDListIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeSyncDataIDListIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getFrTSynGlobalTimeSyncDataIDListValue(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSyncDataIDListValue"])
				}
				
				def void setFrTSynGlobalTimeSyncDataIDListValue(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSyncDataIDListValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeSyncDataIDListValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
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
		
		def Integer getFrTSynGlobalTimeDomainId(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeDomainId"])
		}
		
		def void setFrTSynGlobalTimeDomainId(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeDomainId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeDomainId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getFrTSynGlobalTimeSequenceCounterJumpWidth(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSequenceCounterJumpWidth"])
		}
		
		def void setFrTSynGlobalTimeSequenceCounterJumpWidth(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSequenceCounterJumpWidth"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeSequenceCounterJumpWidth"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase getFrTSynSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase), "FrTSynSynchronizedTimeBaseRef")
		}
				
		def void setFrTSynSynchronizedTimeBaseRef(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrTSynSynchronizedTimeBaseRef"], object.getTarget())
			}
		}
		
		
		def FrTSynGlobalTimeMaster getFrTSynGlobalTimeMaster(){
			containerValue.getByType(typeof(FrTSynGlobalTimeMaster))
		}
		
		def void setFrTSynGlobalTimeMaster(FrTSynGlobalTimeMaster frTSynGlobalTimeMaster){
			val GContainer subContainer = frTSynGlobalTimeMaster.getTarget()
			containerValue.setContainer(subContainer, "FrTSynGlobalTimeMaster")
		}
		
		def FrTSynGlobalTimeSlave getFrTSynGlobalTimeSlave(){
			containerValue.getByType(typeof(FrTSynGlobalTimeSlave))
		}
		
		def void setFrTSynGlobalTimeSlave(FrTSynGlobalTimeSlave frTSynGlobalTimeSlave){
			val GContainer subContainer = frTSynGlobalTimeSlave.getTarget()
			containerValue.setContainer(subContainer, "FrTSynGlobalTimeSlave")
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
			
			def FrTSynGlobalTimeTxCrcSecured getFrTSynGlobalTimeTxCrcSecured(){
				getFrTSynGlobalTimeTxCrcSecuredValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeTxCrcSecured"])
			}
			
			def void setFrTSynGlobalTimeTxCrcSecured(FrTSynGlobalTimeTxCrcSecured value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeTxCrcSecured"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeTxCrcSecured"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum FrTSynGlobalTimeTxCrcSecured {
				CRC_NOT_SUPPORTED, 
				CRC_SUPPORTED
			}
				
			def FrTSynGlobalTimeTxCrcSecured getFrTSynGlobalTimeTxCrcSecuredValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CRC_NOT_SUPPORTED" : FrTSynGlobalTimeTxCrcSecured.CRC_NOT_SUPPORTED
					case "CRC_SUPPORTED" : FrTSynGlobalTimeTxCrcSecured.CRC_SUPPORTED
				}
			}
			
			def void setFrTSynGlobalTimeTxCrcSecuredValue(GParameterValue paramValue, FrTSynGlobalTimeTxCrcSecured value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def Float getFrTSynGlobalTimeTxPeriod(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeTxPeriod"])
			}
			
			def void setFrTSynGlobalTimeTxPeriod(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeTxPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeTxPeriod"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				
				def Integer getFrTSynGlobalTimeMasterConfirmationHandleId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeMasterConfirmationHandleId"])
				}
				
				def void setFrTSynGlobalTimeMasterConfirmationHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeMasterConfirmationHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeMasterConfirmationHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrTSynGlobalTimePduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrTSynGlobalTimePduRef")
				}
						
				def void setFrTSynGlobalTimePduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrTSynGlobalTimePduRef"], object.getTarget())
					}
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
			
			def FrTSynRxCrcValidated getFrTSynRxCrcValidated(){
				getFrTSynRxCrcValidatedValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynRxCrcValidated"])
			}
			
			def void setFrTSynRxCrcValidated(FrTSynRxCrcValidated value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynRxCrcValidated"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynRxCrcValidated"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum FrTSynRxCrcValidated {
				CRC_IGNORED, 
				CRC_NOT_VALIDATED, 
				CRC_VALIDATED
			}
				
			def FrTSynRxCrcValidated getFrTSynRxCrcValidatedValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CRC_IGNORED" : FrTSynRxCrcValidated.CRC_IGNORED
					case "CRC_NOT_VALIDATED" : FrTSynRxCrcValidated.CRC_NOT_VALIDATED
					case "CRC_VALIDATED" : FrTSynRxCrcValidated.CRC_VALIDATED
				}
			}
			
			def void setFrTSynRxCrcValidatedValue(GParameterValue paramValue, FrTSynRxCrcValidated value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
				
				def Integer getFrTSynGlobalTimeSlaveHandleId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSlaveHandleId"])
				}
				
				def void setFrTSynGlobalTimeSlaveHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTSynGlobalTimeSlaveHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTSynGlobalTimeSlaveHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrTSynGlobalTimePduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrTSynGlobalTimePduRef")
				}
						
				def void setFrTSynGlobalTimePduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrTSynGlobalTimePduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
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
