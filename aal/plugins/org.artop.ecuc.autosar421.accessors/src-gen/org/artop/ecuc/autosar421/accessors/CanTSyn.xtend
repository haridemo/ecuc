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

class CanTSyn implements IWrapper<GModuleConfiguration> {
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

	def CanTSynGeneral getCanTSynGeneral(){
		moduleConfiguration.getByType(typeof(CanTSynGeneral))
	}

	def void setCanTSynGeneral(CanTSynGeneral canTSynGeneral){
		val GContainer container = canTSynGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "CanTSynGeneral")
	}
	def List<CanTSynGlobalTimeDomain> getCanTSynGlobalTimeDomains(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "CanTSynGlobalTimeDomain")
			}
		}
		return new BasicWrappingEList<CanTSynGlobalTimeDomain, GContainer>(filteredContainers, typeof(CanTSynGlobalTimeDomain), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGlobalTimeDomain canTSynGlobalTimeDomain) {
				canTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CanTSynGlobalTimeDomain"))
				super.delegateAdd(canTSynGlobalTimeDomain)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGlobalTimeDomain canTSynGlobalTimeDomain) {
				canTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CanTSynGlobalTimeDomain"))
				super.delegateAdd(index, canTSynGlobalTimeDomain)
			}
		}
	}

	static class CanTSynGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CanTSynGeneral)){
				return false
			}
			this.target == (object as CanTSynGeneral).target
		}
	
		def Boolean getCanTSynDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynDevErrorDetect"].getBooleanValue()
		}
		
		def void setCanTSynDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getCanTSynMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setCanTSynMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCanTSynVersionInfo(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynVersionInfo"].getBooleanValue()
		}
		
		def void setCanTSynVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynVersionInfo"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynVersionInfo"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def CanTSynGlobalTimeFupDataIDList getCanTSynGlobalTimeFupDataIDList(){
			containerValue.getByType(typeof(CanTSynGlobalTimeFupDataIDList))
		}
		
		def void setCanTSynGlobalTimeFupDataIDList(CanTSynGlobalTimeFupDataIDList canTSynGlobalTimeFupDataIDList){
			val GContainer subContainer = canTSynGlobalTimeFupDataIDList.getTarget()
			containerValue.setContainer(subContainer, "CanTSynGlobalTimeFupDataIDList")
		}
		
		def CanTSynGlobalTimeOfnsDataIDList getCanTSynGlobalTimeOfnsDataIDList(){
			containerValue.getByType(typeof(CanTSynGlobalTimeOfnsDataIDList))
		}
		
		def void setCanTSynGlobalTimeOfnsDataIDList(CanTSynGlobalTimeOfnsDataIDList canTSynGlobalTimeOfnsDataIDList){
			val GContainer subContainer = canTSynGlobalTimeOfnsDataIDList.getTarget()
			containerValue.setContainer(subContainer, "CanTSynGlobalTimeOfnsDataIDList")
		}
		
		def CanTSynGlobalTimeOfsDataIDList getCanTSynGlobalTimeOfsDataIDList(){
			containerValue.getByType(typeof(CanTSynGlobalTimeOfsDataIDList))
		}
		
		def void setCanTSynGlobalTimeOfsDataIDList(CanTSynGlobalTimeOfsDataIDList canTSynGlobalTimeOfsDataIDList){
			val GContainer subContainer = canTSynGlobalTimeOfsDataIDList.getTarget()
			containerValue.setContainer(subContainer, "CanTSynGlobalTimeOfsDataIDList")
		}
		
		def CanTSynGlobalTimeSyncDataIDList getCanTSynGlobalTimeSyncDataIDList(){
			containerValue.getByType(typeof(CanTSynGlobalTimeSyncDataIDList))
		}
		
		def void setCanTSynGlobalTimeSyncDataIDList(CanTSynGlobalTimeSyncDataIDList canTSynGlobalTimeSyncDataIDList){
			val GContainer subContainer = canTSynGlobalTimeSyncDataIDList.getTarget()
			containerValue.setContainer(subContainer, "CanTSynGlobalTimeSyncDataIDList")
		}
		
		
		static class CanTSynGlobalTimeFupDataIDList implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CanTSynGlobalTimeFupDataIDList)){
					return false
				}
				this.target == (object as CanTSynGlobalTimeFupDataIDList).target
			}
		
			
			
			def List<CanTSynGlobalTimeFupDataIDListElement> getCanTSynGlobalTimeFupDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTSynGlobalTimeFupDataIDListElement")
					}
				}
				return new BasicWrappingEList<CanTSynGlobalTimeFupDataIDListElement, GContainer>(filteredContainers, typeof(CanTSynGlobalTimeFupDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGeneral.CanTSynGlobalTimeFupDataIDList.CanTSynGlobalTimeFupDataIDListElement canTSynGlobalTimeFupDataIDListElement) {
						canTSynGlobalTimeFupDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeFupDataIDListElement"))
						super.delegateAdd(canTSynGlobalTimeFupDataIDListElement)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGeneral.CanTSynGlobalTimeFupDataIDList.CanTSynGlobalTimeFupDataIDListElement canTSynGlobalTimeFupDataIDListElement) {
						canTSynGlobalTimeFupDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeFupDataIDListElement"))
						super.delegateAdd(index, canTSynGlobalTimeFupDataIDListElement)
					}
				}
			}
			
			
			static class CanTSynGlobalTimeFupDataIDListElement implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CanTSynGlobalTimeFupDataIDListElement)){
						return false
					}
					this.target == (object as CanTSynGlobalTimeFupDataIDListElement).target
				}
			
				def BigInteger getCanTSynGlobalTimeFupDataIDListIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFupDataIDListIndex"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeFupDataIDListIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFupDataIDListIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeFupDataIDListIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTSynGlobalTimeFupDataIDListValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFupDataIDListValue"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeFupDataIDListValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFupDataIDListValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeFupDataIDListValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CanTSynGlobalTimeOfnsDataIDList implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CanTSynGlobalTimeOfnsDataIDList)){
					return false
				}
				this.target == (object as CanTSynGlobalTimeOfnsDataIDList).target
			}
		
			
			
			def List<CanTSynGlobalTimeOfnsDataIDListElement> getCanTSynGlobalTimeOfnsDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTSynGlobalTimeOfnsDataIDListElement")
					}
				}
				return new BasicWrappingEList<CanTSynGlobalTimeOfnsDataIDListElement, GContainer>(filteredContainers, typeof(CanTSynGlobalTimeOfnsDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGeneral.CanTSynGlobalTimeOfnsDataIDList.CanTSynGlobalTimeOfnsDataIDListElement canTSynGlobalTimeOfnsDataIDListElement) {
						canTSynGlobalTimeOfnsDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeOfnsDataIDListElement"))
						super.delegateAdd(canTSynGlobalTimeOfnsDataIDListElement)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGeneral.CanTSynGlobalTimeOfnsDataIDList.CanTSynGlobalTimeOfnsDataIDListElement canTSynGlobalTimeOfnsDataIDListElement) {
						canTSynGlobalTimeOfnsDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeOfnsDataIDListElement"))
						super.delegateAdd(index, canTSynGlobalTimeOfnsDataIDListElement)
					}
				}
			}
			
			
			static class CanTSynGlobalTimeOfnsDataIDListElement implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CanTSynGlobalTimeOfnsDataIDListElement)){
						return false
					}
					this.target == (object as CanTSynGlobalTimeOfnsDataIDListElement).target
				}
			
				def BigInteger getCanTSynGlobalTimeOfnsDataIDListIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfnsDataIDListIndex"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeOfnsDataIDListIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfnsDataIDListIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeOfnsDataIDListIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTSynGlobalTimeOfnsDataIDListValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfnsDataIDListValue"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeOfnsDataIDListValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfnsDataIDListValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeOfnsDataIDListValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CanTSynGlobalTimeOfsDataIDList implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CanTSynGlobalTimeOfsDataIDList)){
					return false
				}
				this.target == (object as CanTSynGlobalTimeOfsDataIDList).target
			}
		
			
			
			def List<CanTSynGlobalTimeOfsDataIDListElement> getCanTSynGlobalTimeOfsDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTSynGlobalTimeOfsDataIDListElement")
					}
				}
				return new BasicWrappingEList<CanTSynGlobalTimeOfsDataIDListElement, GContainer>(filteredContainers, typeof(CanTSynGlobalTimeOfsDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGeneral.CanTSynGlobalTimeOfsDataIDList.CanTSynGlobalTimeOfsDataIDListElement canTSynGlobalTimeOfsDataIDListElement) {
						canTSynGlobalTimeOfsDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeOfsDataIDListElement"))
						super.delegateAdd(canTSynGlobalTimeOfsDataIDListElement)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGeneral.CanTSynGlobalTimeOfsDataIDList.CanTSynGlobalTimeOfsDataIDListElement canTSynGlobalTimeOfsDataIDListElement) {
						canTSynGlobalTimeOfsDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeOfsDataIDListElement"))
						super.delegateAdd(index, canTSynGlobalTimeOfsDataIDListElement)
					}
				}
			}
			
			
			static class CanTSynGlobalTimeOfsDataIDListElement implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CanTSynGlobalTimeOfsDataIDListElement)){
						return false
					}
					this.target == (object as CanTSynGlobalTimeOfsDataIDListElement).target
				}
			
				def BigInteger getCanTSynGlobalTimeOfsDataIDListIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfsDataIDListIndex"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeOfsDataIDListIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfsDataIDListIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeOfsDataIDListIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTSynGlobalTimeOfsDataIDListValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfsDataIDListValue"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeOfsDataIDListValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfsDataIDListValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeOfsDataIDListValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CanTSynGlobalTimeSyncDataIDList implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CanTSynGlobalTimeSyncDataIDList)){
					return false
				}
				this.target == (object as CanTSynGlobalTimeSyncDataIDList).target
			}
		
			
			
			def List<CanTSynGlobalTimeSyncDataIDListElement> getCanTSynGlobalTimeSyncDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTSynGlobalTimeSyncDataIDListElement")
					}
				}
				return new BasicWrappingEList<CanTSynGlobalTimeSyncDataIDListElement, GContainer>(filteredContainers, typeof(CanTSynGlobalTimeSyncDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGeneral.CanTSynGlobalTimeSyncDataIDList.CanTSynGlobalTimeSyncDataIDListElement canTSynGlobalTimeSyncDataIDListElement) {
						canTSynGlobalTimeSyncDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeSyncDataIDListElement"))
						super.delegateAdd(canTSynGlobalTimeSyncDataIDListElement)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTSyn.CanTSynGeneral.CanTSynGlobalTimeSyncDataIDList.CanTSynGlobalTimeSyncDataIDListElement canTSynGlobalTimeSyncDataIDListElement) {
						canTSynGlobalTimeSyncDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeSyncDataIDListElement"))
						super.delegateAdd(index, canTSynGlobalTimeSyncDataIDListElement)
					}
				}
			}
			
			
			static class CanTSynGlobalTimeSyncDataIDListElement implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CanTSynGlobalTimeSyncDataIDListElement)){
						return false
					}
					this.target == (object as CanTSynGlobalTimeSyncDataIDListElement).target
				}
			
				def BigInteger getCanTSynGlobalTimeSyncDataIDListIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSyncDataIDListIndex"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeSyncDataIDListIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSyncDataIDListIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeSyncDataIDListIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTSynGlobalTimeSyncDataIDListValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSyncDataIDListValue"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeSyncDataIDListValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSyncDataIDListValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeSyncDataIDListValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class CanTSynGlobalTimeDomain implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CanTSynGlobalTimeDomain)){
				return false
			}
			this.target == (object as CanTSynGlobalTimeDomain).target
		}
	
		def BigInteger getCanTSynGlobalTimeDomainId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeDomainId"].getBigIntegerValue()
		}
		
		def void setCanTSynGlobalTimeDomainId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeDomainId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeDomainId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getCanTSynGlobalTimeFollowUpTimeout(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFollowUpTimeout"].getBigDecimalValue()
		}
		
		def void setCanTSynGlobalTimeFollowUpTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFollowUpTimeout"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeFollowUpTimeout"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCanTSynGlobalTimeSequenceCounterJumpWidth(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSequenceCounterJumpWidth"].getBigIntegerValue()
		}
		
		def void setCanTSynGlobalTimeSequenceCounterJumpWidth(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSequenceCounterJumpWidth"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeSequenceCounterJumpWidth"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase getCanTSynSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase), "CanTSynSynchronizedTimeBaseRef")
		}
		
		def void setCanTSynSynchronizedTimeBaseRef(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTSynSynchronizedTimeBaseRef"], object.getTarget())
			}
		}
		
		
		def CanTSynGlobalTimeMaster getCanTSynGlobalTimeMaster(){
			containerValue.getByType(typeof(CanTSynGlobalTimeMaster))
		}
		
		def void setCanTSynGlobalTimeMaster(CanTSynGlobalTimeMaster canTSynGlobalTimeMaster){
			val GContainer subContainer = canTSynGlobalTimeMaster.getTarget()
			containerValue.setContainer(subContainer, "CanTSynGlobalTimeMaster")
		}
		
		def CanTSynGlobalTimeSlave getCanTSynGlobalTimeSlave(){
			containerValue.getByType(typeof(CanTSynGlobalTimeSlave))
		}
		
		def void setCanTSynGlobalTimeSlave(CanTSynGlobalTimeSlave canTSynGlobalTimeSlave){
			val GContainer subContainer = canTSynGlobalTimeSlave.getTarget()
			containerValue.setContainer(subContainer, "CanTSynGlobalTimeSlave")
		}
		
		
		static class CanTSynGlobalTimeMaster implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CanTSynGlobalTimeMaster)){
					return false
				}
				this.target == (object as CanTSynGlobalTimeMaster).target
			}
		
			def CanTSynGlobalTimeTxCrcSecured getCanTSynGlobalTimeTxCrcSecured(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxCrcSecured"].getCanTSynGlobalTimeTxCrcSecuredValue()
			}
			
			def void setCanTSynGlobalTimeTxCrcSecured(CanTSynGlobalTimeTxCrcSecured value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxCrcSecured"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeTxCrcSecured"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanTSynGlobalTimeTxCrcSecured {
				CRC_NOT_SUPPORTED, 
				CRC_SUPPORTED
			}
			
			def CanTSynGlobalTimeTxCrcSecured getCanTSynGlobalTimeTxCrcSecuredValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRC_NOT_SUPPORTED" : CanTSynGlobalTimeTxCrcSecured.CRC_NOT_SUPPORTED
					case "CRC_SUPPORTED" : CanTSynGlobalTimeTxCrcSecured.CRC_SUPPORTED
				}
			}
			
			def void setCanTSynGlobalTimeTxCrcSecuredValue(GParameterValue parameterValue, CanTSynGlobalTimeTxCrcSecured value){
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanTSynGlobalTimeTxFollowUpOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxFollowUpOffset"].getBigDecimalValue()
			}
			
			def void setCanTSynGlobalTimeTxFollowUpOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxFollowUpOffset"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeTxFollowUpOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanTSynGlobalTimeTxPeriod(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxPeriod"].getBigDecimalValue()
			}
			
			def void setCanTSynGlobalTimeTxPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxPeriod"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeTxPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanTSynMasterConfirmationTimeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynMasterConfirmationTimeout"].getBigDecimalValue()
			}
			
			def void setCanTSynMasterConfirmationTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynMasterConfirmationTimeout"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynMasterConfirmationTimeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def CanTSynGlobalTimeMasterPdu getCanTSynGlobalTimeMasterPdu(){
				containerValue.getByType(typeof(CanTSynGlobalTimeMasterPdu))
			}
			
			def void setCanTSynGlobalTimeMasterPdu(CanTSynGlobalTimeMasterPdu canTSynGlobalTimeMasterPdu){
				val GContainer subContainer = canTSynGlobalTimeMasterPdu.getTarget()
				containerValue.setContainer(subContainer, "CanTSynGlobalTimeMasterPdu")
			}
			
			
			static class CanTSynGlobalTimeMasterPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CanTSynGlobalTimeMasterPdu)){
						return false
					}
					this.target == (object as CanTSynGlobalTimeMasterPdu).target
				}
			
				def BigInteger getCanTSynGlobalTimeMasterConfirmationHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeMasterConfirmationHandleId"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeMasterConfirmationHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeMasterConfirmationHandleId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeMasterConfirmationHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTSynGlobalTimePduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTSynGlobalTimePduRef")
				}
				
				def void setCanTSynGlobalTimePduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTSynGlobalTimePduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CanTSynGlobalTimeSlave implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CanTSynGlobalTimeSlave)){
					return false
				}
				this.target == (object as CanTSynGlobalTimeSlave).target
			}
		
			def CanTSynRxCrcValidated getCanTSynRxCrcValidated(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynRxCrcValidated"].getCanTSynRxCrcValidatedValue()
			}
			
			def void setCanTSynRxCrcValidated(CanTSynRxCrcValidated value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynRxCrcValidated"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynRxCrcValidated"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanTSynRxCrcValidated {
				CRC_IGNORED, 
				CRC_NOT_VALIDATED, 
				CRC_VALIDATED
			}
			
			def CanTSynRxCrcValidated getCanTSynRxCrcValidatedValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CRC_IGNORED" : CanTSynRxCrcValidated.CRC_IGNORED
					case "CRC_NOT_VALIDATED" : CanTSynRxCrcValidated.CRC_NOT_VALIDATED
					case "CRC_VALIDATED" : CanTSynRxCrcValidated.CRC_VALIDATED
				}
			}
			
			def void setCanTSynRxCrcValidatedValue(GParameterValue parameterValue, CanTSynRxCrcValidated value){
				parameterValue.setValue(value)
			}
			
			
			
			def CanTSynGlobalTimeSlavePdu getCanTSynGlobalTimeSlavePdu(){
				containerValue.getByType(typeof(CanTSynGlobalTimeSlavePdu))
			}
			
			def void setCanTSynGlobalTimeSlavePdu(CanTSynGlobalTimeSlavePdu canTSynGlobalTimeSlavePdu){
				val GContainer subContainer = canTSynGlobalTimeSlavePdu.getTarget()
				containerValue.setContainer(subContainer, "CanTSynGlobalTimeSlavePdu")
			}
			
			
			static class CanTSynGlobalTimeSlavePdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CanTSynGlobalTimeSlavePdu)){
						return false
					}
					this.target == (object as CanTSynGlobalTimeSlavePdu).target
				}
			
				def BigInteger getCanTSynGlobalTimeSlaveHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSlaveHandleId"].getBigIntegerValue()
				}
				
				def void setCanTSynGlobalTimeSlaveHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSlaveHandleId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeSlaveHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTSynGlobalTimePduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTSynGlobalTimePduRef")
				}
				
				def void setCanTSynGlobalTimePduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTSynGlobalTimePduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof CanTSyn)){
			return false
		}
		this.target == (object as CanTSyn).target
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
