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
package org.artop.ecuc.autosar442.accessors

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

class J1939Nm implements IWrapper<GModuleConfiguration> {
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

	def J1939NmConfigSet getJ1939NmConfigSet(){
		moduleConfiguration.getByType(typeof(J1939NmConfigSet))
	}

	def void setJ1939NmConfigSet(J1939NmConfigSet j1939NmConfigSet){
		val GContainer container = j1939NmConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "J1939NmConfigSet")
	}
	def J1939NmGeneral getJ1939NmGeneral(){
		moduleConfiguration.getByType(typeof(J1939NmGeneral))
	}

	def void setJ1939NmGeneral(J1939NmGeneral j1939NmGeneral){
		val GContainer container = j1939NmGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "J1939NmGeneral")
	}

	static class J1939NmConfigSet implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof J1939NmConfigSet)){
				return false
			}
			this.target == (object as J1939NmConfigSet).target
		}
	
		
		
		def List<J1939NmChannel> getJ1939NmChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939NmChannel")
				}
			}
			return new BasicWrappingEList<J1939NmChannel, GContainer>(filteredContainers, typeof(J1939NmChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel j1939NmChannel) {
					j1939NmChannel.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmChannel"))
					super.delegateAdd(j1939NmChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel j1939NmChannel) {
					j1939NmChannel.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmChannel"))
					super.delegateAdd(index, j1939NmChannel)
				}
			}
		}
		
		def List<J1939NmExternalNode> getJ1939NmExternalNodes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939NmExternalNode")
				}
			}
			return new BasicWrappingEList<J1939NmExternalNode, GContainer>(filteredContainers, typeof(J1939NmExternalNode), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmExternalNode j1939NmExternalNode) {
					j1939NmExternalNode.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmExternalNode"))
					super.delegateAdd(j1939NmExternalNode)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmExternalNode j1939NmExternalNode) {
					j1939NmExternalNode.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmExternalNode"))
					super.delegateAdd(index, j1939NmExternalNode)
				}
			}
		}
		
		def List<J1939NmNode> getJ1939NmNodes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939NmNode")
				}
			}
			return new BasicWrappingEList<J1939NmNode, GContainer>(filteredContainers, typeof(J1939NmNode), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode j1939NmNode) {
					j1939NmNode.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmNode"))
					super.delegateAdd(j1939NmNode)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode j1939NmNode) {
					j1939NmNode.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmNode"))
					super.delegateAdd(index, j1939NmNode)
				}
			}
		}
		
		def List<J1939NmSharedAddressSpace> getJ1939NmSharedAddressSpaces(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939NmSharedAddressSpace")
				}
			}
			return new BasicWrappingEList<J1939NmSharedAddressSpace, GContainer>(filteredContainers, typeof(J1939NmSharedAddressSpace), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmSharedAddressSpace j1939NmSharedAddressSpace) {
					j1939NmSharedAddressSpace.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmSharedAddressSpace"))
					super.delegateAdd(j1939NmSharedAddressSpace)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmSharedAddressSpace j1939NmSharedAddressSpace) {
					j1939NmSharedAddressSpace.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmSharedAddressSpace"))
					super.delegateAdd(index, j1939NmSharedAddressSpace)
				}
			}
		}
		
		
		static class J1939NmChannel implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof J1939NmChannel)){
					return false
				}
				this.target == (object as J1939NmChannel).target
			}
		
			def Boolean getJ1939NmChannelUsesAddressArbitration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmChannelUsesAddressArbitration"].getBooleanValue()
			}
			
			def void setJ1939NmChannelUsesAddressArbitration(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmChannelUsesAddressArbitration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmChannelUsesAddressArbitration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel getJ1939NmComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel), "J1939NmComMNetworkHandleRef")
			}
			
			def void setJ1939NmComMNetworkHandleRef(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "J1939NmComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			
			def List<J1939NmNodeSpecificDemEventParameterRefs> getJ1939NmNodeSpecificDemEventParameterRefs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "J1939NmNodeSpecificDemEventParameterRefs")
					}
				}
				return new BasicWrappingEList<J1939NmNodeSpecificDemEventParameterRefs, GContainer>(filteredContainers, typeof(J1939NmNodeSpecificDemEventParameterRefs), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel.J1939NmNodeSpecificDemEventParameterRefs j1939NmNodeSpecificDemEventParameterRefs) {
						j1939NmNodeSpecificDemEventParameterRefs.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmNodeSpecificDemEventParameterRefs"))
						super.delegateAdd(j1939NmNodeSpecificDemEventParameterRefs)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel.J1939NmNodeSpecificDemEventParameterRefs j1939NmNodeSpecificDemEventParameterRefs) {
						j1939NmNodeSpecificDemEventParameterRefs.target?.gSetDefinition(containerValue.getContainerDefinition("J1939NmNodeSpecificDemEventParameterRefs"))
						super.delegateAdd(index, j1939NmNodeSpecificDemEventParameterRefs)
					}
				}
			}
			
			def J1939NmRxPdu getJ1939NmRxPdu(){
				containerValue.getByType(typeof(J1939NmRxPdu))
			}
			
			def void setJ1939NmRxPdu(J1939NmRxPdu j1939NmRxPdu){
				val GContainer subContainer = j1939NmRxPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939NmRxPdu")
			}
			
			def J1939NmTxPdu getJ1939NmTxPdu(){
				containerValue.getByType(typeof(J1939NmTxPdu))
			}
			
			def void setJ1939NmTxPdu(J1939NmTxPdu j1939NmTxPdu){
				val GContainer subContainer = j1939NmTxPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939NmTxPdu")
			}
			
			
			static class J1939NmNodeSpecificDemEventParameterRefs implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof J1939NmNodeSpecificDemEventParameterRefs)){
						return false
					}
					this.target == (object as J1939NmNodeSpecificDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter getJ1939NM_E_ADDRESS_LOST(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter), "J1939NM_E_ADDRESS_LOST")
				}
				
				def void setJ1939NM_E_ADDRESS_LOST(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "J1939NM_E_ADDRESS_LOST"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode getJ1939NmNodeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode), "J1939NmNodeRef")
				}
				
				def void setJ1939NmNodeRef(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "J1939NmNodeRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939NmRxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof J1939NmRxPdu)){
						return false
					}
					this.target == (object as J1939NmRxPdu).target
				}
			
				def BigInteger getJ1939NmRxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmRxPduId"].getBigIntegerValue()
				}
				
				def void setJ1939NmRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmRxPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmRxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939NmRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939NmRxPduRef")
				}
				
				def void setJ1939NmRxPduRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "J1939NmRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939NmTxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof J1939NmTxPdu)){
						return false
					}
					this.target == (object as J1939NmTxPdu).target
				}
			
				def BigInteger getJ1939NmTxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmTxPduId"].getBigIntegerValue()
				}
				
				def void setJ1939NmTxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmTxPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmTxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939NmTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939NmTxPduRef")
				}
				
				def void setJ1939NmTxPduRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "J1939NmTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class J1939NmExternalNode implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof J1939NmExternalNode)){
					return false
				}
				this.target == (object as J1939NmExternalNode).target
			}
		
			def BigInteger getJ1939NmExternalNodeId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeId"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodeId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getJ1939NmExternalNodeNameArbitraryAddressCapable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameArbitraryAddressCapable"].getBooleanValue()
			}
			
			def void setJ1939NmExternalNodeNameArbitraryAddressCapable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameArbitraryAddressCapable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeNameArbitraryAddressCapable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getJ1939NmExternalNodeNameECUInstance(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameECUInstance"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodeNameECUInstance(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameECUInstance"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeNameECUInstance"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmExternalNodeNameFunction(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameFunction"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodeNameFunction(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameFunction"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeNameFunction"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmExternalNodeNameFunctionInstance(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameFunctionInstance"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodeNameFunctionInstance(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameFunctionInstance"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeNameFunctionInstance"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmExternalNodeNameIdentityNumber(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameIdentityNumber"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodeNameIdentityNumber(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameIdentityNumber"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeNameIdentityNumber"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmExternalNodeNameIndustryGroup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameIndustryGroup"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodeNameIndustryGroup(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameIndustryGroup"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeNameIndustryGroup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmExternalNodeNameManufacturerCode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameManufacturerCode"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodeNameManufacturerCode(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameManufacturerCode"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeNameManufacturerCode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmExternalNodeNameVehicleSystem(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameVehicleSystem"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodeNameVehicleSystem(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameVehicleSystem"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeNameVehicleSystem"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmExternalNodeNameVehicleSystemInstance(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameVehicleSystemInstance"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodeNameVehicleSystemInstance(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodeNameVehicleSystemInstance"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodeNameVehicleSystemInstance"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmExternalNodePreferredAddress(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodePreferredAddress"].getBigIntegerValue()
			}
			
			def void setJ1939NmExternalNodePreferredAddress(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmExternalNodePreferredAddress"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmExternalNodePreferredAddress"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel> getJ1939NmExternalNodeChannelRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "J1939NmExternalNodeChannelRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "J1939NmExternalNodeChannelRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel)) {
					override protected wrap(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel object) throws CoreException {
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
								return new org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def List<org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel> getJ1939NmExternalNodeGatewayedChannelRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "J1939NmExternalNodeGatewayedChannelRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "J1939NmExternalNodeGatewayedChannelRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel)) {
					override protected wrap(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel object) throws CoreException {
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
								return new org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class J1939NmNode implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof J1939NmNode)){
					return false
				}
				this.target == (object as J1939NmNode).target
			}
		
			def BigInteger getJ1939NmNodeId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeId"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodeId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getJ1939NmNodeNameArbitraryAddressCapable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameArbitraryAddressCapable"].getBooleanValue()
			}
			
			def void setJ1939NmNodeNameArbitraryAddressCapable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameArbitraryAddressCapable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeNameArbitraryAddressCapable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getJ1939NmNodeNameECUInstance(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameECUInstance"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodeNameECUInstance(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameECUInstance"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeNameECUInstance"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmNodeNameFunction(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameFunction"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodeNameFunction(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameFunction"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeNameFunction"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmNodeNameFunctionInstance(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameFunctionInstance"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodeNameFunctionInstance(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameFunctionInstance"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeNameFunctionInstance"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmNodeNameIdentityNumber(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameIdentityNumber"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodeNameIdentityNumber(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameIdentityNumber"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeNameIdentityNumber"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmNodeNameIndustryGroup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameIndustryGroup"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodeNameIndustryGroup(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameIndustryGroup"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeNameIndustryGroup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmNodeNameManufacturerCode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameManufacturerCode"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodeNameManufacturerCode(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameManufacturerCode"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeNameManufacturerCode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmNodeNameVehicleSystem(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameVehicleSystem"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodeNameVehicleSystem(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameVehicleSystem"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeNameVehicleSystem"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmNodeNameVehicleSystemInstance(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameVehicleSystemInstance"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodeNameVehicleSystemInstance(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeNameVehicleSystemInstance"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeNameVehicleSystemInstance"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getJ1939NmNodePreferredAddress(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodePreferredAddress"].getBigIntegerValue()
			}
			
			def void setJ1939NmNodePreferredAddress(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodePreferredAddress"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodePreferredAddress"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getJ1939NmNodeStartUpDelay(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeStartUpDelay"].getBooleanValue()
			}
			
			def void setJ1939NmNodeStartUpDelay(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmNodeStartUpDelay"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmNodeStartUpDelay"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def List<org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel> getJ1939NmNodeChannelRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "J1939NmNodeChannelRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "J1939NmNodeChannelRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel)) {
					override protected wrap(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel object) throws CoreException {
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
								return new org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class J1939NmSharedAddressSpace implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof J1939NmSharedAddressSpace)){
					return false
				}
				this.target == (object as J1939NmSharedAddressSpace).target
			}
		
			
			def List<org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel> getJ1939NmSharedChannelRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "J1939NmSharedChannelRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "J1939NmSharedChannelRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel)) {
					override protected wrap(org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel object) throws CoreException {
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
								return new org.artop.ecuc.autosar442.accessors.J1939Nm.J1939NmConfigSet.J1939NmChannel(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
	}
	static class J1939NmGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof J1939NmGeneral)){
				return false
			}
			this.target == (object as J1939NmGeneral).target
		}
	
		def BigDecimal getJ1939NmBusOffDelayTickPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmBusOffDelayTickPeriod"].getBigDecimalValue()
		}
		
		def void setJ1939NmBusOffDelayTickPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmBusOffDelayTickPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmBusOffDelayTickPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getJ1939NmDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmDevErrorDetect"].getBooleanValue()
		}
		
		def void setJ1939NmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getJ1939NmGatewaySupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmGatewaySupport"].getBooleanValue()
		}
		
		def void setJ1939NmGatewaySupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmGatewaySupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmGatewaySupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getJ1939NmMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setJ1939NmMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getJ1939NmUserCallout(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmUserCallout"].getStringValue()
		}
		
		def void setJ1939NmUserCallout(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmUserCallout"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmUserCallout"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getJ1939NmUserCalloutHeaderFile(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmUserCalloutHeaderFile"].getStringValue()
		}
		
		def void setJ1939NmUserCalloutHeaderFile(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmUserCalloutHeaderFile"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmUserCalloutHeaderFile"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getJ1939NmVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmVersionInfoApi"].getBooleanValue()
		}
		
		def void setJ1939NmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939NmVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "J1939NmVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof J1939Nm)){
			return false
		}
		this.target == (object as J1939Nm).target
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
