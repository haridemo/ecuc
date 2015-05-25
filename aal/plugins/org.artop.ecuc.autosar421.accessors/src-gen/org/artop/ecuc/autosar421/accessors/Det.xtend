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

class Det implements IWrapper<GModuleConfiguration> {
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
	
	def DetConfigSet getDetConfigSet(){
		moduleConfiguration.getByType(typeof(DetConfigSet))
	}
	
	def void setDetConfigSet(DetConfigSet detConfigSet){
		val GContainer container = detConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "DetConfigSet")
	}
	def DetGeneral getDetGeneral(){
		moduleConfiguration.getByType(typeof(DetGeneral))
	}
	
	def void setDetGeneral(DetGeneral detGeneral){
		val GContainer container = detGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "DetGeneral")
	}
	def DetNotification getDetNotification(){
		moduleConfiguration.getByType(typeof(DetNotification))
	}
	
	def void setDetNotification(DetNotification detNotification){
		val GContainer container = detNotification.getTarget() 
	    moduleConfiguration.setContainer(container, "DetNotification")
	}
	
	static class DetConfigSet implements IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		override def boolean equals(Object object) {
	        if (!(object instanceof DetConfigSet)){
				return false
			}
			this.target == (object as DetConfigSet).target
		}
		
		
		
		def List<DetModule> getDetModules(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DetModule")
				}
			}
			return new BasicWrappingEList<DetModule, GContainer>(filteredContainers, typeof(DetModule), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Det$DetConfigSet$DetModule detModule) {
					detModule.target?.gSetDefinition(containerValue.getContainerDefinition("DetModule"))
					super.delegateAdd(detModule)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Det$DetConfigSet$DetModule detModule) {
					detModule.target?.gSetDefinition(containerValue.getContainerDefinition("DetModule"))
					super.delegateAdd(index, detModule)
				}	
			}
		}
		
		
		static class DetModule implements IWrapper<GContainer> {
			private GContainer containerValue
			
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
			
			def String getShortName(){
				containerValue?.gGetShortName
			}
			
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
			
			override def GContainer getTarget(){
				containerValue
			}
			
			override def boolean equals(Object object) {
		        if (!(object instanceof DetModule)){
					return false
				}
				this.target == (object as DetModule).target
			}
			
			def BigInteger getDetModuleId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetModuleId"])
			}
			
			def void setDetModuleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetModuleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DetModuleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class DetGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		override def boolean equals(Object object) {
	        if (!(object instanceof DetGeneral)){
				return false
			}
			this.target == (object as DetGeneral).target
		}
		
		def Boolean getDetForwardToDlt(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetForwardToDlt"])
		}
		
		def void setDetForwardToDlt(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetForwardToDlt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DetForwardToDlt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def String getDetReportRuntimeErrorCallout(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetReportRuntimeErrorCallout"])
		}
		
		def void setDetReportRuntimeErrorCallout(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetReportRuntimeErrorCallout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DetReportRuntimeErrorCallout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getDetReportTransientFaultCallout(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetReportTransientFaultCallout"])
		}
		
		def void setDetReportTransientFaultCallout(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetReportTransientFaultCallout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DetReportTransientFaultCallout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDetVersionInfoApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetVersionInfoApi"])
		}
		
		def void setDetVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DetVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DetVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class DetNotification implements IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		override def boolean equals(Object object) {
	        if (!(object instanceof DetNotification)){
				return false
			}
			this.target == (object as DetNotification).target
		}
		
		def List<String> getDetErrorHooks(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "DetErrorHook")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "DetErrorHook"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		
		
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof Det)){
			return false
		}
		this.target == (object as Det).target
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
