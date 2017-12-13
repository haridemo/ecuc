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
package org.artop.ecuc.autosar444.accessors

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

class SomeIpTp implements IWrapper<GModuleConfiguration> {
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

	def List<SomeIpTpChannel> getSomeIpTpChannels(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "SomeIpTpChannel")
			}
		}
		return new BasicWrappingEList<SomeIpTpChannel, GContainer>(filteredContainers, typeof(SomeIpTpChannel), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar444.accessors.SomeIpTp.SomeIpTpChannel someIpTpChannel) {
				someIpTpChannel.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SomeIpTpChannel"))
				super.delegateAdd(someIpTpChannel)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.SomeIpTp.SomeIpTpChannel someIpTpChannel) {
				someIpTpChannel.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SomeIpTpChannel"))
				super.delegateAdd(index, someIpTpChannel)
			}
		}
	}
	def SomeIpTpGeneral getSomeIpTpGeneral(){
		moduleConfiguration.getByType(typeof(SomeIpTpGeneral))
	}

	def void setSomeIpTpGeneral(SomeIpTpGeneral someIpTpGeneral){
		val GContainer container = someIpTpGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "SomeIpTpGeneral")
	}

	static class SomeIpTpChannel implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof SomeIpTpChannel)){
				return false
			}
			this.target == (object as SomeIpTpChannel).target
		}
	
		def BigDecimal getSomeIpTpNPduSeparationTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpNPduSeparationTime"].getBigDecimalValue()
		}
		
		def void setSomeIpTpNPduSeparationTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpNPduSeparationTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SomeIpTpNPduSeparationTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getSomeIpTpRxTimeoutTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpRxTimeoutTime"].getBigDecimalValue()
		}
		
		def void setSomeIpTpRxTimeoutTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpRxTimeoutTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SomeIpTpRxTimeoutTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<SomeIpTpRxNSdu> getSomeIpTpRxNSdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SomeIpTpRxNSdu")
				}
			}
			return new BasicWrappingEList<SomeIpTpRxNSdu, GContainer>(filteredContainers, typeof(SomeIpTpRxNSdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.SomeIpTp.SomeIpTpChannel.SomeIpTpRxNSdu someIpTpRxNSdu) {
					someIpTpRxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("SomeIpTpRxNSdu"))
					super.delegateAdd(someIpTpRxNSdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.SomeIpTp.SomeIpTpChannel.SomeIpTpRxNSdu someIpTpRxNSdu) {
					someIpTpRxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("SomeIpTpRxNSdu"))
					super.delegateAdd(index, someIpTpRxNSdu)
				}
			}
		}
		
		def List<SomeIpTpTxNSdu> getSomeIpTpTxNSdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SomeIpTpTxNSdu")
				}
			}
			return new BasicWrappingEList<SomeIpTpTxNSdu, GContainer>(filteredContainers, typeof(SomeIpTpTxNSdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.SomeIpTp.SomeIpTpChannel.SomeIpTpTxNSdu someIpTpTxNSdu) {
					someIpTpTxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("SomeIpTpTxNSdu"))
					super.delegateAdd(someIpTpTxNSdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.SomeIpTp.SomeIpTpChannel.SomeIpTpTxNSdu someIpTpTxNSdu) {
					someIpTpTxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("SomeIpTpTxNSdu"))
					super.delegateAdd(index, someIpTpTxNSdu)
				}
			}
		}
		
		
		static class SomeIpTpRxNSdu implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof SomeIpTpRxNSdu)){
					return false
				}
				this.target == (object as SomeIpTpRxNSdu).target
			}
		
			
			def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSomeIpTpRxSduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SomeIpTpRxSduRef")
			}
			
			def void setSomeIpTpRxSduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SomeIpTpRxSduRef"], object.getTarget())
				}
			}
			
			
			def SomeIpTpRxNPdu getSomeIpTpRxNPdu(){
				containerValue.getByType(typeof(SomeIpTpRxNPdu))
			}
			
			def void setSomeIpTpRxNPdu(SomeIpTpRxNPdu someIpTpRxNPdu){
				val GContainer subContainer = someIpTpRxNPdu.getTarget()
				containerValue.setContainer(subContainer, "SomeIpTpRxNPdu")
			}
			
			
			static class SomeIpTpRxNPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof SomeIpTpRxNPdu)){
						return false
					}
					this.target == (object as SomeIpTpRxNPdu).target
				}
			
				def BigInteger getSomeIpTpRxNPduHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpRxNPduHandleId"].getBigIntegerValue()
				}
				
				def void setSomeIpTpRxNPduHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpRxNPduHandleId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SomeIpTpRxNPduHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSomeIpTpRxNPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SomeIpTpRxNPduRef")
				}
				
				def void setSomeIpTpRxNPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SomeIpTpRxNPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class SomeIpTpTxNSdu implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof SomeIpTpTxNSdu)){
					return false
				}
				this.target == (object as SomeIpTpTxNSdu).target
			}
		
			def BigInteger getSomeIpTpTxNSduHandleId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpTxNSduHandleId"].getBigIntegerValue()
			}
			
			def void setSomeIpTpTxNSduHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpTxNSduHandleId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SomeIpTpTxNSduHandleId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSomeIpTpTxNSduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SomeIpTpTxNSduRef")
			}
			
			def void setSomeIpTpTxNSduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SomeIpTpTxNSduRef"], object.getTarget())
				}
			}
			
			
			def SomeIpTpTxNPdu getSomeIpTpTxNPdu(){
				containerValue.getByType(typeof(SomeIpTpTxNPdu))
			}
			
			def void setSomeIpTpTxNPdu(SomeIpTpTxNPdu someIpTpTxNPdu){
				val GContainer subContainer = someIpTpTxNPdu.getTarget()
				containerValue.setContainer(subContainer, "SomeIpTpTxNPdu")
			}
			
			
			static class SomeIpTpTxNPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof SomeIpTpTxNPdu)){
						return false
					}
					this.target == (object as SomeIpTpTxNPdu).target
				}
			
				def BigInteger getSomeIpTpTxNPduHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpTxNPduHandleId"].getBigIntegerValue()
				}
				
				def void setSomeIpTpTxNPduHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpTxNPduHandleId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SomeIpTpTxNPduHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSomeIpTpTxNPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SomeIpTpTxNPduRef")
				}
				
				def void setSomeIpTpTxNPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SomeIpTpTxNPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class SomeIpTpGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof SomeIpTpGeneral)){
				return false
			}
			this.target == (object as SomeIpTpGeneral).target
		}
	
		def Boolean getSomeIpTpDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpDevErrorDetect"].getBooleanValue()
		}
		
		def void setSomeIpTpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SomeIpTpDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getSomeIpTpRxMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpRxMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setSomeIpTpRxMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpRxMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SomeIpTpRxMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getSomeIpTpTxMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpTxMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setSomeIpTpTxMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpTxMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SomeIpTpTxMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getSomeIpTpVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpVersionInfoApi"].getBooleanValue()
		}
		
		def void setSomeIpTpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SomeIpTpVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SomeIpTpVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof SomeIpTp)){
			return false
		}
		this.target == (object as SomeIpTp).target
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
