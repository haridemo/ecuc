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
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdRequestManufacturerNotificationEnabled"].getBooleanValue()
			}
			
			def void setDcmDsdRequestManufacturerNotificationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdRequestManufacturerNotificationEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdRequestManufacturerNotificationEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDcmDsdRequestSupplierNotificationEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdRequestSupplierNotificationEnabled"].getBooleanValue()
			}
			
			def void setDcmDsdRequestSupplierNotificationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdRequestSupplierNotificationEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdRequestSupplierNotificationEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			def List<DcmDsdServiceRequestManufacturerNotification> getDcmDsdServiceRequestManufacturerNotifications(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DcmDsdServiceRequestManufacturerNotification")
					}
				}
				return new BasicWrappingEList<DcmDsdServiceRequestManufacturerNotification, GContainer>(filteredContainers, typeof(DcmDsdServiceRequestManufacturerNotification), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceRequestManufacturerNotification dcmDsdServiceRequestManufacturerNotification) {
						dcmDsdServiceRequestManufacturerNotification.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdServiceRequestManufacturerNotification"))
						super.delegateAdd(dcmDsdServiceRequestManufacturerNotification)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceRequestManufacturerNotification dcmDsdServiceRequestManufacturerNotification) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceRequestSupplierNotification dcmDsdServiceRequestSupplierNotification) {
						dcmDsdServiceRequestSupplierNotification.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdServiceRequestSupplierNotification"))
						super.delegateAdd(dcmDsdServiceRequestSupplierNotification)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceRequestSupplierNotification dcmDsdServiceRequestSupplierNotification) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable dcmDsdServiceTable) {
						dcmDsdServiceTable.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdServiceTable"))
						super.delegateAdd(dcmDsdServiceTable)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable dcmDsdServiceTable) {
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabId"].getBigIntegerValue()
				}
				
				def void setDcmDsdSidTabId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSidTabId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def List<DcmDsdService> getDcmDsdServices(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDsdService")
						}
					}
					return new BasicWrappingEList<DcmDsdService, GContainer>(filteredContainers, typeof(DcmDsdService), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable.DcmDsdService dcmDsdService) {
							dcmDsdService.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdService"))
							super.delegateAdd(dcmDsdService)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable.DcmDsdService dcmDsdService) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdServiceUsed"].getBooleanValue()
					}
					
					def void setDcmDsdServiceUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdServiceUsed"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdServiceUsed"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def String getDcmDsdSidTabFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabFnc"].getStringValue()
					}
					
					def void setDcmDsdSidTabFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSidTabFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDsdSidTabServiceId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabServiceId"].getBigIntegerValue()
					}
					
					def void setDcmDsdSidTabServiceId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabServiceId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSidTabServiceId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getDcmDsdSidTabSubfuncAvail(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabSubfuncAvail"].getBooleanValue()
					}
					
					def void setDcmDsdSidTabSubfuncAvail(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSidTabSubfuncAvail"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSidTabSubfuncAvail"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDsdSidTabModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDsdSidTabModeRuleRef")
					}
					
					def void setDcmDsdSidTabModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSidTabModeRuleRef"], object.getTarget())
						}
					}
					
					def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDsdSidTabSecurityLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSidTabSecurityLevelRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDsdSidTabSecurityLevelRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
							override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDsdSidTabSessionLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSidTabSessionLevelRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDsdSidTabSessionLevelRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
							override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
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
							override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable.DcmDsdService.DcmDsdSubService dcmDsdSubService) {
								dcmDsdSubService.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDsdSubService"))
								super.delegateAdd(dcmDsdSubService)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable.DcmDsdService.DcmDsdSubService dcmDsdSubService) {
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
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceFnc"].getStringValue()
						}
						
						def void setDcmDsdSubServiceFnc(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceFnc"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSubServiceFnc"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getDcmDsdSubServiceId(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceId"].getBigIntegerValue()
						}
						
						def void setDcmDsdSubServiceId(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceId"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSubServiceId"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def Boolean getDcmDsdSubServiceUsed(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceUsed"].getBooleanValue()
						}
						
						def void setDcmDsdSubServiceUsed(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDsdSubServiceUsed"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDsdSubServiceUsed"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDsdSubServiceModeRuleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDsdSubServiceModeRuleRef")
						}
						
						def void setDcmDsdSubServiceModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSubServiceModeRuleRef"], object.getTarget())
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDsdSubServiceSecurityLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSubServiceSecurityLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDsdSubServiceSecurityLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDsdSubServiceSessionLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDsdSubServiceSessionLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDsdSubServiceSessionLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer dcmDslBuffer) {
						dcmDslBuffer.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslBuffer"))
						super.delegateAdd(dcmDslBuffer)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer dcmDslBuffer) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslCallbackDCMRequestService dcmDslCallbackDCMRequestService) {
						dcmDslCallbackDCMRequestService.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslCallbackDCMRequestService"))
						super.delegateAdd(dcmDslCallbackDCMRequestService)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslCallbackDCMRequestService dcmDslCallbackDCMRequestService) {
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslBufferSize"].getBigIntegerValue()
				}
				
				def void setDcmDslBufferSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslBufferSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslBufferSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslDiagRespMaxNumRespPend"].getBigIntegerValue()
				}
				
				def void setDcmDslDiagRespMaxNumRespPend(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslDiagRespMaxNumRespPend"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslDiagRespMaxNumRespPend"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDcmDslDiagRespOnSecondDeclinedRequest(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslDiagRespOnSecondDeclinedRequest"].getBooleanValue()
				}
				
				def void setDcmDslDiagRespOnSecondDeclinedRequest(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslDiagRespOnSecondDeclinedRequest"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslDiagRespOnSecondDeclinedRequest"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow dcmDslProtocolRow) {
							dcmDslProtocolRow.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslProtocolRow"))
							super.delegateAdd(dcmDslProtocolRow)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow dcmDslProtocolRow) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolID"].getDcmDslProtocolIDValue()
					}
					
					def void setDcmDslProtocolID(DcmDslProtocolID value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolID"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolID"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
						DCM_UDS_ON_IP, 
						DCM_UDS_ON_LIN
					}
					
					def DcmDslProtocolID getDcmDslProtocolIDValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
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
							case "DCM_UDS_ON_LIN" : DcmDslProtocolID.DCM_UDS_ON_LIN
						}
					}
					
					def void setDcmDslProtocolIDValue(GParameterValue parameterValue, DcmDslProtocolID value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDslProtocolMaximumResponseSize(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolMaximumResponseSize"].getBigIntegerValue()
					}
					
					def void setDcmDslProtocolMaximumResponseSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolMaximumResponseSize"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolMaximumResponseSize"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getDcmDslProtocolPreemptTimeout(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolPreemptTimeout"].getBigDecimalValue()
					}
					
					def void setDcmDslProtocolPreemptTimeout(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolPreemptTimeout"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolPreemptTimeout"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDslProtocolPriority(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolPriority"].getBigIntegerValue()
					}
					
					def void setDcmDslProtocolPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolPriority"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolPriority"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getDcmDslProtocolRowUsed(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRowUsed"].getBooleanValue()
					}
					
					def void setDcmDslProtocolRowUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRowUsed"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolRowUsed"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def DcmDslProtocolTransType getDcmDslProtocolTransType(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolTransType"].getDcmDslProtocolTransTypeValue()
					}
					
					def void setDcmDslProtocolTransType(DcmDslProtocolTransType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolTransType"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolTransType"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum DcmDslProtocolTransType {
						TYPE1, 
						TYPE2
					}
					
					def DcmDslProtocolTransType getDcmDslProtocolTransTypeValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "TYPE1" : DcmDslProtocolTransType.TYPE1
							case "TYPE2" : DcmDslProtocolTransType.TYPE2
						}
					}
					
					def void setDcmDslProtocolTransTypeValue(GParameterValue parameterValue, DcmDslProtocolTransType value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspProtocolEcuAddr(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspProtocolEcuAddr"].getBigIntegerValue()
					}
					
					def void setDcmDspProtocolEcuAddr(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspProtocolEcuAddr"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspProtocolEcuAddr"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getDcmSendRespPendOnTransToBoot(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmSendRespPendOnTransToBoot"].getBooleanValue()
					}
					
					def void setDcmSendRespPendOnTransToBoot(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmSendRespPendOnTransToBoot"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmSendRespPendOnTransToBoot"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigDecimal getDcmTimStrP2ServerAdjust(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTimStrP2ServerAdjust"].getBigDecimalValue()
					}
					
					def void setDcmTimStrP2ServerAdjust(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTimStrP2ServerAdjust"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmTimStrP2ServerAdjust"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getDcmTimStrP2StarServerAdjust(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTimStrP2StarServerAdjust"].getBigDecimalValue()
					}
					
					def void setDcmTimStrP2StarServerAdjust(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTimStrP2StarServerAdjust"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmTimStrP2StarServerAdjust"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar431.accessors.Dem.DemGeneral.DemClient getDcmDemClientRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dem.DemGeneral.DemClient), "DcmDemClientRef")
					}
					
					def void setDcmDemClientRef(org.artop.ecuc.autosar431.accessors.Dem.DemGeneral.DemClient object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDemClientRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer getDcmDslProtocolRxBufferRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer), "DcmDslProtocolRxBufferRef")
					}
					
					def void setDcmDslProtocolRxBufferRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolRxBufferRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable getDcmDslProtocolSIDTable(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable), "DcmDslProtocolSIDTable")
					}
					
					def void setDcmDslProtocolSIDTable(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsd.DcmDsdServiceTable object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolSIDTable"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer getDcmDslProtocolTxBufferRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer), "DcmDslProtocolTxBufferRef")
					}
					
					def void setDcmDslProtocolTxBufferRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslBuffer object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolTxBufferRef"], object.getTarget())
						}
					}
					
					
					def List<DcmDslConnection> getDcmDslConnections(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "DcmDslConnection")
							}
						}
						return new BasicWrappingEList<DcmDslConnection, GContainer>(filteredContainers, typeof(DcmDslConnection), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection dcmDslConnection) {
								dcmDslConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslConnection"))
								super.delegateAdd(dcmDslConnection)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection dcmDslConnection) {
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
						
							def BigInteger getDcmDslProtocolRxConnectionId(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxConnectionId"].getBigIntegerValue()
							}
							
							def void setDcmDslProtocolRxConnectionId(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxConnectionId"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolRxConnectionId"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							
							def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslPeriodicTransmission getDcmDslPeriodicTransmissionConRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslPeriodicTransmission), "DcmDslPeriodicTransmissionConRef")
							}
							
							def void setDcmDslPeriodicTransmissionConRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslPeriodicTransmission object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslPeriodicTransmissionConRef"], object.getTarget())
								}
							}
							
							def org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel getDcmDslProtocolComMChannelRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel), "DcmDslProtocolComMChannelRef")
							}
							
							def void setDcmDslProtocolComMChannelRef(org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolComMChannelRef"], object.getTarget())
								}
							}
							
							def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslResponseOnEvent getDcmDslROEConnectionRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslResponseOnEvent), "DcmDslROEConnectionRef")
							}
							
							def void setDcmDslROEConnectionRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslResponseOnEvent object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslROEConnectionRef"], object.getTarget())
								}
							}
							
							
							def List<DcmDslProtocolRx> getDcmDslProtocolRxs(){
								val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
									override protected accept(GContainer item) {
										return accept(item, typeof(GContainerDef), "DcmDslProtocolRx")
									}
								}
								return new BasicWrappingEList<DcmDslProtocolRx, GContainer>(filteredContainers, typeof(DcmDslProtocolRx), typeof(GContainer)) {
									override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslMainConnection.DcmDslProtocolRx dcmDslProtocolRx) {
										dcmDslProtocolRx.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslProtocolRx"))
										super.delegateAdd(dcmDslProtocolRx)
									}
							
									override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslMainConnection.DcmDslProtocolRx dcmDslProtocolRx) {
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
									containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxAddrType"].getDcmDslProtocolRxAddrTypeValue()
								}
								
								def void setDcmDslProtocolRxAddrType(DcmDslProtocolRxAddrType value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxAddrType"]
									if (parameterValue === null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolRxAddrType"].createParameterValue()
											containerValue.gGetParameterValues += parameterValue
										}
									}
									parameterValue.setValue(value)
								}
								
								enum DcmDslProtocolRxAddrType {
									DCM_FUNCTIONAL_TYPE, 
									DCM_PHYSICAL_TYPE
								}
								
								def DcmDslProtocolRxAddrType getDcmDslProtocolRxAddrTypeValue(GParameterValue parameterValue){
									val castedParameterValue = parameterValue as EcucTextualParamValue
									switch (castedParameterValue.value){
										case "DCM_FUNCTIONAL_TYPE" : DcmDslProtocolRxAddrType.DCM_FUNCTIONAL_TYPE
										case "DCM_PHYSICAL_TYPE" : DcmDslProtocolRxAddrType.DCM_PHYSICAL_TYPE
									}
								}
								
								def void setDcmDslProtocolRxAddrTypeValue(GParameterValue parameterValue, DcmDslProtocolRxAddrType value){
									parameterValue.setValue(value)
								}
								
								def BigInteger getDcmDslProtocolRxPduId(){
									containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxPduId"].getBigIntegerValue()
								}
								
								def void setDcmDslProtocolRxPduId(BigInteger value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslProtocolRxPduId"]
									if (parameterValue === null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslProtocolRxPduId"].createParameterValue()
											containerValue.gGetParameterValues += parameterValue
										}
									}
									parameterValue.setValue(value)
								}
								
								
								def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDcmDslProtocolRxPduRef(){
									containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DcmDslProtocolRxPduRef")
								}
								
								def void setDcmDslProtocolRxPduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolRxPduRef"], object.getTarget())
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
									containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslTxConfirmationPduId"].getBigIntegerValue()
								}
								
								def void setDcmDslTxConfirmationPduId(BigInteger value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslTxConfirmationPduId"]
									if (parameterValue === null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslTxConfirmationPduId"].createParameterValue()
											containerValue.gGetParameterValues += parameterValue
										}
									}
									parameterValue.setValue(value)
								}
								
								
								def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDcmDslProtocolTxPduRef(){
									containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DcmDslProtocolTxPduRef")
								}
								
								def void setDcmDslProtocolTxPduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslProtocolTxPduRef"], object.getTarget())
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
									override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslPeriodicTransmission.DcmDslPeriodicConnection dcmDslPeriodicConnection) {
										dcmDslPeriodicConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDslPeriodicConnection"))
										super.delegateAdd(dcmDslPeriodicConnection)
									}
							
									override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsl.DcmDslProtocol.DcmDslProtocolRow.DcmDslConnection.DcmDslPeriodicTransmission.DcmDslPeriodicConnection dcmDslPeriodicConnection) {
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
									containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslPeriodicTxConfirmationPduId"].getBigIntegerValue()
								}
								
								def void setDcmDslPeriodicTxConfirmationPduId(BigInteger value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslPeriodicTxConfirmationPduId"]
									if (parameterValue === null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslPeriodicTxConfirmationPduId"].createParameterValue()
											containerValue.gGetParameterValues += parameterValue
										}
									}
									parameterValue.setValue(value)
								}
								
								
								def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDcmDslPeriodicTxPduRef(){
									containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DcmDslPeriodicTxPduRef")
								}
								
								def void setDcmDslPeriodicTxPduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslPeriodicTxPduRef"], object.getTarget())
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
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslRoeTxConfirmationPduId"].getBigIntegerValue()
							}
							
							def void setDcmDslRoeTxConfirmationPduId(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDslRoeTxConfirmationPduId"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDslRoeTxConfirmationPduId"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							
							def org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDcmDslRoeTxPduRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DcmDslRoeTxPduRef")
							}
							
							def void setDcmDslRoeTxPduRef(org.artop.ecuc.autosar431.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDslRoeTxPduRef"], object.getTarget())
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
		
			def DcmDspDataDefaultEndianness getDcmDspDataDefaultEndianness(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataDefaultEndianness"].getDcmDspDataDefaultEndiannessValue()
			}
			
			def void setDcmDspDataDefaultEndianness(DcmDspDataDefaultEndianness value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataDefaultEndianness"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataDefaultEndianness"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DcmDspDataDefaultEndianness {
				BIG_ENDIAN, 
				LITTLE_ENDIAN, 
				OPAQUE
			}
			
			def DcmDspDataDefaultEndianness getDcmDspDataDefaultEndiannessValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "BIG_ENDIAN" : DcmDspDataDefaultEndianness.BIG_ENDIAN
					case "LITTLE_ENDIAN" : DcmDspDataDefaultEndianness.LITTLE_ENDIAN
					case "OPAQUE" : DcmDspDataDefaultEndianness.OPAQUE
				}
			}
			
			def void setDcmDspDataDefaultEndiannessValue(GParameterValue parameterValue, DcmDspDataDefaultEndianness value){
				parameterValue.setValue(value)
			}
			
			def Boolean getDcmDspDDDIDcheckPerSourceDID(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDDDIDcheckPerSourceDID"].getBooleanValue()
			}
			
			def void setDcmDspDDDIDcheckPerSourceDID(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDDDIDcheckPerSourceDID"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDDDIDcheckPerSourceDID"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDcmDspEnableObdMirror(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspEnableObdMirror"].getBooleanValue()
			}
			
			def void setDcmDspEnableObdMirror(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspEnableObdMirror"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspEnableObdMirror"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getDcmDspMaxDidToRead(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxDidToRead"].getBigIntegerValue()
			}
			
			def void setDcmDspMaxDidToRead(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxDidToRead"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspMaxDidToRead"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDcmDspMaxPeriodicDidToRead(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxPeriodicDidToRead"].getBigIntegerValue()
			}
			
			def void setDcmDspMaxPeriodicDidToRead(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxPeriodicDidToRead"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspMaxPeriodicDidToRead"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDcmDspPowerDownTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPowerDownTime"].getBigIntegerValue()
			}
			
			def void setDcmDspPowerDownTime(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPowerDownTime"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPowerDownTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DcmResponseToEcuReset getDcmResponseToEcuReset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmResponseToEcuReset"].getDcmResponseToEcuResetValue()
			}
			
			def void setDcmResponseToEcuReset(DcmResponseToEcuReset value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmResponseToEcuReset"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmResponseToEcuReset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DcmResponseToEcuReset {
				AFTER_RESET, 
				BEFORE_RESET
			}
			
			def DcmResponseToEcuReset getDcmResponseToEcuResetValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "AFTER_RESET" : DcmResponseToEcuReset.AFTER_RESET
					case "BEFORE_RESET" : DcmResponseToEcuReset.BEFORE_RESET
				}
			}
			
			def void setDcmResponseToEcuResetValue(GParameterValue parameterValue, DcmResponseToEcuReset value){
				parameterValue.setValue(value)
			}
			
			
			
			def DcmDspClearDTC getDcmDspClearDTC(){
				containerValue.getByType(typeof(DcmDspClearDTC))
			}
			
			def void setDcmDspClearDTC(DcmDspClearDTC dcmDspClearDTC){
				val GContainer subContainer = dcmDspClearDTC.getTarget()
				containerValue.setContainer(subContainer, "DcmDspClearDTC")
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization dcmDspCommonAuthorization) {
						dcmDspCommonAuthorization.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspCommonAuthorization"))
						super.delegateAdd(dcmDspCommonAuthorization)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization dcmDspCommonAuthorization) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData dcmDspData) {
						dcmDspData.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspData"))
						super.delegateAdd(dcmDspData)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData dcmDspData) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDataInfo dcmDspDataInfo) {
						dcmDspDataInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDataInfo"))
						super.delegateAdd(dcmDspDataInfo)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDataInfo dcmDspDataInfo) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid dcmDspDid) {
						dcmDspDid.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDid"))
						super.delegateAdd(dcmDspDid)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid dcmDspDid) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo dcmDspDidInfo) {
						dcmDspDidInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidInfo"))
						super.delegateAdd(dcmDspDidInfo)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo dcmDspDidInfo) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidRange dcmDspDidRange) {
						dcmDspDidRange.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidRange"))
						super.delegateAdd(dcmDspDidRange)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidRange dcmDspDidRange) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid dcmDspPid) {
						dcmDspPid.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspPid"))
						super.delegateAdd(dcmDspPid)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid dcmDspPid) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRequestControl dcmDspRequestControl) {
						dcmDspRequestControl.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRequestControl"))
						super.delegateAdd(dcmDspRequestControl)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRequestControl dcmDspRequestControl) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine dcmDspRoutine) {
						dcmDspRoutine.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRoutine"))
						super.delegateAdd(dcmDspRoutine)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine dcmDspRoutine) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspVehInfo dcmDspVehInfo) {
						dcmDspVehInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspVehInfo"))
						super.delegateAdd(dcmDspVehInfo)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspVehInfo dcmDspVehInfo) {
						dcmDspVehInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspVehInfo"))
						super.delegateAdd(index, dcmDspVehInfo)
					}
				}
			}
			
			
			static class DcmDspClearDTC implements IWrapper<GContainer> {
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
			        if (!(object instanceof DcmDspClearDTC)){
						return false
					}
					this.target == (object as DcmDspClearDTC).target
				}
			
				def String getDcmDspClearDTCCheckFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspClearDTCCheckFnc"].getStringValue()
				}
				
				def void setDcmDspClearDTCCheckFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspClearDTCCheckFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspClearDTCCheckFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspClearDTCModeRuleRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspClearDTCModeRuleRef")
				}
				
				def void setDcmDspClearDTCModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspClearDTCModeRuleRef"], object.getTarget())
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
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspComControl.DcmDspComControlAllChannel dcmDspComControlAllChannel) {
							dcmDspComControlAllChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspComControlAllChannel"))
							super.delegateAdd(dcmDspComControlAllChannel)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspComControl.DcmDspComControlAllChannel dcmDspComControlAllChannel) {
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
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspComControl.DcmDspComControlSpecificChannel dcmDspComControlSpecificChannel) {
							dcmDspComControlSpecificChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspComControlSpecificChannel"))
							super.delegateAdd(dcmDspComControlSpecificChannel)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspComControl.DcmDspComControlSpecificChannel dcmDspComControlSpecificChannel) {
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
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspComControl.DcmDspComControlSubNode dcmDspComControlSubNode) {
							dcmDspComControlSubNode.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspComControlSubNode"))
							super.delegateAdd(dcmDspComControlSubNode)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspComControl.DcmDspComControlSubNode dcmDspComControlSubNode) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlAllChannelUsed"].getBooleanValue()
					}
					
					def void setDcmDspComControlAllChannelUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlAllChannelUsed"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspComControlAllChannelUsed"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					def org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel getDcmDspAllComMChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel), "DcmDspAllComMChannelRef")
					}
					
					def void setDcmDspAllComMChannelRef(org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspAllComMChannelRef"], object.getTarget())
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
				
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspComControlCommunicationReEnableModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspComControlCommunicationReEnableModeRuleRef")
					}
					
					def void setDcmDspComControlCommunicationReEnableModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspComControlCommunicationReEnableModeRuleRef"], object.getTarget())
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSpecificChannelUsed"].getBooleanValue()
					}
					
					def void setDcmDspComControlSpecificChannelUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSpecificChannelUsed"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspComControlSpecificChannelUsed"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getDcmDspSubnetNumber(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSubnetNumber"].getBigIntegerValue()
					}
					
					def void setDcmDspSubnetNumber(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSubnetNumber"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSubnetNumber"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel getDcmDspSpecificComMChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel), "DcmDspSpecificComMChannelRef")
					}
					
					def void setDcmDspSpecificComMChannelRef(org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspSpecificComMChannelRef"], object.getTarget())
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSubNodeId"].getBigIntegerValue()
					}
					
					def void setDcmDspComControlSubNodeId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSubNodeId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspComControlSubNodeId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getDcmDspComControlSubNodeUsed(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSubNodeUsed"].getBooleanValue()
					}
					
					def void setDcmDspComControlSubNodeUsed(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspComControlSubNodeUsed"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspComControlSubNodeUsed"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					def org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel getDcmDspComControlSubNodeComMChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel), "DcmDspComControlSubNodeComMChannelRef")
					}
					
					def void setDcmDspComControlSubNodeComMChannelRef(org.artop.ecuc.autosar431.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspComControlSubNodeComMChannelRef"], object.getTarget())
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
			
				
				def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspCommonAuthorizationModeRuleRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspCommonAuthorizationModeRuleRef")
				}
				
				def void setDcmDspCommonAuthorizationModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspCommonAuthorizationModeRuleRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspCommonAuthorizationSecurityLevelRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspCommonAuthorizationSecurityLevelRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "DcmDspCommonAuthorizationSecurityLevelRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
						override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
									return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspCommonAuthorizationSessionRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspCommonAuthorizationSessionRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "DcmDspCommonAuthorizationSessionRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
						override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
									return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
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
			
				
				def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspControlDTCSettingReEnableModeRuleRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspControlDTCSettingReEnableModeRuleRef")
				}
				
				def void setDcmDspControlDTCSettingReEnableModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspControlDTCSettingReEnableModeRuleRef"], object.getTarget())
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
			
				def BigInteger getDcmDspDataByteSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataByteSize"].getBigIntegerValue()
				}
				
				def void setDcmDspDataByteSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataByteSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataByteSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataConditionCheckReadFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataConditionCheckReadFnc"].getStringValue()
				}
				
				def void setDcmDspDataConditionCheckReadFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataConditionCheckReadFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataConditionCheckReadFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDcmDspDataConditionCheckReadFncUsed(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataConditionCheckReadFncUsed"].getBooleanValue()
				}
				
				def void setDcmDspDataConditionCheckReadFncUsed(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataConditionCheckReadFncUsed"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataConditionCheckReadFncUsed"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def String getDcmDspDataEcuSignal(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataEcuSignal"].getStringValue()
				}
				
				def void setDcmDspDataEcuSignal(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataEcuSignal"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataEcuSignal"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DcmDspDataEndianness getDcmDspDataEndianness(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataEndianness"].getDcmDspDataEndiannessValue()
				}
				
				def void setDcmDspDataEndianness(DcmDspDataEndianness value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataEndianness"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataEndianness"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DcmDspDataEndianness {
					BIG_ENDIAN, 
					LITTLE_ENDIAN, 
					OPAQUE
				}
				
				def DcmDspDataEndianness getDcmDspDataEndiannessValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BIG_ENDIAN" : DcmDspDataEndianness.BIG_ENDIAN
						case "LITTLE_ENDIAN" : DcmDspDataEndianness.LITTLE_ENDIAN
						case "OPAQUE" : DcmDspDataEndianness.OPAQUE
					}
				}
				
				def void setDcmDspDataEndiannessValue(GParameterValue parameterValue, DcmDspDataEndianness value){
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataFreezeCurrentStateFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataFreezeCurrentStateFnc"].getStringValue()
				}
				
				def void setDcmDspDataFreezeCurrentStateFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataFreezeCurrentStateFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataFreezeCurrentStateFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataGetScalingInfoFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataGetScalingInfoFnc"].getStringValue()
				}
				
				def void setDcmDspDataGetScalingInfoFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataGetScalingInfoFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataGetScalingInfoFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataReadDataLengthFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadDataLengthFnc"].getStringValue()
				}
				
				def void setDcmDspDataReadDataLengthFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadDataLengthFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataReadDataLengthFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataReadEcuSignal(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadEcuSignal"].getStringValue()
				}
				
				def void setDcmDspDataReadEcuSignal(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadEcuSignal"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataReadEcuSignal"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataReadFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadFnc"].getStringValue()
				}
				
				def void setDcmDspDataReadFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReadFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataReadFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataResetToDefaultFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataResetToDefaultFnc"].getStringValue()
				}
				
				def void setDcmDspDataResetToDefaultFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataResetToDefaultFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataResetToDefaultFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataReturnControlToEcuFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReturnControlToEcuFnc"].getStringValue()
				}
				
				def void setDcmDspDataReturnControlToEcuFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataReturnControlToEcuFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataReturnControlToEcuFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataShortTermAdjustmentFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataShortTermAdjustmentFnc"].getStringValue()
				}
				
				def void setDcmDspDataShortTermAdjustmentFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataShortTermAdjustmentFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataShortTermAdjustmentFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DcmDspDataType getDcmDspDataType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataType"].getDcmDspDataTypeValue()
				}
				
				def void setDcmDspDataType(DcmDspDataType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
				
				def DcmDspDataType getDcmDspDataTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
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
				
				def void setDcmDspDataTypeValue(GParameterValue parameterValue, DcmDspDataType value){
					parameterValue.setValue(value)
				}
				
				def DcmDspDataUsePort getDcmDspDataUsePort(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataUsePort"].getDcmDspDataUsePortValue()
				}
				
				def void setDcmDspDataUsePort(DcmDspDataUsePort value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataUsePort"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataUsePort"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DcmDspDataUsePort {
					USE_BLOCK_ID, 
					USE_DATA_ASYNCH_CLIENT_SERVER, 
					USE_DATA_ASYNCH_CLIENT_SERVER_ERROR, 
					USE_DATA_ASYNCH_FNC, 
					USE_DATA_ASYNCH_FNC_ERROR, 
					USE_DATA_SENDER_RECEIVER, 
					USE_DATA_SENDER_RECEIVER_AS_SERVICE, 
					USE_DATA_SYNCH_CLIENT_SERVER, 
					USE_DATA_SYNCH_FNC, 
					USE_ECU_SIGNAL
				}
				
				def DcmDspDataUsePort getDcmDspDataUsePortValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "USE_BLOCK_ID" : DcmDspDataUsePort.USE_BLOCK_ID
						case "USE_DATA_ASYNCH_CLIENT_SERVER" : DcmDspDataUsePort.USE_DATA_ASYNCH_CLIENT_SERVER
						case "USE_DATA_ASYNCH_CLIENT_SERVER_ERROR" : DcmDspDataUsePort.USE_DATA_ASYNCH_CLIENT_SERVER_ERROR
						case "USE_DATA_ASYNCH_FNC" : DcmDspDataUsePort.USE_DATA_ASYNCH_FNC
						case "USE_DATA_ASYNCH_FNC_ERROR" : DcmDspDataUsePort.USE_DATA_ASYNCH_FNC_ERROR
						case "USE_DATA_SENDER_RECEIVER" : DcmDspDataUsePort.USE_DATA_SENDER_RECEIVER
						case "USE_DATA_SENDER_RECEIVER_AS_SERVICE" : DcmDspDataUsePort.USE_DATA_SENDER_RECEIVER_AS_SERVICE
						case "USE_DATA_SYNCH_CLIENT_SERVER" : DcmDspDataUsePort.USE_DATA_SYNCH_CLIENT_SERVER
						case "USE_DATA_SYNCH_FNC" : DcmDspDataUsePort.USE_DATA_SYNCH_FNC
						case "USE_ECU_SIGNAL" : DcmDspDataUsePort.USE_ECU_SIGNAL
					}
				}
				
				def void setDcmDspDataUsePortValue(GParameterValue parameterValue, DcmDspDataUsePort value){
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDataWriteFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataWriteFnc"].getStringValue()
				}
				
				def void setDcmDspDataWriteFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataWriteFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataWriteFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DocumentationBlock getDcmDspOdxDataDescription(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspOdxDataDescription"].getDocumentationBlockValue()
				}
				
				def void setDcmDspOdxDataDescription(DocumentationBlock value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspOdxDataDescription"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspOdxDataDescription"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor getDcmDspDataBlockIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor), "DcmDspDataBlockIdRef")
				}
				
				def void setDcmDspDataBlockIdRef(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDataBlockIdRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDataInfo getDcmDspDataInfoRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDataInfo), "DcmDspDataInfoRef")
				}
				
				def void setDcmDspDataInfoRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDataInfo object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDataInfoRef"], object.getTarget())
					}
				}
				
				
				def DcmDspDiagnosisScaling getDcmDspDiagnosisScaling(){
					containerValue.getByType(typeof(DcmDspDiagnosisScaling))
				}
				
				def void setDcmDspDiagnosisScaling(DcmDspDiagnosisScaling dcmDspDiagnosisScaling){
					val GContainer subContainer = dcmDspDiagnosisScaling.getTarget()
					containerValue.setContainer(subContainer, "DcmDspDiagnosisScaling")
				}
				
				def DcmDspDidDataSupportInfo getDcmDspDidDataSupportInfo(){
					containerValue.getByType(typeof(DcmDspDidDataSupportInfo))
				}
				
				def void setDcmDspDidDataSupportInfo(DcmDspDidDataSupportInfo dcmDspDidDataSupportInfo){
					val GContainer subContainer = dcmDspDidDataSupportInfo.getTarget()
					containerValue.setContainer(subContainer, "DcmDspDidDataSupportInfo")
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
					def DcmDspAlternativeDataType getDcmDspAlternativeDataType(){
						containerValue.getByType(typeof(DcmDspAlternativeDataType))
					}
					
					def void setDcmDspAlternativeDataType(DcmDspAlternativeDataType dcmDspAlternativeDataType){
						val GContainer subContainer = dcmDspAlternativeDataType.getTarget()
						containerValue.setContainer(subContainer, "DcmDspAlternativeDataType")
					}
					def DcmDspAlternativeDiagnosticDataElement getDcmDspAlternativeDiagnosticDataElement(){
						containerValue.getByType(typeof(DcmDspAlternativeDiagnosticDataElement))
					}
					
					def void setDcmDspAlternativeDiagnosticDataElement(DcmDspAlternativeDiagnosticDataElement dcmDspAlternativeDiagnosticDataElement){
						val GContainer subContainer = dcmDspAlternativeDiagnosticDataElement.getTarget()
						containerValue.setContainer(subContainer, "DcmDspAlternativeDiagnosticDataElement")
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
								override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData.DcmDspDiagnosisScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
									dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
									super.delegateAdd(dcmDspTextTableMapping)
								}
						
								override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData.DcmDspDiagnosisScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
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
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].getBigIntegerValue()
							}
							
							def void setDcmDspDiagnosisRepresentationDataValue(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def BigInteger getDcmDspInternalDataValue(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"].getBigIntegerValue()
							}
							
							def void setDcmDspInternalDataValue(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspInternalDataValue"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							
							
							
						}
						
					}
					
					static class DcmDspAlternativeDiagnosticDataElement implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspAlternativeDiagnosticDataElement)){
								return false
							}
							this.target == (object as DcmDspAlternativeDiagnosticDataElement).target
						}
					
						
						
						
						
					}
					
				}
				
				static class DcmDspDidDataSupportInfo implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspDidDataSupportInfo)){
							return false
						}
						this.target == (object as DcmDspDidDataSupportInfo).target
					}
				
					def BigInteger getDcmDspDidDataSupportInfoBit(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidDataSupportInfoBit"].getBigIntegerValue()
					}
					
					def void setDcmDspDidDataSupportInfoBit(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidDataSupportInfoBit"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidDataSupportInfoBit"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid.DcmDspDidSupportInfo getDcmDspDidDataSupportInfoRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid.DcmDspDidSupportInfo), "DcmDspDidDataSupportInfoRef")
					}
					
					def void setDcmDspDidDataSupportInfoRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid.DcmDspDidSupportInfo object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidDataSupportInfoRef"], object.getTarget())
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataScalingInfoSize"].getBigIntegerValue()
				}
				
				def void setDcmDspDataScalingInfoSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDataScalingInfoSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDataScalingInfoSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidIdentifier"].getBigIntegerValue()
				}
				
				def void setDcmDspDidIdentifier(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidIdentifier"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidIdentifier"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmDspDidSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidSize"].getBigIntegerValue()
				}
				
				def void setDcmDspDidSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDcmDspDidUsed(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidUsed"].getBooleanValue()
				}
				
				def void setDcmDspDidUsed(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidUsed"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidUsed"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo getDcmDspDidInfoRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo), "DcmDspDidInfoRef")
				}
				
				def void setDcmDspDidInfoRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidInfoRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid> getDcmDspDidRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "DcmDspDidRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid)) {
						override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid object) throws CoreException {
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
									return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid(referenceValueValue as GContainer)
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
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid.DcmDspDidSignal dcmDspDidSignal) {
							dcmDspDidSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidSignal"))
							super.delegateAdd(dcmDspDidSignal)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid.DcmDspDidSignal dcmDspDidSignal) {
							dcmDspDidSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidSignal"))
							super.delegateAdd(index, dcmDspDidSignal)
						}
					}
				}
				
				def DcmDspDidSupportInfo getDcmDspDidSupportInfo(){
					containerValue.getByType(typeof(DcmDspDidSupportInfo))
				}
				
				def void setDcmDspDidSupportInfo(DcmDspDidSupportInfo dcmDspDidSupportInfo){
					val GContainer subContainer = dcmDspDidSupportInfo.getTarget()
					containerValue.setContainer(subContainer, "DcmDspDidSupportInfo")
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
				
					def BigInteger getDcmDspDidByteOffset(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidByteOffset"].getBigIntegerValue()
					}
					
					def void setDcmDspDidByteOffset(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidByteOffset"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidByteOffset"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData getDcmDspDidDataRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData), "DcmDspDidDataRef")
					}
					
					def void setDcmDspDidDataRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspData object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidDataRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DcmDspDidSupportInfo implements IWrapper<GContainer> {
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
				        if (!(object instanceof DcmDspDidSupportInfo)){
							return false
						}
						this.target == (object as DcmDspDidSupportInfo).target
					}
				
					def BigInteger getDcmDspDidSupportInfoLen(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidSupportInfoLen"].getBigIntegerValue()
					}
					
					def void setDcmDspDidSupportInfoLen(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidSupportInfoLen"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidSupportInfoLen"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspDidSupportInfoPos(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidSupportInfoPos"].getBigIntegerValue()
					}
					
					def void setDcmDspDidSupportInfoPos(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidSupportInfoPos"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidSupportInfoPos"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDDDIDMaxElements"].getBigIntegerValue()
				}
				
				def void setDcmDspDDDIDMaxElements(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDDDIDMaxElements"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDDDIDMaxElements"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDcmDspDidDynamicallyDefined(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidDynamicallyDefined"].getBooleanValue()
				}
				
				def void setDcmDspDidDynamicallyDefined(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidDynamicallyDefined"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidDynamicallyDefined"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
				
					def DcmDspDidControlMask getDcmDspDidControlMask(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidControlMask"].getDcmDspDidControlMaskValue()
					}
					
					def void setDcmDspDidControlMask(DcmDspDidControlMask value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidControlMask"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidControlMask"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum DcmDspDidControlMask {
						DCM_CONTROLMASK_EXTERNAL, 
						DCM_CONTROLMASK_INTERNAL, 
						DCM_CONTROLMASK_NO
					}
					
					def DcmDspDidControlMask getDcmDspDidControlMaskValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "DCM_CONTROLMASK_EXTERNAL" : DcmDspDidControlMask.DCM_CONTROLMASK_EXTERNAL
							case "DCM_CONTROLMASK_INTERNAL" : DcmDspDidControlMask.DCM_CONTROLMASK_INTERNAL
							case "DCM_CONTROLMASK_NO" : DcmDspDidControlMask.DCM_CONTROLMASK_NO
						}
					}
					
					def void setDcmDspDidControlMaskValue(GParameterValue parameterValue, DcmDspDidControlMask value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspDidControlMaskSize(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidControlMaskSize"].getBigIntegerValue()
					}
					
					def void setDcmDspDidControlMaskSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidControlMaskSize"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidControlMaskSize"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getDcmDspDidFreezeCurrentState(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidFreezeCurrentState"].getBooleanValue()
					}
					
					def void setDcmDspDidFreezeCurrentState(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidFreezeCurrentState"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidFreezeCurrentState"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getDcmDspDidResetToDefault(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidResetToDefault"].getBooleanValue()
					}
					
					def void setDcmDspDidResetToDefault(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidResetToDefault"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidResetToDefault"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getDcmDspDidShortTermAdjustment(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidShortTermAdjustment"].getBooleanValue()
					}
					
					def void setDcmDspDidShortTermAdjustment(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidShortTermAdjustment"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidShortTermAdjustment"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspDidControlModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspDidControlModeRuleRef")
					}
					
					def void setDcmDspDidControlModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidControlModeRuleRef"], object.getTarget())
						}
					}
					
					def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspDidControlSecurityLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidControlSecurityLevelRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidControlSecurityLevelRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
							override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspDidControlSessionRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidControlSessionRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidControlSessionRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
							override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					
					def List<DcmDspDidControlEnableMask> getDcmDspDidControlEnableMasks(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "DcmDspDidControlEnableMask")
							}
						}
						return new BasicWrappingEList<DcmDspDidControlEnableMask, GContainer>(filteredContainers, typeof(DcmDspDidControlEnableMask), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo.DcmDspDidControl.DcmDspDidControlEnableMask dcmDspDidControlEnableMask) {
								dcmDspDidControlEnableMask.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidControlEnableMask"))
								super.delegateAdd(dcmDspDidControlEnableMask)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo.DcmDspDidControl.DcmDspDidControlEnableMask dcmDspDidControlEnableMask) {
								dcmDspDidControlEnableMask.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspDidControlEnableMask"))
								super.delegateAdd(index, dcmDspDidControlEnableMask)
							}
						}
					}
					
					
					static class DcmDspDidControlEnableMask implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspDidControlEnableMask)){
								return false
							}
							this.target == (object as DcmDspDidControlEnableMask).target
						}
					
						def BigInteger getDcmDspDidControlMaskBitPosition(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidControlMaskBitPosition"].getBigIntegerValue()
						}
						
						def void setDcmDspDidControlMaskBitPosition(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidControlMaskBitPosition"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidControlMaskBitPosition"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
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
				
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspDidReadModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspDidReadModeRuleRef")
					}
					
					def void setDcmDspDidReadModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidReadModeRuleRef"], object.getTarget())
						}
					}
					
					def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspDidReadSecurityLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidReadSecurityLevelRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidReadSecurityLevelRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
							override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspDidReadSessionRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidReadSessionRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidReadSessionRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
							override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
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
				
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspDidWriteModeRuleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspDidWriteModeRuleRef")
					}
					
					def void setDcmDspDidWriteModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidWriteModeRuleRef"], object.getTarget())
						}
					}
					
					def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspDidWriteSecurityLevelRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidWriteSecurityLevelRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidWriteSecurityLevelRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
							override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspDidWriteSessionRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidWriteSessionRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "DcmDspDidWriteSessionRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
							override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
										return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeHasGaps"].getBooleanValue()
				}
				
				def void setDcmDspDidRangeHasGaps(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeHasGaps"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeHasGaps"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getDcmDspDidRangeIdentifierLowerLimit(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIdentifierLowerLimit"].getBigIntegerValue()
				}
				
				def void setDcmDspDidRangeIdentifierLowerLimit(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIdentifierLowerLimit"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeIdentifierLowerLimit"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmDspDidRangeIdentifierUpperLimit(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIdentifierUpperLimit"].getBigIntegerValue()
				}
				
				def void setDcmDspDidRangeIdentifierUpperLimit(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIdentifierUpperLimit"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeIdentifierUpperLimit"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDidRangeIsDidAvailableFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIsDidAvailableFnc"].getStringValue()
				}
				
				def void setDcmDspDidRangeIsDidAvailableFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeIsDidAvailableFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeIsDidAvailableFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmDspDidRangeMaxDataLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeMaxDataLength"].getBigIntegerValue()
				}
				
				def void setDcmDspDidRangeMaxDataLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeMaxDataLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeMaxDataLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDidRangeReadDataLengthFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeReadDataLengthFnc"].getStringValue()
				}
				
				def void setDcmDspDidRangeReadDataLengthFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeReadDataLengthFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeReadDataLengthFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDcmDspDidRangeReadDidFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeReadDidFnc"].getStringValue()
				}
				
				def void setDcmDspDidRangeReadDidFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeReadDidFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeReadDidFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDcmDspDidRangeUsePort(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeUsePort"].getBooleanValue()
				}
				
				def void setDcmDspDidRangeUsePort(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeUsePort"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeUsePort"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def String getDcmDspDidRangeWriteDidFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeWriteDidFnc"].getStringValue()
				}
				
				def void setDcmDspDidRangeWriteDidFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDidRangeWriteDidFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDidRangeWriteDidFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo getDcmDspDidRangeInfoRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo), "DcmDspDidRangeInfoRef")
				}
				
				def void setDcmDspDidRangeInfoRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDidInfo object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspDidRangeInfoRef"], object.getTarget())
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
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo dcmDspMemoryIdInfo) {
							dcmDspMemoryIdInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspMemoryIdInfo"))
							super.delegateAdd(dcmDspMemoryIdInfo)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo dcmDspMemoryIdInfo) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMemoryIdValue"].getBigIntegerValue()
					}
					
					def void setDcmDspMemoryIdValue(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMemoryIdValue"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspMemoryIdValue"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					def List<DcmDspReadMemoryRangeByLabelInfo> getDcmDspReadMemoryRangeByLabelInfos(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "DcmDspReadMemoryRangeByLabelInfo")
							}
						}
						return new BasicWrappingEList<DcmDspReadMemoryRangeByLabelInfo, GContainer>(filteredContainers, typeof(DcmDspReadMemoryRangeByLabelInfo), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo.DcmDspReadMemoryRangeByLabelInfo dcmDspReadMemoryRangeByLabelInfo) {
								dcmDspReadMemoryRangeByLabelInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspReadMemoryRangeByLabelInfo"))
								super.delegateAdd(dcmDspReadMemoryRangeByLabelInfo)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo.DcmDspReadMemoryRangeByLabelInfo dcmDspReadMemoryRangeByLabelInfo) {
								dcmDspReadMemoryRangeByLabelInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspReadMemoryRangeByLabelInfo"))
								super.delegateAdd(index, dcmDspReadMemoryRangeByLabelInfo)
							}
						}
					}
					
					def List<DcmDspReadMemoryRangeInfo> getDcmDspReadMemoryRangeInfos(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "DcmDspReadMemoryRangeInfo")
							}
						}
						return new BasicWrappingEList<DcmDspReadMemoryRangeInfo, GContainer>(filteredContainers, typeof(DcmDspReadMemoryRangeInfo), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo.DcmDspReadMemoryRangeInfo dcmDspReadMemoryRangeInfo) {
								dcmDspReadMemoryRangeInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspReadMemoryRangeInfo"))
								super.delegateAdd(dcmDspReadMemoryRangeInfo)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo.DcmDspReadMemoryRangeInfo dcmDspReadMemoryRangeInfo) {
								dcmDspReadMemoryRangeInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspReadMemoryRangeInfo"))
								super.delegateAdd(index, dcmDspReadMemoryRangeInfo)
							}
						}
					}
					
					def List<DcmDspWriteMemoryRangeByLabelInfo> getDcmDspWriteMemoryRangeByLabelInfos(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "DcmDspWriteMemoryRangeByLabelInfo")
							}
						}
						return new BasicWrappingEList<DcmDspWriteMemoryRangeByLabelInfo, GContainer>(filteredContainers, typeof(DcmDspWriteMemoryRangeByLabelInfo), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo.DcmDspWriteMemoryRangeByLabelInfo dcmDspWriteMemoryRangeByLabelInfo) {
								dcmDspWriteMemoryRangeByLabelInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspWriteMemoryRangeByLabelInfo"))
								super.delegateAdd(dcmDspWriteMemoryRangeByLabelInfo)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo.DcmDspWriteMemoryRangeByLabelInfo dcmDspWriteMemoryRangeByLabelInfo) {
								dcmDspWriteMemoryRangeByLabelInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspWriteMemoryRangeByLabelInfo"))
								super.delegateAdd(index, dcmDspWriteMemoryRangeByLabelInfo)
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
							override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo.DcmDspWriteMemoryRangeInfo dcmDspWriteMemoryRangeInfo) {
								dcmDspWriteMemoryRangeInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspWriteMemoryRangeInfo"))
								super.delegateAdd(dcmDspWriteMemoryRangeInfo)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspMemory.DcmDspMemoryIdInfo.DcmDspWriteMemoryRangeInfo dcmDspWriteMemoryRangeInfo) {
								dcmDspWriteMemoryRangeInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspWriteMemoryRangeInfo"))
								super.delegateAdd(index, dcmDspWriteMemoryRangeInfo)
							}
						}
					}
					
					
					static class DcmDspReadMemoryRangeByLabelInfo implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspReadMemoryRangeByLabelInfo)){
								return false
							}
							this.target == (object as DcmDspReadMemoryRangeByLabelInfo).target
						}
					
						def String getDcmDspReadMemoryRangeByLabelHigh(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeByLabelHigh"].getStringValue()
						}
						
						def void setDcmDspReadMemoryRangeByLabelHigh(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeByLabelHigh"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspReadMemoryRangeByLabelHigh"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def String getDcmDspReadMemoryRangeByLabelLow(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeByLabelLow"].getStringValue()
						}
						
						def void setDcmDspReadMemoryRangeByLabelLow(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeByLabelLow"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspReadMemoryRangeByLabelLow"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspReadMemoryRangeModeRuleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspReadMemoryRangeModeRuleRef")
						}
						
						def void setDcmDspReadMemoryRangeModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspReadMemoryRangeModeRuleRef"], object.getTarget())
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspReadMemoryRangeSecurityLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspReadMemoryRangeSecurityLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspReadMemoryRangeSecurityLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspReadMemoryRangeSessionLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspReadMemoryRangeSessionLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspReadMemoryRangeSessionLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
										}
									}
								}
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
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeHigh"].getBigIntegerValue()
						}
						
						def void setDcmDspReadMemoryRangeHigh(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeHigh"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspReadMemoryRangeHigh"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getDcmDspReadMemoryRangeLow(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeLow"].getBigIntegerValue()
						}
						
						def void setDcmDspReadMemoryRangeLow(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspReadMemoryRangeLow"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspReadMemoryRangeLow"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspReadMemoryRangeModeRuleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspReadMemoryRangeModeRuleRef")
						}
						
						def void setDcmDspReadMemoryRangeModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspReadMemoryRangeModeRuleRef"], object.getTarget())
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspReadMemoryRangeSecurityLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspReadMemoryRangeSecurityLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspReadMemoryRangeSecurityLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspReadMemoryRangeSessionLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspReadMemoryRangeSessionLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspReadMemoryRangeSessionLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
					static class DcmDspWriteMemoryRangeByLabelInfo implements IWrapper<GContainer> {
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
					        if (!(object instanceof DcmDspWriteMemoryRangeByLabelInfo)){
								return false
							}
							this.target == (object as DcmDspWriteMemoryRangeByLabelInfo).target
						}
					
						def String getDcmDspWriteMemoryRangeByLabelHigh(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeByLabelHigh"].getStringValue()
						}
						
						def void setDcmDspWriteMemoryRangeByLabelHigh(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeByLabelHigh"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspWriteMemoryRangeByLabelHigh"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def String getDcmDspWriteMemoryRangeByLabelLow(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeByLabelLow"].getStringValue()
						}
						
						def void setDcmDspWriteMemoryRangeByLabelLow(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeByLabelLow"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspWriteMemoryRangeByLabelLow"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspWriteMemoryRangeModeRuleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspWriteMemoryRangeModeRuleRef")
						}
						
						def void setDcmDspWriteMemoryRangeModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspWriteMemoryRangeModeRuleRef"], object.getTarget())
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspWriteMemoryRangeSecurityLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspWriteMemoryRangeSecurityLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspWriteMemoryRangeSecurityLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspWriteMemoryRangeSessionLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspWriteMemoryRangeSessionLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspWriteMemoryRangeSessionLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
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
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeHigh"].getBigIntegerValue()
						}
						
						def void setDcmDspWriteMemoryRangeHigh(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeHigh"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspWriteMemoryRangeHigh"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getDcmDspWriteMemoryRangeLow(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeLow"].getBigIntegerValue()
						}
						
						def void setDcmDspWriteMemoryRangeLow(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspWriteMemoryRangeLow"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspWriteMemoryRangeLow"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule getDcmDspWriteMemoryRangeModeRuleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule), "DcmDspWriteMemoryRangeModeRuleRef")
						}
						
						def void setDcmDspWriteMemoryRangeModeRuleRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspWriteMemoryRangeModeRuleRef"], object.getTarget())
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow> getDcmDspWriteMemoryRangeSecurityLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspWriteMemoryRangeSecurityLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspWriteMemoryRangeSecurityLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow> getDcmDspWriteMemoryRangeSessionLevelRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspWriteMemoryRangeSessionLevelRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "DcmDspWriteMemoryRangeSessionLevelRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow)) {
								override protected wrap(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow object) throws CoreException {
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
											return new org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
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
			
				def BigInteger getDcmDspMaxPeriodicDidScheduler(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxPeriodicDidScheduler"].getBigIntegerValue()
				}
				
				def void setDcmDspMaxPeriodicDidScheduler(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspMaxPeriodicDidScheduler"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspMaxPeriodicDidScheduler"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getDcmDspPeriodicTransmissionFastRate(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionFastRate"].getBigDecimalValue()
				}
				
				def void setDcmDspPeriodicTransmissionFastRate(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionFastRate"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPeriodicTransmissionFastRate"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getDcmDspPeriodicTransmissionMediumRate(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionMediumRate"].getBigDecimalValue()
				}
				
				def void setDcmDspPeriodicTransmissionMediumRate(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionMediumRate"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPeriodicTransmissionMediumRate"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getDcmDspPeriodicTransmissionSlowRate(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionSlowRate"].getBigDecimalValue()
				}
				
				def void setDcmDspPeriodicTransmissionSlowRate(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPeriodicTransmissionSlowRate"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPeriodicTransmissionSlowRate"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidIdentifier"].getBigIntegerValue()
				}
				
				def void setDcmDspPidIdentifier(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidIdentifier"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidIdentifier"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DcmDspPidService getDcmDspPidService(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidService"].getDcmDspPidServiceValue()
				}
				
				def void setDcmDspPidService(DcmDspPidService value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidService"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidService"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DcmDspPidService {
					DCM_SERVICE_01, 
					DCM_SERVICE_01_02, 
					DCM_SERVICE_02
				}
				
				def DcmDspPidService getDcmDspPidServiceValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DCM_SERVICE_01" : DcmDspPidService.DCM_SERVICE_01
						case "DCM_SERVICE_01_02" : DcmDspPidService.DCM_SERVICE_01_02
						case "DCM_SERVICE_02" : DcmDspPidService.DCM_SERVICE_02
					}
				}
				
				def void setDcmDspPidServiceValue(GParameterValue parameterValue, DcmDspPidService value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmDspPidSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSize"].getBigIntegerValue()
				}
				
				def void setDcmDspPidSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDcmDspPidUsed(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidUsed"].getBooleanValue()
				}
				
				def void setDcmDspPidUsed(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidUsed"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidUsed"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				def List<DcmDspPidData> getDcmDspPidDatas(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspPidData")
						}
					}
					return new BasicWrappingEList<DcmDspPidData, GContainer>(filteredContainers, typeof(DcmDspPidData), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidData dcmDspPidData) {
							dcmDspPidData.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspPidData"))
							super.delegateAdd(dcmDspPidData)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidData dcmDspPidData) {
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
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidSupportInfo dcmDspPidSupportInfo) {
							dcmDspPidSupportInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspPidSupportInfo"))
							super.delegateAdd(dcmDspPidSupportInfo)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidSupportInfo dcmDspPidSupportInfo) {
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
				
					def BigInteger getDcmDspPidByteOffset(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidByteOffset"].getBigIntegerValue()
					}
					
					def void setDcmDspPidByteOffset(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidByteOffset"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidByteOffset"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspPidDataByteSize(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataByteSize"].getBigIntegerValue()
					}
					
					def void setDcmDspPidDataByteSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataByteSize"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataByteSize"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataSupportInfoBit"].getBigIntegerValue()
						}
						
						def void setDcmDspPidDataSupportInfoBit(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataSupportInfoBit"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataSupportInfoBit"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidSupportInfo getDcmDspPidDataSupportInfoRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidSupportInfo), "DcmDspPidDataSupportInfoRef")
						}
						
						def void setDcmDspPidDataSupportInfoRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidSupportInfo object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspPidDataSupportInfoRef"], object.getTarget())
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
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataEndianness"].getDcmDspPidDataEndiannessValue()
						}
						
						def void setDcmDspPidDataEndianness(DcmDspPidDataEndianness value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataEndianness"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataEndianness"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum DcmDspPidDataEndianness {
							BIG_ENDIAN, 
							LITTLE_ENDIAN, 
							OPAQUE
						}
						
						def DcmDspPidDataEndianness getDcmDspPidDataEndiannessValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BIG_ENDIAN" : DcmDspPidDataEndianness.BIG_ENDIAN
								case "LITTLE_ENDIAN" : DcmDspPidDataEndianness.LITTLE_ENDIAN
								case "OPAQUE" : DcmDspPidDataEndianness.OPAQUE
							}
						}
						
						def void setDcmDspPidDataEndiannessValue(GParameterValue parameterValue, DcmDspPidDataEndianness value){
							parameterValue.setValue(value)
						}
						
						def String getDcmDspPidDataReadFnc(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataReadFnc"].getStringValue()
						}
						
						def void setDcmDspPidDataReadFnc(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataReadFnc"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataReadFnc"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def DcmDspPidDataType getDcmDspPidDataType(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataType"].getDcmDspPidDataTypeValue()
						}
						
						def void setDcmDspPidDataType(DcmDspPidDataType value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataType"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataType"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
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
						
						def DcmDspPidDataType getDcmDspPidDataTypeValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
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
						
						def void setDcmDspPidDataTypeValue(GParameterValue parameterValue, DcmDspPidDataType value){
							parameterValue.setValue(value)
						}
						
						def DcmDspPidDataUsePort getDcmDspPidDataUsePort(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataUsePort"].getDcmDspPidDataUsePortValue()
						}
						
						def void setDcmDspPidDataUsePort(DcmDspPidDataUsePort value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidDataUsePort"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidDataUsePort"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum DcmDspPidDataUsePort {
							USE_DATA_SENDER_RECEIVER, 
							USE_DATA_SENDER_RECEIVER_AS_SERVICE, 
							USE_DATA_SYNCH_CLIENT_SERVER, 
							USE_DATA_SYNCH_FNC
						}
						
						def DcmDspPidDataUsePort getDcmDspPidDataUsePortValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "USE_DATA_SENDER_RECEIVER" : DcmDspPidDataUsePort.USE_DATA_SENDER_RECEIVER
								case "USE_DATA_SENDER_RECEIVER_AS_SERVICE" : DcmDspPidDataUsePort.USE_DATA_SENDER_RECEIVER_AS_SERVICE
								case "USE_DATA_SYNCH_CLIENT_SERVER" : DcmDspPidDataUsePort.USE_DATA_SYNCH_CLIENT_SERVER
								case "USE_DATA_SYNCH_FNC" : DcmDspPidDataUsePort.USE_DATA_SYNCH_FNC
							}
						}
						
						def void setDcmDspPidDataUsePortValue(GParameterValue parameterValue, DcmDspPidDataUsePort value){
							parameterValue.setValue(value)
						}
						
						
						
						def DcmDspDiagnosisScaling getDcmDspDiagnosisScaling(){
							containerValue.getByType(typeof(DcmDspDiagnosisScaling))
						}
						
						def void setDcmDspDiagnosisScaling(DcmDspDiagnosisScaling dcmDspDiagnosisScaling){
							val GContainer subContainer = dcmDspDiagnosisScaling.getTarget()
							containerValue.setContainer(subContainer, "DcmDspDiagnosisScaling")
						}
						
						def DcmDspPidService01ExternalSRDataElementClass getDcmDspPidService01ExternalSRDataElementClass(){
							containerValue.getByType(typeof(DcmDspPidService01ExternalSRDataElementClass))
						}
						
						def void setDcmDspPidService01ExternalSRDataElementClass(DcmDspPidService01ExternalSRDataElementClass dcmDspPidService01ExternalSRDataElementClass){
							val GContainer subContainer = dcmDspPidService01ExternalSRDataElementClass.getTarget()
							containerValue.setContainer(subContainer, "DcmDspPidService01ExternalSRDataElementClass")
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
							def DcmDspAlternativeDataType getDcmDspAlternativeDataType(){
								containerValue.getByType(typeof(DcmDspAlternativeDataType))
							}
							
							def void setDcmDspAlternativeDataType(DcmDspAlternativeDataType dcmDspAlternativeDataType){
								val GContainer subContainer = dcmDspAlternativeDataType.getTarget()
								containerValue.setContainer(subContainer, "DcmDspAlternativeDataType")
							}
							def DcmDspAlternativeDiagnosticDataElement getDcmDspAlternativeDiagnosticDataElement(){
								containerValue.getByType(typeof(DcmDspAlternativeDiagnosticDataElement))
							}
							
							def void setDcmDspAlternativeDiagnosticDataElement(DcmDspAlternativeDiagnosticDataElement dcmDspAlternativeDiagnosticDataElement){
								val GContainer subContainer = dcmDspAlternativeDiagnosticDataElement.getTarget()
								containerValue.setContainer(subContainer, "DcmDspAlternativeDiagnosticDataElement")
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
										override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidData.DcmDspPidService01.DcmDspDiagnosisScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
											dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
											super.delegateAdd(dcmDspTextTableMapping)
										}
								
										override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspPid.DcmDspPidData.DcmDspPidService01.DcmDspDiagnosisScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
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
										containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].getBigIntegerValue()
									}
									
									def void setDcmDspDiagnosisRepresentationDataValue(BigInteger value){
										var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"]
										if (parameterValue === null) {
											val containerDef = containerValue.gGetDefinition
											if (containerDef instanceof GParamConfContainerDef) {
												parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].createParameterValue()
												containerValue.gGetParameterValues += parameterValue
											}
										}
										parameterValue.setValue(value)
									}
									
									def BigInteger getDcmDspInternalDataValue(){
										containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"].getBigIntegerValue()
									}
									
									def void setDcmDspInternalDataValue(BigInteger value){
										var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"]
										if (parameterValue === null) {
											val containerDef = containerValue.gGetDefinition
											if (containerDef instanceof GParamConfContainerDef) {
												parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspInternalDataValue"].createParameterValue()
												containerValue.gGetParameterValues += parameterValue
											}
										}
										parameterValue.setValue(value)
									}
									
									
									
									
								}
								
							}
							
							static class DcmDspAlternativeDiagnosticDataElement implements IWrapper<GContainer> {
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
							        if (!(object instanceof DcmDspAlternativeDiagnosticDataElement)){
										return false
									}
									this.target == (object as DcmDspAlternativeDiagnosticDataElement).target
								}
							
								
								
								
								
							}
							
						}
						
						static class DcmDspPidService01ExternalSRDataElementClass implements IWrapper<GContainer> {
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
						        if (!(object instanceof DcmDspPidService01ExternalSRDataElementClass)){
									return false
								}
								this.target == (object as DcmDspPidService01ExternalSRDataElementClass).target
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
					
						
						def org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemPidClass.DemPidDataElement getDcmDspPidDataDemRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemPidClass.DemPidDataElement), "DcmDspPidDataDemRef")
						}
						
						def void setDcmDspPidDataDemRef(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemPidClass.DemPidDataElement object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspPidDataDemRef"], object.getTarget())
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSupportInfoLen"].getBigIntegerValue()
					}
					
					def void setDcmDspPidSupportInfoLen(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSupportInfoLen"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidSupportInfoLen"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspPidSupportInfoPos(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSupportInfoPos"].getBigIntegerValue()
					}
					
					def void setDcmDspPidSupportInfoPos(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspPidSupportInfoPos"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspPidSupportInfoPos"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlInBufferSize"].getBigIntegerValue()
				}
				
				def void setDcmDspRequestControlInBufferSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlInBufferSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestControlInBufferSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmDspRequestControlInfoByte(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlInfoByte"].getBigIntegerValue()
				}
				
				def void setDcmDspRequestControlInfoByte(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlInfoByte"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestControlInfoByte"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmDspRequestControlOutBufferSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlOutBufferSize"].getBigIntegerValue()
				}
				
				def void setDcmDspRequestControlOutBufferSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlOutBufferSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestControlOutBufferSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmDspRequestControlTestId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlTestId"].getBigIntegerValue()
				}
				
				def void setDcmDspRequestControlTestId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestControlTestId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestControlTestId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRequestFileTransferFileSizeParameterLength"].getBigIntegerValue()
				}
				
				def void setDcmRequestFileTransferFileSizeParameterLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRequestFileTransferFileSizeParameterLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmRequestFileTransferFileSizeParameterLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmRequestFileTransferLengthFormatIdentifier(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRequestFileTransferLengthFormatIdentifier"].getBigIntegerValue()
				}
				
				def void setDcmRequestFileTransferLengthFormatIdentifier(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRequestFileTransferLengthFormatIdentifier"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmRequestFileTransferLengthFormatIdentifier"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeInterMessageTime"].getBigDecimalValue()
				}
				
				def void setDcmDspRoeInterMessageTime(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeInterMessageTime"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeInterMessageTime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def List<DcmDspRoeEvent> getDcmDspRoeEvents(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspRoeEvent")
						}
					}
					return new BasicWrappingEList<DcmDspRoeEvent, GContainer>(filteredContainers, typeof(DcmDspRoeEvent), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoe.DcmDspRoeEvent dcmDspRoeEvent) {
							dcmDspRoeEvent.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRoeEvent"))
							super.delegateAdd(dcmDspRoeEvent)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoe.DcmDspRoeEvent dcmDspRoeEvent) {
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
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoe.DcmDspRoeEventWindowTime dcmDspRoeEventWindowTime) {
							dcmDspRoeEventWindowTime.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRoeEventWindowTime"))
							super.delegateAdd(dcmDspRoeEventWindowTime)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoe.DcmDspRoeEventWindowTime dcmDspRoeEventWindowTime) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeEventId"].getBigIntegerValue()
					}
					
					def void setDcmDspRoeEventId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeEventId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeEventId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def DcmDspRoeInitialEventStatus getDcmDspRoeInitialEventStatus(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeInitialEventStatus"].getDcmDspRoeInitialEventStatusValue()
					}
					
					def void setDcmDspRoeInitialEventStatus(DcmDspRoeInitialEventStatus value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeInitialEventStatus"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeInitialEventStatus"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum DcmDspRoeInitialEventStatus {
						DCM_ROE_CLEARED, 
						DCM_ROE_STOPPED
					}
					
					def DcmDspRoeInitialEventStatus getDcmDspRoeInitialEventStatusValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "DCM_ROE_CLEARED" : DcmDspRoeInitialEventStatus.DCM_ROE_CLEARED
							case "DCM_ROE_STOPPED" : DcmDspRoeInitialEventStatus.DCM_ROE_STOPPED
						}
					}
					
					def void setDcmDspRoeInitialEventStatusValue(GParameterValue parameterValue, DcmDspRoeInitialEventStatus value){
						parameterValue.setValue(value)
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
						
							
							def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid getDcmDspRoeDidRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid), "DcmDspRoeDidRef")
							}
							
							def void setDcmDspRoeDidRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspRoeDidRef"], object.getTarget())
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeEventWindowTime"].getDcmDspRoeEventWindowTimeEnumValue()
					}
					
					def void setDcmDspRoeEventWindowTime(DcmDspRoeEventWindowTimeEnum value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeEventWindowTime"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeEventWindowTime"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum DcmDspRoeEventWindowTimeEnum {
						DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE, 
						DCM_ROE_EVENT_WINDOW_CURRENT_CYCLE, 
						DCM_ROE_EVENT_WINDOW_INFINITE
					}
					
					def DcmDspRoeEventWindowTimeEnum getDcmDspRoeEventWindowTimeEnumValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE" : DcmDspRoeEventWindowTimeEnum.DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE
							case "DCM_ROE_EVENT_WINDOW_CURRENT_CYCLE" : DcmDspRoeEventWindowTimeEnum.DCM_ROE_EVENT_WINDOW_CURRENT_CYCLE
							case "DCM_ROE_EVENT_WINDOW_INFINITE" : DcmDspRoeEventWindowTimeEnum.DCM_ROE_EVENT_WINDOW_INFINITE
						}
					}
					
					def void setDcmDspRoeEventWindowTimeEnumValue(GParameterValue parameterValue, DcmDspRoeEventWindowTimeEnum value){
						parameterValue.setValue(value)
					}
					
					def Boolean getDcmDspRoeStorageState(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeStorageState"].getBooleanValue()
					}
					
					def void setDcmDspRoeStorageState(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoeStorageState"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoeStorageState"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineIdentifier"].getBigIntegerValue()
				}
				
				def void setDcmDspRoutineIdentifier(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineIdentifier"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineIdentifier"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmDspRoutineInfoByte(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineInfoByte"].getBigIntegerValue()
				}
				
				def void setDcmDspRoutineInfoByte(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineInfoByte"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineInfoByte"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDcmDspRoutineUsed(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineUsed"].getBooleanValue()
				}
				
				def void setDcmDspRoutineUsed(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineUsed"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineUsed"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def Boolean getDcmDspRoutineUsePort(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineUsePort"].getBooleanValue()
				}
				
				def void setDcmDspRoutineUsePort(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineUsePort"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineUsePort"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
				
					def Boolean getDcmDspRequestRoutineResultsConfirmationEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestRoutineResultsConfirmationEnabled"].getBooleanValue()
					}
					
					def void setDcmDspRequestRoutineResultsConfirmationEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestRoutineResultsConfirmationEnabled"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestRoutineResultsConfirmationEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def String getDcmDspRequestRoutineResultsConfirmationFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestRoutineResultsConfirmationFnc"].getStringValue()
					}
					
					def void setDcmDspRequestRoutineResultsConfirmationFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestRoutineResultsConfirmationFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestRoutineResultsConfirmationFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getDcmDspRequestRoutineResultsFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestRoutineResultsFnc"].getStringValue()
					}
					
					def void setDcmDspRequestRoutineResultsFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRequestRoutineResultsFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRequestRoutineResultsFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization getDcmDspRequestRoutineResultsCommonAuthorizationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization), "DcmDspRequestRoutineResultsCommonAuthorizationRef")
					}
					
					def void setDcmDspRequestRoutineResultsCommonAuthorizationRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspRequestRoutineResultsCommonAuthorizationRef"], object.getTarget())
						}
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
								override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspRequestRoutineResults.DcmDspRequestRoutineResultsOut.DcmDspRequestRoutineResultsOutSignal dcmDspRequestRoutineResultsOutSignal) {
									dcmDspRequestRoutineResultsOutSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspRequestRoutineResultsOutSignal"))
									super.delegateAdd(dcmDspRequestRoutineResultsOutSignal)
								}
						
								override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspRequestRoutineResults.DcmDspRequestRoutineResultsOut.DcmDspRequestRoutineResultsOutSignal dcmDspRequestRoutineResultsOutSignal) {
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
						
							def BigInteger getDcmDspRoutineParameterSize(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineParameterSize(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineParameterSize"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"].getDcmDspRoutineSignalEndiannessValue()
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue, DcmDspRoutineSignalEndianness value){
								parameterValue.setValue(value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"].getDcmDspRoutineSignalTypeValue()
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalType {
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
								UINT8_N, 
								VARIABLE_LENGTH
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT16_N" : DcmDspRoutineSignalType.SINT16_N
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT32_N" : DcmDspRoutineSignalType.SINT32_N
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "SINT8_N" : DcmDspRoutineSignalType.SINT8_N
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT16_N" : DcmDspRoutineSignalType.UINT16_N
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT32_N" : DcmDspRoutineSignalType.UINT32_N
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "UINT8_N" : DcmDspRoutineSignalType.UINT8_N
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue parameterValue, DcmDspRoutineSignalType value){
								parameterValue.setValue(value)
							}
							
							
							
							def DcmDspArgumentScaling getDcmDspArgumentScaling(){
								containerValue.getByType(typeof(DcmDspArgumentScaling))
							}
							
							def void setDcmDspArgumentScaling(DcmDspArgumentScaling dcmDspArgumentScaling){
								val GContainer subContainer = dcmDspArgumentScaling.getTarget()
								containerValue.setContainer(subContainer, "DcmDspArgumentScaling")
							}
							
							
							static class DcmDspArgumentScaling implements IWrapper<GContainer> {
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
							        if (!(object instanceof DcmDspArgumentScaling)){
										return false
									}
									this.target == (object as DcmDspArgumentScaling).target
								}
							
								def DcmDspAlternativeArgumentData getDcmDspAlternativeArgumentData(){
									containerValue.getByType(typeof(DcmDspAlternativeArgumentData))
								}
								
								def void setDcmDspAlternativeArgumentData(DcmDspAlternativeArgumentData dcmDspAlternativeArgumentData){
									val GContainer subContainer = dcmDspAlternativeArgumentData.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeArgumentData")
								}
								def DcmDspAlternativeDataType getDcmDspAlternativeDataType(){
									containerValue.getByType(typeof(DcmDspAlternativeDataType))
								}
								
								def void setDcmDspAlternativeDataType(DcmDspAlternativeDataType dcmDspAlternativeDataType){
									val GContainer subContainer = dcmDspAlternativeDataType.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDataType")
								}
								def DcmDspAlternativeDiagnosticDataElement getDcmDspAlternativeDiagnosticDataElement(){
									containerValue.getByType(typeof(DcmDspAlternativeDiagnosticDataElement))
								}
								
								def void setDcmDspAlternativeDiagnosticDataElement(DcmDspAlternativeDiagnosticDataElement dcmDspAlternativeDiagnosticDataElement){
									val GContainer subContainer = dcmDspAlternativeDiagnosticDataElement.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDiagnosticDataElement")
								}
								
								static class DcmDspAlternativeArgumentData implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeArgumentData)){
											return false
										}
										this.target == (object as DcmDspAlternativeArgumentData).target
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
											override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspRequestRoutineResults.DcmDspRequestRoutineResultsOut.DcmDspRequestRoutineResultsOutSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
												dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
												super.delegateAdd(dcmDspTextTableMapping)
											}
									
											override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspRequestRoutineResults.DcmDspRequestRoutineResultsOut.DcmDspRequestRoutineResultsOutSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
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
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspDiagnosisRepresentationDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										def BigInteger getDcmDspInternalDataValue(){
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspInternalDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspInternalDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										
										
										
									}
									
								}
								
								static class DcmDspAlternativeDiagnosticDataElement implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeDiagnosticDataElement)){
											return false
										}
										this.target == (object as DcmDspAlternativeDiagnosticDataElement).target
									}
								
									
									
									
									
								}
								
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
				
					def Boolean getDcmDspStartRoutineConfirmationEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStartRoutineConfirmationEnabled"].getBooleanValue()
					}
					
					def void setDcmDspStartRoutineConfirmationEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStartRoutineConfirmationEnabled"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspStartRoutineConfirmationEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def String getDcmDspStartRoutineConfirmationFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStartRoutineConfirmationFnc"].getStringValue()
					}
					
					def void setDcmDspStartRoutineConfirmationFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStartRoutineConfirmationFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspStartRoutineConfirmationFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getDcmDspStartRoutineFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStartRoutineFnc"].getStringValue()
					}
					
					def void setDcmDspStartRoutineFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStartRoutineFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspStartRoutineFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization getDcmDspStartRoutineCommonAuthorizationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization), "DcmDspStartRoutineCommonAuthorizationRef")
					}
					
					def void setDcmDspStartRoutineCommonAuthorizationRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspStartRoutineCommonAuthorizationRef"], object.getTarget())
						}
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
								override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStartRoutine.DcmDspStartRoutineIn.DcmDspStartRoutineInSignal dcmDspStartRoutineInSignal) {
									dcmDspStartRoutineInSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStartRoutineInSignal"))
									super.delegateAdd(dcmDspStartRoutineInSignal)
								}
						
								override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStartRoutine.DcmDspStartRoutineIn.DcmDspStartRoutineInSignal dcmDspStartRoutineInSignal) {
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
						
							def BigInteger getDcmDspRoutineParameterSize(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineParameterSize(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineParameterSize"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"].getDcmDspRoutineSignalEndiannessValue()
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue, DcmDspRoutineSignalEndianness value){
								parameterValue.setValue(value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"].getDcmDspRoutineSignalTypeValue()
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalType {
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
								UINT8_N, 
								VARIABLE_LENGTH
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT16_N" : DcmDspRoutineSignalType.SINT16_N
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT32_N" : DcmDspRoutineSignalType.SINT32_N
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "SINT8_N" : DcmDspRoutineSignalType.SINT8_N
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT16_N" : DcmDspRoutineSignalType.UINT16_N
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT32_N" : DcmDspRoutineSignalType.UINT32_N
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "UINT8_N" : DcmDspRoutineSignalType.UINT8_N
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue parameterValue, DcmDspRoutineSignalType value){
								parameterValue.setValue(value)
							}
							
							
							
							def DcmDspArgumentScaling getDcmDspArgumentScaling(){
								containerValue.getByType(typeof(DcmDspArgumentScaling))
							}
							
							def void setDcmDspArgumentScaling(DcmDspArgumentScaling dcmDspArgumentScaling){
								val GContainer subContainer = dcmDspArgumentScaling.getTarget()
								containerValue.setContainer(subContainer, "DcmDspArgumentScaling")
							}
							
							
							static class DcmDspArgumentScaling implements IWrapper<GContainer> {
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
							        if (!(object instanceof DcmDspArgumentScaling)){
										return false
									}
									this.target == (object as DcmDspArgumentScaling).target
								}
							
								def DcmDspAlternativeArgumentData getDcmDspAlternativeArgumentData(){
									containerValue.getByType(typeof(DcmDspAlternativeArgumentData))
								}
								
								def void setDcmDspAlternativeArgumentData(DcmDspAlternativeArgumentData dcmDspAlternativeArgumentData){
									val GContainer subContainer = dcmDspAlternativeArgumentData.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeArgumentData")
								}
								def DcmDspAlternativeDataType getDcmDspAlternativeDataType(){
									containerValue.getByType(typeof(DcmDspAlternativeDataType))
								}
								
								def void setDcmDspAlternativeDataType(DcmDspAlternativeDataType dcmDspAlternativeDataType){
									val GContainer subContainer = dcmDspAlternativeDataType.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDataType")
								}
								def DcmDspAlternativeDiagnosticDataElement getDcmDspAlternativeDiagnosticDataElement(){
									containerValue.getByType(typeof(DcmDspAlternativeDiagnosticDataElement))
								}
								
								def void setDcmDspAlternativeDiagnosticDataElement(DcmDspAlternativeDiagnosticDataElement dcmDspAlternativeDiagnosticDataElement){
									val GContainer subContainer = dcmDspAlternativeDiagnosticDataElement.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDiagnosticDataElement")
								}
								
								static class DcmDspAlternativeArgumentData implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeArgumentData)){
											return false
										}
										this.target == (object as DcmDspAlternativeArgumentData).target
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
											override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStartRoutine.DcmDspStartRoutineIn.DcmDspStartRoutineInSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
												dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
												super.delegateAdd(dcmDspTextTableMapping)
											}
									
											override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStartRoutine.DcmDspStartRoutineIn.DcmDspStartRoutineInSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
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
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspDiagnosisRepresentationDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										def BigInteger getDcmDspInternalDataValue(){
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspInternalDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspInternalDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										
										
										
									}
									
								}
								
								static class DcmDspAlternativeDiagnosticDataElement implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeDiagnosticDataElement)){
											return false
										}
										this.target == (object as DcmDspAlternativeDiagnosticDataElement).target
									}
								
									
									
									
									
								}
								
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
								override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStartRoutine.DcmDspStartRoutineOut.DcmDspStartRoutineOutSignal dcmDspStartRoutineOutSignal) {
									dcmDspStartRoutineOutSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStartRoutineOutSignal"))
									super.delegateAdd(dcmDspStartRoutineOutSignal)
								}
						
								override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStartRoutine.DcmDspStartRoutineOut.DcmDspStartRoutineOutSignal dcmDspStartRoutineOutSignal) {
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
						
							def BigInteger getDcmDspRoutineParameterSize(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineParameterSize(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineParameterSize"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"].getDcmDspRoutineSignalEndiannessValue()
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue, DcmDspRoutineSignalEndianness value){
								parameterValue.setValue(value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"].getDcmDspRoutineSignalTypeValue()
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalType {
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
								UINT8_N, 
								VARIABLE_LENGTH
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT16_N" : DcmDspRoutineSignalType.SINT16_N
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT32_N" : DcmDspRoutineSignalType.SINT32_N
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "SINT8_N" : DcmDspRoutineSignalType.SINT8_N
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT16_N" : DcmDspRoutineSignalType.UINT16_N
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT32_N" : DcmDspRoutineSignalType.UINT32_N
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "UINT8_N" : DcmDspRoutineSignalType.UINT8_N
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue parameterValue, DcmDspRoutineSignalType value){
								parameterValue.setValue(value)
							}
							
							
							
							def DcmDspArgumentScaling getDcmDspArgumentScaling(){
								containerValue.getByType(typeof(DcmDspArgumentScaling))
							}
							
							def void setDcmDspArgumentScaling(DcmDspArgumentScaling dcmDspArgumentScaling){
								val GContainer subContainer = dcmDspArgumentScaling.getTarget()
								containerValue.setContainer(subContainer, "DcmDspArgumentScaling")
							}
							
							
							static class DcmDspArgumentScaling implements IWrapper<GContainer> {
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
							        if (!(object instanceof DcmDspArgumentScaling)){
										return false
									}
									this.target == (object as DcmDspArgumentScaling).target
								}
							
								def DcmDspAlternativeArgumentData getDcmDspAlternativeArgumentData(){
									containerValue.getByType(typeof(DcmDspAlternativeArgumentData))
								}
								
								def void setDcmDspAlternativeArgumentData(DcmDspAlternativeArgumentData dcmDspAlternativeArgumentData){
									val GContainer subContainer = dcmDspAlternativeArgumentData.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeArgumentData")
								}
								def DcmDspAlternativeDataType getDcmDspAlternativeDataType(){
									containerValue.getByType(typeof(DcmDspAlternativeDataType))
								}
								
								def void setDcmDspAlternativeDataType(DcmDspAlternativeDataType dcmDspAlternativeDataType){
									val GContainer subContainer = dcmDspAlternativeDataType.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDataType")
								}
								def DcmDspAlternativeDiagnosticDataElement getDcmDspAlternativeDiagnosticDataElement(){
									containerValue.getByType(typeof(DcmDspAlternativeDiagnosticDataElement))
								}
								
								def void setDcmDspAlternativeDiagnosticDataElement(DcmDspAlternativeDiagnosticDataElement dcmDspAlternativeDiagnosticDataElement){
									val GContainer subContainer = dcmDspAlternativeDiagnosticDataElement.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDiagnosticDataElement")
								}
								
								static class DcmDspAlternativeArgumentData implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeArgumentData)){
											return false
										}
										this.target == (object as DcmDspAlternativeArgumentData).target
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
											override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStartRoutine.DcmDspStartRoutineOut.DcmDspStartRoutineOutSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
												dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
												super.delegateAdd(dcmDspTextTableMapping)
											}
									
											override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStartRoutine.DcmDspStartRoutineOut.DcmDspStartRoutineOutSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
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
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspDiagnosisRepresentationDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										def BigInteger getDcmDspInternalDataValue(){
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspInternalDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspInternalDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										
										
										
									}
									
								}
								
								static class DcmDspAlternativeDiagnosticDataElement implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeDiagnosticDataElement)){
											return false
										}
										this.target == (object as DcmDspAlternativeDiagnosticDataElement).target
									}
								
									
									
									
									
								}
								
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
				
					def Boolean getDcmDspStopRoutineConfirmationEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStopRoutineConfirmationEnabled"].getBooleanValue()
					}
					
					def void setDcmDspStopRoutineConfirmationEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStopRoutineConfirmationEnabled"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspStopRoutineConfirmationEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def String getDcmDspStopRoutineConfirmationFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStopRoutineConfirmationFnc"].getStringValue()
					}
					
					def void setDcmDspStopRoutineConfirmationFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStopRoutineConfirmationFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspStopRoutineConfirmationFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getDcmDspStopRoutineFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStopRoutineFnc"].getStringValue()
					}
					
					def void setDcmDspStopRoutineFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspStopRoutineFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspStopRoutineFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization getDcmDspStopRoutineCommonAuthorizationRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization), "DcmDspStopRoutineCommonAuthorizationRef")
					}
					
					def void setDcmDspStopRoutineCommonAuthorizationRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspCommonAuthorization object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmDspStopRoutineCommonAuthorizationRef"], object.getTarget())
						}
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
								override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStopRoutine.DcmDspStopRoutineIn.DcmDspStopRoutineInSignal dcmDspStopRoutineInSignal) {
									dcmDspStopRoutineInSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStopRoutineInSignal"))
									super.delegateAdd(dcmDspStopRoutineInSignal)
								}
						
								override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStopRoutine.DcmDspStopRoutineIn.DcmDspStopRoutineInSignal dcmDspStopRoutineInSignal) {
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
						
							def BigInteger getDcmDspRoutineParameterSize(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineParameterSize(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineParameterSize"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"].getDcmDspRoutineSignalEndiannessValue()
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue, DcmDspRoutineSignalEndianness value){
								parameterValue.setValue(value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"].getDcmDspRoutineSignalTypeValue()
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalType {
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
								UINT8_N, 
								VARIABLE_LENGTH
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT16_N" : DcmDspRoutineSignalType.SINT16_N
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT32_N" : DcmDspRoutineSignalType.SINT32_N
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "SINT8_N" : DcmDspRoutineSignalType.SINT8_N
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT16_N" : DcmDspRoutineSignalType.UINT16_N
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT32_N" : DcmDspRoutineSignalType.UINT32_N
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "UINT8_N" : DcmDspRoutineSignalType.UINT8_N
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue parameterValue, DcmDspRoutineSignalType value){
								parameterValue.setValue(value)
							}
							
							
							
							def DcmDspArgumentScaling getDcmDspArgumentScaling(){
								containerValue.getByType(typeof(DcmDspArgumentScaling))
							}
							
							def void setDcmDspArgumentScaling(DcmDspArgumentScaling dcmDspArgumentScaling){
								val GContainer subContainer = dcmDspArgumentScaling.getTarget()
								containerValue.setContainer(subContainer, "DcmDspArgumentScaling")
							}
							
							
							static class DcmDspArgumentScaling implements IWrapper<GContainer> {
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
							        if (!(object instanceof DcmDspArgumentScaling)){
										return false
									}
									this.target == (object as DcmDspArgumentScaling).target
								}
							
								def DcmDspAlternativeArgumentData getDcmDspAlternativeArgumentData(){
									containerValue.getByType(typeof(DcmDspAlternativeArgumentData))
								}
								
								def void setDcmDspAlternativeArgumentData(DcmDspAlternativeArgumentData dcmDspAlternativeArgumentData){
									val GContainer subContainer = dcmDspAlternativeArgumentData.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeArgumentData")
								}
								def DcmDspAlternativeDataType getDcmDspAlternativeDataType(){
									containerValue.getByType(typeof(DcmDspAlternativeDataType))
								}
								
								def void setDcmDspAlternativeDataType(DcmDspAlternativeDataType dcmDspAlternativeDataType){
									val GContainer subContainer = dcmDspAlternativeDataType.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDataType")
								}
								def DcmDspAlternativeDiagnosticDataElement getDcmDspAlternativeDiagnosticDataElement(){
									containerValue.getByType(typeof(DcmDspAlternativeDiagnosticDataElement))
								}
								
								def void setDcmDspAlternativeDiagnosticDataElement(DcmDspAlternativeDiagnosticDataElement dcmDspAlternativeDiagnosticDataElement){
									val GContainer subContainer = dcmDspAlternativeDiagnosticDataElement.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDiagnosticDataElement")
								}
								
								static class DcmDspAlternativeArgumentData implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeArgumentData)){
											return false
										}
										this.target == (object as DcmDspAlternativeArgumentData).target
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
											override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStopRoutine.DcmDspStopRoutineIn.DcmDspStopRoutineInSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
												dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
												super.delegateAdd(dcmDspTextTableMapping)
											}
									
											override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStopRoutine.DcmDspStopRoutineIn.DcmDspStopRoutineInSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
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
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspDiagnosisRepresentationDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										def BigInteger getDcmDspInternalDataValue(){
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspInternalDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspInternalDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										
										
										
									}
									
								}
								
								static class DcmDspAlternativeDiagnosticDataElement implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeDiagnosticDataElement)){
											return false
										}
										this.target == (object as DcmDspAlternativeDiagnosticDataElement).target
									}
								
									
									
									
									
								}
								
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
								override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStopRoutine.DcmDspStopRoutineOut.DcmDspStopRoutineOutSignal dcmDspStopRoutineOutSignal) {
									dcmDspStopRoutineOutSignal.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspStopRoutineOutSignal"))
									super.delegateAdd(dcmDspStopRoutineOutSignal)
								}
						
								override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStopRoutine.DcmDspStopRoutineOut.DcmDspStopRoutineOutSignal dcmDspStopRoutineOutSignal) {
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
						
							def BigInteger getDcmDspRoutineParameterSize(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineParameterSize(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineParameterSize"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineParameterSize"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndianness(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"].getDcmDspRoutineSignalEndiannessValue()
							}
							
							def void setDcmDspRoutineSignalEndianness(DcmDspRoutineSignalEndianness value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalEndianness"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalEndianness"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalEndianness {
								BIG_ENDIAN, 
								LITTLE_ENDIAN, 
								OPAQUE
							}
							
							def DcmDspRoutineSignalEndianness getDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BIG_ENDIAN" : DcmDspRoutineSignalEndianness.BIG_ENDIAN
									case "LITTLE_ENDIAN" : DcmDspRoutineSignalEndianness.LITTLE_ENDIAN
									case "OPAQUE" : DcmDspRoutineSignalEndianness.OPAQUE
								}
							}
							
							def void setDcmDspRoutineSignalEndiannessValue(GParameterValue parameterValue, DcmDspRoutineSignalEndianness value){
								parameterValue.setValue(value)
							}
							
							def BigInteger getDcmDspRoutineSignalPos(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"].getBigIntegerValue()
							}
							
							def void setDcmDspRoutineSignalPos(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalPos"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalPos"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalType(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"].getDcmDspRoutineSignalTypeValue()
							}
							
							def void setDcmDspRoutineSignalType(DcmDspRoutineSignalType value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspRoutineSignalType"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspRoutineSignalType"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum DcmDspRoutineSignalType {
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
								UINT8_N, 
								VARIABLE_LENGTH
							}
							
							def DcmDspRoutineSignalType getDcmDspRoutineSignalTypeValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "BOOLEAN" : DcmDspRoutineSignalType.BOOLEAN
									case "SINT16" : DcmDspRoutineSignalType.SINT16
									case "SINT16_N" : DcmDspRoutineSignalType.SINT16_N
									case "SINT32" : DcmDspRoutineSignalType.SINT32
									case "SINT32_N" : DcmDspRoutineSignalType.SINT32_N
									case "SINT8" : DcmDspRoutineSignalType.SINT8
									case "SINT8_N" : DcmDspRoutineSignalType.SINT8_N
									case "UINT16" : DcmDspRoutineSignalType.UINT16
									case "UINT16_N" : DcmDspRoutineSignalType.UINT16_N
									case "UINT32" : DcmDspRoutineSignalType.UINT32
									case "UINT32_N" : DcmDspRoutineSignalType.UINT32_N
									case "UINT8" : DcmDspRoutineSignalType.UINT8
									case "UINT8_N" : DcmDspRoutineSignalType.UINT8_N
									case "VARIABLE_LENGTH" : DcmDspRoutineSignalType.VARIABLE_LENGTH
								}
							}
							
							def void setDcmDspRoutineSignalTypeValue(GParameterValue parameterValue, DcmDspRoutineSignalType value){
								parameterValue.setValue(value)
							}
							
							
							
							def DcmDspArgumentScaling getDcmDspArgumentScaling(){
								containerValue.getByType(typeof(DcmDspArgumentScaling))
							}
							
							def void setDcmDspArgumentScaling(DcmDspArgumentScaling dcmDspArgumentScaling){
								val GContainer subContainer = dcmDspArgumentScaling.getTarget()
								containerValue.setContainer(subContainer, "DcmDspArgumentScaling")
							}
							
							
							static class DcmDspArgumentScaling implements IWrapper<GContainer> {
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
							        if (!(object instanceof DcmDspArgumentScaling)){
										return false
									}
									this.target == (object as DcmDspArgumentScaling).target
								}
							
								def DcmDspAlternativeArgumentData getDcmDspAlternativeArgumentData(){
									containerValue.getByType(typeof(DcmDspAlternativeArgumentData))
								}
								
								def void setDcmDspAlternativeArgumentData(DcmDspAlternativeArgumentData dcmDspAlternativeArgumentData){
									val GContainer subContainer = dcmDspAlternativeArgumentData.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeArgumentData")
								}
								def DcmDspAlternativeDataType getDcmDspAlternativeDataType(){
									containerValue.getByType(typeof(DcmDspAlternativeDataType))
								}
								
								def void setDcmDspAlternativeDataType(DcmDspAlternativeDataType dcmDspAlternativeDataType){
									val GContainer subContainer = dcmDspAlternativeDataType.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDataType")
								}
								def DcmDspAlternativeDiagnosticDataElement getDcmDspAlternativeDiagnosticDataElement(){
									containerValue.getByType(typeof(DcmDspAlternativeDiagnosticDataElement))
								}
								
								def void setDcmDspAlternativeDiagnosticDataElement(DcmDspAlternativeDiagnosticDataElement dcmDspAlternativeDiagnosticDataElement){
									val GContainer subContainer = dcmDspAlternativeDiagnosticDataElement.getTarget()
									containerValue.setContainer(subContainer, "DcmDspAlternativeDiagnosticDataElement")
								}
								
								static class DcmDspAlternativeArgumentData implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeArgumentData)){
											return false
										}
										this.target == (object as DcmDspAlternativeArgumentData).target
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
											override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStopRoutine.DcmDspStopRoutineOut.DcmDspStopRoutineOutSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
												dcmDspTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspTextTableMapping"))
												super.delegateAdd(dcmDspTextTableMapping)
											}
									
											override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspRoutine.DcmDspStopRoutine.DcmDspStopRoutineOut.DcmDspStopRoutineOutSignal.DcmDspArgumentScaling.DcmDspAlternativeDataType.DcmDspTextTableMapping dcmDspTextTableMapping) {
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
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspDiagnosisRepresentationDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspDiagnosisRepresentationDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspDiagnosisRepresentationDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										def BigInteger getDcmDspInternalDataValue(){
											containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"].getBigIntegerValue()
										}
										
										def void setDcmDspInternalDataValue(BigInteger value){
											var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspInternalDataValue"]
											if (parameterValue === null) {
												val containerDef = containerValue.gGetDefinition
												if (containerDef instanceof GParamConfContainerDef) {
													parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspInternalDataValue"].createParameterValue()
													containerValue.gGetParameterValues += parameterValue
												}
											}
											parameterValue.setValue(value)
										}
										
										
										
										
									}
									
								}
								
								static class DcmDspAlternativeDiagnosticDataElement implements IWrapper<GContainer> {
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
								        if (!(object instanceof DcmDspAlternativeDiagnosticDataElement)){
											return false
										}
										this.target == (object as DcmDspAlternativeDiagnosticDataElement).target
									}
								
									
									
									
									
								}
								
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
			
				def BigDecimal getDcmDspSecurityMaxAttemptCounterReadoutTime(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityMaxAttemptCounterReadoutTime"].getBigDecimalValue()
				}
				
				def void setDcmDspSecurityMaxAttemptCounterReadoutTime(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityMaxAttemptCounterReadoutTime"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityMaxAttemptCounterReadoutTime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def List<DcmDspSecurityRow> getDcmDspSecurityRows(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspSecurityRow")
						}
					}
					return new BasicWrappingEList<DcmDspSecurityRow, GContainer>(filteredContainers, typeof(DcmDspSecurityRow), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow dcmDspSecurityRow) {
							dcmDspSecurityRow.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspSecurityRow"))
							super.delegateAdd(dcmDspSecurityRow)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSecurity.DcmDspSecurityRow dcmDspSecurityRow) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityADRSize"].getBigIntegerValue()
					}
					
					def void setDcmDspSecurityADRSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityADRSize"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityADRSize"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getDcmDspSecurityAttemptCounterEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityAttemptCounterEnabled"].getBooleanValue()
					}
					
					def void setDcmDspSecurityAttemptCounterEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityAttemptCounterEnabled"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityAttemptCounterEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def String getDcmDspSecurityCompareKeyFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityCompareKeyFnc"].getStringValue()
					}
					
					def void setDcmDspSecurityCompareKeyFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityCompareKeyFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityCompareKeyFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getDcmDspSecurityDelayTime(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityDelayTime"].getBigDecimalValue()
					}
					
					def void setDcmDspSecurityDelayTime(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityDelayTime"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityDelayTime"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getDcmDspSecurityDelayTimeOnBoot(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityDelayTimeOnBoot"].getBigDecimalValue()
					}
					
					def void setDcmDspSecurityDelayTimeOnBoot(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityDelayTimeOnBoot"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityDelayTimeOnBoot"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getDcmDspSecurityGetAttemptCounterFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityGetAttemptCounterFnc"].getStringValue()
					}
					
					def void setDcmDspSecurityGetAttemptCounterFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityGetAttemptCounterFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityGetAttemptCounterFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getDcmDspSecurityGetSeedFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityGetSeedFnc"].getStringValue()
					}
					
					def void setDcmDspSecurityGetSeedFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityGetSeedFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityGetSeedFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspSecurityKeySize(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityKeySize"].getBigIntegerValue()
					}
					
					def void setDcmDspSecurityKeySize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityKeySize"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityKeySize"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspSecurityLevel(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityLevel"].getBigIntegerValue()
					}
					
					def void setDcmDspSecurityLevel(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityLevel"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityLevel"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspSecurityNumAttDelay(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityNumAttDelay"].getBigIntegerValue()
					}
					
					def void setDcmDspSecurityNumAttDelay(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityNumAttDelay"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityNumAttDelay"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspSecuritySeedSize(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecuritySeedSize"].getBigIntegerValue()
					}
					
					def void setDcmDspSecuritySeedSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecuritySeedSize"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecuritySeedSize"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getDcmDspSecuritySetAttemptCounterFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecuritySetAttemptCounterFnc"].getStringValue()
					}
					
					def void setDcmDspSecuritySetAttemptCounterFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecuritySetAttemptCounterFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecuritySetAttemptCounterFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def DcmDspSecurityUsePort getDcmDspSecurityUsePort(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityUsePort"].getDcmDspSecurityUsePortValue()
					}
					
					def void setDcmDspSecurityUsePort(DcmDspSecurityUsePort value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSecurityUsePort"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSecurityUsePort"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum DcmDspSecurityUsePort {
						USE_ASYNCH_CLIENT_SERVER, 
						USE_ASYNCH_FNC
					}
					
					def DcmDspSecurityUsePort getDcmDspSecurityUsePortValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "USE_ASYNCH_CLIENT_SERVER" : DcmDspSecurityUsePort.USE_ASYNCH_CLIENT_SERVER
							case "USE_ASYNCH_FNC" : DcmDspSecurityUsePort.USE_ASYNCH_FNC
						}
					}
					
					def void setDcmDspSecurityUsePortValue(GParameterValue parameterValue, DcmDspSecurityUsePort value){
						parameterValue.setValue(value)
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
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow dcmDspSessionRow) {
							dcmDspSessionRow.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspSessionRow"))
							super.delegateAdd(dcmDspSessionRow)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspSession.DcmDspSessionRow dcmDspSessionRow) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionForBoot"].getDcmDspSessionForBootValue()
					}
					
					def void setDcmDspSessionForBoot(DcmDspSessionForBoot value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionForBoot"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSessionForBoot"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum DcmDspSessionForBoot {
						DCM_NO_BOOT, 
						DCM_OEM_BOOT, 
						DCM_OEM_BOOT_RESPAPP, 
						DCM_SYS_BOOT, 
						DCM_SYS_BOOT_RESPAPP
					}
					
					def DcmDspSessionForBoot getDcmDspSessionForBootValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "DCM_NO_BOOT" : DcmDspSessionForBoot.DCM_NO_BOOT
							case "DCM_OEM_BOOT" : DcmDspSessionForBoot.DCM_OEM_BOOT
							case "DCM_OEM_BOOT_RESPAPP" : DcmDspSessionForBoot.DCM_OEM_BOOT_RESPAPP
							case "DCM_SYS_BOOT" : DcmDspSessionForBoot.DCM_SYS_BOOT
							case "DCM_SYS_BOOT_RESPAPP" : DcmDspSessionForBoot.DCM_SYS_BOOT_RESPAPP
						}
					}
					
					def void setDcmDspSessionForBootValue(GParameterValue parameterValue, DcmDspSessionForBoot value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspSessionLevel(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionLevel"].getBigIntegerValue()
					}
					
					def void setDcmDspSessionLevel(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionLevel"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSessionLevel"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getDcmDspSessionP2ServerMax(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionP2ServerMax"].getBigDecimalValue()
					}
					
					def void setDcmDspSessionP2ServerMax(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionP2ServerMax"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSessionP2ServerMax"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getDcmDspSessionP2StarServerMax(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionP2StarServerMax"].getBigDecimalValue()
					}
					
					def void setDcmDspSessionP2StarServerMax(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspSessionP2StarServerMax"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspSessionP2StarServerMax"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoInfoType"].getBigIntegerValue()
				}
				
				def void setDcmDspVehInfoInfoType(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoInfoType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoInfoType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDcmDspVehInfoNODIProvResp(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoNODIProvResp"].getBooleanValue()
				}
				
				def void setDcmDspVehInfoNODIProvResp(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoNODIProvResp"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoNODIProvResp"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				def List<DcmDspVehInfoData> getDcmDspVehInfoDatas(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "DcmDspVehInfoData")
						}
					}
					return new BasicWrappingEList<DcmDspVehInfoData, GContainer>(filteredContainers, typeof(DcmDspVehInfoData), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspVehInfo.DcmDspVehInfoData dcmDspVehInfoData) {
							dcmDspVehInfoData.target?.gSetDefinition(containerValue.getContainerDefinition("DcmDspVehInfoData"))
							super.delegateAdd(dcmDspVehInfoData)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspVehInfo.DcmDspVehInfoData dcmDspVehInfoData) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataOrder"].getBigIntegerValue()
					}
					
					def void setDcmDspVehInfoDataOrder(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataOrder"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoDataOrder"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getDcmDspVehInfoDataReadFnc(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataReadFnc"].getStringValue()
					}
					
					def void setDcmDspVehInfoDataReadFnc(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataReadFnc"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoDataReadFnc"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getDcmDspVehInfoDataSize(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataSize"].getBigIntegerValue()
					}
					
					def void setDcmDspVehInfoDataSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataSize"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoDataSize"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getDcmDspVehInfoDataUsePort(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataUsePort"].getBooleanValue()
					}
					
					def void setDcmDspVehInfoDataUsePort(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDspVehInfoDataUsePort"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDspVehInfoDataUsePort"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmPagedBufferEnabled"].getBooleanValue()
			}
			
			def void setDcmPagedBufferEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmPagedBufferEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmPagedBufferEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeCondition dcmModeCondition) {
						dcmModeCondition.target?.gSetDefinition(containerValue.getContainerDefinition("DcmModeCondition"))
						super.delegateAdd(dcmModeCondition)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeCondition dcmModeCondition) {
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
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule dcmModeRule) {
						dcmModeRule.target?.gSetDefinition(containerValue.getContainerDefinition("DcmModeRule"))
						super.delegateAdd(dcmModeRule)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmProcessingConditions.DcmModeRule dcmModeRule) {
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmConditionType"].getDcmConditionTypeValue()
				}
				
				def void setDcmConditionType(DcmConditionType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmConditionType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmConditionType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DcmConditionType {
					DCM_EQUALS, 
					DCM_EQUALS_NOT, 
					DCM_GREATER_OR_EQUAL, 
					DCM_GREATER_THAN, 
					DCM_LESS_OR_EQUAL, 
					DCM_LESS_THAN
				}
				
				def DcmConditionType getDcmConditionTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DCM_EQUALS" : DcmConditionType.DCM_EQUALS
						case "DCM_EQUALS_NOT" : DcmConditionType.DCM_EQUALS_NOT
						case "DCM_GREATER_OR_EQUAL" : DcmConditionType.DCM_GREATER_OR_EQUAL
						case "DCM_GREATER_THAN" : DcmConditionType.DCM_GREATER_THAN
						case "DCM_LESS_OR_EQUAL" : DcmConditionType.DCM_LESS_OR_EQUAL
						case "DCM_LESS_THAN" : DcmConditionType.DCM_LESS_THAN
					}
				}
				
				def void setDcmConditionTypeValue(GParameterValue parameterValue, DcmConditionType value){
					parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmLogicalOperator"].getDcmLogicalOperatorValue()
				}
				
				def void setDcmLogicalOperator(DcmLogicalOperator value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmLogicalOperator"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmLogicalOperator"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DcmLogicalOperator {
					DCM_AND, 
					DCM_OR
				}
				
				def DcmLogicalOperator getDcmLogicalOperatorValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DCM_AND" : DcmLogicalOperator.DCM_AND
						case "DCM_OR" : DcmLogicalOperator.DCM_OR
					}
				}
				
				def void setDcmLogicalOperatorValue(GParameterValue parameterValue, DcmLogicalOperator value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getDcmModeRuleNrcValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmModeRuleNrcValue"].getBigIntegerValue()
				}
				
				def void setDcmModeRuleNrcValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmModeRuleNrcValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmModeRuleNrcValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDDDIDStorage"].getBooleanValue()
		}
		
		def void setDcmDDDIDStorage(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDDDIDStorage"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDDDIDStorage"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDcmDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDevErrorDetect"].getBooleanValue()
		}
		
		def void setDcmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRespondAllRequest"].getBooleanValue()
		}
		
		def void setDcmRespondAllRequest(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmRespondAllRequest"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmRespondAllRequest"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getDcmTaskTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTaskTime"].getBigDecimalValue()
		}
		
		def void setDcmTaskTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmTaskTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmTaskTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getDcmVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmVersionInfoApi"].getBooleanValue()
		}
		
		def void setDcmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DcmVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DcmVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid getDcmVinRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid), "DcmVinRef")
		}
		
		def void setDcmVinRef(org.artop.ecuc.autosar431.accessors.Dcm.DcmConfigSet.DcmDsp.DcmDspDid object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DcmVinRef"], object.getTarget())
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
		if (definitionFeature !== null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
