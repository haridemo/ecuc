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

class Sd implements IWrapper<GModuleConfiguration> {
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

	def SdConfig getSdConfig(){
		moduleConfiguration.getByType(typeof(SdConfig))
	}

	def void setSdConfig(SdConfig sdConfig){
		val GContainer container = sdConfig.getTarget()
	    moduleConfiguration.setContainer(container, "SdConfig")
	}
	def SdGeneral getSdGeneral(){
		moduleConfiguration.getByType(typeof(SdGeneral))
	}

	def void setSdGeneral(SdGeneral sdGeneral){
		val GContainer container = sdGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "SdGeneral")
	}

	static class SdConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof SdConfig)){
				return false
			}
			this.target == (object as SdConfig).target
		}
	
		
		
		def List<SdCapabilityRecordMatchCallout> getSdCapabilityRecordMatchCallouts(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SdCapabilityRecordMatchCallout")
				}
			}
			return new BasicWrappingEList<SdCapabilityRecordMatchCallout, GContainer>(filteredContainers, typeof(SdCapabilityRecordMatchCallout), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdCapabilityRecordMatchCallout sdCapabilityRecordMatchCallout) {
					sdCapabilityRecordMatchCallout.target?.gSetDefinition(containerValue.getContainerDefinition("SdCapabilityRecordMatchCallout"))
					super.delegateAdd(sdCapabilityRecordMatchCallout)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdCapabilityRecordMatchCallout sdCapabilityRecordMatchCallout) {
					sdCapabilityRecordMatchCallout.target?.gSetDefinition(containerValue.getContainerDefinition("SdCapabilityRecordMatchCallout"))
					super.delegateAdd(index, sdCapabilityRecordMatchCallout)
				}
			}
		}
		
		def List<SdInstance> getSdInstances(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SdInstance")
				}
			}
			return new BasicWrappingEList<SdInstance, GContainer>(filteredContainers, typeof(SdInstance), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance sdInstance) {
					sdInstance.target?.gSetDefinition(containerValue.getContainerDefinition("SdInstance"))
					super.delegateAdd(sdInstance)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance sdInstance) {
					sdInstance.target?.gSetDefinition(containerValue.getContainerDefinition("SdInstance"))
					super.delegateAdd(index, sdInstance)
				}
			}
		}
		
		
		static class SdCapabilityRecordMatchCallout implements IWrapper<GContainer> {
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
		        if (!(object instanceof SdCapabilityRecordMatchCallout)){
					return false
				}
				this.target == (object as SdCapabilityRecordMatchCallout).target
			}
		
			def String getSdCapabilityRecordMatchCalloutName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdCapabilityRecordMatchCalloutName"].getStringValue()
			}
			
			def void setSdCapabilityRecordMatchCalloutName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdCapabilityRecordMatchCalloutName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdCapabilityRecordMatchCalloutName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class SdInstance implements IWrapper<GContainer> {
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
		        if (!(object instanceof SdInstance)){
					return false
				}
				this.target == (object as SdInstance).target
			}
		
			def String getSdInstanceHostname(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdInstanceHostname"].getStringValue()
			}
			
			def void setSdInstanceHostname(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdInstanceHostname"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdInstanceHostname"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getSdInstanceLocalAdressCheckLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdInstanceLocalAdressCheckLength"].getBigIntegerValue()
			}
			
			def void setSdInstanceLocalAdressCheckLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdInstanceLocalAdressCheckLength"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdInstanceLocalAdressCheckLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<SdClientService> getSdClientServices(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SdClientService")
					}
				}
				return new BasicWrappingEList<SdClientService, GContainer>(filteredContainers, typeof(SdClientService), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientService sdClientService) {
						sdClientService.target?.gSetDefinition(containerValue.getContainerDefinition("SdClientService"))
						super.delegateAdd(sdClientService)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientService sdClientService) {
						sdClientService.target?.gSetDefinition(containerValue.getContainerDefinition("SdClientService"))
						super.delegateAdd(index, sdClientService)
					}
				}
			}
			
			def List<SdClientTimer> getSdClientTimers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SdClientTimer")
					}
				}
				return new BasicWrappingEList<SdClientTimer, GContainer>(filteredContainers, typeof(SdClientTimer), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientTimer sdClientTimer) {
						sdClientTimer.target?.gSetDefinition(containerValue.getContainerDefinition("SdClientTimer"))
						super.delegateAdd(sdClientTimer)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientTimer sdClientTimer) {
						sdClientTimer.target?.gSetDefinition(containerValue.getContainerDefinition("SdClientTimer"))
						super.delegateAdd(index, sdClientTimer)
					}
				}
			}
			
			def SdInstanceDemEventParameterRefs getSdInstanceDemEventParameterRefs(){
				containerValue.getByType(typeof(SdInstanceDemEventParameterRefs))
			}
			
			def void setSdInstanceDemEventParameterRefs(SdInstanceDemEventParameterRefs sdInstanceDemEventParameterRefs){
				val GContainer subContainer = sdInstanceDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "SdInstanceDemEventParameterRefs")
			}
			
			def SdInstanceMulticastRxPdu getSdInstanceMulticastRxPdu(){
				containerValue.getByType(typeof(SdInstanceMulticastRxPdu))
			}
			
			def void setSdInstanceMulticastRxPdu(SdInstanceMulticastRxPdu sdInstanceMulticastRxPdu){
				val GContainer subContainer = sdInstanceMulticastRxPdu.getTarget()
				containerValue.setContainer(subContainer, "SdInstanceMulticastRxPdu")
			}
			
			def SdInstanceTxPdu getSdInstanceTxPdu(){
				containerValue.getByType(typeof(SdInstanceTxPdu))
			}
			
			def void setSdInstanceTxPdu(SdInstanceTxPdu sdInstanceTxPdu){
				val GContainer subContainer = sdInstanceTxPdu.getTarget()
				containerValue.setContainer(subContainer, "SdInstanceTxPdu")
			}
			
			def SdInstanceUnicastRxPdu getSdInstanceUnicastRxPdu(){
				containerValue.getByType(typeof(SdInstanceUnicastRxPdu))
			}
			
			def void setSdInstanceUnicastRxPdu(SdInstanceUnicastRxPdu sdInstanceUnicastRxPdu){
				val GContainer subContainer = sdInstanceUnicastRxPdu.getTarget()
				containerValue.setContainer(subContainer, "SdInstanceUnicastRxPdu")
			}
			
			def List<SdServerService> getSdServerServices(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SdServerService")
					}
				}
				return new BasicWrappingEList<SdServerService, GContainer>(filteredContainers, typeof(SdServerService), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerService sdServerService) {
						sdServerService.target?.gSetDefinition(containerValue.getContainerDefinition("SdServerService"))
						super.delegateAdd(sdServerService)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerService sdServerService) {
						sdServerService.target?.gSetDefinition(containerValue.getContainerDefinition("SdServerService"))
						super.delegateAdd(index, sdServerService)
					}
				}
			}
			
			def List<SdServerTimer> getSdServerTimers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SdServerTimer")
					}
				}
				return new BasicWrappingEList<SdServerTimer, GContainer>(filteredContainers, typeof(SdServerTimer), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerTimer sdServerTimer) {
						sdServerTimer.target?.gSetDefinition(containerValue.getContainerDefinition("SdServerTimer"))
						super.delegateAdd(sdServerTimer)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerTimer sdServerTimer) {
						sdServerTimer.target?.gSetDefinition(containerValue.getContainerDefinition("SdServerTimer"))
						super.delegateAdd(index, sdServerTimer)
					}
				}
			}
			
			
			static class SdClientService implements IWrapper<GContainer> {
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
			        if (!(object instanceof SdClientService)){
						return false
					}
					this.target == (object as SdClientService).target
				}
			
				def Boolean getSdClientServiceAutoRequire(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceAutoRequire"].getBooleanValue()
				}
				
				def void setSdClientServiceAutoRequire(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceAutoRequire"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceAutoRequire"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getSdClientServiceHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceHandleId"].getBigIntegerValue()
				}
				
				def void setSdClientServiceHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceHandleId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdClientServiceId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceId"].getBigIntegerValue()
				}
				
				def void setSdClientServiceId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdClientServiceInstanceId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceInstanceId"].getBigIntegerValue()
				}
				
				def void setSdClientServiceInstanceId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceInstanceId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceInstanceId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdClientServiceMajorVersion(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceMajorVersion"].getBigIntegerValue()
				}
				
				def void setSdClientServiceMajorVersion(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceMajorVersion"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceMajorVersion"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdClientServiceMinorVersion(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceMinorVersion"].getBigIntegerValue()
				}
				
				def void setSdClientServiceMinorVersion(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceMinorVersion"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceMinorVersion"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdCapabilityRecordMatchCallout getSdClientCapabilityRecordMatchCalloutRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdCapabilityRecordMatchCallout), "SdClientCapabilityRecordMatchCalloutRef")
				}
				
				def void setSdClientCapabilityRecordMatchCalloutRef(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdCapabilityRecordMatchCallout object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdClientCapabilityRecordMatchCalloutRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup getSdClientServiceTcpRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup), "SdClientServiceTcpRef")
				}
				
				def void setSdClientServiceTcpRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdClientServiceTcpRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientTimer getSdClientServiceTimerRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientTimer), "SdClientServiceTimerRef")
				}
				
				def void setSdClientServiceTimerRef(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientTimer object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdClientServiceTimerRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup getSdClientServiceUdpRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup), "SdClientServiceUdpRef")
				}
				
				def void setSdClientServiceUdpRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdClientServiceUdpRef"], object.getTarget())
					}
				}
				
				
				def List<SdClientCapabilityRecord> getSdClientCapabilityRecords(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "SdClientCapabilityRecord")
						}
					}
					return new BasicWrappingEList<SdClientCapabilityRecord, GContainer>(filteredContainers, typeof(SdClientCapabilityRecord), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientService.SdClientCapabilityRecord sdClientCapabilityRecord) {
							sdClientCapabilityRecord.target?.gSetDefinition(containerValue.getContainerDefinition("SdClientCapabilityRecord"))
							super.delegateAdd(sdClientCapabilityRecord)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientService.SdClientCapabilityRecord sdClientCapabilityRecord) {
							sdClientCapabilityRecord.target?.gSetDefinition(containerValue.getContainerDefinition("SdClientCapabilityRecord"))
							super.delegateAdd(index, sdClientCapabilityRecord)
						}
					}
				}
				
				def List<SdConsumedEventGroup> getSdConsumedEventGroups(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "SdConsumedEventGroup")
						}
					}
					return new BasicWrappingEList<SdConsumedEventGroup, GContainer>(filteredContainers, typeof(SdConsumedEventGroup), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup sdConsumedEventGroup) {
							sdConsumedEventGroup.target?.gSetDefinition(containerValue.getContainerDefinition("SdConsumedEventGroup"))
							super.delegateAdd(sdConsumedEventGroup)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup sdConsumedEventGroup) {
							sdConsumedEventGroup.target?.gSetDefinition(containerValue.getContainerDefinition("SdConsumedEventGroup"))
							super.delegateAdd(index, sdConsumedEventGroup)
						}
					}
				}
				
				def SdConsumedMethods getSdConsumedMethods(){
					containerValue.getByType(typeof(SdConsumedMethods))
				}
				
				def void setSdConsumedMethods(SdConsumedMethods sdConsumedMethods){
					val GContainer subContainer = sdConsumedMethods.getTarget()
					containerValue.setContainer(subContainer, "SdConsumedMethods")
				}
				
				
				static class SdClientCapabilityRecord implements IWrapper<GContainer> {
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
				        if (!(object instanceof SdClientCapabilityRecord)){
							return false
						}
						this.target == (object as SdClientCapabilityRecord).target
					}
				
					def String getSdClientServiceCapabilityRecordKey(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordKey"].getStringValue()
					}
					
					def void setSdClientServiceCapabilityRecordKey(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordKey"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceCapabilityRecordKey"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getSdClientServiceCapabilityRecordValue(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordValue"].getStringValue()
					}
					
					def void setSdClientServiceCapabilityRecordValue(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordValue"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceCapabilityRecordValue"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
				static class SdConsumedEventGroup implements IWrapper<GContainer> {
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
				        if (!(object instanceof SdConsumedEventGroup)){
							return false
						}
						this.target == (object as SdConsumedEventGroup).target
					}
				
					def Boolean getSdConsumedEventGroupAutoRequire(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupAutoRequire"].getBooleanValue()
					}
					
					def void setSdConsumedEventGroupAutoRequire(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupAutoRequire"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdConsumedEventGroupAutoRequire"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getSdConsumedEventGroupHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupHandleId"].getBigIntegerValue()
					}
					
					def void setSdConsumedEventGroupHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupHandleId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdConsumedEventGroupHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getSdConsumedEventGroupId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupId"].getBigIntegerValue()
					}
					
					def void setSdConsumedEventGroupId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdConsumedEventGroupId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdConsumedEventGroupMulticastActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdConsumedEventGroupMulticastActivationRef")
					}
					
					def void setSdConsumedEventGroupMulticastActivationRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupMulticastActivationRef"], object.getTarget())
						}
					}
					
					def List<org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup> getSdConsumedEventGroupMulticastGroupRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupMulticastGroupRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "SdConsumedEventGroupMulticastGroupRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup)) {
							override protected wrap(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object) throws CoreException {
								if (object !== null) {
									val container = object.getTarget()
									val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
									referenceValue.gSetDefinition(referenceValueDef)
									referenceValue.gSetValue(container)
									return referenceValue
								}
							}
					
							override protected unwrap(GReferenceValue referenceValue) {
								if (referenceValue !== null) {
									val referenceValueValue = referenceValue.gGetValue
									if (referenceValueValue instanceof GContainer) {
										return new org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdConsumedEventGroupTcpActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdConsumedEventGroupTcpActivationRef")
					}
					
					def void setSdConsumedEventGroupTcpActivationRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupTcpActivationRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientTimer getSdConsumedEventGroupTimerRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientTimer), "SdConsumedEventGroupTimerRef")
					}
					
					def void setSdConsumedEventGroupTimerRef(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdClientTimer object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupTimerRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdConsumedEventGroupUdpActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdConsumedEventGroupUdpActivationRef")
					}
					
					def void setSdConsumedEventGroupUdpActivationRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupUdpActivationRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class SdConsumedMethods implements IWrapper<GContainer> {
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
				        if (!(object instanceof SdConsumedMethods)){
							return false
						}
						this.target == (object as SdConsumedMethods).target
					}
				
					
					def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdClientServiceActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdClientServiceActivationRef")
					}
					
					def void setSdClientServiceActivationRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdClientServiceActivationRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class SdClientTimer implements IWrapper<GContainer> {
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
			        if (!(object instanceof SdClientTimer)){
						return false
					}
					this.target == (object as SdClientTimer).target
				}
			
				def BigDecimal getSdClientTimerInitialFindDelayMax(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindDelayMax"].getBigDecimalValue()
				}
				
				def void setSdClientTimerInitialFindDelayMax(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindDelayMax"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerInitialFindDelayMax"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSdClientTimerInitialFindDelayMin(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindDelayMin"].getBigDecimalValue()
				}
				
				def void setSdClientTimerInitialFindDelayMin(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindDelayMin"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerInitialFindDelayMin"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSdClientTimerInitialFindRepetitionsBaseDelay(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindRepetitionsBaseDelay"].getBigDecimalValue()
				}
				
				def void setSdClientTimerInitialFindRepetitionsBaseDelay(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindRepetitionsBaseDelay"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerInitialFindRepetitionsBaseDelay"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdClientTimerInitialFindRepetitionsMax(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindRepetitionsMax"].getBigIntegerValue()
				}
				
				def void setSdClientTimerInitialFindRepetitionsMax(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindRepetitionsMax"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerInitialFindRepetitionsMax"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSdClientTimerRequestResponseMaxDelay(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerRequestResponseMaxDelay"].getBigDecimalValue()
				}
				
				def void setSdClientTimerRequestResponseMaxDelay(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerRequestResponseMaxDelay"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerRequestResponseMaxDelay"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSdClientTimerRequestResponseMinDelay(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerRequestResponseMinDelay"].getBigDecimalValue()
				}
				
				def void setSdClientTimerRequestResponseMinDelay(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerRequestResponseMinDelay"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerRequestResponseMinDelay"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdClientTimerTTL(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerTTL"].getBigIntegerValue()
				}
				
				def void setSdClientTimerTTL(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerTTL"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerTTL"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class SdInstanceDemEventParameterRefs implements IWrapper<GContainer> {
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
			        if (!(object instanceof SdInstanceDemEventParameterRefs)){
						return false
					}
					this.target == (object as SdInstanceDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter getSD_E_MALFORMED_MSG(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter), "SD_E_MALFORMED_MSG")
				}
				
				def void setSD_E_MALFORMED_MSG(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SD_E_MALFORMED_MSG"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter getSD_E_OUT_OF_RES(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter), "SD_E_OUT_OF_RES")
				}
				
				def void setSD_E_OUT_OF_RES(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SD_E_OUT_OF_RES"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter getSD_E_SUBSCR_NACK_RECV(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter), "SD_E_SUBSCR_NACK_RECV")
				}
				
				def void setSD_E_SUBSCR_NACK_RECV(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SD_E_SUBSCR_NACK_RECV"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class SdInstanceMulticastRxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof SdInstanceMulticastRxPdu)){
						return false
					}
					this.target == (object as SdInstanceMulticastRxPdu).target
				}
			
				def BigInteger getSdRxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdRxPduId"].getBigIntegerValue()
				}
				
				def void setSdRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdRxPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdRxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSdRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SdRxPduRef")
				}
				
				def void setSdRxPduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class SdInstanceTxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof SdInstanceTxPdu)){
						return false
					}
					this.target == (object as SdInstanceTxPdu).target
				}
			
				
				def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSdTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SdTxPduRef")
				}
				
				def void setSdTxPduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class SdInstanceUnicastRxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof SdInstanceUnicastRxPdu)){
						return false
					}
					this.target == (object as SdInstanceUnicastRxPdu).target
				}
			
				def BigInteger getSdRxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdRxPduId"].getBigIntegerValue()
				}
				
				def void setSdRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdRxPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdRxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSdRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SdRxPduRef")
				}
				
				def void setSdRxPduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class SdServerService implements IWrapper<GContainer> {
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
			        if (!(object instanceof SdServerService)){
						return false
					}
					this.target == (object as SdServerService).target
				}
			
				def Boolean getSdServerServiceAutoAvailable(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceAutoAvailable"].getBooleanValue()
				}
				
				def void setSdServerServiceAutoAvailable(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceAutoAvailable"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceAutoAvailable"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getSdServerServiceHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceHandleId"].getBigIntegerValue()
				}
				
				def void setSdServerServiceHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceHandleId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdServerServiceId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceId"].getBigIntegerValue()
				}
				
				def void setSdServerServiceId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdServerServiceInstanceId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceInstanceId"].getBigIntegerValue()
				}
				
				def void setSdServerServiceInstanceId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceInstanceId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceInstanceId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdServerServiceMajorVersion(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceMajorVersion"].getBigIntegerValue()
				}
				
				def void setSdServerServiceMajorVersion(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceMajorVersion"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceMajorVersion"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdServerServiceMinorVersion(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceMinorVersion"].getBigIntegerValue()
				}
				
				def void setSdServerServiceMinorVersion(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceMinorVersion"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceMinorVersion"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdCapabilityRecordMatchCallout getSdServerCapabilityRecordMatchCalloutRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdCapabilityRecordMatchCallout), "SdServerCapabilityRecordMatchCalloutRef")
				}
				
				def void setSdServerCapabilityRecordMatchCalloutRef(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdCapabilityRecordMatchCallout object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdServerCapabilityRecordMatchCalloutRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup getSdServerServiceTcpRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup), "SdServerServiceTcpRef")
				}
				
				def void setSdServerServiceTcpRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdServerServiceTcpRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerTimer getSdServerServiceTimerRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerTimer), "SdServerServiceTimerRef")
				}
				
				def void setSdServerServiceTimerRef(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerTimer object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdServerServiceTimerRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup getSdServerServiceUdpRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup), "SdServerServiceUdpRef")
				}
				
				def void setSdServerServiceUdpRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdServerServiceUdpRef"], object.getTarget())
					}
				}
				
				
				def List<SdEventHandler> getSdEventHandlers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "SdEventHandler")
						}
					}
					return new BasicWrappingEList<SdEventHandler, GContainer>(filteredContainers, typeof(SdEventHandler), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerService.SdEventHandler sdEventHandler) {
							sdEventHandler.target?.gSetDefinition(containerValue.getContainerDefinition("SdEventHandler"))
							super.delegateAdd(sdEventHandler)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerService.SdEventHandler sdEventHandler) {
							sdEventHandler.target?.gSetDefinition(containerValue.getContainerDefinition("SdEventHandler"))
							super.delegateAdd(index, sdEventHandler)
						}
					}
				}
				
				def SdProvidedMethods getSdProvidedMethods(){
					containerValue.getByType(typeof(SdProvidedMethods))
				}
				
				def void setSdProvidedMethods(SdProvidedMethods sdProvidedMethods){
					val GContainer subContainer = sdProvidedMethods.getTarget()
					containerValue.setContainer(subContainer, "SdProvidedMethods")
				}
				
				def List<SdServerCapabilityRecord> getSdServerCapabilityRecords(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "SdServerCapabilityRecord")
						}
					}
					return new BasicWrappingEList<SdServerCapabilityRecord, GContainer>(filteredContainers, typeof(SdServerCapabilityRecord), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerService.SdServerCapabilityRecord sdServerCapabilityRecord) {
							sdServerCapabilityRecord.target?.gSetDefinition(containerValue.getContainerDefinition("SdServerCapabilityRecord"))
							super.delegateAdd(sdServerCapabilityRecord)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerService.SdServerCapabilityRecord sdServerCapabilityRecord) {
							sdServerCapabilityRecord.target?.gSetDefinition(containerValue.getContainerDefinition("SdServerCapabilityRecord"))
							super.delegateAdd(index, sdServerCapabilityRecord)
						}
					}
				}
				
				
				static class SdEventHandler implements IWrapper<GContainer> {
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
				        if (!(object instanceof SdEventHandler)){
							return false
						}
						this.target == (object as SdEventHandler).target
					}
				
					def BigInteger getSdEventHandlerEventGroupId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerEventGroupId"].getBigIntegerValue()
					}
					
					def void setSdEventHandlerEventGroupId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerEventGroupId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdEventHandlerEventGroupId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getSdEventHandlerHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerHandleId"].getBigIntegerValue()
					}
					
					def void setSdEventHandlerHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerHandleId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdEventHandlerHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getSdEventHandlerMulticastThreshold(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerMulticastThreshold"].getBigIntegerValue()
					}
					
					def void setSdEventHandlerMulticastThreshold(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerMulticastThreshold"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdEventHandlerMulticastThreshold"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerTimer getSdEventHandlerTimerRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerTimer), "SdEventHandlerTimerRef")
					}
					
					def void setSdEventHandlerTimerRef(org.artop.ecuc.autosar431.accessors.Sd.SdConfig.SdInstance.SdServerTimer object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventHandlerTimerRef"], object.getTarget())
						}
					}
					
					
					def SdEventHandlerMulticast getSdEventHandlerMulticast(){
						containerValue.getByType(typeof(SdEventHandlerMulticast))
					}
					
					def void setSdEventHandlerMulticast(SdEventHandlerMulticast sdEventHandlerMulticast){
						val GContainer subContainer = sdEventHandlerMulticast.getTarget()
						containerValue.setContainer(subContainer, "SdEventHandlerMulticast")
					}
					
					def SdEventHandlerTcp getSdEventHandlerTcp(){
						containerValue.getByType(typeof(SdEventHandlerTcp))
					}
					
					def void setSdEventHandlerTcp(SdEventHandlerTcp sdEventHandlerTcp){
						val GContainer subContainer = sdEventHandlerTcp.getTarget()
						containerValue.setContainer(subContainer, "SdEventHandlerTcp")
					}
					
					def SdEventHandlerUdp getSdEventHandlerUdp(){
						containerValue.getByType(typeof(SdEventHandlerUdp))
					}
					
					def void setSdEventHandlerUdp(SdEventHandlerUdp sdEventHandlerUdp){
						val GContainer subContainer = sdEventHandlerUdp.getTarget()
						containerValue.setContainer(subContainer, "SdEventHandlerUdp")
					}
					
					
					static class SdEventHandlerMulticast implements IWrapper<GContainer> {
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
					        if (!(object instanceof SdEventHandlerMulticast)){
								return false
							}
							this.target == (object as SdEventHandlerMulticast).target
						}
					
						
						def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventActivationRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventActivationRef")
						}
						
						def void setSdEventActivationRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventActivationRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup.SoAdSocketConnection getSdMulticastEventSoConRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup.SoAdSocketConnection), "SdMulticastEventSoConRef")
						}
						
						def void setSdMulticastEventSoConRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup.SoAdSocketConnection object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdMulticastEventSoConRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class SdEventHandlerTcp implements IWrapper<GContainer> {
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
					        if (!(object instanceof SdEventHandlerTcp)){
								return false
							}
							this.target == (object as SdEventHandlerTcp).target
						}
					
						
						def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventActivationRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventActivationRef")
						}
						
						def void setSdEventActivationRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventActivationRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventTriggeringRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventTriggeringRef")
						}
						
						def void setSdEventTriggeringRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventTriggeringRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class SdEventHandlerUdp implements IWrapper<GContainer> {
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
					        if (!(object instanceof SdEventHandlerUdp)){
								return false
							}
							this.target == (object as SdEventHandlerUdp).target
						}
					
						
						def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventActivationRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventActivationRef")
						}
						
						def void setSdEventActivationRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventActivationRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventTriggeringRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventTriggeringRef")
						}
						
						def void setSdEventTriggeringRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventTriggeringRef"], object.getTarget())
							}
						}
						
						
						
					}
					
				}
				
				static class SdProvidedMethods implements IWrapper<GContainer> {
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
				        if (!(object instanceof SdProvidedMethods)){
							return false
						}
						this.target == (object as SdProvidedMethods).target
					}
				
					
					def org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdServerServiceActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdServerServiceActivationRef")
					}
					
					def void setSdServerServiceActivationRef(org.artop.ecuc.autosar431.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SdServerServiceActivationRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class SdServerCapabilityRecord implements IWrapper<GContainer> {
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
				        if (!(object instanceof SdServerCapabilityRecord)){
							return false
						}
						this.target == (object as SdServerCapabilityRecord).target
					}
				
					def String getSdServerCapabilityRecordKey(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordKey"].getStringValue()
					}
					
					def void setSdServerCapabilityRecordKey(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordKey"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerCapabilityRecordKey"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getSdServerCapabilityRecordValue(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordValue"].getStringValue()
					}
					
					def void setSdServerCapabilityRecordValue(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordValue"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerCapabilityRecordValue"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
			static class SdServerTimer implements IWrapper<GContainer> {
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
			        if (!(object instanceof SdServerTimer)){
						return false
					}
					this.target == (object as SdServerTimer).target
				}
			
				def BigDecimal getSdServerTimerInitialOfferDelayMax(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferDelayMax"].getBigDecimalValue()
				}
				
				def void setSdServerTimerInitialOfferDelayMax(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferDelayMax"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerInitialOfferDelayMax"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSdServerTimerInitialOfferDelayMin(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferDelayMin"].getBigDecimalValue()
				}
				
				def void setSdServerTimerInitialOfferDelayMin(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferDelayMin"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerInitialOfferDelayMin"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSdServerTimerInitialOfferRepetitionBaseDelay(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferRepetitionBaseDelay"].getBigDecimalValue()
				}
				
				def void setSdServerTimerInitialOfferRepetitionBaseDelay(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferRepetitionBaseDelay"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerInitialOfferRepetitionBaseDelay"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdServerTimerInitialOfferRepetitionsMax(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferRepetitionsMax"].getBigIntegerValue()
				}
				
				def void setSdServerTimerInitialOfferRepetitionsMax(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferRepetitionsMax"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerInitialOfferRepetitionsMax"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSdServerTimerOfferCyclicDelay(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerOfferCyclicDelay"].getBigDecimalValue()
				}
				
				def void setSdServerTimerOfferCyclicDelay(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerOfferCyclicDelay"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerOfferCyclicDelay"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSdServerTimerRequestResponseMaxDelay(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerRequestResponseMaxDelay"].getBigDecimalValue()
				}
				
				def void setSdServerTimerRequestResponseMaxDelay(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerRequestResponseMaxDelay"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerRequestResponseMaxDelay"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getSdServerTimerRequestResponseMinDelay(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerRequestResponseMinDelay"].getBigDecimalValue()
				}
				
				def void setSdServerTimerRequestResponseMinDelay(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerRequestResponseMinDelay"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerRequestResponseMinDelay"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getSdServerTimerTTL(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerTTL"].getBigIntegerValue()
				}
				
				def void setSdServerTimerTTL(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerTTL"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerTTL"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class SdGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof SdGeneral)){
				return false
			}
			this.target == (object as SdGeneral).target
		}
	
		def Boolean getSdDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdDevErrorDetect"].getBooleanValue()
		}
		
		def void setSdDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getSdMainFunctionCycleTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdMainFunctionCycleTime"].getBigDecimalValue()
		}
		
		def void setSdMainFunctionCycleTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdMainFunctionCycleTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdMainFunctionCycleTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getSdVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdVersionInfoApi"].getBooleanValue()
		}
		
		def void setSdVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SdVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Sd)){
			return false
		}
		this.target == (object as Sd).target
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
