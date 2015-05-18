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

class Dcm implements IWrapper<GModuleConfiguration> {
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
	
	def DcmConfigSet getDcmConfigSet(){
		moduleConfiguration.getByType(typeof(DcmConfigSet))
	}
	
	def void setDcmConfigSet(DcmConfigSet dcmConfigSet){
		val GContainer container = dcmConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "DcmConfigSet")
	}
	def DcmGeneral getDcmGeneral(){
		moduleConfiguration.getByType(typeof(DcmGeneral))
	}
	
	def void setDcmGeneral(DcmGeneral dcmGeneral){
		val GContainer container = dcmGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "DcmGeneral")
	}
	
	static class DcmConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof DcmConfigSet)){
				return false
			}
			this.target == (object as DcmConfigSet).target
		}
		
		
		
		def DcmDsd getDcmDsd(){
			containerValue.getByType(typeof(DcmDsd))
		}
		
		def void setDcmDsd(DcmDsd dcmDsd){
			val GContainer subContainer = dcmDsd.getTarget()
			containerValue.setContainer(subContainer, "DcmDsd")
		}
		
		def DcmDsl getDcmDsl(){
			containerValue.getByType(typeof(DcmDsl))
		}
		
		def void setDcmDsl(DcmDsl dcmDsl){
			val GContainer subContainer = dcmDsl.getTarget()
			containerValue.setContainer(subContainer, "DcmDsl")
		}
		
		def DcmDsp getDcmDsp(){
			containerValue.getByType(typeof(DcmDsp))
		}
		
		def void setDcmDsp(DcmDsp dcmDsp){
			val GContainer subContainer = dcmDsp.getTarget()
			containerValue.setContainer(subContainer, "DcmDsp")
		}
		
		def DcmPageBufferCfg getDcmPageBufferCfg(){
			containerValue.getByType(typeof(DcmPageBufferCfg))
		}
		
		def void setDcmPageBufferCfg(DcmPageBufferCfg dcmPageBufferCfg){
			val GContainer subContainer = dcmPageBufferCfg.getTarget()
			containerValue.setContainer(subContainer, "DcmPageBufferCfg")
		}
		
		def DcmProcessingConditions getDcmProcessingConditions(){
			containerValue.getByType(typeof(DcmProcessingConditions))
		}
		
		def void setDcmProcessingConditions(DcmProcessingConditions dcmProcessingConditions){
			val GContainer subContainer = dcmProcessingConditions.getTarget()
			containerValue.setContainer(subContainer, "DcmProcessingConditions")
		}
		
		
		static class DcmDsd implements IWrapper<GContainer> {
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
		        if (!(object instanceof DcmDsd)){
					return false
				}
				this.target == (object as DcmDsd).target
			}
			
			def Boolean getDcmDsdRequestManufacturerNotificationEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdRequestManufacturerNotificationEnabled"])
			}
			
			def void setDcmDsdRequestManufacturerNotificationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdRequestManufacturerNotificationEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdRequestManufacturerNotificationEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDcmDsdRequestSupplierNotificationEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdRequestSupplierNotificationEnabled"])
			}
			
			def void setDcmDsdRequestSupplierNotificationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdRequestSupplierNotificationEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdRequestSupplierNotificationEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<DcmDsdServiceRequestManufacturerNotification> getDcmDsdServiceRequestManufacturerNotifications(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDsdServiceRequestManufacturerNotification")
					}
				}
				return new BasicWrappingEList<DcmDsdServiceRequestManufacturerNotification, GContainer>(filteredContainers, typeof(DcmDsdServiceRequestManufacturerNotification), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceRequestManufacturerNotification dcmDsdServiceRequestManufacturerNotification) {
						dcmDsdServiceRequestManufacturerNotification.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdServiceRequestManufacturerNotification"))
						super.delegateAdd(dcmDsdServiceRequestManufacturerNotification)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceRequestManufacturerNotification dcmDsdServiceRequestManufacturerNotification) {
						dcmDsdServiceRequestManufacturerNotification.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdServiceRequestManufacturerNotification"))
						super.delegateAdd(index, dcmDsdServiceRequestManufacturerNotification)
					}	
				}
			}
			
			def List<DcmDsdServiceRequestSupplierNotification> getDcmDsdServiceRequestSupplierNotifications(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDsdServiceRequestSupplierNotification")
					}
				}
				return new BasicWrappingEList<DcmDsdServiceRequestSupplierNotification, GContainer>(filteredContainers, typeof(DcmDsdServiceRequestSupplierNotification), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceRequestSupplierNotification dcmDsdServiceRequestSupplierNotification) {
						dcmDsdServiceRequestSupplierNotification.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdServiceRequestSupplierNotification"))
						super.delegateAdd(dcmDsdServiceRequestSupplierNotification)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceRequestSupplierNotification dcmDsdServiceRequestSupplierNotification) {
						dcmDsdServiceRequestSupplierNotification.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdServiceRequestSupplierNotification"))
						super.delegateAdd(index, dcmDsdServiceRequestSupplierNotification)
					}	
				}
			}
			
			def List<DcmDsdServiceTable> getDcmDsdServiceTables(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDsdServiceTable")
					}
				}
				return new BasicWrappingEList<DcmDsdServiceTable, GContainer>(filteredContainers, typeof(DcmDsdServiceTable), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceTable dcmDsdServiceTable) {
						dcmDsdServiceTable.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdServiceTable"))
						super.delegateAdd(dcmDsdServiceTable)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceTable dcmDsdServiceTable) {
						dcmDsdServiceTable.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdServiceTable"))
						super.delegateAdd(index, dcmDsdServiceTable)
					}	
				}
			}
			
			
			static class DcmDsdServiceRequestManufacturerNotification implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDsdServiceRequestManufacturerNotification)){
						return false
					}
					this.target == (object as DcmDsdServiceRequestManufacturerNotification).target
				}
				
				
				
				
			}
			
			static class DcmDsdServiceRequestSupplierNotification implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDsdServiceRequestSupplierNotification)){
						return false
					}
					this.target == (object as DcmDsdServiceRequestSupplierNotification).target
				}
				
				
				
				
			}
			
			static class DcmDsdServiceTable implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDsdServiceTable)){
						return false
					}
					this.target == (object as DcmDsdServiceTable).target
				}
				
				def BigInteger getDcmDsdSidTabId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabId"])
				}
				
				def void setDcmDsdSidTabId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSidTabId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<DcmDsdService> getDcmDsdServices(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDsdService")
						}
					}
					return new BasicWrappingEList<DcmDsdService, GContainer>(filteredContainers, typeof(DcmDsdService), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceTable$DcmDsdService dcmDsdService) {
							dcmDsdService.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdService"))
							super.delegateAdd(dcmDsdService)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceTable$DcmDsdService dcmDsdService) {
							dcmDsdService.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdService"))
							super.delegateAdd(index, dcmDsdService)
						}	
					}
				}
				
				
				static class DcmDsdService implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDsdService)){
							return false
						}
						this.target == (object as DcmDsdService).target
					}
					
					def Boolean getDcmDsdServiceUsed(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdServiceUsed"])
					}
					
					def void setDcmDsdServiceUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdServiceUsed"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdServiceUsed"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def String getDcmDsdSidTabFnc(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabFnc"])
					}
					
					def void setDcmDsdSidTabFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabFnc"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSidTabFnc"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDsdSidTabServiceId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabServiceId"])
					}
					
					def void setDcmDsdSidTabServiceId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabServiceId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSidTabServiceId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getDcmDsdSidTabSubfuncAvail(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabSubfuncAvail"])
					}
					
					def void setDcmDsdSidTabSubfuncAvail(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabSubfuncAvail"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSidTabSubfuncAvail"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDsdSidTabModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDsdSidTabModeRuleRef")
					}
							
					def void setDcmDsdSidTabModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSidTabModeRuleRef"], object.getTarget())
						}
					}
					
					def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDsdSidTabSecurityLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSidTabSecurityLevelRef"] else null
										
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDsdSidTabSecurityLevelRef")
							}
						}
						
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
							override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDsdSidTabSessionLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSidTabSessionLevelRef"] else null
										
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDsdSidTabSessionLevelRef")
							}
						}
						
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
							override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					
					def List<DcmDsdSubService> getDcmDsdSubServices(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "DcmDsdSubService")
							}
						}
						return new BasicWrappingEList<DcmDsdSubService, GContainer>(filteredContainers, typeof(DcmDsdSubService), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceTable$DcmDsdService$DcmDsdSubService dcmDsdSubService) {
								dcmDsdSubService.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdSubService"))
								super.delegateAdd(dcmDsdSubService)
							}
							
							override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsd$DcmDsdServiceTable$DcmDsdService$DcmDsdSubService dcmDsdSubService) {
								dcmDsdSubService.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdSubService"))
								super.delegateAdd(index, dcmDsdSubService)
							}	
						}
					}
					
					
					static class DcmDsdSubService implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDsdSubService)){
								return false
							}
							this.target == (object as DcmDsdSubService).target
						}
						
						def String getDcmDsdSubServiceFnc(){
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceFnc"])
						}
						
						def void setDcmDsdSubServiceFnc(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceFnc"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSubServiceFnc"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getDcmDsdSubServiceId(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceId"])
						}
						
						def void setDcmDsdSubServiceId(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceId"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSubServiceId"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getDcmDsdSubServiceUsed(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceUsed"])
						}
						
						def void setDcmDsdSubServiceUsed(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceUsed"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSubServiceUsed"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDsdSubServiceModeRuleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDsdSubServiceModeRuleRef")
						}
								
						def void setDcmDsdSubServiceModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSubServiceModeRuleRef"], object.getTarget())
							}
						}
						
						def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDsdSubServiceSecurityLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSubServiceSecurityLevelRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDsdSubServiceSecurityLevelRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDsdSubServiceSessionLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSubServiceSessionLevelRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDsdSubServiceSessionLevelRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
				}
				
			}
			
		}
		
		static class DcmDsl implements IWrapper<GContainer> {
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
		        if (!(object instanceof DcmDsl)){
					return false
				}
				this.target == (object as DcmDsl).target
			}
			
			
			
			def List<DcmDslBuffer> getDcmDslBuffers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDslBuffer")
					}
				}
				return new BasicWrappingEList<DcmDslBuffer, GContainer>(filteredContainers, typeof(DcmDslBuffer), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslBuffer dcmDslBuffer) {
						dcmDslBuffer.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslBuffer"))
						super.delegateAdd(dcmDslBuffer)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslBuffer dcmDslBuffer) {
						dcmDslBuffer.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslBuffer"))
						super.delegateAdd(index, dcmDslBuffer)
					}	
				}
			}
			
			def List<DcmDslCallbackDCMRequestService> getDcmDslCallbackDCMRequestServices(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDslCallbackDCMRequestService")
					}
				}
				return new BasicWrappingEList<DcmDslCallbackDCMRequestService, GContainer>(filteredContainers, typeof(DcmDslCallbackDCMRequestService), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslCallbackDCMRequestService dcmDslCallbackDCMRequestService) {
						dcmDslCallbackDCMRequestService.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslCallbackDCMRequestService"))
						super.delegateAdd(dcmDslCallbackDCMRequestService)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslCallbackDCMRequestService dcmDslCallbackDCMRequestService) {
						dcmDslCallbackDCMRequestService.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslCallbackDCMRequestService"))
						super.delegateAdd(index, dcmDslCallbackDCMRequestService)
					}	
				}
			}
			
			def DcmDslDiagResp getDcmDslDiagResp(){
				containerValue.getByType(typeof(DcmDslDiagResp))
			}
			
			def void setDcmDslDiagResp(DcmDslDiagResp dcmDslDiagResp){
				val GContainer subContainer = dcmDslDiagResp.getTarget()
				containerValue.setContainer(subContainer, "DcmDslDiagResp")
			}
			
			def DcmDslProtocol getDcmDslProtocol(){
				containerValue.getByType(typeof(DcmDslProtocol))
			}
			
			def void setDcmDslProtocol(DcmDslProtocol dcmDslProtocol){
				val GContainer subContainer = dcmDslProtocol.getTarget()
				containerValue.setContainer(subContainer, "DcmDslProtocol")
			}
			
			
			static class DcmDslBuffer implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDslBuffer)){
						return false
					}
					this.target == (object as DcmDslBuffer).target
				}
				
				def BigInteger getDcmDslBufferSize(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslBufferSize"])
				}
				
				def void setDcmDslBufferSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslBufferSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslBufferSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DcmDslCallbackDCMRequestService implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDslCallbackDCMRequestService)){
						return false
					}
					this.target == (object as DcmDslCallbackDCMRequestService).target
				}
				
				
				
				
			}
			
			static class DcmDslDiagResp implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDslDiagResp)){
						return false
					}
					this.target == (object as DcmDslDiagResp).target
				}
				
				def BigInteger getDcmDslDiagRespMaxNumRespPend(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslDiagRespMaxNumRespPend"])
				}
				
				def void setDcmDslDiagRespMaxNumRespPend(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslDiagRespMaxNumRespPend"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslDiagRespMaxNumRespPend"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getDcmDslDiagRespOnSecondDeclinedRequest(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslDiagRespOnSecondDeclinedRequest"])
				}
				
				def void setDcmDslDiagRespOnSecondDeclinedRequest(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslDiagRespOnSecondDeclinedRequest"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslDiagRespOnSecondDeclinedRequest"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DcmDslProtocol implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDslProtocol)){
						return false
					}
					this.target == (object as DcmDslProtocol).target
				}
				
				
				
				def List<DcmDslProtocolRow> getDcmDslProtocolRows(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDslProtocolRow")
						}
					}
					return new BasicWrappingEList<DcmDslProtocolRow, GContainer>(filteredContainers, typeof(DcmDslProtocolRow), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslProtocol$DcmDslProtocolRow dcmDslProtocolRow) {
							dcmDslProtocolRow.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslProtocolRow"))
							super.delegateAdd(dcmDslProtocolRow)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslProtocol$DcmDslProtocolRow dcmDslProtocolRow) {
							dcmDslProtocolRow.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslProtocolRow"))
							super.delegateAdd(index, dcmDslProtocolRow)
						}	
					}
				}
				
				
				static class DcmDslProtocolRow implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDslProtocolRow)){
							return false
						}
						this.target == (object as DcmDslProtocolRow).target
					}
					
					def DcmDslProtocolID getDcmDslProtocolID(){
						getDcmDslProtocolIDValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolID"])
					}
					
					def void setDcmDslProtocolID(DcmDslProtocolID value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolID"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolID"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum DcmDslProtocolID {
						DCM_OBD_ON_CAN, 
						DCM_OBD_ON_FLEXRAY, 
						DCM_OBD_ON_IP, 
						DCM_PERIODICTRANS_ON_CAN, 
						DCM_PERIODICTRANS_ON_FLEXRAY, 
						DCM_PERIODICTRANS_ON_IP, 
						DCM_ROE_ON_CAN, 
						DCM_ROE_ON_FLEXRAY, 
						DCM_ROE_ON_IP, 
						DCM_SUPPLIER_1, 
						DCM_SUPPLIER_10, 
						DCM_SUPPLIER_11, 
						DCM_SUPPLIER_12, 
						DCM_SUPPLIER_13, 
						DCM_SUPPLIER_14, 
						DCM_SUPPLIER_15, 
						DCM_SUPPLIER_2, 
						DCM_SUPPLIER_3, 
						DCM_SUPPLIER_4, 
						DCM_SUPPLIER_5, 
						DCM_SUPPLIER_6, 
						DCM_SUPPLIER_7, 
						DCM_SUPPLIER_8, 
						DCM_SUPPLIER_9, 
						DCM_UDS_ON_CAN, 
						DCM_UDS_ON_FLEXRAY, 
						DCM_UDS_ON_IP
					}
						
					def DcmDslProtocolID getDcmDslProtocolIDValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "DCM_OBD_ON_CAN" : DcmDslProtocolID.DCM_OBD_ON_CAN
							case "DCM_OBD_ON_FLEXRAY" : DcmDslProtocolID.DCM_OBD_ON_FLEXRAY
							case "DCM_OBD_ON_IP" : DcmDslProtocolID.DCM_OBD_ON_IP
							case "DCM_PERIODICTRANS_ON_CAN" : DcmDslProtocolID.DCM_PERIODICTRANS_ON_CAN
							case "DCM_PERIODICTRANS_ON_FLEXRAY" : DcmDslProtocolID.DCM_PERIODICTRANS_ON_FLEXRAY
							case "DCM_PERIODICTRANS_ON_IP" : DcmDslProtocolID.DCM_PERIODICTRANS_ON_IP
							case "DCM_ROE_ON_CAN" : DcmDslProtocolID.DCM_ROE_ON_CAN
							case "DCM_ROE_ON_FLEXRAY" : DcmDslProtocolID.DCM_ROE_ON_FLEXRAY
							case "DCM_ROE_ON_IP" : DcmDslProtocolID.DCM_ROE_ON_IP
							case "DCM_SUPPLIER_1" : DcmDslProtocolID.DCM_SUPPLIER_1
							case "DCM_SUPPLIER_10" : DcmDslProtocolID.DCM_SUPPLIER_10
							case "DCM_SUPPLIER_11" : DcmDslProtocolID.DCM_SUPPLIER_11
							case "DCM_SUPPLIER_12" : DcmDslProtocolID.DCM_SUPPLIER_12
							case "DCM_SUPPLIER_13" : DcmDslProtocolID.DCM_SUPPLIER_13
							case "DCM_SUPPLIER_14" : DcmDslProtocolID.DCM_SUPPLIER_14
							case "DCM_SUPPLIER_15" : DcmDslProtocolID.DCM_SUPPLIER_15
							case "DCM_SUPPLIER_2" : DcmDslProtocolID.DCM_SUPPLIER_2
							case "DCM_SUPPLIER_3" : DcmDslProtocolID.DCM_SUPPLIER_3
							case "DCM_SUPPLIER_4" : DcmDslProtocolID.DCM_SUPPLIER_4
							case "DCM_SUPPLIER_5" : DcmDslProtocolID.DCM_SUPPLIER_5
							case "DCM_SUPPLIER_6" : DcmDslProtocolID.DCM_SUPPLIER_6
							case "DCM_SUPPLIER_7" : DcmDslProtocolID.DCM_SUPPLIER_7
							case "DCM_SUPPLIER_8" : DcmDslProtocolID.DCM_SUPPLIER_8
							case "DCM_SUPPLIER_9" : DcmDslProtocolID.DCM_SUPPLIER_9
							case "DCM_UDS_ON_CAN" : DcmDslProtocolID.DCM_UDS_ON_CAN
							case "DCM_UDS_ON_FLEXRAY" : DcmDslProtocolID.DCM_UDS_ON_FLEXRAY
							case "DCM_UDS_ON_IP" : DcmDslProtocolID.DCM_UDS_ON_IP
						}
					}
					
					def void setDcmDslProtocolIDValue(GParameterValue paramValue, DcmDslProtocolID value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def BigInteger getDcmDslProtocolMaximumResponseSize(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolMaximumResponseSize"])
					}
					
					def void setDcmDslProtocolMaximumResponseSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolMaximumResponseSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolMaximumResponseSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigDecimal getDcmDslProtocolPreemptTimeout(){
						EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolPreemptTimeout"])
					}
					
					def void setDcmDslProtocolPreemptTimeout(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolPreemptTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolPreemptTimeout"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDslProtocolPriority(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolPriority"])
					}
					
					def void setDcmDslProtocolPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolPriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolPriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getDcmDslProtocolRowUsed(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRowUsed"])
					}
					
					def void setDcmDslProtocolRowUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRowUsed"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolRowUsed"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def DcmDslProtocolTransType getDcmDslProtocolTransType(){
						getDcmDslProtocolTransTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolTransType"])
					}
					
					def void setDcmDslProtocolTransType(DcmDslProtocolTransType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolTransType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolTransType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum DcmDslProtocolTransType {
						TYPE1, 
						TYPE2
					}
						
					def DcmDslProtocolTransType getDcmDslProtocolTransTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "TYPE1" : DcmDslProtocolTransType.TYPE1
							case "TYPE2" : DcmDslProtocolTransType.TYPE2
						}
					}
					
					def void setDcmDslProtocolTransTypeValue(GParameterValue paramValue, DcmDslProtocolTransType value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def Boolean getDcmSendRespPendOnTransToBoot(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmSendRespPendOnTransToBoot"])
					}
					
					def void setDcmSendRespPendOnTransToBoot(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmSendRespPendOnTransToBoot"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmSendRespPendOnTransToBoot"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigDecimal getDcmTimStrP2ServerAdjust(){
						EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTimStrP2ServerAdjust"])
					}
					
					def void setDcmTimStrP2ServerAdjust(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTimStrP2ServerAdjust"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmTimStrP2ServerAdjust"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigDecimal getDcmTimStrP2StarServerAdjust(){
						EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTimStrP2StarServerAdjust"])
					}
					
					def void setDcmTimStrP2StarServerAdjust(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTimStrP2StarServerAdjust"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmTimStrP2StarServerAdjust"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer getDcmDslProtocolRxBufferRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer), "DcmDslProtocolRxBufferRef")
					}
							
					def void setDcmDslProtocolRxBufferRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolRxBufferRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable getDcmDslProtocolSIDTable(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable), "DcmDslProtocolSIDTable")
					}
							
					def void setDcmDslProtocolSIDTable(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolSIDTable"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer getDcmDslProtocolTxBufferRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer), "DcmDslProtocolTxBufferRef")
					}
							
					def void setDcmDslProtocolTxBufferRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolTxBufferRef"], object.getTarget())
						}
					}
					
					
					def List<DcmDslConnection> getDcmDslConnections(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "DcmDslConnection")
							}
						}
						return new BasicWrappingEList<DcmDslConnection, GContainer>(filteredContainers, typeof(DcmDslConnection), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslProtocol$DcmDslProtocolRow$DcmDslConnection dcmDslConnection) {
								dcmDslConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslConnection"))
								super.delegateAdd(dcmDslConnection)
							}
							
							override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslProtocol$DcmDslProtocolRow$DcmDslConnection dcmDslConnection) {
								dcmDslConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslConnection"))
								super.delegateAdd(index, dcmDslConnection)
							}	
						}
					}
					
					
					static class DcmDslConnection implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDslConnection)){
								return false
							}
							this.target == (object as DcmDslConnection).target
						}
						
						def DcmDslMainConnection getDcmDslMainConnection(){
							containerValue.getByType(typeof(DcmDslMainConnection))
						}
						
						def void setDcmDslMainConnection(DcmDslMainConnection dcmDslMainConnection){
							val GContainer subContainer = dcmDslMainConnection.getTarget()
							containerValue.setContainer(subContainer, "DcmDslMainConnection")
						}
						def DcmDslPeriodicTransmission getDcmDslPeriodicTransmission(){
							containerValue.getByType(typeof(DcmDslPeriodicTransmission))
						}
						
						def void setDcmDslPeriodicTransmission(DcmDslPeriodicTransmission dcmDslPeriodicTransmission){
							val GContainer subContainer = dcmDslPeriodicTransmission.getTarget()
							containerValue.setContainer(subContainer, "DcmDslPeriodicTransmission")
						}
						def DcmDslResponseOnEvent getDcmDslResponseOnEvent(){
							containerValue.getByType(typeof(DcmDslResponseOnEvent))
						}
						
						def void setDcmDslResponseOnEvent(DcmDslResponseOnEvent dcmDslResponseOnEvent){
							val GContainer subContainer = dcmDslResponseOnEvent.getTarget()
							containerValue.setContainer(subContainer, "DcmDslResponseOnEvent")
						}
						
						static class DcmDslMainConnection implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDslMainConnection)){
									return false
								}
								this.target == (object as DcmDslMainConnection).target
							}
							
							def BigInteger getDcmDslProtocolRxTesterSourceAddr(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxTesterSourceAddr"])
							}
							
							def void setDcmDslProtocolRxTesterSourceAddr(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxTesterSourceAddr"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolRxTesterSourceAddr"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							
							def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslPeriodicTransmission getDcmDslPeriodicTransmissionConRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslPeriodicTransmission), "DcmDslPeriodicTransmissionConRef")
							}
									
							def void setDcmDslPeriodicTransmissionConRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslPeriodicTransmission object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslPeriodicTransmissionConRef"], object.getTarget())
								}
							}
							
							def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslResponseOnEvent getDcmDslROEConnectionRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslResponseOnEvent), "DcmDslROEConnectionRef")
							}
									
							def void setDcmDslROEConnectionRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslResponseOnEvent object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslROEConnectionRef"], object.getTarget())
								}
							}
							
							def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getDcmDslProtocolComMChannelRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "DcmDslProtocolComMChannelRef")
							}
									
							def void setDcmDslProtocolComMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolComMChannelRef"], object.getTarget())
								}
							}
							
							
							def List<DcmDslProtocolRx> getDcmDslProtocolRxs(){
								val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
									override protected accept(GContainer item) {
										return accept(item, typeof(GContainerDef), "DcmDslProtocolRx")
									}
								}
								return new BasicWrappingEList<DcmDslProtocolRx, GContainer>(filteredContainers, typeof(DcmDslProtocolRx), typeof(GContainer)) {
									override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslProtocol$DcmDslProtocolRow$DcmDslConnection$DcmDslMainConnection$DcmDslProtocolRx dcmDslProtocolRx) {
										dcmDslProtocolRx.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslProtocolRx"))
										super.delegateAdd(dcmDslProtocolRx)
									}
									
									override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslProtocol$DcmDslProtocolRow$DcmDslConnection$DcmDslMainConnection$DcmDslProtocolRx dcmDslProtocolRx) {
										dcmDslProtocolRx.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslProtocolRx"))
										super.delegateAdd(index, dcmDslProtocolRx)
									}	
								}
							}
							
							def DcmDslProtocolTx getDcmDslProtocolTx(){
								containerValue.getByType(typeof(DcmDslProtocolTx))
							}
							
							def void setDcmDslProtocolTx(DcmDslProtocolTx dcmDslProtocolTx){
								val GContainer subContainer = dcmDslProtocolTx.getTarget()
								containerValue.setContainer(subContainer, "DcmDslProtocolTx")
							}
							
							
							static class DcmDslProtocolRx implements IWrapper<GContainer> {
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
							        if (!(object instanceof DcmDslProtocolRx)){
										return false
									}
									this.target == (object as DcmDslProtocolRx).target
								}
								
								def DcmDslProtocolRxAddrType getDcmDslProtocolRxAddrType(){
									getDcmDslProtocolRxAddrTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxAddrType"])
								}
								
								def void setDcmDslProtocolRxAddrType(DcmDslProtocolRxAddrType value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxAddrType"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolRxAddrType"])
											containerValue.gGetParameterValues += parameterValue
										}
									}
									EcucValueAccessor421Util.setParameterValue(parameterValue, value)
								}
								
								enum DcmDslProtocolRxAddrType {
									DCM_FUNCTIONAL_TYPE, 
									DCM_PHYSICAL_TYPE
								}
									
								def DcmDslProtocolRxAddrType getDcmDslProtocolRxAddrTypeValue(GParameterValue paramValue){
									val castedParamValue = paramValue as EcucTextualParamValue
									switch (castedParamValue.value){
										case "DCM_FUNCTIONAL_TYPE" : DcmDslProtocolRxAddrType.DCM_FUNCTIONAL_TYPE
										case "DCM_PHYSICAL_TYPE" : DcmDslProtocolRxAddrType.DCM_PHYSICAL_TYPE
									}
								}
								
								def void setDcmDslProtocolRxAddrTypeValue(GParameterValue paramValue, DcmDslProtocolRxAddrType value){
									EcucValueAccessor421Util.setParameterValue(paramValue, value)
								}
								
								def BigInteger getDcmDslProtocolRxPduId(){
									EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxPduId"])
								}
								
								def void setDcmDslProtocolRxPduId(BigInteger value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxPduId"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolRxPduId"])
											containerValue.gGetParameterValues += parameterValue
										}
									}
									EcucValueAccessor421Util.setParameterValue(parameterValue, value)
								}
								
								
								def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDcmDslProtocolRxPduRef(){
									containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DcmDslProtocolRxPduRef")
								}
										
								def void setDcmDslProtocolRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolRxPduRef"], object.getTarget())
									}
								}
								
								
								
							}
							
							static class DcmDslProtocolTx implements IWrapper<GContainer> {
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
							        if (!(object instanceof DcmDslProtocolTx)){
										return false
									}
									this.target == (object as DcmDslProtocolTx).target
								}
								
								def BigInteger getDcmDslTxConfirmationPduId(){
									EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslTxConfirmationPduId"])
								}
								
								def void setDcmDslTxConfirmationPduId(BigInteger value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslTxConfirmationPduId"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslTxConfirmationPduId"])
											containerValue.gGetParameterValues += parameterValue
										}
									}
									EcucValueAccessor421Util.setParameterValue(parameterValue, value)
								}
								
								
								def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDcmDslProtocolTxPduRef(){
									containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DcmDslProtocolTxPduRef")
								}
										
								def void setDcmDslProtocolTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolTxPduRef"], object.getTarget())
									}
								}
								
								
								
							}
							
						}
						
						static class DcmDslPeriodicTransmission implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDslPeriodicTransmission)){
									return false
								}
								this.target == (object as DcmDslPeriodicTransmission).target
							}
							
							
							
							def List<DcmDslPeriodicConnection> getDcmDslPeriodicConnections(){
								val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
									override protected accept(GContainer item) {
										return accept(item, typeof(GContainerDef), "DcmDslPeriodicConnection")
									}
								}
								return new BasicWrappingEList<DcmDslPeriodicConnection, GContainer>(filteredContainers, typeof(DcmDslPeriodicConnection), typeof(GContainer)) {
									override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslProtocol$DcmDslProtocolRow$DcmDslConnection$DcmDslPeriodicTransmission$DcmDslPeriodicConnection dcmDslPeriodicConnection) {
										dcmDslPeriodicConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslPeriodicConnection"))
										super.delegateAdd(dcmDslPeriodicConnection)
									}
									
									override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsl$DcmDslProtocol$DcmDslProtocolRow$DcmDslConnection$DcmDslPeriodicTransmission$DcmDslPeriodicConnection dcmDslPeriodicConnection) {
										dcmDslPeriodicConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslPeriodicConnection"))
										super.delegateAdd(index, dcmDslPeriodicConnection)
									}	
								}
							}
							
							
							static class DcmDslPeriodicConnection implements IWrapper<GContainer> {
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
							        if (!(object instanceof DcmDslPeriodicConnection)){
										return false
									}
									this.target == (object as DcmDslPeriodicConnection).target
								}
								
								def BigInteger getDcmDslPeriodicTxConfirmationPduId(){
									EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslPeriodicTxConfirmationPduId"])
								}
								
								def void setDcmDslPeriodicTxConfirmationPduId(BigInteger value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslPeriodicTxConfirmationPduId"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslPeriodicTxConfirmationPduId"])
											containerValue.gGetParameterValues += parameterValue
										}
									}
									EcucValueAccessor421Util.setParameterValue(parameterValue, value)
								}
								
								
								def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDcmDslPeriodicTxPduRef(){
									containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DcmDslPeriodicTxPduRef")
								}
										
								def void setDcmDslPeriodicTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslPeriodicTxPduRef"], object.getTarget())
									}
								}
								
								
								
							}
							
						}
						
						static class DcmDslResponseOnEvent implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDslResponseOnEvent)){
									return false
								}
								this.target == (object as DcmDslResponseOnEvent).target
							}
							
							def BigInteger getDcmDslRoeTxConfirmationPduId(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslRoeTxConfirmationPduId"])
							}
							
							def void setDcmDslRoeTxConfirmationPduId(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslRoeTxConfirmationPduId"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslRoeTxConfirmationPduId"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							
							def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDcmDslRoeTxPduRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DcmDslRoeTxPduRef")
							}
									
							def void setDcmDslRoeTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslRoeTxPduRef"], object.getTarget())
								}
							}
							
							
							
						}
						
					}
					
				}
				
			}
			
		}
		
		static class DcmDsp implements IWrapper<GContainer> {
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
		        if (!(object instanceof DcmDsp)){
					return false
				}
				this.target == (object as DcmDsp).target
			}
			
			def Boolean getDcmDspDDDIDcheckPerSourceDID(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDDDIDcheckPerSourceDID"])
			}
			
			def void setDcmDspDDDIDcheckPerSourceDID(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDDDIDcheckPerSourceDID"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDDDIDcheckPerSourceDID"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def DcmDspDataDefaultEndianness getDcmDspDataDefaultEndianness(){
				getDcmDspDataDefaultEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataDefaultEndianness"])
			}
			
			def void setDcmDspDataDefaultEndianness(DcmDspDataDefaultEndianness value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataDefaultEndianness"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataDefaultEndianness"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum DcmDspDataDefaultEndianness {
				BIG_ENDIAN, 
				LITTLE_ENDIAN, 
				OPAQUE
			}
				
			def DcmDspDataDefaultEndianness getDcmDspDataDefaultEndiannessValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "BIG_ENDIAN" : DcmDspDataDefaultEndianness.BIG_ENDIAN
					case "LITTLE_ENDIAN" : DcmDspDataDefaultEndianness.LITTLE_ENDIAN
					case "OPAQUE" : DcmDspDataDefaultEndianness.OPAQUE
				}
			}
			
			def void setDcmDspDataDefaultEndiannessValue(GParameterValue paramValue, DcmDspDataDefaultEndianness value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getDcmDspMaxDidToRead(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxDidToRead"])
			}
			
			def void setDcmDspMaxDidToRead(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxDidToRead"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspMaxDidToRead"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getDcmDspMaxPeriodicDidToRead(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxPeriodicDidToRead"])
			}
			
			def void setDcmDspMaxPeriodicDidToRead(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxPeriodicDidToRead"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspMaxPeriodicDidToRead"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getDcmDspPowerDownTime(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPowerDownTime"])
			}
			
			def void setDcmDspPowerDownTime(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPowerDownTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPowerDownTime"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def DcmResponseToEcuReset getDcmResponseToEcuReset(){
				getDcmResponseToEcuResetValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmResponseToEcuReset"])
			}
			
			def void setDcmResponseToEcuReset(DcmResponseToEcuReset value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmResponseToEcuReset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmResponseToEcuReset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum DcmResponseToEcuReset {
				AFTER_RESET, 
				BEFORE_RESET
			}
				
			def DcmResponseToEcuReset getDcmResponseToEcuResetValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "AFTER_RESET" : DcmResponseToEcuReset.AFTER_RESET
					case "BEFORE_RESET" : DcmResponseToEcuReset.BEFORE_RESET
				}
			}
			
			def void setDcmResponseToEcuResetValue(GParameterValue paramValue, DcmResponseToEcuReset value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			
			def DcmDspComControl getDcmDspComControl(){
				containerValue.getByType(typeof(DcmDspComControl))
			}
			
			def void setDcmDspComControl(DcmDspComControl dcmDspComControl){
				val GContainer subContainer = dcmDspComControl.getTarget()
				containerValue.setContainer(subContainer, "DcmDspComControl")
			}
			
			def List<DcmDspCommonAuthorization> getDcmDspCommonAuthorizations(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspCommonAuthorization")
					}
				}
				return new BasicWrappingEList<DcmDspCommonAuthorization, GContainer>(filteredContainers, typeof(DcmDspCommonAuthorization), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspCommonAuthorization dcmDspCommonAuthorization) {
						dcmDspCommonAuthorization.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspCommonAuthorization"))
						super.delegateAdd(dcmDspCommonAuthorization)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspCommonAuthorization dcmDspCommonAuthorization) {
						dcmDspCommonAuthorization.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspCommonAuthorization"))
						super.delegateAdd(index, dcmDspCommonAuthorization)
					}	
				}
			}
			
			def DcmDspControlDTCSetting getDcmDspControlDTCSetting(){
				containerValue.getByType(typeof(DcmDspControlDTCSetting))
			}
			
			def void setDcmDspControlDTCSetting(DcmDspControlDTCSetting dcmDspControlDTCSetting){
				val GContainer subContainer = dcmDspControlDTCSetting.getTarget()
				containerValue.setContainer(subContainer, "DcmDspControlDTCSetting")
			}
			
			def List<DcmDspData> getDcmDspDatas(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspData")
					}
				}
				return new BasicWrappingEList<DcmDspData, GContainer>(filteredContainers, typeof(DcmDspData), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspData dcmDspData) {
						dcmDspData.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspData"))
						super.delegateAdd(dcmDspData)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspData dcmDspData) {
						dcmDspData.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspData"))
						super.delegateAdd(index, dcmDspData)
					}	
				}
			}
			
			def List<DcmDspDataInfo> getDcmDspDataInfos(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspDataInfo")
					}
				}
				return new BasicWrappingEList<DcmDspDataInfo, GContainer>(filteredContainers, typeof(DcmDspDataInfo), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDataInfo dcmDspDataInfo) {
						dcmDspDataInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDataInfo"))
						super.delegateAdd(dcmDspDataInfo)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDataInfo dcmDspDataInfo) {
						dcmDspDataInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDataInfo"))
						super.delegateAdd(index, dcmDspDataInfo)
					}	
				}
			}
			
			def List<DcmDspDid> getDcmDspDids(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspDid")
					}
				}
				return new BasicWrappingEList<DcmDspDid, GContainer>(filteredContainers, typeof(DcmDspDid), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDid dcmDspDid) {
						dcmDspDid.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDid"))
						super.delegateAdd(dcmDspDid)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDid dcmDspDid) {
						dcmDspDid.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDid"))
						super.delegateAdd(index, dcmDspDid)
					}	
				}
			}
			
			def List<DcmDspDidInfo> getDcmDspDidInfos(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspDidInfo")
					}
				}
				return new BasicWrappingEList<DcmDspDidInfo, GContainer>(filteredContainers, typeof(DcmDspDidInfo), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDidInfo dcmDspDidInfo) {
						dcmDspDidInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidInfo"))
						super.delegateAdd(dcmDspDidInfo)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDidInfo dcmDspDidInfo) {
						dcmDspDidInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidInfo"))
						super.delegateAdd(index, dcmDspDidInfo)
					}	
				}
			}
			
			def List<DcmDspDidRange> getDcmDspDidRanges(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspDidRange")
					}
				}
				return new BasicWrappingEList<DcmDspDidRange, GContainer>(filteredContainers, typeof(DcmDspDidRange), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDidRange dcmDspDidRange) {
						dcmDspDidRange.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidRange"))
						super.delegateAdd(dcmDspDidRange)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDidRange dcmDspDidRange) {
						dcmDspDidRange.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidRange"))
						super.delegateAdd(index, dcmDspDidRange)
					}	
				}
			}
			
			def DcmDspMemory getDcmDspMemory(){
				containerValue.getByType(typeof(DcmDspMemory))
			}
			
			def void setDcmDspMemory(DcmDspMemory dcmDspMemory){
				val GContainer subContainer = dcmDspMemory.getTarget()
				containerValue.setContainer(subContainer, "DcmDspMemory")
			}
			
			def DcmDspPeriodicDidTransmission getDcmDspPeriodicDidTransmission(){
				containerValue.getByType(typeof(DcmDspPeriodicDidTransmission))
			}
			
			def void setDcmDspPeriodicDidTransmission(DcmDspPeriodicDidTransmission dcmDspPeriodicDidTransmission){
				val GContainer subContainer = dcmDspPeriodicDidTransmission.getTarget()
				containerValue.setContainer(subContainer, "DcmDspPeriodicDidTransmission")
			}
			
			def DcmDspPeriodicTransmission getDcmDspPeriodicTransmission(){
				containerValue.getByType(typeof(DcmDspPeriodicTransmission))
			}
			
			def void setDcmDspPeriodicTransmission(DcmDspPeriodicTransmission dcmDspPeriodicTransmission){
				val GContainer subContainer = dcmDspPeriodicTransmission.getTarget()
				containerValue.setContainer(subContainer, "DcmDspPeriodicTransmission")
			}
			
			def List<DcmDspPid> getDcmDspPids(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspPid")
					}
				}
				return new BasicWrappingEList<DcmDspPid, GContainer>(filteredContainers, typeof(DcmDspPid), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspPid dcmDspPid) {
						dcmDspPid.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspPid"))
						super.delegateAdd(dcmDspPid)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspPid dcmDspPid) {
						dcmDspPid.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspPid"))
						super.delegateAdd(index, dcmDspPid)
					}	
				}
			}
			
			def List<DcmDspRequestControl> getDcmDspRequestControls(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspRequestControl")
					}
				}
				return new BasicWrappingEList<DcmDspRequestControl, GContainer>(filteredContainers, typeof(DcmDspRequestControl), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRequestControl dcmDspRequestControl) {
						dcmDspRequestControl.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRequestControl"))
						super.delegateAdd(dcmDspRequestControl)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRequestControl dcmDspRequestControl) {
						dcmDspRequestControl.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRequestControl"))
						super.delegateAdd(index, dcmDspRequestControl)
					}	
				}
			}
			
			def DcmDspRequestFileTransfer getDcmDspRequestFileTransfer(){
				containerValue.getByType(typeof(DcmDspRequestFileTransfer))
			}
			
			def void setDcmDspRequestFileTransfer(DcmDspRequestFileTransfer dcmDspRequestFileTransfer){
				val GContainer subContainer = dcmDspRequestFileTransfer.getTarget()
				containerValue.setContainer(subContainer, "DcmDspRequestFileTransfer")
			}
			
			def DcmDspRoe getDcmDspRoe(){
				containerValue.getByType(typeof(DcmDspRoe))
			}
			
			def void setDcmDspRoe(DcmDspRoe dcmDspRoe){
				val GContainer subContainer = dcmDspRoe.getTarget()
				containerValue.setContainer(subContainer, "DcmDspRoe")
			}
			
			def List<DcmDspRoutine> getDcmDspRoutines(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspRoutine")
					}
				}
				return new BasicWrappingEList<DcmDspRoutine, GContainer>(filteredContainers, typeof(DcmDspRoutine), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine dcmDspRoutine) {
						dcmDspRoutine.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRoutine"))
						super.delegateAdd(dcmDspRoutine)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine dcmDspRoutine) {
						dcmDspRoutine.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRoutine"))
						super.delegateAdd(index, dcmDspRoutine)
					}	
				}
			}
			
			def DcmDspSecurity getDcmDspSecurity(){
				containerValue.getByType(typeof(DcmDspSecurity))
			}
			
			def void setDcmDspSecurity(DcmDspSecurity dcmDspSecurity){
				val GContainer subContainer = dcmDspSecurity.getTarget()
				containerValue.setContainer(subContainer, "DcmDspSecurity")
			}
			
			def DcmDspSession getDcmDspSession(){
				containerValue.getByType(typeof(DcmDspSession))
			}
			
			def void setDcmDspSession(DcmDspSession dcmDspSession){
				val GContainer subContainer = dcmDspSession.getTarget()
				containerValue.setContainer(subContainer, "DcmDspSession")
			}
			
			def List<DcmDspVehInfo> getDcmDspVehInfos(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDspVehInfo")
					}
				}
				return new BasicWrappingEList<DcmDspVehInfo, GContainer>(filteredContainers, typeof(DcmDspVehInfo), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspVehInfo dcmDspVehInfo) {
						dcmDspVehInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspVehInfo"))
						super.delegateAdd(dcmDspVehInfo)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspVehInfo dcmDspVehInfo) {
						dcmDspVehInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspVehInfo"))
						super.delegateAdd(index, dcmDspVehInfo)
					}	
				}
			}
			
			
			static class DcmDspComControl implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspComControl)){
						return false
					}
					this.target == (object as DcmDspComControl).target
				}
				
				
				
				def List<DcmDspComControlAllChannel> getDcmDspComControlAllChannels(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspComControlAllChannel")
						}
					}
					return new BasicWrappingEList<DcmDspComControlAllChannel, GContainer>(filteredContainers, typeof(DcmDspComControlAllChannel), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspComControl$DcmDspComControlAllChannel dcmDspComControlAllChannel) {
							dcmDspComControlAllChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspComControlAllChannel"))
							super.delegateAdd(dcmDspComControlAllChannel)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspComControl$DcmDspComControlAllChannel dcmDspComControlAllChannel) {
							dcmDspComControlAllChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspComControlAllChannel"))
							super.delegateAdd(index, dcmDspComControlAllChannel)
						}	
					}
				}
				
				def DcmDspComControlSetting getDcmDspComControlSetting(){
					containerValue.getByType(typeof(DcmDspComControlSetting))
				}
				
				def void setDcmDspComControlSetting(DcmDspComControlSetting dcmDspComControlSetting){
					val GContainer subContainer = dcmDspComControlSetting.getTarget()
					containerValue.setContainer(subContainer, "DcmDspComControlSetting")
				}
				
				def List<DcmDspComControlSpecificChannel> getDcmDspComControlSpecificChannels(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspComControlSpecificChannel")
						}
					}
					return new BasicWrappingEList<DcmDspComControlSpecificChannel, GContainer>(filteredContainers, typeof(DcmDspComControlSpecificChannel), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspComControl$DcmDspComControlSpecificChannel dcmDspComControlSpecificChannel) {
							dcmDspComControlSpecificChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspComControlSpecificChannel"))
							super.delegateAdd(dcmDspComControlSpecificChannel)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspComControl$DcmDspComControlSpecificChannel dcmDspComControlSpecificChannel) {
							dcmDspComControlSpecificChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspComControlSpecificChannel"))
							super.delegateAdd(index, dcmDspComControlSpecificChannel)
						}	
					}
				}
				
				def List<DcmDspComControlSubNode> getDcmDspComControlSubNodes(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspComControlSubNode")
						}
					}
					return new BasicWrappingEList<DcmDspComControlSubNode, GContainer>(filteredContainers, typeof(DcmDspComControlSubNode), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspComControl$DcmDspComControlSubNode dcmDspComControlSubNode) {
							dcmDspComControlSubNode.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspComControlSubNode"))
							super.delegateAdd(dcmDspComControlSubNode)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspComControl$DcmDspComControlSubNode dcmDspComControlSubNode) {
							dcmDspComControlSubNode.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspComControlSubNode"))
							super.delegateAdd(index, dcmDspComControlSubNode)
						}	
					}
				}
				
				
				static class DcmDspComControlAllChannel implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspComControlAllChannel)){
							return false
						}
						this.target == (object as DcmDspComControlAllChannel).target
					}
					
					def Boolean getDcmDspComControlAllChannelUsed(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlAllChannelUsed"])
					}
					
					def void setDcmDspComControlAllChannelUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlAllChannelUsed"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspComControlAllChannelUsed"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getDcmDspAllComMChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "DcmDspAllComMChannelRef")
					}
							
					def void setDcmDspAllComMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspAllComMChannelRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DcmDspComControlSetting implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspComControlSetting)){
							return false
						}
						this.target == (object as DcmDspComControlSetting).target
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspComControlCommunicationReEnableModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspComControlCommunicationReEnableModeRuleRef")
					}
							
					def void setDcmDspComControlCommunicationReEnableModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspComControlCommunicationReEnableModeRuleRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DcmDspComControlSpecificChannel implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspComControlSpecificChannel)){
							return false
						}
						this.target == (object as DcmDspComControlSpecificChannel).target
					}
					
					def Boolean getDcmDspComControlSpecificChannelUsed(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSpecificChannelUsed"])
					}
					
					def void setDcmDspComControlSpecificChannelUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSpecificChannelUsed"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspComControlSpecificChannelUsed"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDspSubnetNumber(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSubnetNumber"])
					}
					
					def void setDcmDspSubnetNumber(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSubnetNumber"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSubnetNumber"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getDcmDspSpecificComMChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "DcmDspSpecificComMChannelRef")
					}
							
					def void setDcmDspSpecificComMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspSpecificComMChannelRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DcmDspComControlSubNode implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspComControlSubNode)){
							return false
						}
						this.target == (object as DcmDspComControlSubNode).target
					}
					
					def BigInteger getDcmDspComControlSubNodeId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSubNodeId"])
					}
					
					def void setDcmDspComControlSubNodeId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSubNodeId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspComControlSubNodeId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getDcmDspComControlSubNodeUsed(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSubNodeUsed"])
					}
					
					def void setDcmDspComControlSubNodeUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSubNodeUsed"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspComControlSubNodeUsed"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getDcmDspComControlSubNodeComMChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "DcmDspComControlSubNodeComMChannelRef")
					}
							
					def void setDcmDspComControlSubNodeComMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspComControlSubNodeComMChannelRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class DcmDspCommonAuthorization implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspCommonAuthorization)){
						return false
					}
					this.target == (object as DcmDspCommonAuthorization).target
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspCommonAuthorizationModeRuleRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspCommonAuthorizationModeRuleRef")
				}
						
				def void setDcmDspCommonAuthorizationModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspCommonAuthorizationModeRuleRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspCommonAuthorizationSecurityLevelRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspCommonAuthorizationSecurityLevelRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "DcmDspCommonAuthorizationSecurityLevelRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspCommonAuthorizationSessionRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspCommonAuthorizationSessionRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "DcmDspCommonAuthorizationSessionRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
			static class DcmDspControlDTCSetting implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspControlDTCSetting)){
						return false
					}
					this.target == (object as DcmDspControlDTCSetting).target
				}
				
				def Boolean getDcmSupportDTCSettingControlOptionRecord(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmSupportDTCSettingControlOptionRecord"])
				}
				
				def void setDcmSupportDTCSettingControlOptionRecord(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmSupportDTCSettingControlOptionRecord"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmSupportDTCSettingControlOptionRecord"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspControlDTCSettingReEnableModeRuleRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspControlDTCSettingReEnableModeRuleRef")
				}
						
				def void setDcmDspControlDTCSettingReEnableModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspControlDTCSettingReEnableModeRuleRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class DcmDspData implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspData)){
						return false
					}
					this.target == (object as DcmDspData).target
				}
				
				def String getDcmDspDataConditionCheckReadFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataConditionCheckReadFnc"])
				}
				
				def void setDcmDspDataConditionCheckReadFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataConditionCheckReadFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataConditionCheckReadFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getDcmDspDataConditionCheckReadFncUsed(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataConditionCheckReadFncUsed"])
				}
				
				def void setDcmDspDataConditionCheckReadFncUsed(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataConditionCheckReadFncUsed"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataConditionCheckReadFncUsed"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDataEcuSignal(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataEcuSignal"])
				}
				
				def void setDcmDspDataEcuSignal(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataEcuSignal"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataEcuSignal"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def DcmDspDataEndianness getDcmDspDataEndianness(){
					getDcmDspDataEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataEndianness"])
				}
				
				def void setDcmDspDataEndianness(DcmDspDataEndianness value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataEndianness"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataEndianness"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum DcmDspDataEndianness {
					BIG_ENDIAN, 
					LITTLE_ENDIAN, 
					OPAQUE
				}
					
				def DcmDspDataEndianness getDcmDspDataEndiannessValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BIG_ENDIAN" : DcmDspDataEndianness.BIG_ENDIAN
						case "LITTLE_ENDIAN" : DcmDspDataEndianness.LITTLE_ENDIAN
						case "OPAQUE" : DcmDspDataEndianness.OPAQUE
					}
				}
				
				def void setDcmDspDataEndiannessValue(GParameterValue paramValue, DcmDspDataEndianness value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def String getDcmDspDataFreezeCurrentStateFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataFreezeCurrentStateFnc"])
				}
				
				def void setDcmDspDataFreezeCurrentStateFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataFreezeCurrentStateFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataFreezeCurrentStateFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDataGetScalingInfoFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataGetScalingInfoFnc"])
				}
				
				def void setDcmDspDataGetScalingInfoFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataGetScalingInfoFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataGetScalingInfoFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDataReadDataLengthFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadDataLengthFnc"])
				}
				
				def void setDcmDspDataReadDataLengthFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadDataLengthFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataReadDataLengthFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDataReadEcuSignal(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadEcuSignal"])
				}
				
				def void setDcmDspDataReadEcuSignal(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadEcuSignal"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataReadEcuSignal"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDataReadFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadFnc"])
				}
				
				def void setDcmDspDataReadFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataReadFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDataResetToDefaultFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataResetToDefaultFnc"])
				}
				
				def void setDcmDspDataResetToDefaultFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataResetToDefaultFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataResetToDefaultFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDataReturnControlToEcuFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReturnControlToEcuFnc"])
				}
				
				def void setDcmDspDataReturnControlToEcuFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReturnControlToEcuFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataReturnControlToEcuFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDataShortTermAdjustmentFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataShortTermAdjustmentFnc"])
				}
				
				def void setDcmDspDataShortTermAdjustmentFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataShortTermAdjustmentFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataShortTermAdjustmentFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDcmDspDataSize(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataSize"])
				}
				
				def void setDcmDspDataSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def DcmDspDataType getDcmDspDataType(){
					getDcmDspDataTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataType"])
				}
				
				def void setDcmDspDataType(DcmDspDataType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum DcmDspDataType {
					BOOLEAN, 
					SINT16, 
					SINT16_N, 
					SINT32, 
					SINT32_N, 
					SINT8, 
					SINT8_N, 
					UINT16, 
					UINT16_N, 
					UINT32, 
					UINT32_N, 
					UINT8, 
					UINT8_DYN, 
					UINT8_N
				}
					
				def DcmDspDataType getDcmDspDataTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BOOLEAN" : DcmDspDataType.BOOLEAN
						case "SINT16" : DcmDspDataType.SINT16
						case "SINT16_N" : DcmDspDataType.SINT16_N
						case "SINT32" : DcmDspDataType.SINT32
						case "SINT32_N" : DcmDspDataType.SINT32_N
						case "SINT8" : DcmDspDataType.SINT8
						case "SINT8_N" : DcmDspDataType.SINT8_N
						case "UINT16" : DcmDspDataType.UINT16
						case "UINT16_N" : DcmDspDataType.UINT16_N
						case "UINT32" : DcmDspDataType.UINT32
						case "UINT32_N" : DcmDspDataType.UINT32_N
						case "UINT8" : DcmDspDataType.UINT8
						case "UINT8_DYN" : DcmDspDataType.UINT8_DYN
						case "UINT8_N" : DcmDspDataType.UINT8_N
					}
				}
				
				def void setDcmDspDataTypeValue(GParameterValue paramValue, DcmDspDataType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def DcmDspDataUsePort getDcmDspDataUsePort(){
					getDcmDspDataUsePortValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataUsePort"])
				}
				
				def void setDcmDspDataUsePort(DcmDspDataUsePort value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataUsePort"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataUsePort"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum DcmDspDataUsePort {
					USE_BLOCK_ID, 
					USE_DATA_ASYNCH_CLIENT_SERVER, 
					USE_DATA_ASYNCH_CLIENT_SERVER_ERROR, 
					USE_DATA_ASYNCH_FNC, 
					USE_DATA_ASYNCH_FNC_ERROR, 
					USE_DATA_SENDER_RECEIVER, 
					USE_DATA_SYNCH_CLIENT_SERVER, 
					USE_DATA_SYNCH_FNC, 
					USE_ECU_SIGNAL
				}
					
				def DcmDspDataUsePort getDcmDspDataUsePortValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "USE_BLOCK_ID" : DcmDspDataUsePort.USE_BLOCK_ID
						case "USE_DATA_ASYNCH_CLIENT_SERVER" : DcmDspDataUsePort.USE_DATA_ASYNCH_CLIENT_SERVER
						case "USE_DATA_ASYNCH_CLIENT_SERVER_ERROR" : DcmDspDataUsePort.USE_DATA_ASYNCH_CLIENT_SERVER_ERROR
						case "USE_DATA_ASYNCH_FNC" : DcmDspDataUsePort.USE_DATA_ASYNCH_FNC
						case "USE_DATA_ASYNCH_FNC_ERROR" : DcmDspDataUsePort.USE_DATA_ASYNCH_FNC_ERROR
						case "USE_DATA_SENDER_RECEIVER" : DcmDspDataUsePort.USE_DATA_SENDER_RECEIVER
						case "USE_DATA_SYNCH_CLIENT_SERVER" : DcmDspDataUsePort.USE_DATA_SYNCH_CLIENT_SERVER
						case "USE_DATA_SYNCH_FNC" : DcmDspDataUsePort.USE_DATA_SYNCH_FNC
						case "USE_ECU_SIGNAL" : DcmDspDataUsePort.USE_ECU_SIGNAL
					}
				}
				
				def void setDcmDspDataUsePortValue(GParameterValue paramValue, DcmDspDataUsePort value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def String getDcmDspDataWriteFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataWriteFnc"])
				}
				
				def void setDcmDspDataWriteFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataWriteFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataWriteFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def DocumentationBlock getDcmDspOdxDataDescription(){
					EcucValueAccessor421Util.getDocumentationBlockValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspOdxDataDescription"])
				}
				
				def void setDcmDspOdxDataDescription(DocumentationBlock value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspOdxDataDescription"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspOdxDataDescription"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDataInfo getDcmDspDataInfoRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDataInfo), "DcmDspDataInfoRef")
				}
						
				def void setDcmDspDataInfoRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDataInfo object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDataInfoRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getDcmDspDataBlockIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "DcmDspDataBlockIdRef")
				}
						
				def void setDcmDspDataBlockIdRef(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDataBlockIdRef"], object.getTarget())
					}
				}
				
				
				def DcmDspDiagnosisScaling getDcmDspDiagnosisScaling(){
					containerValue.getByType(typeof(DcmDspDiagnosisScaling))
				}
				
				def void setDcmDspDiagnosisScaling(DcmDspDiagnosisScaling dcmDspDiagnosisScaling){
					val GContainer subContainer = dcmDspDiagnosisScaling.getTarget()
					containerValue.setContainer(subContainer, "DcmDspDiagnosisScaling")
				}
				
				def DcmDspExternalSRDataElementClass getDcmDspExternalSRDataElementClass(){
					containerValue.getByType(typeof(DcmDspExternalSRDataElementClass))
				}
				
				def void setDcmDspExternalSRDataElementClass(DcmDspExternalSRDataElementClass dcmDspExternalSRDataElementClass){
					val GContainer subContainer = dcmDspExternalSRDataElementClass.getTarget()
					containerValue.setContainer(subContainer, "DcmDspExternalSRDataElementClass")
				}
				
				
				static class DcmDspDiagnosisScaling implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspDiagnosisScaling)){
							return false
						}
						this.target == (object as DcmDspDiagnosisScaling).target
					}
					
					def DcmDspAlternativeDataInterface getDcmDspAlternativeDataInterface(){
						containerValue.getByType(typeof(DcmDspAlternativeDataInterface))
					}
					
					def void setDcmDspAlternativeDataInterface(DcmDspAlternativeDataInterface dcmDspAlternativeDataInterface){
						val GContainer subContainer = dcmDspAlternativeDataInterface.getTarget()
						containerValue.setContainer(subContainer, "DcmDspAlternativeDataInterface")
					}
					def DcmDspAlternativeDataProps getDcmDspAlternativeDataProps(){
						containerValue.getByType(typeof(DcmDspAlternativeDataProps))
					}
					
					def void setDcmDspAlternativeDataProps(DcmDspAlternativeDataProps dcmDspAlternativeDataProps){
						val GContainer subContainer = dcmDspAlternativeDataProps.getTarget()
						containerValue.setContainer(subContainer, "DcmDspAlternativeDataProps")
					}
					def DcmDspAlternativeDataType getDcmDspAlternativeDataType(){
						containerValue.getByType(typeof(DcmDspAlternativeDataType))
					}
					
					def void setDcmDspAlternativeDataType(DcmDspAlternativeDataType dcmDspAlternativeDataType){
						val GContainer subContainer = dcmDspAlternativeDataType.getTarget()
						containerValue.setContainer(subContainer, "DcmDspAlternativeDataType")
					}
					
					static class DcmDspAlternativeDataInterface implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspAlternativeDataInterface)){
								return false
							}
							this.target == (object as DcmDspAlternativeDataInterface).target
						}
						
						
						
						
						
						
					}
					
					static class DcmDspAlternativeDataProps implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspAlternativeDataProps)){
								return false
							}
							this.target == (object as DcmDspAlternativeDataProps).target
						}
						
						def DcmDspDataTypeCategory getDcmDspDataTypeCategory(){
							getDcmDspDataTypeCategoryValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataTypeCategory"])
						}
						
						def void setDcmDspDataTypeCategory(DcmDspDataTypeCategory value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataTypeCategory"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataTypeCategory"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum DcmDspDataTypeCategory {
							LINEAR, 
							SCALE_LINEAR_AND_TEXTTABLE, 
							TEXTTABLE
						}
							
						def DcmDspDataTypeCategory getDcmDspDataTypeCategoryValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "LINEAR" : DcmDspDataTypeCategory.LINEAR
								case "SCALE_LINEAR_AND_TEXTTABLE" : DcmDspDataTypeCategory.SCALE_LINEAR_AND_TEXTTABLE
								case "TEXTTABLE" : DcmDspDataTypeCategory.TEXTTABLE
							}
						}
						
						def void setDcmDspDataTypeCategoryValue(GParameterValue paramValue, DcmDspDataTypeCategory value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						
						def DcmDspLinearScale getDcmDspLinearScale(){
							containerValue.getByType(typeof(DcmDspLinearScale))
						}
						
						def void setDcmDspLinearScale(DcmDspLinearScale dcmDspLinearScale){
							val GContainer subContainer = dcmDspLinearScale.getTarget()
							containerValue.setContainer(subContainer, "DcmDspLinearScale")
						}
						
						def List<DcmDspTextTableMapping> getDcmDspTextTableMappings(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DcmDspTextTableMapping")
								}
							}
							return new BasicWrappingEList<DcmDspTextTableMapping, GContainer>(filteredContainers, typeof(DcmDspTextTableMapping), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspData$DcmDspDiagnosisScaling$DcmDspAlternativeDataProps$DcmDspTextTableMapping dcmDspTextTableMapping) {
									dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
									super.delegateAdd(dcmDspTextTableMapping)
								}
								
								override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspData$DcmDspDiagnosisScaling$DcmDspAlternativeDataProps$DcmDspTextTableMapping dcmDspTextTableMapping) {
									dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
									super.delegateAdd(index, dcmDspTextTableMapping)
								}	
							}
						}
						
						
						static class DcmDspLinearScale implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspLinearScale)){
									return false
								}
								this.target == (object as DcmDspLinearScale).target
							}
							
							def BigDecimal getDcmDspDiagnosisRepresentationDataLowerRange(){
								EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataLowerRange"])
							}
							
							def void setDcmDspDiagnosisRepresentationDataLowerRange(BigDecimal value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataLowerRange"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataLowerRange"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigDecimal getDcmDspDiagnosisRepresentationDataOffset(){
								EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataOffset"])
							}
							
							def void setDcmDspDiagnosisRepresentationDataOffset(BigDecimal value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataOffset"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataOffset"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigDecimal getDcmDspDiagnosisRepresentationDataResolution(){
								EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataResolution"])
							}
							
							def void setDcmDspDiagnosisRepresentationDataResolution(BigDecimal value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataResolution"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataResolution"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigDecimal getDcmDspDiagnosisRepresentationDataUpperRange(){
								EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataUpperRange"])
							}
							
							def void setDcmDspDiagnosisRepresentationDataUpperRange(BigDecimal value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataUpperRange"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataUpperRange"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							
							
							
						}
						
						static class DcmDspTextTableMapping implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspTextTableMapping)){
									return false
								}
								this.target == (object as DcmDspTextTableMapping).target
							}
							
							def BigInteger getDcmDspDiagnosisRepresentationDataValue(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"])
							}
							
							def void setDcmDspDiagnosisRepresentationDataValue(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataValue"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigInteger getDcmDspInternalDataValue(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"])
							}
							
							def void setDcmDspInternalDataValue(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspInternalDataValue"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							
							
							
						}
						
					}
					
					static class DcmDspAlternativeDataType implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspAlternativeDataType)){
								return false
							}
							this.target == (object as DcmDspAlternativeDataType).target
						}
						
						
						
						
						def List<DcmDspTextTableMapping> getDcmDspTextTableMappings(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DcmDspTextTableMapping")
								}
							}
							return new BasicWrappingEList<DcmDspTextTableMapping, GContainer>(filteredContainers, typeof(DcmDspTextTableMapping), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspData$DcmDspDiagnosisScaling$DcmDspAlternativeDataType$DcmDspTextTableMapping dcmDspTextTableMapping) {
									dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
									super.delegateAdd(dcmDspTextTableMapping)
								}
								
								override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspData$DcmDspDiagnosisScaling$DcmDspAlternativeDataType$DcmDspTextTableMapping dcmDspTextTableMapping) {
									dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
									super.delegateAdd(index, dcmDspTextTableMapping)
								}	
							}
						}
						
						
						static class DcmDspTextTableMapping implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspTextTableMapping)){
									return false
								}
								this.target == (object as DcmDspTextTableMapping).target
							}
							
							def BigInteger getDcmDspDiagnosisRepresentationDataValue(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"])
							}
							
							def void setDcmDspDiagnosisRepresentationDataValue(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataValue"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigInteger getDcmDspInternalDataValue(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"])
							}
							
							def void setDcmDspInternalDataValue(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspInternalDataValue"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							
							
							
						}
						
					}
					
				}
				
				static class DcmDspExternalSRDataElementClass implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspExternalSRDataElementClass)){
							return false
						}
						this.target == (object as DcmDspExternalSRDataElementClass).target
					}
					
					def DcmDataElementInstance getDcmDataElementInstance(){
						containerValue.getByType(typeof(DcmDataElementInstance))
					}
					
					def void setDcmDataElementInstance(DcmDataElementInstance dcmDataElementInstance){
						val GContainer subContainer = dcmDataElementInstance.getTarget()
						containerValue.setContainer(subContainer, "DcmDataElementInstance")
					}
					def DcmSubElementInDataElementInstance getDcmSubElementInDataElementInstance(){
						containerValue.getByType(typeof(DcmSubElementInDataElementInstance))
					}
					
					def void setDcmSubElementInDataElementInstance(DcmSubElementInDataElementInstance dcmSubElementInDataElementInstance){
						val GContainer subContainer = dcmSubElementInDataElementInstance.getTarget()
						containerValue.setContainer(subContainer, "DcmSubElementInDataElementInstance")
					}
					def DcmSubElementInImplDataElementInstance getDcmSubElementInImplDataElementInstance(){
						containerValue.getByType(typeof(DcmSubElementInImplDataElementInstance))
					}
					
					def void setDcmSubElementInImplDataElementInstance(DcmSubElementInImplDataElementInstance dcmSubElementInImplDataElementInstance){
						val GContainer subContainer = dcmSubElementInImplDataElementInstance.getTarget()
						containerValue.setContainer(subContainer, "DcmSubElementInImplDataElementInstance")
					}
					
					static class DcmDataElementInstance implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDataElementInstance)){
								return false
							}
							this.target == (object as DcmDataElementInstance).target
						}
						
						
						
						
						
					}
					
					static class DcmSubElementInDataElementInstance implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmSubElementInDataElementInstance)){
								return false
							}
							this.target == (object as DcmSubElementInDataElementInstance).target
						}
						
						
						
						
						
					}
					
					static class DcmSubElementInImplDataElementInstance implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmSubElementInImplDataElementInstance)){
								return false
							}
							this.target == (object as DcmSubElementInImplDataElementInstance).target
						}
						
						
						
						
						
					}
					
				}
				
			}
			
			static class DcmDspDataInfo implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspDataInfo)){
						return false
					}
					this.target == (object as DcmDspDataInfo).target
				}
				
				def BigInteger getDcmDspDataScalingInfoSize(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataScalingInfoSize"])
				}
				
				def void setDcmDspDataScalingInfoSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataScalingInfoSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataScalingInfoSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DcmDspDid implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspDid)){
						return false
					}
					this.target == (object as DcmDspDid).target
				}
				
				def BigInteger getDcmDspDidIdentifier(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidIdentifier"])
				}
				
				def void setDcmDspDidIdentifier(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidIdentifier"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidIdentifier"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getDcmDspDidUsed(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidUsed"])
				}
				
				def void setDcmDspDidUsed(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidUsed"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidUsed"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo getDcmDspDidInfoRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo), "DcmDspDidInfoRef")
				}
						
				def void setDcmDspDidInfoRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidInfoRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspVehInfo getDcmDspDidInfotypeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspVehInfo), "DcmDspDidInfotypeRef")
				}
						
				def void setDcmDspDidInfotypeRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspVehInfo object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidInfotypeRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid getDcmDspDidPidRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid), "DcmDspDidPidRef")
				}
						
				def void setDcmDspDidPidRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidPidRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid> getDcmDspDidRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "DcmDspDidRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				def List<DcmDspDidSignal> getDcmDspDidSignals(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspDidSignal")
						}
					}
					return new BasicWrappingEList<DcmDspDidSignal, GContainer>(filteredContainers, typeof(DcmDspDidSignal), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDid$DcmDspDidSignal dcmDspDidSignal) {
							dcmDspDidSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidSignal"))
							super.delegateAdd(dcmDspDidSignal)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspDid$DcmDspDidSignal dcmDspDidSignal) {
							dcmDspDidSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidSignal"))
							super.delegateAdd(index, dcmDspDidSignal)
						}	
					}
				}
				
				
				static class DcmDspDidSignal implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspDidSignal)){
							return false
						}
						this.target == (object as DcmDspDidSignal).target
					}
					
					def BigInteger getDcmDspDidDataPos(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidDataPos"])
					}
					
					def void setDcmDspDidDataPos(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidDataPos"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidDataPos"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData getDcmDspDidDataRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData), "DcmDspDidDataRef")
					}
							
					def void setDcmDspDidDataRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidDataRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class DcmDspDidInfo implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspDidInfo)){
						return false
					}
					this.target == (object as DcmDspDidInfo).target
				}
				
				def BigInteger getDcmDspDDDIDMaxElements(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDDDIDMaxElements"])
				}
				
				def void setDcmDspDDDIDMaxElements(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDDDIDMaxElements"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDDDIDMaxElements"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getDcmDspDidDynamicallyDefined(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidDynamicallyDefined"])
				}
				
				def void setDcmDspDidDynamicallyDefined(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidDynamicallyDefined"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidDynamicallyDefined"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def DcmDspDidControl getDcmDspDidControl(){
					containerValue.getByType(typeof(DcmDspDidControl))
				}
				
				def void setDcmDspDidControl(DcmDspDidControl dcmDspDidControl){
					val GContainer subContainer = dcmDspDidControl.getTarget()
					containerValue.setContainer(subContainer, "DcmDspDidControl")
				}
				
				def DcmDspDidRead getDcmDspDidRead(){
					containerValue.getByType(typeof(DcmDspDidRead))
				}
				
				def void setDcmDspDidRead(DcmDspDidRead dcmDspDidRead){
					val GContainer subContainer = dcmDspDidRead.getTarget()
					containerValue.setContainer(subContainer, "DcmDspDidRead")
				}
				
				def DcmDspDidWrite getDcmDspDidWrite(){
					containerValue.getByType(typeof(DcmDspDidWrite))
				}
				
				def void setDcmDspDidWrite(DcmDspDidWrite dcmDspDidWrite){
					val GContainer subContainer = dcmDspDidWrite.getTarget()
					containerValue.setContainer(subContainer, "DcmDspDidWrite")
				}
				
				
				static class DcmDspDidControl implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspDidControl)){
							return false
						}
						this.target == (object as DcmDspDidControl).target
					}
					
					def Boolean getDcmDspDidFreezeCurrentState(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidFreezeCurrentState"])
					}
					
					def void setDcmDspDidFreezeCurrentState(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidFreezeCurrentState"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidFreezeCurrentState"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getDcmDspDidResetToDefault(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidResetToDefault"])
					}
					
					def void setDcmDspDidResetToDefault(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidResetToDefault"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidResetToDefault"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getDcmDspDidShortTermAdjustment(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidShortTermAdjustment"])
					}
					
					def void setDcmDspDidShortTermAdjustment(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidShortTermAdjustment"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidShortTermAdjustment"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspDidControlModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspDidControlModeRuleRef")
					}
							
					def void setDcmDspDidControlModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidControlModeRuleRef"], object.getTarget())
						}
					}
					
					def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspDidControlSecurityLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidControlSecurityLevelRef"] else null
										
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidControlSecurityLevelRef")
							}
						}
						
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
							override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspDidControlSessionRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidControlSessionRef"] else null
										
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidControlSessionRef")
							}
						}
						
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
							override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					
					
				}
				
				static class DcmDspDidRead implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspDidRead)){
							return false
						}
						this.target == (object as DcmDspDidRead).target
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspDidReadModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspDidReadModeRuleRef")
					}
							
					def void setDcmDspDidReadModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidReadModeRuleRef"], object.getTarget())
						}
					}
					
					def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspDidReadSecurityLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidReadSecurityLevelRef"] else null
										
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidReadSecurityLevelRef")
							}
						}
						
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
							override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspDidReadSessionRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidReadSessionRef"] else null
										
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidReadSessionRef")
							}
						}
						
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
							override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					
					
				}
				
				static class DcmDspDidWrite implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspDidWrite)){
							return false
						}
						this.target == (object as DcmDspDidWrite).target
					}
					
					
					def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspDidWriteModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspDidWriteModeRuleRef")
					}
							
					def void setDcmDspDidWriteModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidWriteModeRuleRef"], object.getTarget())
						}
					}
					
					def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspDidWriteSecurityLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidWriteSecurityLevelRef"] else null
										
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidWriteSecurityLevelRef")
							}
						}
						
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
							override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspDidWriteSessionRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidWriteSessionRef"] else null
										
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidWriteSessionRef")
							}
						}
						
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
							override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					
					
				}
				
			}
			
			static class DcmDspDidRange implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspDidRange)){
						return false
					}
					this.target == (object as DcmDspDidRange).target
				}
				
				def Boolean getDcmDspDidRangeHasGaps(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeHasGaps"])
				}
				
				def void setDcmDspDidRangeHasGaps(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeHasGaps"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeHasGaps"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDcmDspDidRangeIdentifierLowerLimit(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIdentifierLowerLimit"])
				}
				
				def void setDcmDspDidRangeIdentifierLowerLimit(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIdentifierLowerLimit"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeIdentifierLowerLimit"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDcmDspDidRangeIdentifierUpperLimit(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIdentifierUpperLimit"])
				}
				
				def void setDcmDspDidRangeIdentifierUpperLimit(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIdentifierUpperLimit"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeIdentifierUpperLimit"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDidRangeIsDidAvailableFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIsDidAvailableFnc"])
				}
				
				def void setDcmDspDidRangeIsDidAvailableFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIsDidAvailableFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeIsDidAvailableFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDcmDspDidRangeMaxDataLength(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeMaxDataLength"])
				}
				
				def void setDcmDspDidRangeMaxDataLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeMaxDataLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeMaxDataLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDidRangeReadDidFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeReadDidFnc"])
				}
				
				def void setDcmDspDidRangeReadDidFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeReadDidFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeReadDidFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getDcmDspDidRangeUsePort(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeUsePort"])
				}
				
				def void setDcmDspDidRangeUsePort(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeUsePort"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeUsePort"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getDcmDspDidRangeWriteDidFnc(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeWriteDidFnc"])
				}
				
				def void setDcmDspDidRangeWriteDidFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeWriteDidFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeWriteDidFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo getDcmDspDidRangeInfoRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo), "DcmDspDidRangeInfoRef")
				}
						
				def void setDcmDspDidRangeInfoRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidRangeInfoRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class DcmDspMemory implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspMemory)){
						return false
					}
					this.target == (object as DcmDspMemory).target
				}
				
				
				
				def DcmDspAddressAndLengthFormatIdentifier getDcmDspAddressAndLengthFormatIdentifier(){
					containerValue.getByType(typeof(DcmDspAddressAndLengthFormatIdentifier))
				}
				
				def void setDcmDspAddressAndLengthFormatIdentifier(DcmDspAddressAndLengthFormatIdentifier dcmDspAddressAndLengthFormatIdentifier){
					val GContainer subContainer = dcmDspAddressAndLengthFormatIdentifier.getTarget()
					containerValue.setContainer(subContainer, "DcmDspAddressAndLengthFormatIdentifier")
				}
				
				def List<DcmDspMemoryIdInfo> getDcmDspMemoryIdInfos(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspMemoryIdInfo")
						}
					}
					return new BasicWrappingEList<DcmDspMemoryIdInfo, GContainer>(filteredContainers, typeof(DcmDspMemoryIdInfo), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspMemory$DcmDspMemoryIdInfo dcmDspMemoryIdInfo) {
							dcmDspMemoryIdInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspMemoryIdInfo"))
							super.delegateAdd(dcmDspMemoryIdInfo)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspMemory$DcmDspMemoryIdInfo dcmDspMemoryIdInfo) {
							dcmDspMemoryIdInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspMemoryIdInfo"))
							super.delegateAdd(index, dcmDspMemoryIdInfo)
						}	
					}
				}
				
				
				static class DcmDspAddressAndLengthFormatIdentifier implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspAddressAndLengthFormatIdentifier)){
							return false
						}
						this.target == (object as DcmDspAddressAndLengthFormatIdentifier).target
					}
					
					def List<BigInteger> getDcmDspSupportedAddressAndLengthFormatIdentifiers(){
						val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
							override protected accept(EcucNumericalParamValue item) {
								return accept(item, typeof(GConfigParameter), "DcmDspSupportedAddressAndLengthFormatIdentifier")
							}
						}
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSupportedAddressAndLengthFormatIdentifier"]
							return new BigIntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(BigInteger), parameterDef)
						}
					}
					
					
					
					
				}
				
				static class DcmDspMemoryIdInfo implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspMemoryIdInfo)){
							return false
						}
						this.target == (object as DcmDspMemoryIdInfo).target
					}
					
					def BigInteger getDcmDspMemoryIdValue(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMemoryIdValue"])
					}
					
					def void setDcmDspMemoryIdValue(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMemoryIdValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspMemoryIdValue"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def List<DcmDspReadMemoryRangeInfo> getDcmDspReadMemoryRangeInfos(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "DcmDspReadMemoryRangeInfo")
							}
						}
						return new BasicWrappingEList<DcmDspReadMemoryRangeInfo, GContainer>(filteredContainers, typeof(DcmDspReadMemoryRangeInfo), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspMemory$DcmDspMemoryIdInfo$DcmDspReadMemoryRangeInfo dcmDspReadMemoryRangeInfo) {
								dcmDspReadMemoryRangeInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspReadMemoryRangeInfo"))
								super.delegateAdd(dcmDspReadMemoryRangeInfo)
							}
							
							override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspMemory$DcmDspMemoryIdInfo$DcmDspReadMemoryRangeInfo dcmDspReadMemoryRangeInfo) {
								dcmDspReadMemoryRangeInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspReadMemoryRangeInfo"))
								super.delegateAdd(index, dcmDspReadMemoryRangeInfo)
							}	
						}
					}
					
					def List<DcmDspWriteMemoryRangeInfo> getDcmDspWriteMemoryRangeInfos(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "DcmDspWriteMemoryRangeInfo")
							}
						}
						return new BasicWrappingEList<DcmDspWriteMemoryRangeInfo, GContainer>(filteredContainers, typeof(DcmDspWriteMemoryRangeInfo), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspMemory$DcmDspMemoryIdInfo$DcmDspWriteMemoryRangeInfo dcmDspWriteMemoryRangeInfo) {
								dcmDspWriteMemoryRangeInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspWriteMemoryRangeInfo"))
								super.delegateAdd(dcmDspWriteMemoryRangeInfo)
							}
							
							override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspMemory$DcmDspMemoryIdInfo$DcmDspWriteMemoryRangeInfo dcmDspWriteMemoryRangeInfo) {
								dcmDspWriteMemoryRangeInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspWriteMemoryRangeInfo"))
								super.delegateAdd(index, dcmDspWriteMemoryRangeInfo)
							}	
						}
					}
					
					
					static class DcmDspReadMemoryRangeInfo implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspReadMemoryRangeInfo)){
								return false
							}
							this.target == (object as DcmDspReadMemoryRangeInfo).target
						}
						
						def BigInteger getDcmDspReadMemoryRangeHigh(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeHigh"])
						}
						
						def void setDcmDspReadMemoryRangeHigh(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeHigh"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspReadMemoryRangeHigh"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getDcmDspReadMemoryRangeLow(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeLow"])
						}
						
						def void setDcmDspReadMemoryRangeLow(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeLow"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspReadMemoryRangeLow"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspReadMemoryRangeModeRuleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspReadMemoryRangeModeRuleRef")
						}
								
						def void setDcmDspReadMemoryRangeModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspReadMemoryRangeModeRuleRef"], object.getTarget())
							}
						}
						
						def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspReadMemoryRangeSecurityLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspReadMemoryRangeSecurityLevelRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspReadMemoryRangeSecurityLevelRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
					static class DcmDspWriteMemoryRangeInfo implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspWriteMemoryRangeInfo)){
								return false
							}
							this.target == (object as DcmDspWriteMemoryRangeInfo).target
						}
						
						def BigInteger getDcmDspWriteMemoryRangeHigh(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeHigh"])
						}
						
						def void setDcmDspWriteMemoryRangeHigh(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeHigh"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspWriteMemoryRangeHigh"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getDcmDspWriteMemoryRangeLow(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeLow"])
						}
						
						def void setDcmDspWriteMemoryRangeLow(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeLow"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspWriteMemoryRangeLow"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspWriteMemoryRangeModeRuleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspWriteMemoryRangeModeRuleRef")
						}
								
						def void setDcmDspWriteMemoryRangeModeRuleRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspWriteMemoryRangeModeRuleRef"], object.getTarget())
							}
						}
						
						def List<org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspWriteMemoryRangeSecurityLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspWriteMemoryRangeSecurityLevelRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspWriteMemoryRangeSecurityLevelRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
				}
				
			}
			
			static class DcmDspPeriodicDidTransmission implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspPeriodicDidTransmission)){
						return false
					}
					this.target == (object as DcmDspPeriodicDidTransmission).target
				}
				
				def BigInteger getDcmDspMaxPeriodicDidScheduler(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxPeriodicDidScheduler"])
				}
				
				def void setDcmDspMaxPeriodicDidScheduler(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxPeriodicDidScheduler"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspMaxPeriodicDidScheduler"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DcmDspPeriodicTransmission implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspPeriodicTransmission)){
						return false
					}
					this.target == (object as DcmDspPeriodicTransmission).target
				}
				
				def BigDecimal getDcmDspPeriodicTransmissionFastRate(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionFastRate"])
				}
				
				def void setDcmDspPeriodicTransmissionFastRate(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionFastRate"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPeriodicTransmissionFastRate"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getDcmDspPeriodicTransmissionMediumRate(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionMediumRate"])
				}
				
				def void setDcmDspPeriodicTransmissionMediumRate(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionMediumRate"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPeriodicTransmissionMediumRate"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getDcmDspPeriodicTransmissionSlowRate(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionSlowRate"])
				}
				
				def void setDcmDspPeriodicTransmissionSlowRate(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionSlowRate"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPeriodicTransmissionSlowRate"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DcmDspPid implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspPid)){
						return false
					}
					this.target == (object as DcmDspPid).target
				}
				
				def BigInteger getDcmDspPidIdentifier(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidIdentifier"])
				}
				
				def void setDcmDspPidIdentifier(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidIdentifier"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidIdentifier"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def DcmDspPidService getDcmDspPidService(){
					getDcmDspPidServiceValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidService"])
				}
				
				def void setDcmDspPidService(DcmDspPidService value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidService"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidService"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum DcmDspPidService {
					DCM_SERVICE_01, 
					DCM_SERVICE_01_02, 
					DCM_SERVICE_02
				}
					
				def DcmDspPidService getDcmDspPidServiceValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DCM_SERVICE_01" : DcmDspPidService.DCM_SERVICE_01
						case "DCM_SERVICE_01_02" : DcmDspPidService.DCM_SERVICE_01_02
						case "DCM_SERVICE_02" : DcmDspPidService.DCM_SERVICE_02
					}
				}
				
				def void setDcmDspPidServiceValue(GParameterValue paramValue, DcmDspPidService value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getDcmDspPidSize(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSize"])
				}
				
				def void setDcmDspPidSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getDcmDspPidUsed(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidUsed"])
				}
				
				def void setDcmDspPidUsed(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidUsed"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidUsed"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<DcmDspPidData> getDcmDspPidDatas(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspPidData")
						}
					}
					return new BasicWrappingEList<DcmDspPidData, GContainer>(filteredContainers, typeof(DcmDspPidData), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspPid$DcmDspPidData dcmDspPidData) {
							dcmDspPidData.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspPidData"))
							super.delegateAdd(dcmDspPidData)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspPid$DcmDspPidData dcmDspPidData) {
							dcmDspPidData.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspPidData"))
							super.delegateAdd(index, dcmDspPidData)
						}	
					}
				}
				
				def List<DcmDspPidSupportInfo> getDcmDspPidSupportInfos(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspPidSupportInfo")
						}
					}
					return new BasicWrappingEList<DcmDspPidSupportInfo, GContainer>(filteredContainers, typeof(DcmDspPidSupportInfo), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspPid$DcmDspPidSupportInfo dcmDspPidSupportInfo) {
							dcmDspPidSupportInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspPidSupportInfo"))
							super.delegateAdd(dcmDspPidSupportInfo)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspPid$DcmDspPidSupportInfo dcmDspPidSupportInfo) {
							dcmDspPidSupportInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspPidSupportInfo"))
							super.delegateAdd(index, dcmDspPidSupportInfo)
						}	
					}
				}
				
				
				static class DcmDspPidData implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspPidData)){
							return false
						}
						this.target == (object as DcmDspPidData).target
					}
					
					def BigInteger getDcmDspPidDataPos(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataPos"])
					}
					
					def void setDcmDspPidDataPos(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataPos"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataPos"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDspPidDataSize(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataSize"])
					}
					
					def void setDcmDspPidDataSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def DcmDspPidDataSupportInfo getDcmDspPidDataSupportInfo(){
						containerValue.getByType(typeof(DcmDspPidDataSupportInfo))
					}
					
					def void setDcmDspPidDataSupportInfo(DcmDspPidDataSupportInfo dcmDspPidDataSupportInfo){
						val GContainer subContainer = dcmDspPidDataSupportInfo.getTarget()
						containerValue.setContainer(subContainer, "DcmDspPidDataSupportInfo")
					}
					
					def DcmDspPidService01 getDcmDspPidService01(){
						containerValue.getByType(typeof(DcmDspPidService01))
					}
					
					def void setDcmDspPidService01(DcmDspPidService01 dcmDspPidService01){
						val GContainer subContainer = dcmDspPidService01.getTarget()
						containerValue.setContainer(subContainer, "DcmDspPidService01")
					}
					
					def DcmDspPidService02 getDcmDspPidService02(){
						containerValue.getByType(typeof(DcmDspPidService02))
					}
					
					def void setDcmDspPidService02(DcmDspPidService02 dcmDspPidService02){
						val GContainer subContainer = dcmDspPidService02.getTarget()
						containerValue.setContainer(subContainer, "DcmDspPidService02")
					}
					
					
					static class DcmDspPidDataSupportInfo implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspPidDataSupportInfo)){
								return false
							}
							this.target == (object as DcmDspPidDataSupportInfo).target
						}
						
						def BigInteger getDcmDspPidDataSupportInfoBit(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataSupportInfoBit"])
						}
						
						def void setDcmDspPidDataSupportInfoBit(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataSupportInfoBit"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataSupportInfoBit"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidSupportInfo getDcmDspPidDataSupportInfoRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidSupportInfo), "DcmDspPidDataSupportInfoRef")
						}
								
						def void setDcmDspPidDataSupportInfoRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidSupportInfo object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspPidDataSupportInfoRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class DcmDspPidService01 implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspPidService01)){
								return false
							}
							this.target == (object as DcmDspPidService01).target
						}
						
						def DcmDspPidDataEndianness getDcmDspPidDataEndianness(){
							getDcmDspPidDataEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataEndianness"])
						}
						
						def void setDcmDspPidDataEndianness(DcmDspPidDataEndianness value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataEndianness"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataEndianness"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum DcmDspPidDataEndianness {
							BIG_ENDIAN, 
							LITTLE_ENDIAN, 
							OPAQUE
						}
							
						def DcmDspPidDataEndianness getDcmDspPidDataEndiannessValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "BIG_ENDIAN" : DcmDspPidDataEndianness.BIG_ENDIAN
								case "LITTLE_ENDIAN" : DcmDspPidDataEndianness.LITTLE_ENDIAN
								case "OPAQUE" : DcmDspPidDataEndianness.OPAQUE
							}
						}
						
						def void setDcmDspPidDataEndiannessValue(GParameterValue paramValue, DcmDspPidDataEndianness value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						def String getDcmDspPidDataReadFnc(){
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataReadFnc"])
						}
						
						def void setDcmDspPidDataReadFnc(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataReadFnc"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataReadFnc"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def DcmDspPidDataType getDcmDspPidDataType(){
							getDcmDspPidDataTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataType"])
						}
						
						def void setDcmDspPidDataType(DcmDspPidDataType value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataType"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataType"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum DcmDspPidDataType {
							BOOLEAN, 
							SINT16, 
							SINT16_N, 
							SINT32, 
							SINT32_N, 
							SINT8, 
							SINT8_N, 
							UINT16, 
							UINT16_N, 
							UINT32, 
							UINT32_N, 
							UINT8, 
							UINT8_DYN, 
							UINT8_N
						}
							
						def DcmDspPidDataType getDcmDspPidDataTypeValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "BOOLEAN" : DcmDspPidDataType.BOOLEAN
								case "SINT16" : DcmDspPidDataType.SINT16
								case "SINT16_N" : DcmDspPidDataType.SINT16_N
								case "SINT32" : DcmDspPidDataType.SINT32
								case "SINT32_N" : DcmDspPidDataType.SINT32_N
								case "SINT8" : DcmDspPidDataType.SINT8
								case "SINT8_N" : DcmDspPidDataType.SINT8_N
								case "UINT16" : DcmDspPidDataType.UINT16
								case "UINT16_N" : DcmDspPidDataType.UINT16_N
								case "UINT32" : DcmDspPidDataType.UINT32
								case "UINT32_N" : DcmDspPidDataType.UINT32_N
								case "UINT8" : DcmDspPidDataType.UINT8
								case "UINT8_DYN" : DcmDspPidDataType.UINT8_DYN
								case "UINT8_N" : DcmDspPidDataType.UINT8_N
							}
						}
						
						def void setDcmDspPidDataTypeValue(GParameterValue paramValue, DcmDspPidDataType value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						def DcmDspPidDataUsePort getDcmDspPidDataUsePort(){
							getDcmDspPidDataUsePortValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataUsePort"])
						}
						
						def void setDcmDspPidDataUsePort(DcmDspPidDataUsePort value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataUsePort"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataUsePort"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum DcmDspPidDataUsePort {
							USE_DATA_SENDER_RECEIVER, 
							USE_DATA_SYNCH_CLIENT_SERVER, 
							USE_DATA_SYNCH_FNC
						}
							
						def DcmDspPidDataUsePort getDcmDspPidDataUsePortValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "USE_DATA_SENDER_RECEIVER" : DcmDspPidDataUsePort.USE_DATA_SENDER_RECEIVER
								case "USE_DATA_SYNCH_CLIENT_SERVER" : DcmDspPidDataUsePort.USE_DATA_SYNCH_CLIENT_SERVER
								case "USE_DATA_SYNCH_FNC" : DcmDspPidDataUsePort.USE_DATA_SYNCH_FNC
							}
						}
						
						def void setDcmDspPidDataUsePortValue(GParameterValue paramValue, DcmDspPidDataUsePort value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						
						
					}
					
					static class DcmDspPidService02 implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspPidService02)){
								return false
							}
							this.target == (object as DcmDspPidService02).target
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemPidClass.DemPidDataElement getDcmDspPidDataDemRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemPidClass.DemPidDataElement), "DcmDspPidDataDemRef")
						}
								
						def void setDcmDspPidDataDemRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemPidClass.DemPidDataElement object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspPidDataDemRef"], object.getTarget())
							}
						}
						
						
						
					}
					
				}
				
				static class DcmDspPidSupportInfo implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspPidSupportInfo)){
							return false
						}
						this.target == (object as DcmDspPidSupportInfo).target
					}
					
					def BigInteger getDcmDspPidSupportInfoLen(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSupportInfoLen"])
					}
					
					def void setDcmDspPidSupportInfoLen(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSupportInfoLen"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidSupportInfoLen"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDspPidSupportInfoPos(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSupportInfoPos"])
					}
					
					def void setDcmDspPidSupportInfoPos(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSupportInfoPos"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidSupportInfoPos"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
			static class DcmDspRequestControl implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspRequestControl)){
						return false
					}
					this.target == (object as DcmDspRequestControl).target
				}
				
				def BigInteger getDcmDspRequestControlInBufferSize(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlInBufferSize"])
				}
				
				def void setDcmDspRequestControlInBufferSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlInBufferSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestControlInBufferSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDcmDspRequestControlOutBufferSize(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlOutBufferSize"])
				}
				
				def void setDcmDspRequestControlOutBufferSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlOutBufferSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestControlOutBufferSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDcmDspRequestControlTestId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlTestId"])
				}
				
				def void setDcmDspRequestControlTestId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlTestId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestControlTestId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DcmDspRequestFileTransfer implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspRequestFileTransfer)){
						return false
					}
					this.target == (object as DcmDspRequestFileTransfer).target
				}
				
				def BigInteger getDcmRequestFileTransferFileSizeParameterLength(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRequestFileTransferFileSizeParameterLength"])
				}
				
				def void setDcmRequestFileTransferFileSizeParameterLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRequestFileTransferFileSizeParameterLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmRequestFileTransferFileSizeParameterLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDcmRequestFileTransferLengthFormatIdentifier(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRequestFileTransferLengthFormatIdentifier"])
				}
				
				def void setDcmRequestFileTransferLengthFormatIdentifier(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRequestFileTransferLengthFormatIdentifier"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmRequestFileTransferLengthFormatIdentifier"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DcmDspRoe implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspRoe)){
						return false
					}
					this.target == (object as DcmDspRoe).target
				}
				
				def BigDecimal getDcmDspRoeInterMessageTime(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeInterMessageTime"])
				}
				
				def void setDcmDspRoeInterMessageTime(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeInterMessageTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeInterMessageTime"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<DcmDspRoeEvent> getDcmDspRoeEvents(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspRoeEvent")
						}
					}
					return new BasicWrappingEList<DcmDspRoeEvent, GContainer>(filteredContainers, typeof(DcmDspRoeEvent), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoe$DcmDspRoeEvent dcmDspRoeEvent) {
							dcmDspRoeEvent.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRoeEvent"))
							super.delegateAdd(dcmDspRoeEvent)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoe$DcmDspRoeEvent dcmDspRoeEvent) {
							dcmDspRoeEvent.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRoeEvent"))
							super.delegateAdd(index, dcmDspRoeEvent)
						}	
					}
				}
				
				def List<DcmDspRoeEventWindowTime> getDcmDspRoeEventWindowTimes(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspRoeEventWindowTime")
						}
					}
					return new BasicWrappingEList<DcmDspRoeEventWindowTime, GContainer>(filteredContainers, typeof(DcmDspRoeEventWindowTime), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoe$DcmDspRoeEventWindowTime dcmDspRoeEventWindowTime) {
							dcmDspRoeEventWindowTime.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRoeEventWindowTime"))
							super.delegateAdd(dcmDspRoeEventWindowTime)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoe$DcmDspRoeEventWindowTime dcmDspRoeEventWindowTime) {
							dcmDspRoeEventWindowTime.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRoeEventWindowTime"))
							super.delegateAdd(index, dcmDspRoeEventWindowTime)
						}	
					}
				}
				
				
				static class DcmDspRoeEvent implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspRoeEvent)){
							return false
						}
						this.target == (object as DcmDspRoeEvent).target
					}
					
					def BigInteger getDcmDspRoeEventId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeEventId"])
					}
					
					def void setDcmDspRoeEventId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeEventId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeEventId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def DcmDspRoeInitialEventStatus getDcmDspRoeInitialEventStatus(){
						getDcmDspRoeInitialEventStatusValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeInitialEventStatus"])
					}
					
					def void setDcmDspRoeInitialEventStatus(DcmDspRoeInitialEventStatus value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeInitialEventStatus"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeInitialEventStatus"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum DcmDspRoeInitialEventStatus {
						DCM_ROE_CLEARED, 
						DCM_ROE_STOPPED
					}
						
					def DcmDspRoeInitialEventStatus getDcmDspRoeInitialEventStatusValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "DCM_ROE_CLEARED" : DcmDspRoeInitialEventStatus.DCM_ROE_CLEARED
							case "DCM_ROE_STOPPED" : DcmDspRoeInitialEventStatus.DCM_ROE_STOPPED
						}
					}
					
					def void setDcmDspRoeInitialEventStatusValue(GParameterValue paramValue, DcmDspRoeInitialEventStatus value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					
					
					def DcmDspRoeEventProperties getDcmDspRoeEventProperties(){
						containerValue.getByType(typeof(DcmDspRoeEventProperties))
					}
					
					def void setDcmDspRoeEventProperties(DcmDspRoeEventProperties dcmDspRoeEventProperties){
						val GContainer subContainer = dcmDspRoeEventProperties.getTarget()
						containerValue.setContainer(subContainer, "DcmDspRoeEventProperties")
					}
					
					
					static class DcmDspRoeEventProperties implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspRoeEventProperties)){
								return false
							}
							this.target == (object as DcmDspRoeEventProperties).target
						}
						
						def DcmDspRoeOnChangeOfDataIdentifier getDcmDspRoeOnChangeOfDataIdentifier(){
							containerValue.getByType(typeof(DcmDspRoeOnChangeOfDataIdentifier))
						}
						
						def void setDcmDspRoeOnChangeOfDataIdentifier(DcmDspRoeOnChangeOfDataIdentifier dcmDspRoeOnChangeOfDataIdentifier){
							val GContainer subContainer = dcmDspRoeOnChangeOfDataIdentifier.getTarget()
							containerValue.setContainer(subContainer, "DcmDspRoeOnChangeOfDataIdentifier")
						}
						def DcmDspRoeOnDTCStatusChange getDcmDspRoeOnDTCStatusChange(){
							containerValue.getByType(typeof(DcmDspRoeOnDTCStatusChange))
						}
						
						def void setDcmDspRoeOnDTCStatusChange(DcmDspRoeOnDTCStatusChange dcmDspRoeOnDTCStatusChange){
							val GContainer subContainer = dcmDspRoeOnDTCStatusChange.getTarget()
							containerValue.setContainer(subContainer, "DcmDspRoeOnDTCStatusChange")
						}
						
						static class DcmDspRoeOnChangeOfDataIdentifier implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspRoeOnChangeOfDataIdentifier)){
									return false
								}
								this.target == (object as DcmDspRoeOnChangeOfDataIdentifier).target
							}
							
							
							def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid getDcmDspRoeDidRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid), "DcmDspRoeDidRef")
							}
									
							def void setDcmDspRoeDidRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspRoeDidRef"], object.getTarget())
								}
							}
							
							
							
						}
						
						static class DcmDspRoeOnDTCStatusChange implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspRoeOnDTCStatusChange)){
									return false
								}
								this.target == (object as DcmDspRoeOnDTCStatusChange).target
							}
							
							
							
							
						}
						
					}
					
				}
				
				static class DcmDspRoeEventWindowTime implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspRoeEventWindowTime)){
							return false
						}
						this.target == (object as DcmDspRoeEventWindowTime).target
					}
					
					def DcmDspRoeEventWindowTimeEnum getDcmDspRoeEventWindowTime(){
						getDcmDspRoeEventWindowTimeEnumValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeEventWindowTime"])
					}
					
					def void setDcmDspRoeEventWindowTime(DcmDspRoeEventWindowTimeEnum value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeEventWindowTime"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeEventWindowTime"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum DcmDspRoeEventWindowTimeEnum {
						DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE, 
						DCM_ROE_EVENT_WINDOW_CURRENT_CYCLE, 
						DCM_ROE_EVENT_WINDOW_INFINITE
					}
						
					def DcmDspRoeEventWindowTimeEnum getDcmDspRoeEventWindowTimeEnumValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE" : DcmDspRoeEventWindowTimeEnum.DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE
							case "DCM_ROE_EVENT_WINDOW_CURRENT_CYCLE" : DcmDspRoeEventWindowTimeEnum.DCM_ROE_EVENT_WINDOW_CURRENT_CYCLE
							case "DCM_ROE_EVENT_WINDOW_INFINITE" : DcmDspRoeEventWindowTimeEnum.DCM_ROE_EVENT_WINDOW_INFINITE
						}
					}
					
					def void setDcmDspRoeEventWindowTimeEnumValue(GParameterValue paramValue, DcmDspRoeEventWindowTimeEnum value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def Boolean getDcmDspRoeStorageState(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeStorageState"])
					}
					
					def void setDcmDspRoeStorageState(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeStorageState"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeStorageState"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
			static class DcmDspRoutine implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspRoutine)){
						return false
					}
					this.target == (object as DcmDspRoutine).target
				}
				
				def BigInteger getDcmDspRoutineIdentifier(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineIdentifier"])
				}
				
				def void setDcmDspRoutineIdentifier(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineIdentifier"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineIdentifier"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getDcmDspRoutineUsePort(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineUsePort"])
				}
				
				def void setDcmDspRoutineUsePort(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineUsePort"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineUsePort"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getDcmDspRoutineUsed(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineUsed"])
				}
				
				def void setDcmDspRoutineUsed(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineUsed"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineUsed"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization getDcmDspCommonAuthorizationRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization), "DcmDspCommonAuthorizationRef")
				}
						
				def void setDcmDspCommonAuthorizationRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspCommonAuthorizationRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRequestControl getDcmDspRoutineTidRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRequestControl), "DcmDspRoutineTidRef")
				}
						
				def void setDcmDspRoutineTidRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRequestControl object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspRoutineTidRef"], object.getTarget())
					}
				}
				
				
				def DcmDspRequestRoutineResults getDcmDspRequestRoutineResults(){
					containerValue.getByType(typeof(DcmDspRequestRoutineResults))
				}
				
				def void setDcmDspRequestRoutineResults(DcmDspRequestRoutineResults dcmDspRequestRoutineResults){
					val GContainer subContainer = dcmDspRequestRoutineResults.getTarget()
					containerValue.setContainer(subContainer, "DcmDspRequestRoutineResults")
				}
				
				def DcmDspStartRoutine getDcmDspStartRoutine(){
					containerValue.getByType(typeof(DcmDspStartRoutine))
				}
				
				def void setDcmDspStartRoutine(DcmDspStartRoutine dcmDspStartRoutine){
					val GContainer subContainer = dcmDspStartRoutine.getTarget()
					containerValue.setContainer(subContainer, "DcmDspStartRoutine")
				}
				
				def DcmDspStopRoutine getDcmDspStopRoutine(){
					containerValue.getByType(typeof(DcmDspStopRoutine))
				}
				
				def void setDcmDspStopRoutine(DcmDspStopRoutine dcmDspStopRoutine){
					val GContainer subContainer = dcmDspStopRoutine.getTarget()
					containerValue.setContainer(subContainer, "DcmDspStopRoutine")
				}
				
				
				static class DcmDspRequestRoutineResults implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspRequestRoutineResults)){
							return false
						}
						this.target == (object as DcmDspRequestRoutineResults).target
					}
					
					def String getDcmDspRequestRoutineResultsFnc(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestRoutineResultsFnc"])
					}
					
					def void setDcmDspRequestRoutineResultsFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestRoutineResultsFnc"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestRoutineResultsFnc"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def DcmDspRequestRoutineResultsOut getDcmDspRequestRoutineResultsOut(){
						containerValue.getByType(typeof(DcmDspRequestRoutineResultsOut))
					}
					
					def void setDcmDspRequestRoutineResultsOut(DcmDspRequestRoutineResultsOut dcmDspRequestRoutineResultsOut){
						val GContainer subContainer = dcmDspRequestRoutineResultsOut.getTarget()
						containerValue.setContainer(subContainer, "DcmDspRequestRoutineResultsOut")
					}
					
					
					static class DcmDspRequestRoutineResultsOut implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspRequestRoutineResultsOut)){
								return false
							}
							this.target == (object as DcmDspRequestRoutineResultsOut).target
						}
						
						
						
						def List<DcmDspRequestRoutineResultsOutSignal> getDcmDspRequestRoutineResultsOutSignals(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DcmDspRequestRoutineResultsOutSignal")
								}
							}
							return new BasicWrappingEList<DcmDspRequestRoutineResultsOutSignal, GContainer>(filteredContainers, typeof(DcmDspRequestRoutineResultsOutSignal), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspRequestRoutineResults$DcmDspRequestRoutineResultsOut$DcmDspRequestRoutineResultsOutSignal dcmDspRequestRoutineResultsOutSignal) {
									dcmDspRequestRoutineResultsOutSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRequestRoutineResultsOutSignal"))
									super.delegateAdd(dcmDspRequestRoutineResultsOutSignal)
								}
								
								override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspRequestRoutineResults$DcmDspRequestRoutineResultsOut$DcmDspRequestRoutineResultsOutSignal dcmDspRequestRoutineResultsOutSignal) {
									dcmDspRequestRoutineResultsOutSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRequestRoutineResultsOutSignal"))
									super.delegateAdd(index, dcmDspRequestRoutineResultsOutSignal)
								}	
							}
						}
						
						
						static class DcmDspRequestRoutineResultsOutSignal implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspRequestRoutineResultsOutSignal)){
									return false
								}
								this.target == (object as DcmDspRequestRoutineResultsOutSignal).target
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								getDcmDspRoutineSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"])
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
								
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue, DcmDspRoutineSignalEndianness value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalLength(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"])
							}
							
							def void setDcmDspRoutineSignalLength(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalLength"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"])
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								getDcmDspRoutineSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"])
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalType {
								BOOLEAN, 
								SINT16, 
								SINT32, 
								SINT8, 
								UINT16, 
								UINT32, 
								UINT8, 
								VARIABLE_LENGTH
							}
								
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue paramValue, DcmDspRoutineSignalType value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							
							
							
						}
						
					}
					
				}
				
				static class DcmDspStartRoutine implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspStartRoutine)){
							return false
						}
						this.target == (object as DcmDspStartRoutine).target
					}
					
					def String getDcmDspStartRoutineFnc(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStartRoutineFnc"])
					}
					
					def void setDcmDspStartRoutineFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStartRoutineFnc"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspStartRoutineFnc"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def DcmDspStartRoutineIn getDcmDspStartRoutineIn(){
						containerValue.getByType(typeof(DcmDspStartRoutineIn))
					}
					
					def void setDcmDspStartRoutineIn(DcmDspStartRoutineIn dcmDspStartRoutineIn){
						val GContainer subContainer = dcmDspStartRoutineIn.getTarget()
						containerValue.setContainer(subContainer, "DcmDspStartRoutineIn")
					}
					
					def DcmDspStartRoutineOut getDcmDspStartRoutineOut(){
						containerValue.getByType(typeof(DcmDspStartRoutineOut))
					}
					
					def void setDcmDspStartRoutineOut(DcmDspStartRoutineOut dcmDspStartRoutineOut){
						val GContainer subContainer = dcmDspStartRoutineOut.getTarget()
						containerValue.setContainer(subContainer, "DcmDspStartRoutineOut")
					}
					
					
					static class DcmDspStartRoutineIn implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspStartRoutineIn)){
								return false
							}
							this.target == (object as DcmDspStartRoutineIn).target
						}
						
						
						
						def List<DcmDspStartRoutineInSignal> getDcmDspStartRoutineInSignals(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DcmDspStartRoutineInSignal")
								}
							}
							return new BasicWrappingEList<DcmDspStartRoutineInSignal, GContainer>(filteredContainers, typeof(DcmDspStartRoutineInSignal), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspStartRoutine$DcmDspStartRoutineIn$DcmDspStartRoutineInSignal dcmDspStartRoutineInSignal) {
									dcmDspStartRoutineInSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStartRoutineInSignal"))
									super.delegateAdd(dcmDspStartRoutineInSignal)
								}
								
								override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspStartRoutine$DcmDspStartRoutineIn$DcmDspStartRoutineInSignal dcmDspStartRoutineInSignal) {
									dcmDspStartRoutineInSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStartRoutineInSignal"))
									super.delegateAdd(index, dcmDspStartRoutineInSignal)
								}	
							}
						}
						
						
						static class DcmDspStartRoutineInSignal implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspStartRoutineInSignal)){
									return false
								}
								this.target == (object as DcmDspStartRoutineInSignal).target
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								getDcmDspRoutineSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"])
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
								
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue, DcmDspRoutineSignalEndianness value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalLength(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"])
							}
							
							def void setDcmDspRoutineSignalLength(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalLength"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"])
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								getDcmDspRoutineSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"])
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalType {
								BOOLEAN, 
								SINT16, 
								SINT32, 
								SINT8, 
								UINT16, 
								UINT32, 
								UINT8, 
								VARIABLE_LENGTH
							}
								
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue paramValue, DcmDspRoutineSignalType value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							
							
							
						}
						
					}
					
					static class DcmDspStartRoutineOut implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspStartRoutineOut)){
								return false
							}
							this.target == (object as DcmDspStartRoutineOut).target
						}
						
						
						
						def List<DcmDspStartRoutineOutSignal> getDcmDspStartRoutineOutSignals(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DcmDspStartRoutineOutSignal")
								}
							}
							return new BasicWrappingEList<DcmDspStartRoutineOutSignal, GContainer>(filteredContainers, typeof(DcmDspStartRoutineOutSignal), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspStartRoutine$DcmDspStartRoutineOut$DcmDspStartRoutineOutSignal dcmDspStartRoutineOutSignal) {
									dcmDspStartRoutineOutSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStartRoutineOutSignal"))
									super.delegateAdd(dcmDspStartRoutineOutSignal)
								}
								
								override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspStartRoutine$DcmDspStartRoutineOut$DcmDspStartRoutineOutSignal dcmDspStartRoutineOutSignal) {
									dcmDspStartRoutineOutSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStartRoutineOutSignal"))
									super.delegateAdd(index, dcmDspStartRoutineOutSignal)
								}	
							}
						}
						
						
						static class DcmDspStartRoutineOutSignal implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspStartRoutineOutSignal)){
									return false
								}
								this.target == (object as DcmDspStartRoutineOutSignal).target
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								getDcmDspRoutineSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"])
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
								
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue, DcmDspRoutineSignalEndianness value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalLength(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"])
							}
							
							def void setDcmDspRoutineSignalLength(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalLength"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"])
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								getDcmDspRoutineSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"])
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalType {
								BOOLEAN, 
								SINT16, 
								SINT32, 
								SINT8, 
								UINT16, 
								UINT32, 
								UINT8, 
								VARIABLE_LENGTH
							}
								
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue paramValue, DcmDspRoutineSignalType value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							
							
							
						}
						
					}
					
				}
				
				static class DcmDspStopRoutine implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspStopRoutine)){
							return false
						}
						this.target == (object as DcmDspStopRoutine).target
					}
					
					def String getDcmDspStopRoutineFnc(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStopRoutineFnc"])
					}
					
					def void setDcmDspStopRoutineFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStopRoutineFnc"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspStopRoutineFnc"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def DcmDspStopRoutineIn getDcmDspStopRoutineIn(){
						containerValue.getByType(typeof(DcmDspStopRoutineIn))
					}
					
					def void setDcmDspStopRoutineIn(DcmDspStopRoutineIn dcmDspStopRoutineIn){
						val GContainer subContainer = dcmDspStopRoutineIn.getTarget()
						containerValue.setContainer(subContainer, "DcmDspStopRoutineIn")
					}
					
					def DcmDspStopRoutineOut getDcmDspStopRoutineOut(){
						containerValue.getByType(typeof(DcmDspStopRoutineOut))
					}
					
					def void setDcmDspStopRoutineOut(DcmDspStopRoutineOut dcmDspStopRoutineOut){
						val GContainer subContainer = dcmDspStopRoutineOut.getTarget()
						containerValue.setContainer(subContainer, "DcmDspStopRoutineOut")
					}
					
					
					static class DcmDspStopRoutineIn implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspStopRoutineIn)){
								return false
							}
							this.target == (object as DcmDspStopRoutineIn).target
						}
						
						
						
						def List<DcmDspStopRoutineInSignal> getDcmDspStopRoutineInSignals(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DcmDspStopRoutineInSignal")
								}
							}
							return new BasicWrappingEList<DcmDspStopRoutineInSignal, GContainer>(filteredContainers, typeof(DcmDspStopRoutineInSignal), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspStopRoutine$DcmDspStopRoutineIn$DcmDspStopRoutineInSignal dcmDspStopRoutineInSignal) {
									dcmDspStopRoutineInSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStopRoutineInSignal"))
									super.delegateAdd(dcmDspStopRoutineInSignal)
								}
								
								override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspStopRoutine$DcmDspStopRoutineIn$DcmDspStopRoutineInSignal dcmDspStopRoutineInSignal) {
									dcmDspStopRoutineInSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStopRoutineInSignal"))
									super.delegateAdd(index, dcmDspStopRoutineInSignal)
								}	
							}
						}
						
						
						static class DcmDspStopRoutineInSignal implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspStopRoutineInSignal)){
									return false
								}
								this.target == (object as DcmDspStopRoutineInSignal).target
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								getDcmDspRoutineSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"])
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
								
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue, DcmDspRoutineSignalEndianness value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalLength(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"])
							}
							
							def void setDcmDspRoutineSignalLength(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalLength"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"])
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								getDcmDspRoutineSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"])
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalType {
								BOOLEAN, 
								SINT16, 
								SINT32, 
								SINT8, 
								UINT16, 
								UINT32, 
								UINT8, 
								VARIABLE_LENGTH
							}
								
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue paramValue, DcmDspRoutineSignalType value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							
							
							
						}
						
					}
					
					static class DcmDspStopRoutineOut implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspStopRoutineOut)){
								return false
							}
							this.target == (object as DcmDspStopRoutineOut).target
						}
						
						
						
						def List<DcmDspStopRoutineOutSignal> getDcmDspStopRoutineOutSignals(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DcmDspStopRoutineOutSignal")
								}
							}
							return new BasicWrappingEList<DcmDspStopRoutineOutSignal, GContainer>(filteredContainers, typeof(DcmDspStopRoutineOutSignal), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspStopRoutine$DcmDspStopRoutineOut$DcmDspStopRoutineOutSignal dcmDspStopRoutineOutSignal) {
									dcmDspStopRoutineOutSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStopRoutineOutSignal"))
									super.delegateAdd(dcmDspStopRoutineOutSignal)
								}
								
								override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspRoutine$DcmDspStopRoutine$DcmDspStopRoutineOut$DcmDspStopRoutineOutSignal dcmDspStopRoutineOutSignal) {
									dcmDspStopRoutineOutSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStopRoutineOutSignal"))
									super.delegateAdd(index, dcmDspStopRoutineOutSignal)
								}	
							}
						}
						
						
						static class DcmDspStopRoutineOutSignal implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspStopRoutineOutSignal)){
									return false
								}
								this.target == (object as DcmDspStopRoutineOutSignal).target
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								getDcmDspRoutineSignalEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"])
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
								
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue paramValue, DcmDspRoutineSignalEndianness value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalLength(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"])
							}
							
							def void setDcmDspRoutineSignalLength(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalLength"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalLength"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"])
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								getDcmDspRoutineSignalTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"])
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
							}
							
							enum DcmDspRoutineSignalType {
								BOOLEAN, 
								SINT16, 
								SINT32, 
								SINT8, 
								UINT16, 
								UINT32, 
								UINT8, 
								VARIABLE_LENGTH
							}
								
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue paramValue, DcmDspRoutineSignalType value){
								EcucValueAccessor421Util.setParameterValue(paramValue, value)
							}
							
							
							
							
						}
						
					}
					
				}
				
			}
			
			static class DcmDspSecurity implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspSecurity)){
						return false
					}
					this.target == (object as DcmDspSecurity).target
				}
				
				
				
				def List<DcmDspSecurityRow> getDcmDspSecurityRows(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspSecurityRow")
						}
					}
					return new BasicWrappingEList<DcmDspSecurityRow, GContainer>(filteredContainers, typeof(DcmDspSecurityRow), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspSecurity$DcmDspSecurityRow dcmDspSecurityRow) {
							dcmDspSecurityRow.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspSecurityRow"))
							super.delegateAdd(dcmDspSecurityRow)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspSecurity$DcmDspSecurityRow dcmDspSecurityRow) {
							dcmDspSecurityRow.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspSecurityRow"))
							super.delegateAdd(index, dcmDspSecurityRow)
						}	
					}
				}
				
				
				static class DcmDspSecurityRow implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspSecurityRow)){
							return false
						}
						this.target == (object as DcmDspSecurityRow).target
					}
					
					def BigInteger getDcmDspSecurityADRSize(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityADRSize"])
					}
					
					def void setDcmDspSecurityADRSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityADRSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityADRSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getDcmDspSecurityAttemptCounterEnabled(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityAttemptCounterEnabled"])
					}
					
					def void setDcmDspSecurityAttemptCounterEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityAttemptCounterEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityAttemptCounterEnabled"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def String getDcmDspSecurityCompareKeyFnc(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityCompareKeyFnc"])
					}
					
					def void setDcmDspSecurityCompareKeyFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityCompareKeyFnc"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityCompareKeyFnc"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigDecimal getDcmDspSecurityDelayTime(){
						EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityDelayTime"])
					}
					
					def void setDcmDspSecurityDelayTime(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityDelayTime"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityDelayTime"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigDecimal getDcmDspSecurityDelayTimeOnBoot(){
						EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityDelayTimeOnBoot"])
					}
					
					def void setDcmDspSecurityDelayTimeOnBoot(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityDelayTimeOnBoot"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityDelayTimeOnBoot"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def String getDcmDspSecurityGetAttemptCounterFnc(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityGetAttemptCounterFnc"])
					}
					
					def void setDcmDspSecurityGetAttemptCounterFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityGetAttemptCounterFnc"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityGetAttemptCounterFnc"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def String getDcmDspSecurityGetSeedFnc(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityGetSeedFnc"])
					}
					
					def void setDcmDspSecurityGetSeedFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityGetSeedFnc"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityGetSeedFnc"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDspSecurityKeySize(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityKeySize"])
					}
					
					def void setDcmDspSecurityKeySize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityKeySize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityKeySize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDspSecurityLevel(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityLevel"])
					}
					
					def void setDcmDspSecurityLevel(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityLevel"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityLevel"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDspSecurityNumAttDelay(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityNumAttDelay"])
					}
					
					def void setDcmDspSecurityNumAttDelay(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityNumAttDelay"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityNumAttDelay"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDspSecuritySeedSize(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecuritySeedSize"])
					}
					
					def void setDcmDspSecuritySeedSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecuritySeedSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecuritySeedSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def String getDcmDspSecuritySetAttemptCounterFnc(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecuritySetAttemptCounterFnc"])
					}
					
					def void setDcmDspSecuritySetAttemptCounterFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecuritySetAttemptCounterFnc"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecuritySetAttemptCounterFnc"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def DcmDspSecurityUsePort getDcmDspSecurityUsePort(){
						getDcmDspSecurityUsePortValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityUsePort"])
					}
					
					def void setDcmDspSecurityUsePort(DcmDspSecurityUsePort value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityUsePort"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityUsePort"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum DcmDspSecurityUsePort {
						USE_ASYNCH_CLIENT_SERVER, 
						USE_ASYNCH_FNC
					}
						
					def DcmDspSecurityUsePort getDcmDspSecurityUsePortValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "USE_ASYNCH_CLIENT_SERVER" : DcmDspSecurityUsePort.USE_ASYNCH_CLIENT_SERVER
							case "USE_ASYNCH_FNC" : DcmDspSecurityUsePort.USE_ASYNCH_FNC
						}
					}
					
					def void setDcmDspSecurityUsePortValue(GParameterValue paramValue, DcmDspSecurityUsePort value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					
					
					
				}
				
			}
			
			static class DcmDspSession implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspSession)){
						return false
					}
					this.target == (object as DcmDspSession).target
				}
				
				
				
				def List<DcmDspSessionRow> getDcmDspSessionRows(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspSessionRow")
						}
					}
					return new BasicWrappingEList<DcmDspSessionRow, GContainer>(filteredContainers, typeof(DcmDspSessionRow), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspSession$DcmDspSessionRow dcmDspSessionRow) {
							dcmDspSessionRow.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspSessionRow"))
							super.delegateAdd(dcmDspSessionRow)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspSession$DcmDspSessionRow dcmDspSessionRow) {
							dcmDspSessionRow.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspSessionRow"))
							super.delegateAdd(index, dcmDspSessionRow)
						}	
					}
				}
				
				
				static class DcmDspSessionRow implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspSessionRow)){
							return false
						}
						this.target == (object as DcmDspSessionRow).target
					}
					
					def DcmDspSessionForBoot getDcmDspSessionForBoot(){
						getDcmDspSessionForBootValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionForBoot"])
					}
					
					def void setDcmDspSessionForBoot(DcmDspSessionForBoot value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionForBoot"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSessionForBoot"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum DcmDspSessionForBoot {
						DCM_NO_BOOT, 
						DCM_OEM_BOOT, 
						DCM_SYS_BOOT
					}
						
					def DcmDspSessionForBoot getDcmDspSessionForBootValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "DCM_NO_BOOT" : DcmDspSessionForBoot.DCM_NO_BOOT
							case "DCM_OEM_BOOT" : DcmDspSessionForBoot.DCM_OEM_BOOT
							case "DCM_SYS_BOOT" : DcmDspSessionForBoot.DCM_SYS_BOOT
						}
					}
					
					def void setDcmDspSessionForBootValue(GParameterValue paramValue, DcmDspSessionForBoot value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def BigInteger getDcmDspSessionLevel(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionLevel"])
					}
					
					def void setDcmDspSessionLevel(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionLevel"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSessionLevel"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigDecimal getDcmDspSessionP2ServerMax(){
						EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionP2ServerMax"])
					}
					
					def void setDcmDspSessionP2ServerMax(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionP2ServerMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSessionP2ServerMax"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigDecimal getDcmDspSessionP2StarServerMax(){
						EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionP2StarServerMax"])
					}
					
					def void setDcmDspSessionP2StarServerMax(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionP2StarServerMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSessionP2StarServerMax"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
			static class DcmDspVehInfo implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspVehInfo)){
						return false
					}
					this.target == (object as DcmDspVehInfo).target
				}
				
				def BigInteger getDcmDspVehInfoInfoType(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoInfoType"])
				}
				
				def void setDcmDspVehInfoInfoType(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoInfoType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoInfoType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<DcmDspVehInfoData> getDcmDspVehInfoDatas(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspVehInfoData")
						}
					}
					return new BasicWrappingEList<DcmDspVehInfoData, GContainer>(filteredContainers, typeof(DcmDspVehInfoData), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspVehInfo$DcmDspVehInfoData dcmDspVehInfoData) {
							dcmDspVehInfoData.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspVehInfoData"))
							super.delegateAdd(dcmDspVehInfoData)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmDsp$DcmDspVehInfo$DcmDspVehInfoData dcmDspVehInfoData) {
							dcmDspVehInfoData.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspVehInfoData"))
							super.delegateAdd(index, dcmDspVehInfoData)
						}	
					}
				}
				
				
				static class DcmDspVehInfoData implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspVehInfoData)){
							return false
						}
						this.target == (object as DcmDspVehInfoData).target
					}
					
					def BigInteger getDcmDspVehInfoDataOrder(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataOrder"])
					}
					
					def void setDcmDspVehInfoDataOrder(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataOrder"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoDataOrder"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def String getDcmDspVehInfoDataReadFnc(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataReadFnc"])
					}
					
					def void setDcmDspVehInfoDataReadFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataReadFnc"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoDataReadFnc"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDcmDspVehInfoDataSize(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataSize"])
					}
					
					def void setDcmDspVehInfoDataSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoDataSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getDcmDspVehInfoDataUsePort(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataUsePort"])
					}
					
					def void setDcmDspVehInfoDataUsePort(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataUsePort"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoDataUsePort"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class DcmPageBufferCfg implements IWrapper<GContainer> {
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
		        if (!(object instanceof DcmPageBufferCfg)){
					return false
				}
				this.target == (object as DcmPageBufferCfg).target
			}
			
			def Boolean getDcmPagedBufferEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmPagedBufferEnabled"])
			}
			
			def void setDcmPagedBufferEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmPagedBufferEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmPagedBufferEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getDcmPagedBufferTimeout(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmPagedBufferTimeout"])
			}
			
			def void setDcmPagedBufferTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmPagedBufferTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmPagedBufferTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DcmProcessingConditions implements IWrapper<GContainer> {
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
		        if (!(object instanceof DcmProcessingConditions)){
					return false
				}
				this.target == (object as DcmProcessingConditions).target
			}
			
			
			
			def List<DcmModeCondition> getDcmModeConditions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmModeCondition")
					}
				}
				return new BasicWrappingEList<DcmModeCondition, GContainer>(filteredContainers, typeof(DcmModeCondition), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmProcessingConditions$DcmModeCondition dcmModeCondition) {
						dcmModeCondition.target?.gSetDefinition(containerValue.getContainerDefinition("DcmModeCondition"))
						super.delegateAdd(dcmModeCondition)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmProcessingConditions$DcmModeCondition dcmModeCondition) {
						dcmModeCondition.target?.gSetDefinition(containerValue.getContainerDefinition("DcmModeCondition"))
						super.delegateAdd(index, dcmModeCondition)
					}	
				}
			}
			
			def List<DcmModeRule> getDcmModeRules(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmModeRule")
					}
				}
				return new BasicWrappingEList<DcmModeRule, GContainer>(filteredContainers, typeof(DcmModeRule), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmProcessingConditions$DcmModeRule dcmModeRule) {
						dcmModeRule.target?.gSetDefinition(containerValue.getContainerDefinition("DcmModeRule"))
						super.delegateAdd(dcmModeRule)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dcm$DcmConfigSet$DcmProcessingConditions$DcmModeRule dcmModeRule) {
						dcmModeRule.target?.gSetDefinition(containerValue.getContainerDefinition("DcmModeRule"))
						super.delegateAdd(index, dcmModeRule)
					}	
				}
			}
			
			
			static class DcmModeCondition implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmModeCondition)){
						return false
					}
					this.target == (object as DcmModeCondition).target
				}
				
				def DcmConditionType getDcmConditionType(){
					getDcmConditionTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmConditionType"])
				}
				
				def void setDcmConditionType(DcmConditionType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmConditionType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmConditionType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum DcmConditionType {
					DCM_EQUALS, 
					DCM_EQUALS_NOT, 
					DCM_GREATER_OR_EQUAL, 
					DCM_GREATER_THAN, 
					DCM_LESS_OR_EQUAL, 
					DCM_LESS_THAN
				}
					
				def DcmConditionType getDcmConditionTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DCM_EQUALS" : DcmConditionType.DCM_EQUALS
						case "DCM_EQUALS_NOT" : DcmConditionType.DCM_EQUALS_NOT
						case "DCM_GREATER_OR_EQUAL" : DcmConditionType.DCM_GREATER_OR_EQUAL
						case "DCM_GREATER_THAN" : DcmConditionType.DCM_GREATER_THAN
						case "DCM_LESS_OR_EQUAL" : DcmConditionType.DCM_LESS_OR_EQUAL
						case "DCM_LESS_THAN" : DcmConditionType.DCM_LESS_THAN
					}
				}
				
				def void setDcmConditionTypeValue(GParameterValue paramValue, DcmConditionType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				
				
				
				def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData.DcmDspExternalSRDataElementClass getDcmSwcSRDataElementRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData.DcmDspExternalSRDataElementClass), "DcmSwcSRDataElementRef")
				}
						
				def void setDcmSwcSRDataElementRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData.DcmDspExternalSRDataElementClass object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmSwcSRDataElementRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class DcmModeRule implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmModeRule)){
						return false
					}
					this.target == (object as DcmModeRule).target
				}
				
				def DcmLogicalOperator getDcmLogicalOperator(){
					getDcmLogicalOperatorValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmLogicalOperator"])
				}
				
				def void setDcmLogicalOperator(DcmLogicalOperator value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmLogicalOperator"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmLogicalOperator"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum DcmLogicalOperator {
					DCM_AND, 
					DCM_OR
				}
					
				def DcmLogicalOperator getDcmLogicalOperatorValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DCM_AND" : DcmLogicalOperator.DCM_AND
						case "DCM_OR" : DcmLogicalOperator.DCM_OR
					}
				}
				
				def void setDcmLogicalOperatorValue(GParameterValue paramValue, DcmLogicalOperator value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getDcmModeRuleNrcValue(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmModeRuleNrcValue"])
				}
				
				def void setDcmModeRuleNrcValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmModeRuleNrcValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmModeRuleNrcValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
				
			}
			
		}
		
	}
	static class DcmGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof DcmGeneral)){
				return false
			}
			this.target == (object as DcmGeneral).target
		}
		
		def Boolean getDcmDDDIDStorage(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDDDIDStorage"])
		}
		
		def void setDcmDDDIDStorage(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDDDIDStorage"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDDDIDStorage"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDcmDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDevErrorDetect"])
		}
		
		def void setDcmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def List<String> getDcmHeaderFileInclusions(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "DcmHeaderFileInclusion")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "DcmHeaderFileInclusion"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getDcmRespondAllRequest(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRespondAllRequest"])
		}
		
		def void setDcmRespondAllRequest(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRespondAllRequest"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmRespondAllRequest"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getDcmTaskTime(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTaskTime"])
		}
		
		def void setDcmTaskTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTaskTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmTaskTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDcmVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmVersionInfoApi"])
		}
		
		def void setDcmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DcmVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid getDcmVinRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid), "DcmVinRef")
		}
				
		def void setDcmVinRef(org.artop.ecuc.autosar421.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DcmVinRef"], object.getTarget())
			}
		}
		
		
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof Dcm)){
			return false
		}
		this.target == (object as Dcm).target
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
