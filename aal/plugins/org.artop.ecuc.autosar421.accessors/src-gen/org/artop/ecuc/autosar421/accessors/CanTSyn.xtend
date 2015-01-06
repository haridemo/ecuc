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
			override protected delegateAdd(CanTSynGlobalTimeDomain canTSynGlobalTimeDomain) {
				canTSynGlobalTimeDomain.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CanTSynGlobalTimeDomain"))
				super.delegateAdd(canTSynGlobalTimeDomain)
			}
		
			override protected delegateAdd(int index, CanTSynGlobalTimeDomain canTSynGlobalTimeDomain) {
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
		
		def Boolean getCanTSynDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynDevErrorDetect"])
		}
		
		def void setCanTSynDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getCanTSynMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynMainFunctionPeriod"])
		}
		
		def void setCanTSynMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanTSynVersionInfo(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynVersionInfo"])
		}
		
		def void setCanTSynVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynVersionInfo"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynVersionInfo"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			
			
			def List<CanTSynGlobalTimeFupDataIDListElement> getCanTSynGlobalTimeFupDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTSynGlobalTimeFupDataIDListElement")
					}
				}
				return new BasicWrappingEList<CanTSynGlobalTimeFupDataIDListElement, GContainer>(filteredContainers, typeof(CanTSynGlobalTimeFupDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(CanTSynGlobalTimeFupDataIDListElement canTSynGlobalTimeFupDataIDListElement) {
						canTSynGlobalTimeFupDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeFupDataIDListElement"))
						super.delegateAdd(canTSynGlobalTimeFupDataIDListElement)
					}
					
					override protected delegateAdd(int index, CanTSynGlobalTimeFupDataIDListElement canTSynGlobalTimeFupDataIDListElement) {
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
				
				def Integer getCanTSynGlobalTimeFupDataIDListIndex(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFupDataIDListIndex"])
				}
				
				def void setCanTSynGlobalTimeFupDataIDListIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFupDataIDListIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeFupDataIDListIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTSynGlobalTimeFupDataIDListValue(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFupDataIDListValue"])
				}
				
				def void setCanTSynGlobalTimeFupDataIDListValue(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFupDataIDListValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeFupDataIDListValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			
			
			def List<CanTSynGlobalTimeOfnsDataIDListElement> getCanTSynGlobalTimeOfnsDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTSynGlobalTimeOfnsDataIDListElement")
					}
				}
				return new BasicWrappingEList<CanTSynGlobalTimeOfnsDataIDListElement, GContainer>(filteredContainers, typeof(CanTSynGlobalTimeOfnsDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(CanTSynGlobalTimeOfnsDataIDListElement canTSynGlobalTimeOfnsDataIDListElement) {
						canTSynGlobalTimeOfnsDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeOfnsDataIDListElement"))
						super.delegateAdd(canTSynGlobalTimeOfnsDataIDListElement)
					}
					
					override protected delegateAdd(int index, CanTSynGlobalTimeOfnsDataIDListElement canTSynGlobalTimeOfnsDataIDListElement) {
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
				
				def Integer getCanTSynGlobalTimeOfnsDataIDListIndex(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfnsDataIDListIndex"])
				}
				
				def void setCanTSynGlobalTimeOfnsDataIDListIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfnsDataIDListIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeOfnsDataIDListIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTSynGlobalTimeOfnsDataIDListValue(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfnsDataIDListValue"])
				}
				
				def void setCanTSynGlobalTimeOfnsDataIDListValue(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfnsDataIDListValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeOfnsDataIDListValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			
			
			def List<CanTSynGlobalTimeOfsDataIDListElement> getCanTSynGlobalTimeOfsDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTSynGlobalTimeOfsDataIDListElement")
					}
				}
				return new BasicWrappingEList<CanTSynGlobalTimeOfsDataIDListElement, GContainer>(filteredContainers, typeof(CanTSynGlobalTimeOfsDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(CanTSynGlobalTimeOfsDataIDListElement canTSynGlobalTimeOfsDataIDListElement) {
						canTSynGlobalTimeOfsDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeOfsDataIDListElement"))
						super.delegateAdd(canTSynGlobalTimeOfsDataIDListElement)
					}
					
					override protected delegateAdd(int index, CanTSynGlobalTimeOfsDataIDListElement canTSynGlobalTimeOfsDataIDListElement) {
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
				
				def Integer getCanTSynGlobalTimeOfsDataIDListIndex(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfsDataIDListIndex"])
				}
				
				def void setCanTSynGlobalTimeOfsDataIDListIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfsDataIDListIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeOfsDataIDListIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTSynGlobalTimeOfsDataIDListValue(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfsDataIDListValue"])
				}
				
				def void setCanTSynGlobalTimeOfsDataIDListValue(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeOfsDataIDListValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeOfsDataIDListValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			
			
			def List<CanTSynGlobalTimeSyncDataIDListElement> getCanTSynGlobalTimeSyncDataIDListElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTSynGlobalTimeSyncDataIDListElement")
					}
				}
				return new BasicWrappingEList<CanTSynGlobalTimeSyncDataIDListElement, GContainer>(filteredContainers, typeof(CanTSynGlobalTimeSyncDataIDListElement), typeof(GContainer)) {
					override protected delegateAdd(CanTSynGlobalTimeSyncDataIDListElement canTSynGlobalTimeSyncDataIDListElement) {
						canTSynGlobalTimeSyncDataIDListElement.target?.gSetDefinition(containerValue.getContainerDefinition("CanTSynGlobalTimeSyncDataIDListElement"))
						super.delegateAdd(canTSynGlobalTimeSyncDataIDListElement)
					}
					
					override protected delegateAdd(int index, CanTSynGlobalTimeSyncDataIDListElement canTSynGlobalTimeSyncDataIDListElement) {
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
				
				def Integer getCanTSynGlobalTimeSyncDataIDListIndex(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSyncDataIDListIndex"])
				}
				
				def void setCanTSynGlobalTimeSyncDataIDListIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSyncDataIDListIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeSyncDataIDListIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTSynGlobalTimeSyncDataIDListValue(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSyncDataIDListValue"])
				}
				
				def void setCanTSynGlobalTimeSyncDataIDListValue(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSyncDataIDListValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeSyncDataIDListValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Integer getCanTSynGlobalTimeDomainId(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeDomainId"])
		}
		
		def void setCanTSynGlobalTimeDomainId(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeDomainId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeDomainId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getCanTSynGlobalTimeFollowUpTimeout(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFollowUpTimeout"])
		}
		
		def void setCanTSynGlobalTimeFollowUpTimeout(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeFollowUpTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeFollowUpTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCanTSynGlobalTimeSequenceCounterJumpWidth(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSequenceCounterJumpWidth"])
		}
		
		def void setCanTSynGlobalTimeSequenceCounterJumpWidth(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSequenceCounterJumpWidth"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeSequenceCounterJumpWidth"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase getCanTSynSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase), "CanTSynSynchronizedTimeBaseRef")
		}
				
		def void setCanTSynSynchronizedTimeBaseRef(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTSynSynchronizedTimeBaseRef"], object.getTarget())
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
			
			def CanTSynGlobalTimeTxCrcSecured getCanTSynGlobalTimeTxCrcSecured(){
				getCanTSynGlobalTimeTxCrcSecuredValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxCrcSecured"])
			}
			
			def void setCanTSynGlobalTimeTxCrcSecured(CanTSynGlobalTimeTxCrcSecured value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxCrcSecured"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeTxCrcSecured"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum CanTSynGlobalTimeTxCrcSecured {
				CRC_NOT_SUPPORTED, 
				CRC_SUPPORTED
			}
				
			def CanTSynGlobalTimeTxCrcSecured getCanTSynGlobalTimeTxCrcSecuredValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CRC_NOT_SUPPORTED" : CanTSynGlobalTimeTxCrcSecured.CRC_NOT_SUPPORTED
					case "CRC_SUPPORTED" : CanTSynGlobalTimeTxCrcSecured.CRC_SUPPORTED
				}
			}
			
			def void setCanTSynGlobalTimeTxCrcSecuredValue(GParameterValue paramValue, CanTSynGlobalTimeTxCrcSecured value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def Float getCanTSynGlobalTimeTxFollowUpOffset(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxFollowUpOffset"])
			}
			
			def void setCanTSynGlobalTimeTxFollowUpOffset(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxFollowUpOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeTxFollowUpOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getCanTSynGlobalTimeTxPeriod(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxPeriod"])
			}
			
			def void setCanTSynGlobalTimeTxPeriod(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeTxPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeTxPeriod"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getCanTSynMasterConfirmationTimeout(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynMasterConfirmationTimeout"])
			}
			
			def void setCanTSynMasterConfirmationTimeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynMasterConfirmationTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynMasterConfirmationTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				
				def Integer getCanTSynGlobalTimeMasterConfirmationHandleId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeMasterConfirmationHandleId"])
				}
				
				def void setCanTSynGlobalTimeMasterConfirmationHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeMasterConfirmationHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeMasterConfirmationHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTSynGlobalTimePduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTSynGlobalTimePduRef")
				}
						
				def void setCanTSynGlobalTimePduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTSynGlobalTimePduRef"], object.getTarget())
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
			
			def CanTSynRxCrcValidated getCanTSynRxCrcValidated(){
				getCanTSynRxCrcValidatedValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynRxCrcValidated"])
			}
			
			def void setCanTSynRxCrcValidated(CanTSynRxCrcValidated value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynRxCrcValidated"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynRxCrcValidated"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum CanTSynRxCrcValidated {
				CRC_IGNORED, 
				CRC_NOT_VALIDATED, 
				CRC_VALIDATED
			}
				
			def CanTSynRxCrcValidated getCanTSynRxCrcValidatedValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CRC_IGNORED" : CanTSynRxCrcValidated.CRC_IGNORED
					case "CRC_NOT_VALIDATED" : CanTSynRxCrcValidated.CRC_NOT_VALIDATED
					case "CRC_VALIDATED" : CanTSynRxCrcValidated.CRC_VALIDATED
				}
			}
			
			def void setCanTSynRxCrcValidatedValue(GParameterValue paramValue, CanTSynRxCrcValidated value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
				
				def Integer getCanTSynGlobalTimeSlaveHandleId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSlaveHandleId"])
				}
				
				def void setCanTSynGlobalTimeSlaveHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTSynGlobalTimeSlaveHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTSynGlobalTimeSlaveHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTSynGlobalTimePduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTSynGlobalTimePduRef")
				}
						
				def void setCanTSynGlobalTimePduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTSynGlobalTimePduRef"], object.getTarget())
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
