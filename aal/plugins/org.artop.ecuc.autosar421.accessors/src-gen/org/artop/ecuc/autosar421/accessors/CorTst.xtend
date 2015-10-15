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

class CorTst implements IWrapper<GModuleConfiguration> {
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

	def List<CorTstBackgroundConfigSet> getCorTstBackgroundConfigSets(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "CorTstBackgroundConfigSet")
			}
		}
		return new BasicWrappingEList<CorTstBackgroundConfigSet, GContainer>(filteredContainers, typeof(CorTstBackgroundConfigSet), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CorTst.CorTstBackgroundConfigSet corTstBackgroundConfigSet) {
				corTstBackgroundConfigSet.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CorTstBackgroundConfigSet"))
				super.delegateAdd(corTstBackgroundConfigSet)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CorTst.CorTstBackgroundConfigSet corTstBackgroundConfigSet) {
				corTstBackgroundConfigSet.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CorTstBackgroundConfigSet"))
				super.delegateAdd(index, corTstBackgroundConfigSet)
			}
		}
	}
	def CorTstConfigApiServices getCorTstConfigApiServices(){
		moduleConfiguration.getByType(typeof(CorTstConfigApiServices))
	}

	def void setCorTstConfigApiServices(CorTstConfigApiServices corTstConfigApiServices){
		val GContainer container = corTstConfigApiServices.getTarget()
	    moduleConfiguration.setContainer(container, "CorTstConfigApiServices")
	}
	def CorTstDemEventParameterRefs getCorTstDemEventParameterRefs(){
		moduleConfiguration.getByType(typeof(CorTstDemEventParameterRefs))
	}

	def void setCorTstDemEventParameterRefs(CorTstDemEventParameterRefs corTstDemEventParameterRefs){
		val GContainer container = corTstDemEventParameterRefs.getTarget()
	    moduleConfiguration.setContainer(container, "CorTstDemEventParameterRefs")
	}
	def List<CorTstForegroundConfigSet> getCorTstForegroundConfigSets(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "CorTstForegroundConfigSet")
			}
		}
		return new BasicWrappingEList<CorTstForegroundConfigSet, GContainer>(filteredContainers, typeof(CorTstForegroundConfigSet), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CorTst.CorTstForegroundConfigSet corTstForegroundConfigSet) {
				corTstForegroundConfigSet.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CorTstForegroundConfigSet"))
				super.delegateAdd(corTstForegroundConfigSet)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CorTst.CorTstForegroundConfigSet corTstForegroundConfigSet) {
				corTstForegroundConfigSet.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CorTstForegroundConfigSet"))
				super.delegateAdd(index, corTstForegroundConfigSet)
			}
		}
	}
	def CorTstGeneral getCorTstGeneral(){
		moduleConfiguration.getByType(typeof(CorTstGeneral))
	}

	def void setCorTstGeneral(CorTstGeneral corTstGeneral){
		val GContainer container = corTstGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "CorTstGeneral")
	}

	static class CorTstBackgroundConfigSet implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CorTstBackgroundConfigSet)){
				return false
			}
			this.target == (object as CorTstBackgroundConfigSet).target
		}
	
		
		
		def CorTstSelect getCorTstSelect(){
			containerValue.getByType(typeof(CorTstSelect))
		}
		
		def void setCorTstSelect(CorTstSelect corTstSelect){
			val GContainer subContainer = corTstSelect.getTarget()
			containerValue.setContainer(subContainer, "CorTstSelect")
		}
		
		
		static class CorTstSelect implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CorTstSelect)){
					return false
				}
				this.target == (object as CorTstSelect).target
			}
		
			def Boolean getCorTstAddress(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAddress"].getBooleanValue()
			}
			
			def void setCorTstAddress(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAddress"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstAddress"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstAlu(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAlu"].getBooleanValue()
			}
			
			def void setCorTstAlu(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAlu"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstAlu"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstCache(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstCache"].getBooleanValue()
			}
			
			def void setCorTstCache(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstCache"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstCache"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstInterrupt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstInterrupt"].getBooleanValue()
			}
			
			def void setCorTstInterrupt(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstInterrupt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstInterrupt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstMemoryIf(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstMemoryIf"].getBooleanValue()
			}
			
			def void setCorTstMemoryIf(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstMemoryIf"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstMemoryIf"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstMpu(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstMpu"].getBooleanValue()
			}
			
			def void setCorTstMpu(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstMpu"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstMpu"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstRegister(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstRegister"].getBooleanValue()
			}
			
			def void setCorTstRegister(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstRegister"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstRegister"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
	}
	static class CorTstConfigApiServices implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CorTstConfigApiServices)){
				return false
			}
			this.target == (object as CorTstConfigApiServices).target
		}
	
		def Boolean getCorTstAbortApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAbortApi"].getBooleanValue()
		}
		
		def void setCorTstAbortApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAbortApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstAbortApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCorTstGetCurrentStatus(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstGetCurrentStatus"].getBooleanValue()
		}
		
		def void setCorTstGetCurrentStatus(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstGetCurrentStatus"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstGetCurrentStatus"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCorTstGetFgndSignature(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstGetFgndSignature"].getBooleanValue()
		}
		
		def void setCorTstGetFgndSignature(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstGetFgndSignature"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstGetFgndSignature"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCorTstGetSignature(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstGetSignature"].getBooleanValue()
		}
		
		def void setCorTstGetSignature(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstGetSignature"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstGetSignature"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCorTstGetStateApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstGetStateApi"].getBooleanValue()
		}
		
		def void setCorTstGetStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstGetStateApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstGetStateApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCorTstStartApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstStartApi"].getBooleanValue()
		}
		
		def void setCorTstStartApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstStartApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstStartApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCorTstVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstVersionInfoApi"].getBooleanValue()
		}
		
		def void setCorTstVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class CorTstDemEventParameterRefs implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CorTstDemEventParameterRefs)){
				return false
			}
			this.target == (object as CorTstDemEventParameterRefs).target
		}
	
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getCORTST_E_CORE_FAILURE(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "CORTST_E_CORE_FAILURE")
		}
		
		def void setCORTST_E_CORE_FAILURE(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CORTST_E_CORE_FAILURE"], object.getTarget())
			}
		}
		
		
		
	}
	static class CorTstForegroundConfigSet implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CorTstForegroundConfigSet)){
				return false
			}
			this.target == (object as CorTstForegroundConfigSet).target
		}
	
		def BigInteger getCorTstTestIdFgnd(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstTestIdFgnd"].getBigIntegerValue()
		}
		
		def void setCorTstTestIdFgnd(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstTestIdFgnd"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstTestIdFgnd"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def CorTstSelect getCorTstSelect(){
			containerValue.getByType(typeof(CorTstSelect))
		}
		
		def void setCorTstSelect(CorTstSelect corTstSelect){
			val GContainer subContainer = corTstSelect.getTarget()
			containerValue.setContainer(subContainer, "CorTstSelect")
		}
		
		
		static class CorTstSelect implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CorTstSelect)){
					return false
				}
				this.target == (object as CorTstSelect).target
			}
		
			def Boolean getCorTstAddress(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAddress"].getBooleanValue()
			}
			
			def void setCorTstAddress(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAddress"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstAddress"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstAlu(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAlu"].getBooleanValue()
			}
			
			def void setCorTstAlu(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstAlu"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstAlu"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstCache(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstCache"].getBooleanValue()
			}
			
			def void setCorTstCache(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstCache"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstCache"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstInterrupt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstInterrupt"].getBooleanValue()
			}
			
			def void setCorTstInterrupt(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstInterrupt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstInterrupt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstMemoryIf(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstMemoryIf"].getBooleanValue()
			}
			
			def void setCorTstMemoryIf(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstMemoryIf"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstMemoryIf"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstMpu(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstMpu"].getBooleanValue()
			}
			
			def void setCorTstMpu(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstMpu"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstMpu"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCorTstRegister(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstRegister"].getBooleanValue()
			}
			
			def void setCorTstRegister(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstRegister"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstRegister"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
	}
	static class CorTstGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CorTstGeneral)){
				return false
			}
			this.target == (object as CorTstGeneral).target
		}
	
		def Boolean getCorTstDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstDevErrorDetect"].getBooleanValue()
		}
		
		def void setCorTstDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getCorTstFgndTestNumber(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstFgndTestNumber"].getBigIntegerValue()
		}
		
		def void setCorTstFgndTestNumber(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstFgndTestNumber"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstFgndTestNumber"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCorTstNotificationSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstNotificationSupported"].getBooleanValue()
		}
		
		def void setCorTstNotificationSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstNotificationSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstNotificationSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getCorTstTestIntervalIdEndValue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstTestIntervalIdEndValue"].getBigIntegerValue()
		}
		
		def void setCorTstTestIntervalIdEndValue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstTestIntervalIdEndValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstTestIntervalIdEndValue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCorTstTestResultMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstTestResultMode"].getBooleanValue()
		}
		
		def void setCorTstTestResultMode(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CorTstTestResultMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CorTstTestResultMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof CorTst)){
			return false
		}
		this.target == (object as CorTst).target
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
