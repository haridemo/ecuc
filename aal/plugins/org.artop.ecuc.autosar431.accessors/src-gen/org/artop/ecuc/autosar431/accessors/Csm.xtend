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

class Csm implements IWrapper<GModuleConfiguration> {
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

	def CsmCallbacks getCsmCallbacks(){
		moduleConfiguration.getByType(typeof(CsmCallbacks))
	}

	def void setCsmCallbacks(CsmCallbacks csmCallbacks){
		val GContainer container = csmCallbacks.getTarget()
	    moduleConfiguration.setContainer(container, "CsmCallbacks")
	}
	def CsmGeneral getCsmGeneral(){
		moduleConfiguration.getByType(typeof(CsmGeneral))
	}

	def void setCsmGeneral(CsmGeneral csmGeneral){
		val GContainer container = csmGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "CsmGeneral")
	}
	def CsmJobs getCsmJobs(){
		moduleConfiguration.getByType(typeof(CsmJobs))
	}

	def void setCsmJobs(CsmJobs csmJobs){
		val GContainer container = csmJobs.getTarget()
	    moduleConfiguration.setContainer(container, "CsmJobs")
	}
	def CsmKeys getCsmKeys(){
		moduleConfiguration.getByType(typeof(CsmKeys))
	}

	def void setCsmKeys(CsmKeys csmKeys){
		val GContainer container = csmKeys.getTarget()
	    moduleConfiguration.setContainer(container, "CsmKeys")
	}
	def List<CsmPrimitives> getCsmPrimitives(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "CsmPrimitives")
			}
		}
		return new BasicWrappingEList<CsmPrimitives, GContainer>(filteredContainers, typeof(CsmPrimitives), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives csmPrimitives) {
				csmPrimitives.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CsmPrimitives"))
				super.delegateAdd(csmPrimitives)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives csmPrimitives) {
				csmPrimitives.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("CsmPrimitives"))
				super.delegateAdd(index, csmPrimitives)
			}
		}
	}
	def CsmQueues getCsmQueues(){
		moduleConfiguration.getByType(typeof(CsmQueues))
	}

	def void setCsmQueues(CsmQueues csmQueues){
		val GContainer container = csmQueues.getTarget()
	    moduleConfiguration.setContainer(container, "CsmQueues")
	}

	static class CsmCallbacks implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmCallbacks)){
				return false
			}
			this.target == (object as CsmCallbacks).target
		}
	
		
		
		def List<CsmCallback> getCsmCallbacks(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmCallback")
				}
			}
			return new BasicWrappingEList<CsmCallback, GContainer>(filteredContainers, typeof(CsmCallback), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Csm.CsmCallbacks.CsmCallback csmCallback) {
					csmCallback.target?.gSetDefinition(containerValue.getContainerDefinition("CsmCallback"))
					super.delegateAdd(csmCallback)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Csm.CsmCallbacks.CsmCallback csmCallback) {
					csmCallback.target?.gSetDefinition(containerValue.getContainerDefinition("CsmCallback"))
					super.delegateAdd(index, csmCallback)
				}
			}
		}
		
		
		static class CsmCallback implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmCallback)){
					return false
				}
				this.target == (object as CsmCallback).target
			}
		
			def String getCsmCallbackFunc(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackFunc"].getStringValue()
			}
			
			def void setCsmCallbackFunc(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackFunc"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackFunc"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCsmCallbackId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackId"].getBigIntegerValue()
			}
			
			def void setCsmCallbackId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class CsmGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmGeneral)){
				return false
			}
			this.target == (object as CsmGeneral).target
		}
	
		def BigInteger getCsmAsymPrivateKeyMaxLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyMaxLength"].getBigIntegerValue()
		}
		
		def void setCsmAsymPrivateKeyMaxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyMaxLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyMaxLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCsmAsymPublicKeyMaxLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyMaxLength"].getBigIntegerValue()
		}
		
		def void setCsmAsymPublicKeyMaxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyMaxLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyMaxLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCsmDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDevErrorDetect"].getBooleanValue()
		}
		
		def void setCsmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getCsmMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setCsmMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCsmSymKeyMaxLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyMaxLength"].getBigIntegerValue()
		}
		
		def void setCsmSymKeyMaxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyMaxLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyMaxLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCsmUseDeprecated(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmUseDeprecated"].getBooleanValue()
		}
		
		def void setCsmUseDeprecated(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmUseDeprecated"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmUseDeprecated"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCsmVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmVersionInfoApi"].getBooleanValue()
		}
		
		def void setCsmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class CsmJobs implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmJobs)){
				return false
			}
			this.target == (object as CsmJobs).target
		}
	
		
		
		def List<CsmJob> getCsmJobs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmJob")
				}
			}
			return new BasicWrappingEList<CsmJob, GContainer>(filteredContainers, typeof(CsmJob), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Csm.CsmJobs.CsmJob csmJob) {
					csmJob.target?.gSetDefinition(containerValue.getContainerDefinition("CsmJob"))
					super.delegateAdd(csmJob)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Csm.CsmJobs.CsmJob csmJob) {
					csmJob.target?.gSetDefinition(containerValue.getContainerDefinition("CsmJob"))
					super.delegateAdd(index, csmJob)
				}
			}
		}
		
		
		static class CsmJob implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmJob)){
					return false
				}
				this.target == (object as CsmJob).target
			}
		
			def BigInteger getCsmJobId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmJobId"].getBigIntegerValue()
			}
			
			def void setCsmJobId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmJobId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmJobId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCsmJobPrimitiveCallbackUpdateNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmJobPrimitiveCallbackUpdateNotification"].getBooleanValue()
			}
			
			def void setCsmJobPrimitiveCallbackUpdateNotification(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmJobPrimitiveCallbackUpdateNotification"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmJobPrimitiveCallbackUpdateNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getCsmJobPriority(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmJobPriority"].getBigIntegerValue()
			}
			
			def void setCsmJobPriority(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmJobPriority"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmJobPriority"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCsmJobUsePort(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmJobUsePort"].getBooleanValue()
			}
			
			def void setCsmJobUsePort(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmJobUsePort"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmJobUsePort"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey getCsmJobKeyRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey), "CsmJobKeyRef")
			}
			
			def void setCsmJobKeyRef(org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmJobKeyRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar431.accessors.Csm.CsmCallbacks.CsmCallback getCsmJobPrimitiveCallbackRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmCallbacks.CsmCallback), "CsmJobPrimitiveCallbackRef")
			}
			
			def void setCsmJobPrimitiveCallbackRef(org.artop.ecuc.autosar431.accessors.Csm.CsmCallbacks.CsmCallback object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmJobPrimitiveCallbackRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives getCsmJobPrimitiveRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives), "CsmJobPrimitiveRef")
			}
			
			def void setCsmJobPrimitiveRef(org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmJobPrimitiveRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue getCsmJobQueueRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue), "CsmJobQueueRef")
			}
			
			def void setCsmJobQueueRef(org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmJobQueueRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class CsmKeys implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmKeys)){
				return false
			}
			this.target == (object as CsmKeys).target
		}
	
		
		
		def List<CsmKey> getCsmKeys(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKey")
				}
			}
			return new BasicWrappingEList<CsmKey, GContainer>(filteredContainers, typeof(CsmKey), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey csmKey) {
					csmKey.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKey"))
					super.delegateAdd(csmKey)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey csmKey) {
					csmKey.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKey"))
					super.delegateAdd(index, csmKey)
				}
			}
		}
		
		
		static class CsmKey implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmKey)){
					return false
				}
				this.target == (object as CsmKey).target
			}
		
			def BigInteger getCsmKeyId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyId"].getBigIntegerValue()
			}
			
			def void setCsmKeyId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCsmKeyUsePort(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyUsePort"].getBooleanValue()
			}
			
			def void setCsmKeyUsePort(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyUsePort"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyUsePort"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar431.accessors.CryIf.CryIfKey getCsmKeyRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.CryIf.CryIfKey), "CsmKeyRef")
			}
			
			def void setCsmKeyRef(org.artop.ecuc.autosar431.accessors.CryIf.CryIfKey object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmKeyRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class CsmPrimitives implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmPrimitives)){
				return false
			}
			this.target == (object as CsmPrimitives).target
		}
	
		
		
		def CsmAEADDecrypt getCsmAEADDecrypt(){
			containerValue.getByType(typeof(CsmAEADDecrypt))
		}
		
		def void setCsmAEADDecrypt(CsmAEADDecrypt csmAEADDecrypt){
			val GContainer subContainer = csmAEADDecrypt.getTarget()
			containerValue.setContainer(subContainer, "CsmAEADDecrypt")
		}
		
		def CsmAEADEncrypt getCsmAEADEncrypt(){
			containerValue.getByType(typeof(CsmAEADEncrypt))
		}
		
		def void setCsmAEADEncrypt(CsmAEADEncrypt csmAEADEncrypt){
			val GContainer subContainer = csmAEADEncrypt.getTarget()
			containerValue.setContainer(subContainer, "CsmAEADEncrypt")
		}
		
		def CsmDecrypt getCsmDecrypt(){
			containerValue.getByType(typeof(CsmDecrypt))
		}
		
		def void setCsmDecrypt(CsmDecrypt csmDecrypt){
			val GContainer subContainer = csmDecrypt.getTarget()
			containerValue.setContainer(subContainer, "CsmDecrypt")
		}
		
		def CsmEncrypt getCsmEncrypt(){
			containerValue.getByType(typeof(CsmEncrypt))
		}
		
		def void setCsmEncrypt(CsmEncrypt csmEncrypt){
			val GContainer subContainer = csmEncrypt.getTarget()
			containerValue.setContainer(subContainer, "CsmEncrypt")
		}
		
		def CsmHash getCsmHash(){
			containerValue.getByType(typeof(CsmHash))
		}
		
		def void setCsmHash(CsmHash csmHash){
			val GContainer subContainer = csmHash.getTarget()
			containerValue.setContainer(subContainer, "CsmHash")
		}
		
		def CsmMacGenerate getCsmMacGenerate(){
			containerValue.getByType(typeof(CsmMacGenerate))
		}
		
		def void setCsmMacGenerate(CsmMacGenerate csmMacGenerate){
			val GContainer subContainer = csmMacGenerate.getTarget()
			containerValue.setContainer(subContainer, "CsmMacGenerate")
		}
		
		def CsmMacVerify getCsmMacVerify(){
			containerValue.getByType(typeof(CsmMacVerify))
		}
		
		def void setCsmMacVerify(CsmMacVerify csmMacVerify){
			val GContainer subContainer = csmMacVerify.getTarget()
			containerValue.setContainer(subContainer, "CsmMacVerify")
		}
		
		def CsmRandomGenerate getCsmRandomGenerate(){
			containerValue.getByType(typeof(CsmRandomGenerate))
		}
		
		def void setCsmRandomGenerate(CsmRandomGenerate csmRandomGenerate){
			val GContainer subContainer = csmRandomGenerate.getTarget()
			containerValue.setContainer(subContainer, "CsmRandomGenerate")
		}
		
		def CsmSecureCounter getCsmSecureCounter(){
			containerValue.getByType(typeof(CsmSecureCounter))
		}
		
		def void setCsmSecureCounter(CsmSecureCounter csmSecureCounter){
			val GContainer subContainer = csmSecureCounter.getTarget()
			containerValue.setContainer(subContainer, "CsmSecureCounter")
		}
		
		def CsmSignatureGenerate getCsmSignatureGenerate(){
			containerValue.getByType(typeof(CsmSignatureGenerate))
		}
		
		def void setCsmSignatureGenerate(CsmSignatureGenerate csmSignatureGenerate){
			val GContainer subContainer = csmSignatureGenerate.getTarget()
			containerValue.setContainer(subContainer, "CsmSignatureGenerate")
		}
		
		def CsmSignatureVerify getCsmSignatureVerify(){
			containerValue.getByType(typeof(CsmSignatureVerify))
		}
		
		def void setCsmSignatureVerify(CsmSignatureVerify csmSignatureVerify){
			val GContainer subContainer = csmSignatureVerify.getTarget()
			containerValue.setContainer(subContainer, "CsmSignatureVerify")
		}
		
		
		static class CsmAEADDecrypt implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAEADDecrypt)){
					return false
				}
				this.target == (object as CsmAEADDecrypt).target
			}
		
			
			
			def CsmAEADDecryptConfig getCsmAEADDecryptConfig(){
				containerValue.getByType(typeof(CsmAEADDecryptConfig))
			}
			
			def void setCsmAEADDecryptConfig(CsmAEADDecryptConfig csmAEADDecryptConfig){
				val GContainer subContainer = csmAEADDecryptConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmAEADDecryptConfig")
			}
			
			
			static class CsmAEADDecryptConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmAEADDecryptConfig)){
						return false
					}
					this.target == (object as CsmAEADDecryptConfig).target
				}
			
				def CsmAEADDecryptAlgorithmFamiliy getCsmAEADDecryptAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmFamiliy"].getCsmAEADDecryptAlgorithmFamiliyValue()
				}
				
				def void setCsmAEADDecryptAlgorithmFamiliy(CsmAEADDecryptAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmAEADDecryptAlgorithmFamiliy {
					CRYPTO_ALGOFAM_3DES, 
					CRYPTO_ALGOFAM_AES, 
					CRYPTO_ALGOFAM_CUSTOM
				}
				
				def CsmAEADDecryptAlgorithmFamiliy getCsmAEADDecryptAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_3DES" : CsmAEADDecryptAlgorithmFamiliy.CRYPTO_ALGOFAM_3DES
						case "CRYPTO_ALGOFAM_AES" : CsmAEADDecryptAlgorithmFamiliy.CRYPTO_ALGOFAM_AES
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmAEADDecryptAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
					}
				}
				
				def void setCsmAEADDecryptAlgorithmFamiliyValue(GParameterValue parameterValue, CsmAEADDecryptAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmAEADDecryptAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmAEADDecryptAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADDecryptAlgorithmKeyLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmKeyLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADDecryptAlgorithmKeyLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmKeyLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptAlgorithmKeyLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmAEADDecryptAlgorithmMode getCsmAEADDecryptAlgorithmMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmMode"].getCsmAEADDecryptAlgorithmModeValue()
				}
				
				def void setCsmAEADDecryptAlgorithmMode(CsmAEADDecryptAlgorithmMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptAlgorithmMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmAEADDecryptAlgorithmMode {
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOMODE_GCM
				}
				
				def CsmAEADDecryptAlgorithmMode getCsmAEADDecryptAlgorithmModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmAEADDecryptAlgorithmMode.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOMODE_GCM" : CsmAEADDecryptAlgorithmMode.CRYPTO_ALGOMODE_GCM
					}
				}
				
				def void setCsmAEADDecryptAlgorithmModeValue(GParameterValue parameterValue, CsmAEADDecryptAlgorithmMode value){
					parameterValue.setValue(value)
				}
				
				def String getCsmAEADDecryptAlgorithmModeCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmModeCustom"].getStringValue()
				}
				
				def void setCsmAEADDecryptAlgorithmModeCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAlgorithmModeCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptAlgorithmModeCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADDecryptAssociatedDataMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAssociatedDataMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADDecryptAssociatedDataMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptAssociatedDataMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptAssociatedDataMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADDecryptCiphertextMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptCiphertextMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADDecryptCiphertextMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptCiphertextMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptCiphertextMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADDecryptPlaintextMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptPlaintextMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADDecryptPlaintextMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptPlaintextMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptPlaintextMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmAEADDecryptProcessing getCsmAEADDecryptProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptProcessing"].getCsmAEADDecryptProcessingValue()
				}
				
				def void setCsmAEADDecryptProcessing(CsmAEADDecryptProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmAEADDecryptProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmAEADDecryptProcessing getCsmAEADDecryptProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmAEADDecryptProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmAEADDecryptProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmAEADDecryptProcessingValue(GParameterValue parameterValue, CsmAEADDecryptProcessing value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADDecryptTagLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptTagLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADDecryptTagLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADDecryptTagLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADDecryptTagLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey getCsmAEADDecryptKeyRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey), "CsmAEADDecryptKeyRef")
				}
				
				def void setCsmAEADDecryptKeyRef(org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmAEADDecryptKeyRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue getCsmAEADDecryptQueueRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue), "CsmAEADDecryptQueueRef")
				}
				
				def void setCsmAEADDecryptQueueRef(org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmAEADDecryptQueueRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CsmAEADEncrypt implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmAEADEncrypt)){
					return false
				}
				this.target == (object as CsmAEADEncrypt).target
			}
		
			
			
			def CsmAEADEncryptConfig getCsmAEADEncryptConfig(){
				containerValue.getByType(typeof(CsmAEADEncryptConfig))
			}
			
			def void setCsmAEADEncryptConfig(CsmAEADEncryptConfig csmAEADEncryptConfig){
				val GContainer subContainer = csmAEADEncryptConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmAEADEncryptConfig")
			}
			
			
			static class CsmAEADEncryptConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmAEADEncryptConfig)){
						return false
					}
					this.target == (object as CsmAEADEncryptConfig).target
				}
			
				def CsmAEADEncryptAlgorithmFamiliy getCsmAEADEncryptAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmFamiliy"].getCsmAEADEncryptAlgorithmFamiliyValue()
				}
				
				def void setCsmAEADEncryptAlgorithmFamiliy(CsmAEADEncryptAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmAEADEncryptAlgorithmFamiliy {
					CRYPTO_ALGOFAM_3DES, 
					CRYPTO_ALGOFAM_AES, 
					CRYPTO_ALGOFAM_CUSTOM
				}
				
				def CsmAEADEncryptAlgorithmFamiliy getCsmAEADEncryptAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_3DES" : CsmAEADEncryptAlgorithmFamiliy.CRYPTO_ALGOFAM_3DES
						case "CRYPTO_ALGOFAM_AES" : CsmAEADEncryptAlgorithmFamiliy.CRYPTO_ALGOFAM_AES
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmAEADEncryptAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
					}
				}
				
				def void setCsmAEADEncryptAlgorithmFamiliyValue(GParameterValue parameterValue, CsmAEADEncryptAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmAEADEncryptAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmAEADEncryptAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADEncryptAlgorithmKeyLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmKeyLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADEncryptAlgorithmKeyLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmKeyLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptAlgorithmKeyLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmAEADEncryptAlgorithmMode getCsmAEADEncryptAlgorithmMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmMode"].getCsmAEADEncryptAlgorithmModeValue()
				}
				
				def void setCsmAEADEncryptAlgorithmMode(CsmAEADEncryptAlgorithmMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptAlgorithmMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmAEADEncryptAlgorithmMode {
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOMODE_GCM
				}
				
				def CsmAEADEncryptAlgorithmMode getCsmAEADEncryptAlgorithmModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmAEADEncryptAlgorithmMode.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOMODE_GCM" : CsmAEADEncryptAlgorithmMode.CRYPTO_ALGOMODE_GCM
					}
				}
				
				def void setCsmAEADEncryptAlgorithmModeValue(GParameterValue parameterValue, CsmAEADEncryptAlgorithmMode value){
					parameterValue.setValue(value)
				}
				
				def String getCsmAEADEncryptAlgorithmModeCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmModeCustom"].getStringValue()
				}
				
				def void setCsmAEADEncryptAlgorithmModeCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAlgorithmModeCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptAlgorithmModeCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADEncryptAssociatedDataMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAssociatedDataMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADEncryptAssociatedDataMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptAssociatedDataMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptAssociatedDataMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADEncryptCiphertextMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptCiphertextMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADEncryptCiphertextMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptCiphertextMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptCiphertextMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADEncryptPlaintextMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptPlaintextMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADEncryptPlaintextMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptPlaintextMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptPlaintextMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmAEADEncryptProcessing getCsmAEADEncryptProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptProcessing"].getCsmAEADEncryptProcessingValue()
				}
				
				def void setCsmAEADEncryptProcessing(CsmAEADEncryptProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmAEADEncryptProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmAEADEncryptProcessing getCsmAEADEncryptProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmAEADEncryptProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmAEADEncryptProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmAEADEncryptProcessingValue(GParameterValue parameterValue, CsmAEADEncryptProcessing value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmAEADEncryptTagLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptTagLength"].getBigIntegerValue()
				}
				
				def void setCsmAEADEncryptTagLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAEADEncryptTagLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmAEADEncryptTagLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey getCsmAEADEncryptKeyRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey), "CsmAEADEncryptKeyRef")
				}
				
				def void setCsmAEADEncryptKeyRef(org.artop.ecuc.autosar431.accessors.Csm.CsmKeys.CsmKey object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmAEADEncryptKeyRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue getCsmAEADEncryptQueueRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue), "CsmAEADEncryptQueueRef")
				}
				
				def void setCsmAEADEncryptQueueRef(org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmAEADEncryptQueueRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CsmDecrypt implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmDecrypt)){
					return false
				}
				this.target == (object as CsmDecrypt).target
			}
		
			
			
			def CsmDecryptConfig getCsmDecryptConfig(){
				containerValue.getByType(typeof(CsmDecryptConfig))
			}
			
			def void setCsmDecryptConfig(CsmDecryptConfig csmDecryptConfig){
				val GContainer subContainer = csmDecryptConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmDecryptConfig")
			}
			
			
			static class CsmDecryptConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmDecryptConfig)){
						return false
					}
					this.target == (object as CsmDecryptConfig).target
				}
			
				def CsmDecryptAlgorithmFamiliy getCsmDecryptAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmFamiliy"].getCsmDecryptAlgorithmFamiliyValue()
				}
				
				def void setCsmDecryptAlgorithmFamiliy(CsmDecryptAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmDecryptAlgorithmFamiliy {
					CRYPTO_ALGOFAM_3DES, 
					CRYPTO_ALGOFAM_AES, 
					CRYPTO_ALGOFAM_CHACHA, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_ECIES, 
					CRYPTO_ALGOFAM_RSA
				}
				
				def CsmDecryptAlgorithmFamiliy getCsmDecryptAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_3DES" : CsmDecryptAlgorithmFamiliy.CRYPTO_ALGOFAM_3DES
						case "CRYPTO_ALGOFAM_AES" : CsmDecryptAlgorithmFamiliy.CRYPTO_ALGOFAM_AES
						case "CRYPTO_ALGOFAM_CHACHA" : CsmDecryptAlgorithmFamiliy.CRYPTO_ALGOFAM_CHACHA
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmDecryptAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_ECIES" : CsmDecryptAlgorithmFamiliy.CRYPTO_ALGOFAM_ECIES
						case "CRYPTO_ALGOFAM_RSA" : CsmDecryptAlgorithmFamiliy.CRYPTO_ALGOFAM_RSA
					}
				}
				
				def void setCsmDecryptAlgorithmFamiliyValue(GParameterValue parameterValue, CsmDecryptAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmDecryptAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmDecryptAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmDecryptAlgorithmKeyLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmKeyLength"].getBigIntegerValue()
				}
				
				def void setCsmDecryptAlgorithmKeyLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmKeyLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptAlgorithmKeyLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmDecryptAlgorithmMode getCsmDecryptAlgorithmMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmMode"].getCsmDecryptAlgorithmModeValue()
				}
				
				def void setCsmDecryptAlgorithmMode(CsmDecryptAlgorithmMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptAlgorithmMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmDecryptAlgorithmMode {
					CRYPTO_ALGOMODE_12ROUNDS, 
					CRYPTO_ALGOMODE_20ROUNDS, 
					CRYPTO_ALGOMODE_8ROUNDS, 
					CRYPTO_ALGOMODE_CBC, 
					CRYPTO_ALGOMODE_CFB, 
					CRYPTO_ALGOMODE_CTR, 
					CRYPTO_ALGOMODE_CUSTOM, 
					CRYPTO_ALGOMODE_ECB, 
					CRYPTO_ALGOMODE_OFB, 
					CRYPTO_ALGOMODE_RSAES_OAEP, 
					CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5, 
					CRYPTO_ALGOMODE_XTS
				}
				
				def CsmDecryptAlgorithmMode getCsmDecryptAlgorithmModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOMODE_12ROUNDS" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_12ROUNDS
						case "CRYPTO_ALGOMODE_20ROUNDS" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_20ROUNDS
						case "CRYPTO_ALGOMODE_8ROUNDS" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_8ROUNDS
						case "CRYPTO_ALGOMODE_CBC" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_CBC
						case "CRYPTO_ALGOMODE_CFB" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_CFB
						case "CRYPTO_ALGOMODE_CTR" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_CTR
						case "CRYPTO_ALGOMODE_CUSTOM" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_CUSTOM
						case "CRYPTO_ALGOMODE_ECB" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_ECB
						case "CRYPTO_ALGOMODE_OFB" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_OFB
						case "CRYPTO_ALGOMODE_RSAES_OAEP" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_RSAES_OAEP
						case "CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5
						case "CRYPTO_ALGOMODE_XTS" : CsmDecryptAlgorithmMode.CRYPTO_ALGOMODE_XTS
					}
				}
				
				def void setCsmDecryptAlgorithmModeValue(GParameterValue parameterValue, CsmDecryptAlgorithmMode value){
					parameterValue.setValue(value)
				}
				
				def String getCsmDecryptAlgorithmModeCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmModeCustom"].getStringValue()
				}
				
				def void setCsmDecryptAlgorithmModeCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmModeCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptAlgorithmModeCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmDecryptAlgorithmSecondaryFamily getCsmDecryptAlgorithmSecondaryFamily(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmSecondaryFamily"].getCsmDecryptAlgorithmSecondaryFamilyValue()
				}
				
				def void setCsmDecryptAlgorithmSecondaryFamily(CsmDecryptAlgorithmSecondaryFamily value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmSecondaryFamily"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptAlgorithmSecondaryFamily"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmDecryptAlgorithmSecondaryFamily {
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_NOT_SET
				}
				
				def CsmDecryptAlgorithmSecondaryFamily getCsmDecryptAlgorithmSecondaryFamilyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmDecryptAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_NOT_SET" : CsmDecryptAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_NOT_SET
					}
				}
				
				def void setCsmDecryptAlgorithmSecondaryFamilyValue(GParameterValue parameterValue, CsmDecryptAlgorithmSecondaryFamily value){
					parameterValue.setValue(value)
				}
				
				def String getCsmDecryptAlgorithmSecondaryFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmSecondaryFamilyCustom"].getStringValue()
				}
				
				def void setCsmDecryptAlgorithmSecondaryFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptAlgorithmSecondaryFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptAlgorithmSecondaryFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmDecryptDataMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptDataMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmDecryptDataMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptDataMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptDataMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmDecryptProcessing getCsmDecryptProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptProcessing"].getCsmDecryptProcessingValue()
				}
				
				def void setCsmDecryptProcessing(CsmDecryptProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmDecryptProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmDecryptProcessing getCsmDecryptProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmDecryptProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmDecryptProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmDecryptProcessingValue(GParameterValue parameterValue, CsmDecryptProcessing value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmDecryptResultMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptResultMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmDecryptResultMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecryptResultMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecryptResultMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CsmEncrypt implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmEncrypt)){
					return false
				}
				this.target == (object as CsmEncrypt).target
			}
		
			
			
			def CsmEncryptConfig getCsmEncryptConfig(){
				containerValue.getByType(typeof(CsmEncryptConfig))
			}
			
			def void setCsmEncryptConfig(CsmEncryptConfig csmEncryptConfig){
				val GContainer subContainer = csmEncryptConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmEncryptConfig")
			}
			
			
			static class CsmEncryptConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmEncryptConfig)){
						return false
					}
					this.target == (object as CsmEncryptConfig).target
				}
			
				def CsmEncryptAlgorithmFamiliy getCsmEncryptAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmFamiliy"].getCsmEncryptAlgorithmFamiliyValue()
				}
				
				def void setCsmEncryptAlgorithmFamiliy(CsmEncryptAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmEncryptAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmEncryptAlgorithmFamiliy {
					CRYPTO_ALGOFAM_3DES, 
					CRYPTO_ALGOFAM_AES, 
					CRYPTO_ALGOFAM_CHACHA, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_ECIES, 
					CRYPTO_ALGOFAM_RSA
				}
				
				def CsmEncryptAlgorithmFamiliy getCsmEncryptAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_3DES" : CsmEncryptAlgorithmFamiliy.CRYPTO_ALGOFAM_3DES
						case "CRYPTO_ALGOFAM_AES" : CsmEncryptAlgorithmFamiliy.CRYPTO_ALGOFAM_AES
						case "CRYPTO_ALGOFAM_CHACHA" : CsmEncryptAlgorithmFamiliy.CRYPTO_ALGOFAM_CHACHA
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmEncryptAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_ECIES" : CsmEncryptAlgorithmFamiliy.CRYPTO_ALGOFAM_ECIES
						case "CRYPTO_ALGOFAM_RSA" : CsmEncryptAlgorithmFamiliy.CRYPTO_ALGOFAM_RSA
					}
				}
				
				def void setCsmEncryptAlgorithmFamiliyValue(GParameterValue parameterValue, CsmEncryptAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmEncryptAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmEncryptAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmEncryptAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmEncryptAlgorithmMode getCsmEncryptAlgorithmMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmMode"].getCsmEncryptAlgorithmModeValue()
				}
				
				def void setCsmEncryptAlgorithmMode(CsmEncryptAlgorithmMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmEncryptAlgorithmMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmEncryptAlgorithmMode {
					CRYPTO_ALGOMODE_12ROUNDS, 
					CRYPTO_ALGOMODE_20ROUNDS, 
					CRYPTO_ALGOMODE_8ROUNDS, 
					CRYPTO_ALGOMODE_CBC, 
					CRYPTO_ALGOMODE_CFB, 
					CRYPTO_ALGOMODE_CTR, 
					CRYPTO_ALGOMODE_CUSTOM, 
					CRYPTO_ALGOMODE_ECB, 
					CRYPTO_ALGOMODE_NOT_SET, 
					CRYPTO_ALGOMODE_OFB, 
					CRYPTO_ALGOMODE_RSAES_OAEP, 
					CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5, 
					CRYPTO_ALGOMODE_XTS
				}
				
				def CsmEncryptAlgorithmMode getCsmEncryptAlgorithmModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOMODE_12ROUNDS" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_12ROUNDS
						case "CRYPTO_ALGOMODE_20ROUNDS" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_20ROUNDS
						case "CRYPTO_ALGOMODE_8ROUNDS" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_8ROUNDS
						case "CRYPTO_ALGOMODE_CBC" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_CBC
						case "CRYPTO_ALGOMODE_CFB" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_CFB
						case "CRYPTO_ALGOMODE_CTR" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_CTR
						case "CRYPTO_ALGOMODE_CUSTOM" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_CUSTOM
						case "CRYPTO_ALGOMODE_ECB" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_ECB
						case "CRYPTO_ALGOMODE_NOT_SET" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_NOT_SET
						case "CRYPTO_ALGOMODE_OFB" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_OFB
						case "CRYPTO_ALGOMODE_RSAES_OAEP" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_RSAES_OAEP
						case "CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_RSAES_PKCS1_v1_5
						case "CRYPTO_ALGOMODE_XTS" : CsmEncryptAlgorithmMode.CRYPTO_ALGOMODE_XTS
					}
				}
				
				def void setCsmEncryptAlgorithmModeValue(GParameterValue parameterValue, CsmEncryptAlgorithmMode value){
					parameterValue.setValue(value)
				}
				
				def String getCsmEncryptAlgorithmModeCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmModeCustom"].getStringValue()
				}
				
				def void setCsmEncryptAlgorithmModeCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmModeCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmEncryptAlgorithmModeCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmEncryptAlgorithmSecondaryFamily getCsmEncryptAlgorithmSecondaryFamily(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmSecondaryFamily"].getCsmEncryptAlgorithmSecondaryFamilyValue()
				}
				
				def void setCsmEncryptAlgorithmSecondaryFamily(CsmEncryptAlgorithmSecondaryFamily value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmSecondaryFamily"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmEncryptAlgorithmSecondaryFamily"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmEncryptAlgorithmSecondaryFamily {
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_NOT_SET
				}
				
				def CsmEncryptAlgorithmSecondaryFamily getCsmEncryptAlgorithmSecondaryFamilyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmEncryptAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_NOT_SET" : CsmEncryptAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_NOT_SET
					}
				}
				
				def void setCsmEncryptAlgorithmSecondaryFamilyValue(GParameterValue parameterValue, CsmEncryptAlgorithmSecondaryFamily value){
					parameterValue.setValue(value)
				}
				
				def String getCsmEncryptAlgorithmSecondaryFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmSecondaryFamilyCustom"].getStringValue()
				}
				
				def void setCsmEncryptAlgorithmSecondaryFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptAlgorithmSecondaryFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmEncryptAlgorithmSecondaryFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmEncryptDataMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptDataMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmEncryptDataMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptDataMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmEncryptDataMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmEncryptProcessing getCsmEncryptProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptProcessing"].getCsmEncryptProcessingValue()
				}
				
				def void setCsmEncryptProcessing(CsmEncryptProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmEncryptProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmEncryptProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmEncryptProcessing getCsmEncryptProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmEncryptProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmEncryptProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmEncryptProcessingValue(GParameterValue parameterValue, CsmEncryptProcessing value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmEncryptResultMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptResultMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmEncryptResultMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmEncryptResultMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmEncryptResultMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CsmHash implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmHash)){
					return false
				}
				this.target == (object as CsmHash).target
			}
		
			
			
			def CsmHashConfig getCsmHashConfig(){
				containerValue.getByType(typeof(CsmHashConfig))
			}
			
			def void setCsmHashConfig(CsmHashConfig csmHashConfig){
				val GContainer subContainer = csmHashConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmHashConfig")
			}
			
			
			static class CsmHashConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmHashConfig)){
						return false
					}
					this.target == (object as CsmHashConfig).target
				}
			
				def CsmHashAlgorithmFamiliy getCsmHashAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmFamiliy"].getCsmHashAlgorithmFamiliyValue()
				}
				
				def void setCsmHashAlgorithmFamiliy(CsmHashAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmHashAlgorithmFamiliy {
					CRYPTO_ALGOFAM_BLAKE_1_256, 
					CRYPTO_ALGOFAM_BLAKE_1_512, 
					CRYPTO_ALGOFAM_BLAKE_2s_256, 
					CRYPTO_ALGOFAM_BLAKE_2s_512, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_RIPEMD160, 
					CRYPTO_ALGOFAM_SHA1, 
					CRYPTO_ALGOFAM_SHA2_224, 
					CRYPTO_ALGOFAM_SHA2_256, 
					CRYPTO_ALGOFAM_SHA2_384, 
					CRYPTO_ALGOFAM_SHA2_512, 
					CRYPTO_ALGOFAM_SHA2_512_224, 
					CRYPTO_ALGOFAM_SHA2_512_256, 
					CRYPTO_ALGOFAM_SHA3_224, 
					CRYPTO_ALGOFAM_SHA3_256, 
					CRYPTO_ALGOFAM_SHA3_384, 
					CRYPTO_ALGOFAM_SHA3_512, 
					CRYPTO_ALGOFAM_SHA3_SHAKE128, 
					CRYPTO_ALGOFAM_SHA3_SHAKE256
				}
				
				def CsmHashAlgorithmFamiliy getCsmHashAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_BLAKE_1_256" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_1_256
						case "CRYPTO_ALGOFAM_BLAKE_1_512" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_1_512
						case "CRYPTO_ALGOFAM_BLAKE_2s_256" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_2s_256
						case "CRYPTO_ALGOFAM_BLAKE_2s_512" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_2s_512
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_RIPEMD160" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_RIPEMD160
						case "CRYPTO_ALGOFAM_SHA1" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA1
						case "CRYPTO_ALGOFAM_SHA2_224" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_224
						case "CRYPTO_ALGOFAM_SHA2_256" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_256
						case "CRYPTO_ALGOFAM_SHA2_384" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_384
						case "CRYPTO_ALGOFAM_SHA2_512" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512
						case "CRYPTO_ALGOFAM_SHA2_512_224" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512_224
						case "CRYPTO_ALGOFAM_SHA2_512_256" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512_256
						case "CRYPTO_ALGOFAM_SHA3_224" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_224
						case "CRYPTO_ALGOFAM_SHA3_256" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_256
						case "CRYPTO_ALGOFAM_SHA3_384" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_384
						case "CRYPTO_ALGOFAM_SHA3_512" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_512
						case "CRYPTO_ALGOFAM_SHA3_SHAKE128" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_SHAKE128
						case "CRYPTO_ALGOFAM_SHA3_SHAKE256" : CsmHashAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_SHAKE256
					}
				}
				
				def void setCsmHashAlgorithmFamiliyValue(GParameterValue parameterValue, CsmHashAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmHashAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmHashAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmHashAlgorithmMode getCsmHashAlgorithmMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmMode"].getCsmHashAlgorithmModeValue()
				}
				
				def void setCsmHashAlgorithmMode(CsmHashAlgorithmMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashAlgorithmMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmHashAlgorithmMode {
					CRYPTO_ALGOMODE_CUSTOM, 
					CRYPTO_ALGOMODE_NOT_SET
				}
				
				def CsmHashAlgorithmMode getCsmHashAlgorithmModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOMODE_CUSTOM" : CsmHashAlgorithmMode.CRYPTO_ALGOMODE_CUSTOM
						case "CRYPTO_ALGOMODE_NOT_SET" : CsmHashAlgorithmMode.CRYPTO_ALGOMODE_NOT_SET
					}
				}
				
				def void setCsmHashAlgorithmModeValue(GParameterValue parameterValue, CsmHashAlgorithmMode value){
					parameterValue.setValue(value)
				}
				
				def String getCsmHashAlgorithmModeCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmModeCustom"].getStringValue()
				}
				
				def void setCsmHashAlgorithmModeCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmModeCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashAlgorithmModeCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmHashAlgorithmSecondaryFamily getCsmHashAlgorithmSecondaryFamily(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmSecondaryFamily"].getCsmHashAlgorithmSecondaryFamilyValue()
				}
				
				def void setCsmHashAlgorithmSecondaryFamily(CsmHashAlgorithmSecondaryFamily value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmSecondaryFamily"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashAlgorithmSecondaryFamily"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmHashAlgorithmSecondaryFamily {
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_NOT_SET
				}
				
				def CsmHashAlgorithmSecondaryFamily getCsmHashAlgorithmSecondaryFamilyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmHashAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_NOT_SET" : CsmHashAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_NOT_SET
					}
				}
				
				def void setCsmHashAlgorithmSecondaryFamilyValue(GParameterValue parameterValue, CsmHashAlgorithmSecondaryFamily value){
					parameterValue.setValue(value)
				}
				
				def String getCsmHashAlgorithmSecondaryFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmSecondaryFamilyCustom"].getStringValue()
				}
				
				def void setCsmHashAlgorithmSecondaryFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashAlgorithmSecondaryFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashAlgorithmSecondaryFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmHashDataMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashDataMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmHashDataMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashDataMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashDataMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmHashProcessing getCsmHashProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashProcessing"].getCsmHashProcessingValue()
				}
				
				def void setCsmHashProcessing(CsmHashProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmHashProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmHashProcessing getCsmHashProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmHashProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmHashProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmHashProcessingValue(GParameterValue parameterValue, CsmHashProcessing value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmHashResultLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashResultLength"].getBigIntegerValue()
				}
				
				def void setCsmHashResultLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashResultLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashResultLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CsmMacGenerate implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmMacGenerate)){
					return false
				}
				this.target == (object as CsmMacGenerate).target
			}
		
			
			
			def CsmMacGenerateConfig getCsmMacGenerateConfig(){
				containerValue.getByType(typeof(CsmMacGenerateConfig))
			}
			
			def void setCsmMacGenerateConfig(CsmMacGenerateConfig csmMacGenerateConfig){
				val GContainer subContainer = csmMacGenerateConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmMacGenerateConfig")
			}
			
			
			static class CsmMacGenerateConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmMacGenerateConfig)){
						return false
					}
					this.target == (object as CsmMacGenerateConfig).target
				}
			
				def CsmMacGenerateAlgorithmFamiliy getCsmMacGenerateAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmFamiliy"].getCsmMacGenerateAlgorithmFamiliyValue()
				}
				
				def void setCsmMacGenerateAlgorithmFamiliy(CsmMacGenerateAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmMacGenerateAlgorithmFamiliy {
					CRYPTO_ALGOFAM_3DES, 
					CRYPTO_ALGOFAM_AES, 
					CRYPTO_ALGOFAM_BLAKE_1_256, 
					CRYPTO_ALGOFAM_BLAKE_1_512, 
					CRYPTO_ALGOFAM_BLAKE_2s_256, 
					CRYPTO_ALGOFAM_BLAKE_2s_512, 
					CRYPTO_ALGOFAM_CHACHA, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_RIPEMD160, 
					CRYPTO_ALGOFAM_RNG, 
					CRYPTO_ALGOFAM_SHA1, 
					CRYPTO_ALGOFAM_SHA2_224, 
					CRYPTO_ALGOFAM_SHA2_256, 
					CRYPTO_ALGOFAM_SHA2_384, 
					CRYPTO_ALGOFAM_SHA2_512, 
					CRYPTO_ALGOFAM_SHA2_512_224, 
					CRYPTO_ALGOFAM_SHA2_512_256, 
					CRYPTO_ALGOFAM_SHA3_224, 
					CRYPTO_ALGOFAM_SHA3_256, 
					CRYPTO_ALGOFAM_SHA3_384, 
					CRYPTO_ALGOFAM_SHA3_512, 
					CRYPTO_ALGOFAM_SHA3_SHAKE128, 
					CRYPTO_ALGOFAM_SHA3_SHAKE256
				}
				
				def CsmMacGenerateAlgorithmFamiliy getCsmMacGenerateAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_3DES" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_3DES
						case "CRYPTO_ALGOFAM_AES" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_AES
						case "CRYPTO_ALGOFAM_BLAKE_1_256" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_1_256
						case "CRYPTO_ALGOFAM_BLAKE_1_512" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_1_512
						case "CRYPTO_ALGOFAM_BLAKE_2s_256" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_2s_256
						case "CRYPTO_ALGOFAM_BLAKE_2s_512" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_2s_512
						case "CRYPTO_ALGOFAM_CHACHA" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_CHACHA
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_RIPEMD160" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_RIPEMD160
						case "CRYPTO_ALGOFAM_RNG" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_RNG
						case "CRYPTO_ALGOFAM_SHA1" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA1
						case "CRYPTO_ALGOFAM_SHA2_224" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_224
						case "CRYPTO_ALGOFAM_SHA2_256" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_256
						case "CRYPTO_ALGOFAM_SHA2_384" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_384
						case "CRYPTO_ALGOFAM_SHA2_512" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512
						case "CRYPTO_ALGOFAM_SHA2_512_224" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512_224
						case "CRYPTO_ALGOFAM_SHA2_512_256" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512_256
						case "CRYPTO_ALGOFAM_SHA3_224" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_224
						case "CRYPTO_ALGOFAM_SHA3_256" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_256
						case "CRYPTO_ALGOFAM_SHA3_384" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_384
						case "CRYPTO_ALGOFAM_SHA3_512" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_512
						case "CRYPTO_ALGOFAM_SHA3_SHAKE128" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_SHAKE128
						case "CRYPTO_ALGOFAM_SHA3_SHAKE256" : CsmMacGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_SHAKE256
					}
				}
				
				def void setCsmMacGenerateAlgorithmFamiliyValue(GParameterValue parameterValue, CsmMacGenerateAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmMacGenerateAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmMacGenerateAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmMacGenerateAlgorithmKeyLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmKeyLength"].getBigIntegerValue()
				}
				
				def void setCsmMacGenerateAlgorithmKeyLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmKeyLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateAlgorithmKeyLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmMacGenerateAlgorithmMode getCsmMacGenerateAlgorithmMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmMode"].getCsmMacGenerateAlgorithmModeValue()
				}
				
				def void setCsmMacGenerateAlgorithmMode(CsmMacGenerateAlgorithmMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateAlgorithmMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmMacGenerateAlgorithmMode {
					CRYPTO_ALGOMODE_CMAC, 
					CRYPTO_ALGOMODE_CTRDRBG, 
					CRYPTO_ALGOMODE_CUSTOM, 
					CRYPTO_ALGOMODE_GMAC, 
					CRYPTO_ALGOMODE_HMAC, 
					CRYPTO_ALGOMODE_NOT_SET, 
					CRYPTO_ALGOMODE_SIPHASH_2_4, 
					CRYPTO_ALGOMODE_SIPHASH_4_8
				}
				
				def CsmMacGenerateAlgorithmMode getCsmMacGenerateAlgorithmModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOMODE_CMAC" : CsmMacGenerateAlgorithmMode.CRYPTO_ALGOMODE_CMAC
						case "CRYPTO_ALGOMODE_CTRDRBG" : CsmMacGenerateAlgorithmMode.CRYPTO_ALGOMODE_CTRDRBG
						case "CRYPTO_ALGOMODE_CUSTOM" : CsmMacGenerateAlgorithmMode.CRYPTO_ALGOMODE_CUSTOM
						case "CRYPTO_ALGOMODE_GMAC" : CsmMacGenerateAlgorithmMode.CRYPTO_ALGOMODE_GMAC
						case "CRYPTO_ALGOMODE_HMAC" : CsmMacGenerateAlgorithmMode.CRYPTO_ALGOMODE_HMAC
						case "CRYPTO_ALGOMODE_NOT_SET" : CsmMacGenerateAlgorithmMode.CRYPTO_ALGOMODE_NOT_SET
						case "CRYPTO_ALGOMODE_SIPHASH_2_4" : CsmMacGenerateAlgorithmMode.CRYPTO_ALGOMODE_SIPHASH_2_4
						case "CRYPTO_ALGOMODE_SIPHASH_4_8" : CsmMacGenerateAlgorithmMode.CRYPTO_ALGOMODE_SIPHASH_4_8
					}
				}
				
				def void setCsmMacGenerateAlgorithmModeValue(GParameterValue parameterValue, CsmMacGenerateAlgorithmMode value){
					parameterValue.setValue(value)
				}
				
				def String getCsmMacGenerateAlgorithmModeCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmModeCustom"].getStringValue()
				}
				
				def void setCsmMacGenerateAlgorithmModeCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmModeCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateAlgorithmModeCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmMacGenerateAlgorithmSecondaryFamily getCsmMacGenerateAlgorithmSecondaryFamily(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmSecondaryFamily"].getCsmMacGenerateAlgorithmSecondaryFamilyValue()
				}
				
				def void setCsmMacGenerateAlgorithmSecondaryFamily(CsmMacGenerateAlgorithmSecondaryFamily value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmSecondaryFamily"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateAlgorithmSecondaryFamily"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmMacGenerateAlgorithmSecondaryFamily {
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_NOT_SET
				}
				
				def CsmMacGenerateAlgorithmSecondaryFamily getCsmMacGenerateAlgorithmSecondaryFamilyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmMacGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_NOT_SET" : CsmMacGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_NOT_SET
					}
				}
				
				def void setCsmMacGenerateAlgorithmSecondaryFamilyValue(GParameterValue parameterValue, CsmMacGenerateAlgorithmSecondaryFamily value){
					parameterValue.setValue(value)
				}
				
				def String getCsmMacGenerateAlgorithmSecondaryFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmSecondaryFamilyCustom"].getStringValue()
				}
				
				def void setCsmMacGenerateAlgorithmSecondaryFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateAlgorithmSecondaryFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateAlgorithmSecondaryFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmMacGenerateDataMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateDataMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmMacGenerateDataMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateDataMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateDataMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmMacGenerateProcessing getCsmMacGenerateProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateProcessing"].getCsmMacGenerateProcessingValue()
				}
				
				def void setCsmMacGenerateProcessing(CsmMacGenerateProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmMacGenerateProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmMacGenerateProcessing getCsmMacGenerateProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmMacGenerateProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmMacGenerateProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmMacGenerateProcessingValue(GParameterValue parameterValue, CsmMacGenerateProcessing value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmMacGenerateResultLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateResultLength"].getBigIntegerValue()
				}
				
				def void setCsmMacGenerateResultLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateResultLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateResultLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CsmMacVerify implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmMacVerify)){
					return false
				}
				this.target == (object as CsmMacVerify).target
			}
		
			
			
			def CsmMacVerifyConfig getCsmMacVerifyConfig(){
				containerValue.getByType(typeof(CsmMacVerifyConfig))
			}
			
			def void setCsmMacVerifyConfig(CsmMacVerifyConfig csmMacVerifyConfig){
				val GContainer subContainer = csmMacVerifyConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmMacVerifyConfig")
			}
			
			
			static class CsmMacVerifyConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmMacVerifyConfig)){
						return false
					}
					this.target == (object as CsmMacVerifyConfig).target
				}
			
				def CsmMacVerifyAlgorithmFamiliy getCsmMacVerifyAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyAlgorithmFamiliy"].getCsmMacVerifyAlgorithmFamiliyValue()
				}
				
				def void setCsmMacVerifyAlgorithmFamiliy(CsmMacVerifyAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmMacVerifyAlgorithmFamiliy {
					CRYPTO_ALGOFAM_AES, 
					CRYPTO_ALGOFAM_BLAKE_1_256, 
					CRYPTO_ALGOFAM_BLAKE_1_512, 
					CRYPTO_ALGOFAM_BLAKE_2s_256, 
					CRYPTO_ALGOFAM_BLAKE_2s_512, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_RIPEMD160, 
					CRYPTO_ALGOFAM_SHA1, 
					CRYPTO_ALGOFAM_SHA2_224, 
					CRYPTO_ALGOFAM_SHA2_256, 
					CRYPTO_ALGOFAM_SHA2_384, 
					CRYPTO_ALGOFAM_SHA2_512, 
					CRYPTO_ALGOFAM_SHA2_512_224, 
					CRYPTO_ALGOFAM_SHA2_512_256, 
					CRYPTO_ALGOFAM_SHA3_224, 
					CRYPTO_ALGOFAM_SHA3_256, 
					CRYPTO_ALGOFAM_SHA3_384, 
					CRYPTO_ALGOFAM_SHA3_512, 
					CRYPTO_ALGOFAM_SHA3_SHAKE128, 
					CRYPTO_ALGOFAM_SHA3_SHAKE256, 
					CRYPTO_ALGOFAM_SIPHASH
				}
				
				def CsmMacVerifyAlgorithmFamiliy getCsmMacVerifyAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_AES" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_AES
						case "CRYPTO_ALGOFAM_BLAKE_1_256" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_1_256
						case "CRYPTO_ALGOFAM_BLAKE_1_512" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_1_512
						case "CRYPTO_ALGOFAM_BLAKE_2s_256" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_2s_256
						case "CRYPTO_ALGOFAM_BLAKE_2s_512" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_2s_512
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_RIPEMD160" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_RIPEMD160
						case "CRYPTO_ALGOFAM_SHA1" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA1
						case "CRYPTO_ALGOFAM_SHA2_224" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_224
						case "CRYPTO_ALGOFAM_SHA2_256" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_256
						case "CRYPTO_ALGOFAM_SHA2_384" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_384
						case "CRYPTO_ALGOFAM_SHA2_512" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512
						case "CRYPTO_ALGOFAM_SHA2_512_224" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512_224
						case "CRYPTO_ALGOFAM_SHA2_512_256" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512_256
						case "CRYPTO_ALGOFAM_SHA3_224" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_224
						case "CRYPTO_ALGOFAM_SHA3_256" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_256
						case "CRYPTO_ALGOFAM_SHA3_384" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_384
						case "CRYPTO_ALGOFAM_SHA3_512" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_512
						case "CRYPTO_ALGOFAM_SHA3_SHAKE128" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_SHAKE128
						case "CRYPTO_ALGOFAM_SHA3_SHAKE256" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_SHAKE256
						case "CRYPTO_ALGOFAM_SIPHASH" : CsmMacVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_SIPHASH
					}
				}
				
				def void setCsmMacVerifyAlgorithmFamiliyValue(GParameterValue parameterValue, CsmMacVerifyAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmMacVerifyAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmMacVerifyAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmMacVerifyAlgorithmSecondaryFamily getCsmMacVerifyAlgorithmSecondaryFamily(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyAlgorithmSecondaryFamily"].getCsmMacVerifyAlgorithmSecondaryFamilyValue()
				}
				
				def void setCsmMacVerifyAlgorithmSecondaryFamily(CsmMacVerifyAlgorithmSecondaryFamily value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyAlgorithmSecondaryFamily"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyAlgorithmSecondaryFamily"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmMacVerifyAlgorithmSecondaryFamily {
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_NOT_SET
				}
				
				def CsmMacVerifyAlgorithmSecondaryFamily getCsmMacVerifyAlgorithmSecondaryFamilyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmMacVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_NOT_SET" : CsmMacVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_NOT_SET
					}
				}
				
				def void setCsmMacVerifyAlgorithmSecondaryFamilyValue(GParameterValue parameterValue, CsmMacVerifyAlgorithmSecondaryFamily value){
					parameterValue.setValue(value)
				}
				
				def String getCsmMacVerifyAlgorithmSecondaryFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyAlgorithmSecondaryFamilyCustom"].getStringValue()
				}
				
				def void setCsmMacVerifyAlgorithmSecondaryFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyAlgorithmSecondaryFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyAlgorithmSecondaryFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmMacVerifyCompareLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyCompareLength"].getBigIntegerValue()
				}
				
				def void setCsmMacVerifyCompareLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyCompareLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyCompareLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmMacVerifyDataMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyDataMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmMacVerifyDataMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyDataMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyDataMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmMacVerifyProcessing getCsmMacVerifyProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyProcessing"].getCsmMacVerifyProcessingValue()
				}
				
				def void setCsmMacVerifyProcessing(CsmMacVerifyProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmMacVerifyProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmMacVerifyProcessing getCsmMacVerifyProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmMacVerifyProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmMacVerifyProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmMacVerifyProcessingValue(GParameterValue parameterValue, CsmMacVerifyProcessing value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CsmRandomGenerate implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmRandomGenerate)){
					return false
				}
				this.target == (object as CsmRandomGenerate).target
			}
		
			
			
			def CsmRandomGenerateConfig getCsmRandomGenerateConfig(){
				containerValue.getByType(typeof(CsmRandomGenerateConfig))
			}
			
			def void setCsmRandomGenerateConfig(CsmRandomGenerateConfig csmRandomGenerateConfig){
				val GContainer subContainer = csmRandomGenerateConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmRandomGenerateConfig")
			}
			
			
			static class CsmRandomGenerateConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmRandomGenerateConfig)){
						return false
					}
					this.target == (object as CsmRandomGenerateConfig).target
				}
			
				def CsmRandomGenerateAlgorithmFamiliy getCsmRandomGenerateAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmFamiliy"].getCsmRandomGenerateAlgorithmFamiliyValue()
				}
				
				def void setCsmRandomGenerateAlgorithmFamiliy(CsmRandomGenerateAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmRandomGenerateAlgorithmFamiliy {
					CRYPTO_ALGOFAM_3DES, 
					CRYPTO_ALGOFAM_AES, 
					CRYPTO_ALGOFAM_BLAKE_1_256, 
					CRYPTO_ALGOFAM_BLAKE_1_512, 
					CRYPTO_ALGOFAM_BLAKE_2s_256, 
					CRYPTO_ALGOFAM_BLAKE_2s_512, 
					CRYPTO_ALGOFAM_CHACHA, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_RIPEMD160, 
					CRYPTO_ALGOFAM_RNG, 
					CRYPTO_ALGOFAM_SHA1, 
					CRYPTO_ALGOFAM_SHA2_224, 
					CRYPTO_ALGOFAM_SHA2_256, 
					CRYPTO_ALGOFAM_SHA2_384, 
					CRYPTO_ALGOFAM_SHA2_512, 
					CRYPTO_ALGOFAM_SHA2_512_224, 
					CRYPTO_ALGOFAM_SHA2_512_256, 
					CRYPTO_ALGOFAM_SHA3_224, 
					CRYPTO_ALGOFAM_SHA3_256, 
					CRYPTO_ALGOFAM_SHA3_384, 
					CRYPTO_ALGOFAM_SHA3_512, 
					CRYPTO_ALGOFAM_SHA3_SHAKE128, 
					CRYPTO_ALGOFAM_SHA3_SHAKE256
				}
				
				def CsmRandomGenerateAlgorithmFamiliy getCsmRandomGenerateAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_3DES" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_3DES
						case "CRYPTO_ALGOFAM_AES" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_AES
						case "CRYPTO_ALGOFAM_BLAKE_1_256" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_1_256
						case "CRYPTO_ALGOFAM_BLAKE_1_512" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_1_512
						case "CRYPTO_ALGOFAM_BLAKE_2s_256" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_2s_256
						case "CRYPTO_ALGOFAM_BLAKE_2s_512" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_BLAKE_2s_512
						case "CRYPTO_ALGOFAM_CHACHA" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_CHACHA
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_RIPEMD160" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_RIPEMD160
						case "CRYPTO_ALGOFAM_RNG" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_RNG
						case "CRYPTO_ALGOFAM_SHA1" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA1
						case "CRYPTO_ALGOFAM_SHA2_224" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_224
						case "CRYPTO_ALGOFAM_SHA2_256" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_256
						case "CRYPTO_ALGOFAM_SHA2_384" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_384
						case "CRYPTO_ALGOFAM_SHA2_512" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512
						case "CRYPTO_ALGOFAM_SHA2_512_224" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512_224
						case "CRYPTO_ALGOFAM_SHA2_512_256" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA2_512_256
						case "CRYPTO_ALGOFAM_SHA3_224" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_224
						case "CRYPTO_ALGOFAM_SHA3_256" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_256
						case "CRYPTO_ALGOFAM_SHA3_384" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_384
						case "CRYPTO_ALGOFAM_SHA3_512" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_512
						case "CRYPTO_ALGOFAM_SHA3_SHAKE128" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_SHAKE128
						case "CRYPTO_ALGOFAM_SHA3_SHAKE256" : CsmRandomGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_SHA3_SHAKE256
					}
				}
				
				def void setCsmRandomGenerateAlgorithmFamiliyValue(GParameterValue parameterValue, CsmRandomGenerateAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmRandomGenerateAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmRandomGenerateAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmRandomGenerateAlgorithmMode getCsmRandomGenerateAlgorithmMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmMode"].getCsmRandomGenerateAlgorithmModeValue()
				}
				
				def void setCsmRandomGenerateAlgorithmMode(CsmRandomGenerateAlgorithmMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateAlgorithmMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmRandomGenerateAlgorithmMode {
					CRYPTO_ALGOMODE_CMAC, 
					CRYPTO_ALGOMODE_CTRDRBG, 
					CRYPTO_ALGOMODE_CUSTOM, 
					CRYPTO_ALGOMODE_GMAC, 
					CRYPTO_ALGOMODE_HMAC, 
					CRYPTO_ALGOMODE_NOT_SET, 
					CRYPTO_ALGOMODE_SIPHASH_2_4, 
					CRYPTO_ALGOMODE_SIPHASH_4_8
				}
				
				def CsmRandomGenerateAlgorithmMode getCsmRandomGenerateAlgorithmModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOMODE_CMAC" : CsmRandomGenerateAlgorithmMode.CRYPTO_ALGOMODE_CMAC
						case "CRYPTO_ALGOMODE_CTRDRBG" : CsmRandomGenerateAlgorithmMode.CRYPTO_ALGOMODE_CTRDRBG
						case "CRYPTO_ALGOMODE_CUSTOM" : CsmRandomGenerateAlgorithmMode.CRYPTO_ALGOMODE_CUSTOM
						case "CRYPTO_ALGOMODE_GMAC" : CsmRandomGenerateAlgorithmMode.CRYPTO_ALGOMODE_GMAC
						case "CRYPTO_ALGOMODE_HMAC" : CsmRandomGenerateAlgorithmMode.CRYPTO_ALGOMODE_HMAC
						case "CRYPTO_ALGOMODE_NOT_SET" : CsmRandomGenerateAlgorithmMode.CRYPTO_ALGOMODE_NOT_SET
						case "CRYPTO_ALGOMODE_SIPHASH_2_4" : CsmRandomGenerateAlgorithmMode.CRYPTO_ALGOMODE_SIPHASH_2_4
						case "CRYPTO_ALGOMODE_SIPHASH_4_8" : CsmRandomGenerateAlgorithmMode.CRYPTO_ALGOMODE_SIPHASH_4_8
					}
				}
				
				def void setCsmRandomGenerateAlgorithmModeValue(GParameterValue parameterValue, CsmRandomGenerateAlgorithmMode value){
					parameterValue.setValue(value)
				}
				
				def String getCsmRandomGenerateAlgorithmModeCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmModeCustom"].getStringValue()
				}
				
				def void setCsmRandomGenerateAlgorithmModeCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmModeCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateAlgorithmModeCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmRandomGenerateAlgorithmSecondaryFamily getCsmRandomGenerateAlgorithmSecondaryFamily(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmSecondaryFamily"].getCsmRandomGenerateAlgorithmSecondaryFamilyValue()
				}
				
				def void setCsmRandomGenerateAlgorithmSecondaryFamily(CsmRandomGenerateAlgorithmSecondaryFamily value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmSecondaryFamily"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateAlgorithmSecondaryFamily"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmRandomGenerateAlgorithmSecondaryFamily {
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_NOT_SET
				}
				
				def CsmRandomGenerateAlgorithmSecondaryFamily getCsmRandomGenerateAlgorithmSecondaryFamilyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmRandomGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_NOT_SET" : CsmRandomGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_NOT_SET
					}
				}
				
				def void setCsmRandomGenerateAlgorithmSecondaryFamilyValue(GParameterValue parameterValue, CsmRandomGenerateAlgorithmSecondaryFamily value){
					parameterValue.setValue(value)
				}
				
				def String getCsmRandomGenerateAlgorithmSecondaryFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmSecondaryFamilyCustom"].getStringValue()
				}
				
				def void setCsmRandomGenerateAlgorithmSecondaryFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateAlgorithmSecondaryFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateAlgorithmSecondaryFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmRandomGenerateProcessing getCsmRandomGenerateProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateProcessing"].getCsmRandomGenerateProcessingValue()
				}
				
				def void setCsmRandomGenerateProcessing(CsmRandomGenerateProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmRandomGenerateProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmRandomGenerateProcessing getCsmRandomGenerateProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmRandomGenerateProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmRandomGenerateProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmRandomGenerateProcessingValue(GParameterValue parameterValue, CsmRandomGenerateProcessing value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmRandomGenerateResultLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateResultLength"].getBigIntegerValue()
				}
				
				def void setCsmRandomGenerateResultLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateResultLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateResultLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CsmSecureCounter implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSecureCounter)){
					return false
				}
				this.target == (object as CsmSecureCounter).target
			}
		
			
			
			def CsmSecureCounterConfig getCsmSecureCounterConfig(){
				containerValue.getByType(typeof(CsmSecureCounterConfig))
			}
			
			def void setCsmSecureCounterConfig(CsmSecureCounterConfig csmSecureCounterConfig){
				val GContainer subContainer = csmSecureCounterConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmSecureCounterConfig")
			}
			
			
			static class CsmSecureCounterConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmSecureCounterConfig)){
						return false
					}
					this.target == (object as CsmSecureCounterConfig).target
				}
			
				
				def org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue getCsmSecureCounterQueueRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue), "CsmSecureCounterQueueRef")
				}
				
				def void setCsmSecureCounterQueueRef(org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmSecureCounterQueueRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CsmSignatureGenerate implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSignatureGenerate)){
					return false
				}
				this.target == (object as CsmSignatureGenerate).target
			}
		
			
			
			def CsmSignatureGenerateConfig getCsmSignatureGenerateConfig(){
				containerValue.getByType(typeof(CsmSignatureGenerateConfig))
			}
			
			def void setCsmSignatureGenerateConfig(CsmSignatureGenerateConfig csmSignatureGenerateConfig){
				val GContainer subContainer = csmSignatureGenerateConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmSignatureGenerateConfig")
			}
			
			
			static class CsmSignatureGenerateConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmSignatureGenerateConfig)){
						return false
					}
					this.target == (object as CsmSignatureGenerateConfig).target
				}
			
				def CsmSignatureGenerateAlgorithmFamiliy getCsmSignatureGenerateAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmFamiliy"].getCsmSignatureGenerateAlgorithmFamiliyValue()
				}
				
				def void setCsmSignatureGenerateAlgorithmFamiliy(CsmSignatureGenerateAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmSignatureGenerateAlgorithmFamiliy {
					CRYPTO_ALGOFAM_BRAINPOOL, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_ECCNIST, 
					CRYPTO_ALGOFAM_ED25519, 
					CRYPTO_ALGOFAM_RSA
				}
				
				def CsmSignatureGenerateAlgorithmFamiliy getCsmSignatureGenerateAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_BRAINPOOL" : CsmSignatureGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_BRAINPOOL
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmSignatureGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_ECCNIST" : CsmSignatureGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_ECCNIST
						case "CRYPTO_ALGOFAM_ED25519" : CsmSignatureGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_ED25519
						case "CRYPTO_ALGOFAM_RSA" : CsmSignatureGenerateAlgorithmFamiliy.CRYPTO_ALGOFAM_RSA
					}
				}
				
				def void setCsmSignatureGenerateAlgorithmFamiliyValue(GParameterValue parameterValue, CsmSignatureGenerateAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmSignatureGenerateAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmSignatureGenerateAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmSignatureGenerateAlgorithmMode getCsmSignatureGenerateAlgorithmMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmMode"].getCsmSignatureGenerateAlgorithmModeValue()
				}
				
				def void setCsmSignatureGenerateAlgorithmMode(CsmSignatureGenerateAlgorithmMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateAlgorithmMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmSignatureGenerateAlgorithmMode {
					CRYPTO_ALGOMODE_CUSTOM, 
					CRYPTO_ALGOMODE_NOT_SET, 
					CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5, 
					CRYPTO_ALGOMODE_RSASSA_PSS
				}
				
				def CsmSignatureGenerateAlgorithmMode getCsmSignatureGenerateAlgorithmModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOMODE_CUSTOM" : CsmSignatureGenerateAlgorithmMode.CRYPTO_ALGOMODE_CUSTOM
						case "CRYPTO_ALGOMODE_NOT_SET" : CsmSignatureGenerateAlgorithmMode.CRYPTO_ALGOMODE_NOT_SET
						case "CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5" : CsmSignatureGenerateAlgorithmMode.CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5
						case "CRYPTO_ALGOMODE_RSASSA_PSS" : CsmSignatureGenerateAlgorithmMode.CRYPTO_ALGOMODE_RSASSA_PSS
					}
				}
				
				def void setCsmSignatureGenerateAlgorithmModeValue(GParameterValue parameterValue, CsmSignatureGenerateAlgorithmMode value){
					parameterValue.setValue(value)
				}
				
				def String getCsmSignatureGenerateAlgorithmModeCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmModeCustom"].getStringValue()
				}
				
				def void setCsmSignatureGenerateAlgorithmModeCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmModeCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateAlgorithmModeCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmSignatureGenerateAlgorithmSecondaryFamily getCsmSignatureGenerateAlgorithmSecondaryFamily(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmSecondaryFamily"].getCsmSignatureGenerateAlgorithmSecondaryFamilyValue()
				}
				
				def void setCsmSignatureGenerateAlgorithmSecondaryFamily(CsmSignatureGenerateAlgorithmSecondaryFamily value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmSecondaryFamily"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateAlgorithmSecondaryFamily"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmSignatureGenerateAlgorithmSecondaryFamily {
					CRYPTO_ALGOFAM_BLAKE, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_NOT_SET, 
					CRYPTO_ALGOFAM_RIPEMD160, 
					CRYPTO_ALGOFAM_SHA1, 
					CRYPTO_ALGOFAM_SHA2_224, 
					CRYPTO_ALGOFAM_SHA2_256, 
					CRYPTO_ALGOFAM_SHA2_384, 
					CRYPTO_ALGOFAM_SHA2_512, 
					CRYPTO_ALGOFAM_SHA2_512_224, 
					CRYPTO_ALGOFAM_SHA2_512_256, 
					CRYPTO_ALGOFAM_SHA3_224, 
					CRYPTO_ALGOFAM_SHA3_256, 
					CRYPTO_ALGOFAM_SHA3_384, 
					CRYPTO_ALGOFAM_SHA3_512, 
					CRYPTO_ALGOFAM_SHA3_SHAKE128, 
					CRYPTO_ALGOFAM_SHA3_SHAKE256
				}
				
				def CsmSignatureGenerateAlgorithmSecondaryFamily getCsmSignatureGenerateAlgorithmSecondaryFamilyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_BLAKE" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_BLAKE
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_NOT_SET" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_NOT_SET
						case "CRYPTO_ALGOFAM_RIPEMD160" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_RIPEMD160
						case "CRYPTO_ALGOFAM_SHA1" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA1
						case "CRYPTO_ALGOFAM_SHA2_224" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_224
						case "CRYPTO_ALGOFAM_SHA2_256" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_256
						case "CRYPTO_ALGOFAM_SHA2_384" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_384
						case "CRYPTO_ALGOFAM_SHA2_512" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_512
						case "CRYPTO_ALGOFAM_SHA2_512_224" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_512_224
						case "CRYPTO_ALGOFAM_SHA2_512_256" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_512_256
						case "CRYPTO_ALGOFAM_SHA3_224" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_224
						case "CRYPTO_ALGOFAM_SHA3_256" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_256
						case "CRYPTO_ALGOFAM_SHA3_384" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_384
						case "CRYPTO_ALGOFAM_SHA3_512" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_512
						case "CRYPTO_ALGOFAM_SHA3_SHAKE128" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_SHAKE128
						case "CRYPTO_ALGOFAM_SHA3_SHAKE256" : CsmSignatureGenerateAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_SHAKE256
					}
				}
				
				def void setCsmSignatureGenerateAlgorithmSecondaryFamilyValue(GParameterValue parameterValue, CsmSignatureGenerateAlgorithmSecondaryFamily value){
					parameterValue.setValue(value)
				}
				
				def String getCsmSignatureGenerateAlgorithmSecondaryFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmSecondaryFamilyCustom"].getStringValue()
				}
				
				def void setCsmSignatureGenerateAlgorithmSecondaryFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateAlgorithmSecondaryFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateAlgorithmSecondaryFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmSignatureGenerateDataMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateDataMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmSignatureGenerateDataMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateDataMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateDataMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmSignatureGenerateKeyLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateKeyLength"].getBigIntegerValue()
				}
				
				def void setCsmSignatureGenerateKeyLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateKeyLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateKeyLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmSignatureGenerateProcessing getCsmSignatureGenerateProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateProcessing"].getCsmSignatureGenerateProcessingValue()
				}
				
				def void setCsmSignatureGenerateProcessing(CsmSignatureGenerateProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmSignatureGenerateProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmSignatureGenerateProcessing getCsmSignatureGenerateProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmSignatureGenerateProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmSignatureGenerateProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmSignatureGenerateProcessingValue(GParameterValue parameterValue, CsmSignatureGenerateProcessing value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmSignatureGenerateResultLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateResultLength"].getBigIntegerValue()
				}
				
				def void setCsmSignatureGenerateResultLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateResultLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateResultLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CsmSignatureVerify implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmSignatureVerify)){
					return false
				}
				this.target == (object as CsmSignatureVerify).target
			}
		
			
			
			def CsmSignatureVerifyConfig getCsmSignatureVerifyConfig(){
				containerValue.getByType(typeof(CsmSignatureVerifyConfig))
			}
			
			def void setCsmSignatureVerifyConfig(CsmSignatureVerifyConfig csmSignatureVerifyConfig){
				val GContainer subContainer = csmSignatureVerifyConfig.getTarget()
				containerValue.setContainer(subContainer, "CsmSignatureVerifyConfig")
			}
			
			
			static class CsmSignatureVerifyConfig implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof CsmSignatureVerifyConfig)){
						return false
					}
					this.target == (object as CsmSignatureVerifyConfig).target
				}
			
				def CsmSignatureVerifyAlgorithmFamiliy getCsmSignatureVerifyAlgorithmFamiliy(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmFamiliy"].getCsmSignatureVerifyAlgorithmFamiliyValue()
				}
				
				def void setCsmSignatureVerifyAlgorithmFamiliy(CsmSignatureVerifyAlgorithmFamiliy value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmFamiliy"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyAlgorithmFamiliy"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmSignatureVerifyAlgorithmFamiliy {
					CRYPTO_ALGOFAM_BRAINPOOL, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_ECCNIST, 
					CRYPTO_ALGOFAM_ED25519, 
					CRYPTO_ALGOFAM_RSA
				}
				
				def CsmSignatureVerifyAlgorithmFamiliy getCsmSignatureVerifyAlgorithmFamiliyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_BRAINPOOL" : CsmSignatureVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_BRAINPOOL
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmSignatureVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_ECCNIST" : CsmSignatureVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_ECCNIST
						case "CRYPTO_ALGOFAM_ED25519" : CsmSignatureVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_ED25519
						case "CRYPTO_ALGOFAM_RSA" : CsmSignatureVerifyAlgorithmFamiliy.CRYPTO_ALGOFAM_RSA
					}
				}
				
				def void setCsmSignatureVerifyAlgorithmFamiliyValue(GParameterValue parameterValue, CsmSignatureVerifyAlgorithmFamiliy value){
					parameterValue.setValue(value)
				}
				
				def String getCsmSignatureVerifyAlgorithmFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmFamilyCustom"].getStringValue()
				}
				
				def void setCsmSignatureVerifyAlgorithmFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyAlgorithmFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmSignatureVerifyAlgorithmMode getCsmSignatureVerifyAlgorithmMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmMode"].getCsmSignatureVerifyAlgorithmModeValue()
				}
				
				def void setCsmSignatureVerifyAlgorithmMode(CsmSignatureVerifyAlgorithmMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyAlgorithmMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmSignatureVerifyAlgorithmMode {
					CRYPTO_ALGOMODE_CUSTOM, 
					CRYPTO_ALGOMODE_NOT_SET, 
					CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5, 
					CRYPTO_ALGOMODE_RSASSA_PSS
				}
				
				def CsmSignatureVerifyAlgorithmMode getCsmSignatureVerifyAlgorithmModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOMODE_CUSTOM" : CsmSignatureVerifyAlgorithmMode.CRYPTO_ALGOMODE_CUSTOM
						case "CRYPTO_ALGOMODE_NOT_SET" : CsmSignatureVerifyAlgorithmMode.CRYPTO_ALGOMODE_NOT_SET
						case "CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5" : CsmSignatureVerifyAlgorithmMode.CRYPTO_ALGOMODE_RSASSA_PKCS1_v1_5
						case "CRYPTO_ALGOMODE_RSASSA_PSS" : CsmSignatureVerifyAlgorithmMode.CRYPTO_ALGOMODE_RSASSA_PSS
					}
				}
				
				def void setCsmSignatureVerifyAlgorithmModeValue(GParameterValue parameterValue, CsmSignatureVerifyAlgorithmMode value){
					parameterValue.setValue(value)
				}
				
				def String getCsmSignatureVerifyAlgorithmModeCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmModeCustom"].getStringValue()
				}
				
				def void setCsmSignatureVerifyAlgorithmModeCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmModeCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyAlgorithmModeCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmSignatureVerifyAlgorithmSecondaryFamily getCsmSignatureVerifyAlgorithmSecondaryFamily(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmSecondaryFamily"].getCsmSignatureVerifyAlgorithmSecondaryFamilyValue()
				}
				
				def void setCsmSignatureVerifyAlgorithmSecondaryFamily(CsmSignatureVerifyAlgorithmSecondaryFamily value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmSecondaryFamily"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyAlgorithmSecondaryFamily"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmSignatureVerifyAlgorithmSecondaryFamily {
					CRYPTO_ALGOFAM_BLAKE, 
					CRYPTO_ALGOFAM_CUSTOM, 
					CRYPTO_ALGOFAM_NOT_SET, 
					CRYPTO_ALGOFAM_RIPEMD160, 
					CRYPTO_ALGOFAM_SHA1, 
					CRYPTO_ALGOFAM_SHA2_224, 
					CRYPTO_ALGOFAM_SHA2_256, 
					CRYPTO_ALGOFAM_SHA2_384, 
					CRYPTO_ALGOFAM_SHA2_512, 
					CRYPTO_ALGOFAM_SHA2_512_224, 
					CRYPTO_ALGOFAM_SHA2_512_256, 
					CRYPTO_ALGOFAM_SHA3_224, 
					CRYPTO_ALGOFAM_SHA3_256, 
					CRYPTO_ALGOFAM_SHA3_384, 
					CRYPTO_ALGOFAM_SHA3_512, 
					CRYPTO_ALGOFAM_SHA3_SHAKE128, 
					CRYPTO_ALGOFAM_SHA3_SHAKE256
				}
				
				def CsmSignatureVerifyAlgorithmSecondaryFamily getCsmSignatureVerifyAlgorithmSecondaryFamilyValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CRYPTO_ALGOFAM_BLAKE" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_BLAKE
						case "CRYPTO_ALGOFAM_CUSTOM" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_CUSTOM
						case "CRYPTO_ALGOFAM_NOT_SET" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_NOT_SET
						case "CRYPTO_ALGOFAM_RIPEMD160" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_RIPEMD160
						case "CRYPTO_ALGOFAM_SHA1" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA1
						case "CRYPTO_ALGOFAM_SHA2_224" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_224
						case "CRYPTO_ALGOFAM_SHA2_256" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_256
						case "CRYPTO_ALGOFAM_SHA2_384" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_384
						case "CRYPTO_ALGOFAM_SHA2_512" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_512
						case "CRYPTO_ALGOFAM_SHA2_512_224" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_512_224
						case "CRYPTO_ALGOFAM_SHA2_512_256" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA2_512_256
						case "CRYPTO_ALGOFAM_SHA3_224" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_224
						case "CRYPTO_ALGOFAM_SHA3_256" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_256
						case "CRYPTO_ALGOFAM_SHA3_384" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_384
						case "CRYPTO_ALGOFAM_SHA3_512" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_512
						case "CRYPTO_ALGOFAM_SHA3_SHAKE128" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_SHAKE128
						case "CRYPTO_ALGOFAM_SHA3_SHAKE256" : CsmSignatureVerifyAlgorithmSecondaryFamily.CRYPTO_ALGOFAM_SHA3_SHAKE256
					}
				}
				
				def void setCsmSignatureVerifyAlgorithmSecondaryFamilyValue(GParameterValue parameterValue, CsmSignatureVerifyAlgorithmSecondaryFamily value){
					parameterValue.setValue(value)
				}
				
				def String getCsmSignatureVerifyAlgorithmSecondaryFamilyCustom(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmSecondaryFamilyCustom"].getStringValue()
				}
				
				def void setCsmSignatureVerifyAlgorithmSecondaryFamilyCustom(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyAlgorithmSecondaryFamilyCustom"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyAlgorithmSecondaryFamilyCustom"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmSignatureVerifyCompareLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyCompareLength"].getBigIntegerValue()
				}
				
				def void setCsmSignatureVerifyCompareLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyCompareLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyCompareLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCsmSignatureVerifyDataMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyDataMaxLength"].getBigIntegerValue()
				}
				
				def void setCsmSignatureVerifyDataMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyDataMaxLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyDataMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CsmSignatureVerifyProcessing getCsmSignatureVerifyProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyProcessing"].getCsmSignatureVerifyProcessingValue()
				}
				
				def void setCsmSignatureVerifyProcessing(CsmSignatureVerifyProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CsmSignatureVerifyProcessing {
					CSM_ASYNCHRONOUS, 
					CSM_SYNCHRONOUS
				}
				
				def CsmSignatureVerifyProcessing getCsmSignatureVerifyProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CSM_ASYNCHRONOUS" : CsmSignatureVerifyProcessing.CSM_ASYNCHRONOUS
						case "CSM_SYNCHRONOUS" : CsmSignatureVerifyProcessing.CSM_SYNCHRONOUS
					}
				}
				
				def void setCsmSignatureVerifyProcessingValue(GParameterValue parameterValue, CsmSignatureVerifyProcessing value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class CsmQueues implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof CsmQueues)){
				return false
			}
			this.target == (object as CsmQueues).target
		}
	
		
		
		def List<CsmQueue> getCsmQueues(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmQueue")
				}
			}
			return new BasicWrappingEList<CsmQueue, GContainer>(filteredContainers, typeof(CsmQueue), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue csmQueue) {
					csmQueue.target?.gSetDefinition(containerValue.getContainerDefinition("CsmQueue"))
					super.delegateAdd(csmQueue)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.Csm.CsmQueues.CsmQueue csmQueue) {
					csmQueue.target?.gSetDefinition(containerValue.getContainerDefinition("CsmQueue"))
					super.delegateAdd(index, csmQueue)
				}
			}
		}
		
		
		static class CsmQueue implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof CsmQueue)){
					return false
				}
				this.target == (object as CsmQueue).target
			}
		
			def BigInteger getCsmQueueSize(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmQueueSize"].getBigIntegerValue()
			}
			
			def void setCsmQueueSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmQueueSize"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CsmQueueSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar431.accessors.CryIf.CryIfChannel getCsmChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.CryIf.CryIfChannel), "CsmChannelRef")
			}
			
			def void setCsmChannelRef(org.artop.ecuc.autosar431.accessors.CryIf.CryIfChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CsmChannelRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Csm)){
			return false
		}
		this.target == (object as Csm).target
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
