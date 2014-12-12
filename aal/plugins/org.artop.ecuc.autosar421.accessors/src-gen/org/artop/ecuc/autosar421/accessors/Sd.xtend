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

import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil
import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList
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
		
		
		
		def List<SdInstance> getSdInstances(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SdInstance")
				}
			}
			return new BasicWrappingEList<SdInstance, GContainer>(filteredContainers, typeof(SdInstance), typeof(GContainer))
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
			
			def String getSdInstanceHostname(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdInstanceHostname"])
			}
			
			def void setSdInstanceHostname(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdInstanceHostname"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdInstanceHostname"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<SdClientService> getSdClientServices(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SdClientService")
					}
				}
				return new BasicWrappingEList<SdClientService, GContainer>(filteredContainers, typeof(SdClientService), typeof(GContainer))
			}
			
			def List<SdClientTimer> getSdClientTimers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SdClientTimer")
					}
				}
				return new BasicWrappingEList<SdClientTimer, GContainer>(filteredContainers, typeof(SdClientTimer), typeof(GContainer))
			}
			
			def SdInstanceDemEventParameterRefs getSdInstanceDemEventParameterRefs(){
				containerValue.getByType(typeof(SdInstanceDemEventParameterRefs))
			}
			
			def void setSdInstanceDemEventParameterRefs(GContainer subContainer){
				containerValue.setContainer(subContainer, "SdInstanceDemEventParameterRefs")
			}
			
			def SdInstanceMulticastRxPdu getSdInstanceMulticastRxPdu(){
				containerValue.getByType(typeof(SdInstanceMulticastRxPdu))
			}
			
			def void setSdInstanceMulticastRxPdu(GContainer subContainer){
				containerValue.setContainer(subContainer, "SdInstanceMulticastRxPdu")
			}
			
			def SdInstanceTxPdu getSdInstanceTxPdu(){
				containerValue.getByType(typeof(SdInstanceTxPdu))
			}
			
			def void setSdInstanceTxPdu(GContainer subContainer){
				containerValue.setContainer(subContainer, "SdInstanceTxPdu")
			}
			
			def SdInstanceUnicastRxPdu getSdInstanceUnicastRxPdu(){
				containerValue.getByType(typeof(SdInstanceUnicastRxPdu))
			}
			
			def void setSdInstanceUnicastRxPdu(GContainer subContainer){
				containerValue.setContainer(subContainer, "SdInstanceUnicastRxPdu")
			}
			
			def List<SdServerService> getSdServerServices(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SdServerService")
					}
				}
				return new BasicWrappingEList<SdServerService, GContainer>(filteredContainers, typeof(SdServerService), typeof(GContainer))
			}
			
			def List<SdServerTimer> getSdServerTimers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SdServerTimer")
					}
				}
				return new BasicWrappingEList<SdServerTimer, GContainer>(filteredContainers, typeof(SdServerTimer), typeof(GContainer))
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
				
				def Boolean getSdClientServiceAutoRequire(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceAutoRequire"])
				}
				
				def void setSdClientServiceAutoRequire(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceAutoRequire"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceAutoRequire"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdClientServiceHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceHandleId"])
				}
				
				def void setSdClientServiceHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdClientServiceId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceId"])
				}
				
				def void setSdClientServiceId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdClientServiceInstanceId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceInstanceId"])
				}
				
				def void setSdClientServiceInstanceId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceInstanceId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceInstanceId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdClientServiceMajorVersion(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceMajorVersion"])
				}
				
				def void setSdClientServiceMajorVersion(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceMajorVersion"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceMajorVersion"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdClientServiceMinorVersion(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceMinorVersion"])
				}
				
				def void setSdClientServiceMinorVersion(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceMinorVersion"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceMinorVersion"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup getSdClientServiceTcpRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup), "SdClientServiceTcpRef")
				}
						
				def void setSdClientServiceTcpRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdClientServiceTcpRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientTimer getSdClientServiceTimerRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientTimer), "SdClientServiceTimerRef")
				}
						
				def void setSdClientServiceTimerRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientTimer object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdClientServiceTimerRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup getSdClientServiceUdpRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup), "SdClientServiceUdpRef")
				}
						
				def void setSdClientServiceUdpRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdClientServiceUdpRef"], object.getTarget())
					}
				}
				
				
				def List<SdClientCapabilityRecord> getSdClientCapabilityRecords(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "SdClientCapabilityRecord")
						}
					}
					return new BasicWrappingEList<SdClientCapabilityRecord, GContainer>(filteredContainers, typeof(SdClientCapabilityRecord), typeof(GContainer))
				}
				
				def List<SdConsumedEventGroup> getSdConsumedEventGroups(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "SdConsumedEventGroup")
						}
					}
					return new BasicWrappingEList<SdConsumedEventGroup, GContainer>(filteredContainers, typeof(SdConsumedEventGroup), typeof(GContainer))
				}
				
				def SdConsumedMethods getSdConsumedMethods(){
					containerValue.getByType(typeof(SdConsumedMethods))
				}
				
				def void setSdConsumedMethods(GContainer subContainer){
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
					
					def String getSdClientServiceCapabilityRecordKey(){
						EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordKey"])
					}
					
					def void setSdClientServiceCapabilityRecordKey(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordKey"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceCapabilityRecordKey"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def String getSdClientServiceCapabilityRecordValue(){
						EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordValue"])
					}
					
					def void setSdClientServiceCapabilityRecordValue(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceCapabilityRecordValue"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
					
					def Boolean getSdConsumedEventGroupAutoRequire(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupAutoRequire"])
					}
					
					def void setSdConsumedEventGroupAutoRequire(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupAutoRequire"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdConsumedEventGroupAutoRequire"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getSdConsumedEventGroupHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupHandleId"])
					}
					
					def void setSdConsumedEventGroupHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdConsumedEventGroupHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getSdConsumedEventGroupId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupId"])
					}
					
					def void setSdConsumedEventGroupId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdConsumedEventGroupId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdConsumedEventGroupId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def List<org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup> getSdConsumedEventGroupMulticastGroupRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
							containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupMulticastGroupRef"] else null
										
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "SdConsumedEventGroupMulticastGroupRef")
							}
						}
						
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup)) {
							override protected wrap(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object) throws CoreException {
								if (object != null) {
									val container = object.getTarget()
									val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
									referenceValue.gSetDefinition(referenceValueDef)
									referenceValue.gSetValue(container)
									return referenceValue
								}
							}
							
							override protected unwrap(GReferenceValue referenceValue) {
								if (referenceValue != null) {
									val referenceValueValue = referenceValue.gGetValue
									if (referenceValueValue instanceof GContainer) {
										return new org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientTimer getSdConsumedEventGroupTimerRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientTimer), "SdConsumedEventGroupTimerRef")
					}
							
					def void setSdConsumedEventGroupTimerRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientTimer object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupTimerRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdConsumedEventGroupMulticastActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdConsumedEventGroupMulticastActivationRef")
					}
							
					def void setSdConsumedEventGroupMulticastActivationRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupMulticastActivationRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdConsumedEventGroupTcpActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdConsumedEventGroupTcpActivationRef")
					}
							
					def void setSdConsumedEventGroupTcpActivationRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupTcpActivationRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdConsumedEventGroupUdpActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdConsumedEventGroupUdpActivationRef")
					}
							
					def void setSdConsumedEventGroupUdpActivationRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdConsumedEventGroupUdpActivationRef"], object.getTarget())
						}
					}
					
					
					def List<SdClientCapabilityRecord> getSdClientCapabilityRecords(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "SdClientCapabilityRecord")
							}
						}
						return new BasicWrappingEList<SdClientCapabilityRecord, GContainer>(filteredContainers, typeof(SdClientCapabilityRecord), typeof(GContainer))
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
						
						def String getSdClientServiceCapabilityRecordKey(){
							EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordKey"])
						}
						
						def void setSdClientServiceCapabilityRecordKey(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordKey"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceCapabilityRecordKey"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def String getSdClientServiceCapabilityRecordValue(){
							EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordValue"])
						}
						
						def void setSdClientServiceCapabilityRecordValue(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientServiceCapabilityRecordValue"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientServiceCapabilityRecordValue"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
					
					
					def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdClientServiceActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdClientServiceActivationRef")
					}
							
					def void setSdClientServiceActivationRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdClientServiceActivationRef"], object.getTarget())
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
				
				def Float getSdClientTimerInitialFindDelayMax(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindDelayMax"])
				}
				
				def void setSdClientTimerInitialFindDelayMax(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindDelayMax"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerInitialFindDelayMax"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getSdClientTimerInitialFindDelayMin(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindDelayMin"])
				}
				
				def void setSdClientTimerInitialFindDelayMin(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindDelayMin"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerInitialFindDelayMin"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getSdClientTimerInitialFindRepetitionsBaseDelay(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindRepetitionsBaseDelay"])
				}
				
				def void setSdClientTimerInitialFindRepetitionsBaseDelay(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindRepetitionsBaseDelay"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerInitialFindRepetitionsBaseDelay"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdClientTimerInitialFindRepetitionsMax(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindRepetitionsMax"])
				}
				
				def void setSdClientTimerInitialFindRepetitionsMax(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerInitialFindRepetitionsMax"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerInitialFindRepetitionsMax"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getSdClientTimerRequestResponseMaxDelay(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerRequestResponseMaxDelay"])
				}
				
				def void setSdClientTimerRequestResponseMaxDelay(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerRequestResponseMaxDelay"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerRequestResponseMaxDelay"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getSdClientTimerRequestResponseMinDelay(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerRequestResponseMinDelay"])
				}
				
				def void setSdClientTimerRequestResponseMinDelay(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerRequestResponseMinDelay"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerRequestResponseMinDelay"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdClientTimerTTL(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerTTL"])
				}
				
				def void setSdClientTimerTTL(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdClientTimerTTL"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdClientTimerTTL"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getSD_E_MALFORMED_MSG(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "SD_E_MALFORMED_MSG")
				}
						
				def void setSD_E_MALFORMED_MSG(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SD_E_MALFORMED_MSG"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getSD_E_OUT_OF_RES(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "SD_E_OUT_OF_RES")
				}
						
				def void setSD_E_OUT_OF_RES(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SD_E_OUT_OF_RES"], object.getTarget())
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
				
				def Integer getSdRxPduId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdRxPduId"])
				}
				
				def void setSdRxPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdRxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSdRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SdRxPduRef")
				}
						
				def void setSdRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdRxPduRef"], object.getTarget())
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
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSdTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SdTxPduRef")
				}
						
				def void setSdTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdTxPduRef"], object.getTarget())
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
				
				def Integer getSdRxPduId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdRxPduId"])
				}
				
				def void setSdRxPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdRxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSdRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SdRxPduRef")
				}
						
				def void setSdRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdRxPduRef"], object.getTarget())
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
				
				def Boolean getSdServerServiceAutoAvailable(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceAutoAvailable"])
				}
				
				def void setSdServerServiceAutoAvailable(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceAutoAvailable"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceAutoAvailable"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdServerServiceHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceHandleId"])
				}
				
				def void setSdServerServiceHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdServerServiceId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceId"])
				}
				
				def void setSdServerServiceId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdServerServiceInstanceId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceInstanceId"])
				}
				
				def void setSdServerServiceInstanceId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceInstanceId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceInstanceId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdServerServiceMajorVersion(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceMajorVersion"])
				}
				
				def void setSdServerServiceMajorVersion(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceMajorVersion"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceMajorVersion"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdServerServiceMinorVersion(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceMinorVersion"])
				}
				
				def void setSdServerServiceMinorVersion(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerServiceMinorVersion"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerServiceMinorVersion"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup getSdServerServiceTcpRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup), "SdServerServiceTcpRef")
				}
						
				def void setSdServerServiceTcpRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdServerServiceTcpRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerTimer getSdServerServiceTimerRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerTimer), "SdServerServiceTimerRef")
				}
						
				def void setSdServerServiceTimerRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerTimer object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdServerServiceTimerRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup getSdServerServiceUdpRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup), "SdServerServiceUdpRef")
				}
						
				def void setSdServerServiceUdpRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdServerServiceUdpRef"], object.getTarget())
					}
				}
				
				
				def List<SdEventHandler> getSdEventHandlers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "SdEventHandler")
						}
					}
					return new BasicWrappingEList<SdEventHandler, GContainer>(filteredContainers, typeof(SdEventHandler), typeof(GContainer))
				}
				
				def SdProvidedMethods getSdProvidedMethods(){
					containerValue.getByType(typeof(SdProvidedMethods))
				}
				
				def void setSdProvidedMethods(GContainer subContainer){
					containerValue.setContainer(subContainer, "SdProvidedMethods")
				}
				
				def List<SdServerCapabilityRecord> getSdServerCapabilityRecords(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "SdServerCapabilityRecord")
						}
					}
					return new BasicWrappingEList<SdServerCapabilityRecord, GContainer>(filteredContainers, typeof(SdServerCapabilityRecord), typeof(GContainer))
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
					
					def Integer getSdEventHandlerEventGroupId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerEventGroupId"])
					}
					
					def void setSdEventHandlerEventGroupId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerEventGroupId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdEventHandlerEventGroupId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getSdEventHandlerHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerHandleId"])
					}
					
					def void setSdEventHandlerHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdEventHandlerHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getSdEventHandlerMulticastThreshold(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerMulticastThreshold"])
					}
					
					def void setSdEventHandlerMulticastThreshold(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdEventHandlerMulticastThreshold"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdEventHandlerMulticastThreshold"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerTimer getSdEventHandlerTimerRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerTimer), "SdEventHandlerTimerRef")
					}
							
					def void setSdEventHandlerTimerRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerTimer object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventHandlerTimerRef"], object.getTarget())
						}
					}
					
					
					def SdEventHandlerMulticast getSdEventHandlerMulticast(){
						containerValue.getByType(typeof(SdEventHandlerMulticast))
					}
					
					def void setSdEventHandlerMulticast(GContainer subContainer){
						containerValue.setContainer(subContainer, "SdEventHandlerMulticast")
					}
					
					def SdEventHandlerTcp getSdEventHandlerTcp(){
						containerValue.getByType(typeof(SdEventHandlerTcp))
					}
					
					def void setSdEventHandlerTcp(GContainer subContainer){
						containerValue.setContainer(subContainer, "SdEventHandlerTcp")
					}
					
					def SdEventHandlerUdp getSdEventHandlerUdp(){
						containerValue.getByType(typeof(SdEventHandlerUdp))
					}
					
					def void setSdEventHandlerUdp(GContainer subContainer){
						containerValue.setContainer(subContainer, "SdEventHandlerUdp")
					}
					
					def List<SdServerCapabilityRecord> getSdServerCapabilityRecords(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "SdServerCapabilityRecord")
							}
						}
						return new BasicWrappingEList<SdServerCapabilityRecord, GContainer>(filteredContainers, typeof(SdServerCapabilityRecord), typeof(GContainer))
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
						
						
						def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventActivationRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventActivationRef")
						}
								
						def void setSdEventActivationRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventActivationRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup.SoAdSocketConnection getSdMulticastEventSoConRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup.SoAdSocketConnection), "SdMulticastEventSoConRef")
						}
								
						def void setSdMulticastEventSoConRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdSocketConnectionGroup.SoAdSocketConnection object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdMulticastEventSoConRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventActivationRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventActivationRef")
						}
								
						def void setSdEventActivationRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventActivationRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventTriggeringRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventTriggeringRef")
						}
								
						def void setSdEventTriggeringRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventTriggeringRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventActivationRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventActivationRef")
						}
								
						def void setSdEventActivationRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventActivationRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdEventTriggeringRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdEventTriggeringRef")
						}
								
						def void setSdEventTriggeringRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdEventTriggeringRef"], object.getTarget())
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
						
						def String getSdServerCapabilityRecordKey(){
							EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordKey"])
						}
						
						def void setSdServerCapabilityRecordKey(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordKey"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerCapabilityRecordKey"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def String getSdServerCapabilityRecordValue(){
							EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordValue"])
						}
						
						def void setSdServerCapabilityRecordValue(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordValue"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerCapabilityRecordValue"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
					
					
					def org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup getSdServerServiceActivationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup), "SdServerServiceActivationRef")
					}
							
					def void setSdServerServiceActivationRef(org.artop.ecuc.autosar421.accessors.SoAd.SoAdConfig.SoAdRoutingGroup object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SdServerServiceActivationRef"], object.getTarget())
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
					
					def String getSdServerCapabilityRecordKey(){
						EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordKey"])
					}
					
					def void setSdServerCapabilityRecordKey(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordKey"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerCapabilityRecordKey"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def String getSdServerCapabilityRecordValue(){
						EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordValue"])
					}
					
					def void setSdServerCapabilityRecordValue(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerCapabilityRecordValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerCapabilityRecordValue"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				
				def Float getSdServerTimerInitialOfferDelayMax(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferDelayMax"])
				}
				
				def void setSdServerTimerInitialOfferDelayMax(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferDelayMax"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerInitialOfferDelayMax"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getSdServerTimerInitialOfferDelayMin(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferDelayMin"])
				}
				
				def void setSdServerTimerInitialOfferDelayMin(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferDelayMin"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerInitialOfferDelayMin"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getSdServerTimerInitialOfferRepetitionBaseDelay(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferRepetitionBaseDelay"])
				}
				
				def void setSdServerTimerInitialOfferRepetitionBaseDelay(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferRepetitionBaseDelay"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerInitialOfferRepetitionBaseDelay"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdServerTimerInitialOfferRepetitionsMax(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferRepetitionsMax"])
				}
				
				def void setSdServerTimerInitialOfferRepetitionsMax(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerInitialOfferRepetitionsMax"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerInitialOfferRepetitionsMax"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getSdServerTimerOfferCyclicDelay(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerOfferCyclicDelay"])
				}
				
				def void setSdServerTimerOfferCyclicDelay(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerOfferCyclicDelay"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerOfferCyclicDelay"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getSdServerTimerRequestResponseMaxDelay(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerRequestResponseMaxDelay"])
				}
				
				def void setSdServerTimerRequestResponseMaxDelay(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerRequestResponseMaxDelay"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerRequestResponseMaxDelay"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getSdServerTimerRequestResponseMinDelay(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerRequestResponseMinDelay"])
				}
				
				def void setSdServerTimerRequestResponseMinDelay(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerRequestResponseMinDelay"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerRequestResponseMinDelay"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getSdServerTimerTTL(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerTTL"])
				}
				
				def void setSdServerTimerTTL(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdServerTimerTTL"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdServerTimerTTL"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
		
		def Boolean getSdDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdDevErrorDetect"])
		}
		
		def void setSdDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getSdMainFunctionCycleTime(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdMainFunctionCycleTime"])
		}
		
		def void setSdMainFunctionCycleTime(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdMainFunctionCycleTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdMainFunctionCycleTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSdVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdVersionInfoApi"])
		}
		
		def void setSdVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SdVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SdVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
