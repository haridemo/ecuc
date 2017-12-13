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

class DoIP implements IWrapper<GModuleConfiguration> {
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

	def DoIPConfigSet getDoIPConfigSet(){
		moduleConfiguration.getByType(typeof(DoIPConfigSet))
	}

	def void setDoIPConfigSet(DoIPConfigSet doIPConfigSet){
		val GContainer container = doIPConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "DoIPConfigSet")
	}
	def DoIPGeneral getDoIPGeneral(){
		moduleConfiguration.getByType(typeof(DoIPGeneral))
	}

	def void setDoIPGeneral(DoIPGeneral doIPGeneral){
		val GContainer container = doIPGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "DoIPGeneral")
	}

	static class DoIPConfigSet implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof DoIPConfigSet)){
				return false
			}
			this.target == (object as DoIPConfigSet).target
		}
	
		def BigInteger getDoIPEid(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPEid"].getBigIntegerValue()
		}
		
		def void setDoIPEid(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPEid"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPEid"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDoIPGid(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGid"].getBigIntegerValue()
		}
		
		def void setDoIPGid(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGid"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPGid"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDoIPLogicalAddress(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPLogicalAddress"].getBigIntegerValue()
		}
		
		def void setDoIPLogicalAddress(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPLogicalAddress"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPLogicalAddress"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<DoIPChannel> getDoIPChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DoIPChannel")
				}
			}
			return new BasicWrappingEList<DoIPChannel, GContainer>(filteredContainers, typeof(DoIPChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPChannel doIPChannel) {
					doIPChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPChannel"))
					super.delegateAdd(doIPChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPChannel doIPChannel) {
					doIPChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPChannel"))
					super.delegateAdd(index, doIPChannel)
				}
			}
		}
		
		def DoIPConnections getDoIPConnections(){
			containerValue.getByType(typeof(DoIPConnections))
		}
		
		def void setDoIPConnections(DoIPConnections doIPConnections){
			val GContainer subContainer = doIPConnections.getTarget()
			containerValue.setContainer(subContainer, "DoIPConnections")
		}
		
		def List<DoIPRoutingActivation> getDoIPRoutingActivations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DoIPRoutingActivation")
				}
			}
			return new BasicWrappingEList<DoIPRoutingActivation, GContainer>(filteredContainers, typeof(DoIPRoutingActivation), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation doIPRoutingActivation) {
					doIPRoutingActivation.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPRoutingActivation"))
					super.delegateAdd(doIPRoutingActivation)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation doIPRoutingActivation) {
					doIPRoutingActivation.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPRoutingActivation"))
					super.delegateAdd(index, doIPRoutingActivation)
				}
			}
		}
		
		def List<DoIPTester> getDoIPTesters(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DoIPTester")
				}
			}
			return new BasicWrappingEList<DoIPTester, GContainer>(filteredContainers, typeof(DoIPTester), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPTester doIPTester) {
					doIPTester.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPTester"))
					super.delegateAdd(doIPTester)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPTester doIPTester) {
					doIPTester.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPTester"))
					super.delegateAdd(index, doIPTester)
				}
			}
		}
		
		
		static class DoIPChannel implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DoIPChannel)){
					return false
				}
				this.target == (object as DoIPChannel).target
			}
		
			
			def org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPTester getDoIPChannelSARef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPTester), "DoIPChannelSARef")
			}
			
			def void setDoIPChannelSARef(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPTester object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPChannelSARef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress getDoIPChannelTARef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress), "DoIPChannelTARef")
			}
			
			def void setDoIPChannelTARef(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPChannelTARef"], object.getTarget())
				}
			}
			
			
			def DoIPPduRRxPdu getDoIPPduRRxPdu(){
				containerValue.getByType(typeof(DoIPPduRRxPdu))
			}
			
			def void setDoIPPduRRxPdu(DoIPPduRRxPdu doIPPduRRxPdu){
				val GContainer subContainer = doIPPduRRxPdu.getTarget()
				containerValue.setContainer(subContainer, "DoIPPduRRxPdu")
			}
			
			def DoIPPduRTxPdu getDoIPPduRTxPdu(){
				containerValue.getByType(typeof(DoIPPduRTxPdu))
			}
			
			def void setDoIPPduRTxPdu(DoIPPduRTxPdu doIPPduRTxPdu){
				val GContainer subContainer = doIPPduRTxPdu.getTarget()
				containerValue.setContainer(subContainer, "DoIPPduRTxPdu")
			}
			
			
			static class DoIPPduRRxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DoIPPduRRxPdu)){
						return false
					}
					this.target == (object as DoIPPduRRxPdu).target
				}
			
				def BigInteger getDoIPPduRRxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduRRxPduId"].getBigIntegerValue()
				}
				
				def void setDoIPPduRRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduRRxPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPPduRRxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPPduRRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPPduRRxPduRef")
				}
				
				def void setDoIPPduRRxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPPduRRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class DoIPPduRTxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DoIPPduRTxPdu)){
						return false
					}
					this.target == (object as DoIPPduRTxPdu).target
				}
			
				def BigInteger getDoIPPduRTxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduRTxPduId"].getBigIntegerValue()
				}
				
				def void setDoIPPduRTxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduRTxPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPPduRTxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DoIPPduType getDoIPPduType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduType"].getDoIPPduTypeValue()
				}
				
				def void setDoIPPduType(DoIPPduType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPPduType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DoIPPduType {
					DOIP_IFPDU, 
					DOIP_TPPDU
				}
				
				def DoIPPduType getDoIPPduTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DOIP_IFPDU" : DoIPPduType.DOIP_IFPDU
						case "DOIP_TPPDU" : DoIPPduType.DOIP_TPPDU
					}
				}
				
				def void setDoIPPduTypeValue(GParameterValue parameterValue, DoIPPduType value){
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPPduRTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPPduRTxPduRef")
				}
				
				def void setDoIPPduRTxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPPduRTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class DoIPConnections implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DoIPConnections)){
					return false
				}
				this.target == (object as DoIPConnections).target
			}
		
			
			
			def List<DoIPTargetAddress> getDoIPTargetAddress(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DoIPTargetAddress")
					}
				}
				return new BasicWrappingEList<DoIPTargetAddress, GContainer>(filteredContainers, typeof(DoIPTargetAddress), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress doIPTargetAddress) {
						doIPTargetAddress.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPTargetAddress"))
						super.delegateAdd(doIPTargetAddress)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress doIPTargetAddress) {
						doIPTargetAddress.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPTargetAddress"))
						super.delegateAdd(index, doIPTargetAddress)
					}
				}
			}
			
			def List<DoIPTcpConnection> getDoIPTcpConnections(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DoIPTcpConnection")
					}
				}
				return new BasicWrappingEList<DoIPTcpConnection, GContainer>(filteredContainers, typeof(DoIPTcpConnection), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTcpConnection doIPTcpConnection) {
						doIPTcpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPTcpConnection"))
						super.delegateAdd(doIPTcpConnection)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTcpConnection doIPTcpConnection) {
						doIPTcpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPTcpConnection"))
						super.delegateAdd(index, doIPTcpConnection)
					}
				}
			}
			
			def List<DoIPUdpConnection> getDoIPUdpConnections(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DoIPUdpConnection")
					}
				}
				return new BasicWrappingEList<DoIPUdpConnection, GContainer>(filteredContainers, typeof(DoIPUdpConnection), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPUdpConnection doIPUdpConnection) {
						doIPUdpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPUdpConnection"))
						super.delegateAdd(doIPUdpConnection)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPUdpConnection doIPUdpConnection) {
						doIPUdpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPUdpConnection"))
						super.delegateAdd(index, doIPUdpConnection)
					}
				}
			}
			
			def List<DoIPUdpVehicleAnnouncementConnection> getDoIPUdpVehicleAnnouncementConnections(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DoIPUdpVehicleAnnouncementConnection")
					}
				}
				return new BasicWrappingEList<DoIPUdpVehicleAnnouncementConnection, GContainer>(filteredContainers, typeof(DoIPUdpVehicleAnnouncementConnection), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPUdpVehicleAnnouncementConnection doIPUdpVehicleAnnouncementConnection) {
						doIPUdpVehicleAnnouncementConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPUdpVehicleAnnouncementConnection"))
						super.delegateAdd(doIPUdpVehicleAnnouncementConnection)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPUdpVehicleAnnouncementConnection doIPUdpVehicleAnnouncementConnection) {
						doIPUdpVehicleAnnouncementConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPUdpVehicleAnnouncementConnection"))
						super.delegateAdd(index, doIPUdpVehicleAnnouncementConnection)
					}
				}
			}
			
			
			static class DoIPTargetAddress implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DoIPTargetAddress)){
						return false
					}
					this.target == (object as DoIPTargetAddress).target
				}
			
				def BigInteger getDoIPTargetAddressValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTargetAddressValue"].getBigIntegerValue()
				}
				
				def void setDoIPTargetAddressValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTargetAddressValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPTargetAddressValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DoIPTcpConnection implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DoIPTcpConnection)){
						return false
					}
					this.target == (object as DoIPTcpConnection).target
				}
			
				def Boolean getDoIPRequestAddressAssignment(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRequestAddressAssignment"].getBooleanValue()
				}
				
				def void setDoIPRequestAddressAssignment(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRequestAddressAssignment"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRequestAddressAssignment"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				def DoIPSoAdTcpRxPdu getDoIPSoAdTcpRxPdu(){
					containerValue.getByType(typeof(DoIPSoAdTcpRxPdu))
				}
				
				def void setDoIPSoAdTcpRxPdu(DoIPSoAdTcpRxPdu doIPSoAdTcpRxPdu){
					val GContainer subContainer = doIPSoAdTcpRxPdu.getTarget()
					containerValue.setContainer(subContainer, "DoIPSoAdTcpRxPdu")
				}
				
				def DoIPSoAdTcpTxPdu getDoIPSoAdTcpTxPdu(){
					containerValue.getByType(typeof(DoIPSoAdTcpTxPdu))
				}
				
				def void setDoIPSoAdTcpTxPdu(DoIPSoAdTcpTxPdu doIPSoAdTcpTxPdu){
					val GContainer subContainer = doIPSoAdTcpTxPdu.getTarget()
					containerValue.setContainer(subContainer, "DoIPSoAdTcpTxPdu")
				}
				
				
				static class DoIPSoAdTcpRxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
					def String getShortName(){
						containerValue?.gGetShortName
					}
				
					def void setShortName(String name){
						containerValue?.gSetShortName(name)
					}
				
					override def GContainer getTarget(){
						containerValue
					}
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DoIPSoAdTcpRxPdu)){
							return false
						}
						this.target == (object as DoIPSoAdTcpRxPdu).target
					}
				
					def BigInteger getDoIPSoAdTcpRxPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdTcpRxPduId"].getBigIntegerValue()
					}
					
					def void setDoIPSoAdTcpRxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdTcpRxPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPSoAdTcpRxPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPSoAdTcpRxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPSoAdTcpRxPduRef")
					}
					
					def void setDoIPSoAdTcpRxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPSoAdTcpRxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DoIPSoAdTcpTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
					def String getShortName(){
						containerValue?.gGetShortName
					}
				
					def void setShortName(String name){
						containerValue?.gSetShortName(name)
					}
				
					override def GContainer getTarget(){
						containerValue
					}
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DoIPSoAdTcpTxPdu)){
							return false
						}
						this.target == (object as DoIPSoAdTcpTxPdu).target
					}
				
					def BigInteger getDoIPSoAdTcpTxPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdTcpTxPduId"].getBigIntegerValue()
					}
					
					def void setDoIPSoAdTcpTxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdTcpTxPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPSoAdTcpTxPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPSoAdTcpTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPSoAdTcpTxPduRef")
					}
					
					def void setDoIPSoAdTcpTxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPSoAdTcpTxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class DoIPUdpConnection implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DoIPUdpConnection)){
						return false
					}
					this.target == (object as DoIPUdpConnection).target
				}
			
				def Boolean getDoIPRequestAddressAssignment(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRequestAddressAssignment"].getBooleanValue()
				}
				
				def void setDoIPRequestAddressAssignment(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRequestAddressAssignment"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRequestAddressAssignment"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				def DoIPSoAdUdpRxPdu getDoIPSoAdUdpRxPdu(){
					containerValue.getByType(typeof(DoIPSoAdUdpRxPdu))
				}
				
				def void setDoIPSoAdUdpRxPdu(DoIPSoAdUdpRxPdu doIPSoAdUdpRxPdu){
					val GContainer subContainer = doIPSoAdUdpRxPdu.getTarget()
					containerValue.setContainer(subContainer, "DoIPSoAdUdpRxPdu")
				}
				
				def DoIPSoAdUdpTxPdu getDoIPSoAdUdpTxPdu(){
					containerValue.getByType(typeof(DoIPSoAdUdpTxPdu))
				}
				
				def void setDoIPSoAdUdpTxPdu(DoIPSoAdUdpTxPdu doIPSoAdUdpTxPdu){
					val GContainer subContainer = doIPSoAdUdpTxPdu.getTarget()
					containerValue.setContainer(subContainer, "DoIPSoAdUdpTxPdu")
				}
				
				
				static class DoIPSoAdUdpRxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
					def String getShortName(){
						containerValue?.gGetShortName
					}
				
					def void setShortName(String name){
						containerValue?.gSetShortName(name)
					}
				
					override def GContainer getTarget(){
						containerValue
					}
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DoIPSoAdUdpRxPdu)){
							return false
						}
						this.target == (object as DoIPSoAdUdpRxPdu).target
					}
				
					def BigInteger getDoIPSoAdUdpRxPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdUdpRxPduId"].getBigIntegerValue()
					}
					
					def void setDoIPSoAdUdpRxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdUdpRxPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPSoAdUdpRxPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPSoAdUdpRxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPSoAdUdpRxPduRef")
					}
					
					def void setDoIPSoAdUdpRxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPSoAdUdpRxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DoIPSoAdUdpTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
					def String getShortName(){
						containerValue?.gGetShortName
					}
				
					def void setShortName(String name){
						containerValue?.gSetShortName(name)
					}
				
					override def GContainer getTarget(){
						containerValue
					}
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DoIPSoAdUdpTxPdu)){
							return false
						}
						this.target == (object as DoIPSoAdUdpTxPdu).target
					}
				
					def BigInteger getDoIPSoAdUdpTxPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdUdpTxPduId"].getBigIntegerValue()
					}
					
					def void setDoIPSoAdUdpTxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdUdpTxPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPSoAdUdpTxPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPSoAdUdpTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPSoAdUdpTxPduRef")
					}
					
					def void setDoIPSoAdUdpTxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPSoAdUdpTxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class DoIPUdpVehicleAnnouncementConnection implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DoIPUdpVehicleAnnouncementConnection)){
						return false
					}
					this.target == (object as DoIPUdpVehicleAnnouncementConnection).target
				}
			
				def Boolean getDoIPRequestAddressAssignment(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRequestAddressAssignment"].getBooleanValue()
				}
				
				def void setDoIPRequestAddressAssignment(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRequestAddressAssignment"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRequestAddressAssignment"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				def DoIPSoAdUdpVehicleAnnouncementTxPdu getDoIPSoAdUdpVehicleAnnouncementTxPdu(){
					containerValue.getByType(typeof(DoIPSoAdUdpVehicleAnnouncementTxPdu))
				}
				
				def void setDoIPSoAdUdpVehicleAnnouncementTxPdu(DoIPSoAdUdpVehicleAnnouncementTxPdu doIPSoAdUdpVehicleAnnouncementTxPdu){
					val GContainer subContainer = doIPSoAdUdpVehicleAnnouncementTxPdu.getTarget()
					containerValue.setContainer(subContainer, "DoIPSoAdUdpVehicleAnnouncementTxPdu")
				}
				
				
				static class DoIPSoAdUdpVehicleAnnouncementTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
					def String getShortName(){
						containerValue?.gGetShortName
					}
				
					def void setShortName(String name){
						containerValue?.gSetShortName(name)
					}
				
					override def GContainer getTarget(){
						containerValue
					}
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DoIPSoAdUdpVehicleAnnouncementTxPdu)){
							return false
						}
						this.target == (object as DoIPSoAdUdpVehicleAnnouncementTxPdu).target
					}
				
					def BigInteger getDoIPSoAdUdpVehicleAnnouncementTxPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdUdpVehicleAnnouncementTxPduId"].getBigIntegerValue()
					}
					
					def void setDoIPSoAdUdpVehicleAnnouncementTxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdUdpVehicleAnnouncementTxPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPSoAdUdpVehicleAnnouncementTxPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPSoAdUdpVehicleAnnouncementTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPSoAdUdpVehicleAnnouncementTxPduRef")
					}
					
					def void setDoIPSoAdUdpVehicleAnnouncementTxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPSoAdUdpVehicleAnnouncementTxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
		static class DoIPRoutingActivation implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DoIPRoutingActivation)){
					return false
				}
				this.target == (object as DoIPRoutingActivation).target
			}
		
			def BigInteger getDoIPRoutingActivationNumber(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationNumber"].getBigIntegerValue()
			}
			
			def void setDoIPRoutingActivationNumber(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationNumber"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationNumber"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress> getDoIPTargetAddressRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DoIPTargetAddressRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DoIPTargetAddressRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress object) throws CoreException {
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
								return new org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			def DoIPRoutingActivationAuthenticationCallback getDoIPRoutingActivationAuthenticationCallback(){
				containerValue.getByType(typeof(DoIPRoutingActivationAuthenticationCallback))
			}
			
			def void setDoIPRoutingActivationAuthenticationCallback(DoIPRoutingActivationAuthenticationCallback doIPRoutingActivationAuthenticationCallback){
				val GContainer subContainer = doIPRoutingActivationAuthenticationCallback.getTarget()
				containerValue.setContainer(subContainer, "DoIPRoutingActivationAuthenticationCallback")
			}
			
			def DoIPRoutingActivationConfirmationCallback getDoIPRoutingActivationConfirmationCallback(){
				containerValue.getByType(typeof(DoIPRoutingActivationConfirmationCallback))
			}
			
			def void setDoIPRoutingActivationConfirmationCallback(DoIPRoutingActivationConfirmationCallback doIPRoutingActivationConfirmationCallback){
				val GContainer subContainer = doIPRoutingActivationConfirmationCallback.getTarget()
				containerValue.setContainer(subContainer, "DoIPRoutingActivationConfirmationCallback")
			}
			
			
			static class DoIPRoutingActivationAuthenticationCallback implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DoIPRoutingActivationAuthenticationCallback)){
						return false
					}
					this.target == (object as DoIPRoutingActivationAuthenticationCallback).target
				}
			
				def String getDoIPRoutingActivationAuthenticationFunc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationFunc"].getStringValue()
				}
				
				def void setDoIPRoutingActivationAuthenticationFunc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationFunc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationAuthenticationFunc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDoIPRoutingActivationAuthenticationReqLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationReqLength"].getBigIntegerValue()
				}
				
				def void setDoIPRoutingActivationAuthenticationReqLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationReqLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationAuthenticationReqLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDoIPRoutingActivationAuthenticationResLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationResLength"].getBigIntegerValue()
				}
				
				def void setDoIPRoutingActivationAuthenticationResLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationResLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationAuthenticationResLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DoIPRoutingActivationConfirmationCallback implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DoIPRoutingActivationConfirmationCallback)){
						return false
					}
					this.target == (object as DoIPRoutingActivationConfirmationCallback).target
				}
			
				def String getDoIPRoutingActivationConfirmationFunc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationFunc"].getStringValue()
				}
				
				def void setDoIPRoutingActivationConfirmationFunc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationFunc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationConfirmationFunc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDoIPRoutingActivationConfirmationReqLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationReqLength"].getBigIntegerValue()
				}
				
				def void setDoIPRoutingActivationConfirmationReqLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationReqLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationConfirmationReqLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDoIPRoutingActivationConfirmationResLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationResLength"].getBigIntegerValue()
				}
				
				def void setDoIPRoutingActivationConfirmationResLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationResLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationConfirmationResLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class DoIPTester implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DoIPTester)){
					return false
				}
				this.target == (object as DoIPTester).target
			}
		
			def BigInteger getDoIPNumByteDiagAckNack(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPNumByteDiagAckNack"].getBigIntegerValue()
			}
			
			def void setDoIPNumByteDiagAckNack(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPNumByteDiagAckNack"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPNumByteDiagAckNack"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDoIPTesterSA(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTesterSA"].getBigIntegerValue()
			}
			
			def void setDoIPTesterSA(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTesterSA"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPTesterSA"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation> getDoIPRoutingActivationRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DoIPRoutingActivationRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DoIPRoutingActivationRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation object) throws CoreException {
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
								return new org.artop.ecuc.autosar444.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
	}
	static class DoIPGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof DoIPGeneral)){
				return false
			}
			this.target == (object as DoIPGeneral).target
		}
	
		def BigDecimal getDoIPAliveCheckResponseTimeout(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPAliveCheckResponseTimeout"].getBigDecimalValue()
		}
		
		def void setDoIPAliveCheckResponseTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPAliveCheckResponseTimeout"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPAliveCheckResponseTimeout"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getDoIPDevelopmentErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPDevelopmentErrorDetect"].getBooleanValue()
		}
		
		def void setDoIPDevelopmentErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPDevelopmentErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPDevelopmentErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPDhcpOptionVinUse(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPDhcpOptionVinUse"].getBooleanValue()
		}
		
		def void setDoIPDhcpOptionVinUse(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPDhcpOptionVinUse"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPDhcpOptionVinUse"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPEntityStatusMaxByteFieldUse(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPEntityStatusMaxByteFieldUse"].getBooleanValue()
		}
		
		def void setDoIPEntityStatusMaxByteFieldUse(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPEntityStatusMaxByteFieldUse"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPEntityStatusMaxByteFieldUse"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getDoIPGeneralInactivityTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGeneralInactivityTime"].getBigDecimalValue()
		}
		
		def void setDoIPGeneralInactivityTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGeneralInactivityTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPGeneralInactivityTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDoIPGIDInvalidityPattern(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGIDInvalidityPattern"].getBigIntegerValue()
		}
		
		def void setDoIPGIDInvalidityPattern(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGIDInvalidityPattern"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPGIDInvalidityPattern"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def List<String> getDoIPHeaderFileInclusions(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "DoIPHeaderFileInclusion")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPHeaderFileInclusion"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def BigInteger getDoIPHostNameSizeMax(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPHostNameSizeMax"].getBigIntegerValue()
		}
		
		def void setDoIPHostNameSizeMax(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPHostNameSizeMax"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPHostNameSizeMax"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getDoIPInitialInactivityTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPInitialInactivityTime"].getBigDecimalValue()
		}
		
		def void setDoIPInitialInactivityTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPInitialInactivityTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPInitialInactivityTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getDoIPInitialVehicleAnnouncementTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPInitialVehicleAnnouncementTime"].getBigDecimalValue()
		}
		
		def void setDoIPInitialVehicleAnnouncementTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPInitialVehicleAnnouncementTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPInitialVehicleAnnouncementTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getDoIPMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setDoIPMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDoIPMaxRequestBytes(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxRequestBytes"].getBigIntegerValue()
		}
		
		def void setDoIPMaxRequestBytes(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxRequestBytes"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPMaxRequestBytes"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDoIPMaxTesterConnections(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxTesterConnections"].getBigIntegerValue()
		}
		
		def void setDoIPMaxTesterConnections(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxTesterConnections"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPMaxTesterConnections"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDoIPMaxUDPRequestPerMessage(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxUDPRequestPerMessage"].getBigIntegerValue()
		}
		
		def void setDoIPMaxUDPRequestPerMessage(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxUDPRequestPerMessage"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPMaxUDPRequestPerMessage"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def DoIPNodeType getDoIPNodeType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPNodeType"].getDoIPNodeTypeValue()
		}
		
		def void setDoIPNodeType(DoIPNodeType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPNodeType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPNodeType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DoIPNodeType {
			DOIP_GATEWAY, 
			DOIP_NODE
		}
		
		def DoIPNodeType getDoIPNodeTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DOIP_GATEWAY" : DoIPNodeType.DOIP_GATEWAY
				case "DOIP_NODE" : DoIPNodeType.DOIP_NODE
			}
		}
		
		def void setDoIPNodeTypeValue(GParameterValue parameterValue, DoIPNodeType value){
			parameterValue.setValue(value)
		}
		
		def Boolean getDoIPUseEIDasGID(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseEIDasGID"].getBooleanValue()
		}
		
		def void setDoIPUseEIDasGID(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseEIDasGID"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPUseEIDasGID"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPUseMacAddressForIdentification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseMacAddressForIdentification"].getBooleanValue()
		}
		
		def void setDoIPUseMacAddressForIdentification(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseMacAddressForIdentification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPUseMacAddressForIdentification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPUseVehicleIdentificationSyncStatus(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseVehicleIdentificationSyncStatus"].getBooleanValue()
		}
		
		def void setDoIPUseVehicleIdentificationSyncStatus(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseVehicleIdentificationSyncStatus"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPUseVehicleIdentificationSyncStatus"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getDoIPVehicleAnnouncementCount(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementCount"].getBigIntegerValue()
		}
		
		def void setDoIPVehicleAnnouncementCount(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementCount"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVehicleAnnouncementCount"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getDoIPVehicleAnnouncementInterval(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementInterval"].getBigDecimalValue()
		}
		
		def void setDoIPVehicleAnnouncementInterval(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementInterval"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVehicleAnnouncementInterval"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDoIPVehicleAnnouncementRepetition(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementRepetition"].getBigIntegerValue()
		}
		
		def void setDoIPVehicleAnnouncementRepetition(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementRepetition"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVehicleAnnouncementRepetition"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getDoIPVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVersionInfoApi"].getBooleanValue()
		}
		
		def void setDoIPVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPVinGidMaster(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVinGidMaster"].getBooleanValue()
		}
		
		def void setDoIPVinGidMaster(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVinGidMaster"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVinGidMaster"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getDoIPVinInvalidityPattern(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVinInvalidityPattern"].getBigIntegerValue()
		}
		
		def void setDoIPVinInvalidityPattern(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVinInvalidityPattern"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVinInvalidityPattern"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def DoIPFurtherActionByteCallback getDoIPFurtherActionByteCallback(){
			containerValue.getByType(typeof(DoIPFurtherActionByteCallback))
		}
		
		def void setDoIPFurtherActionByteCallback(DoIPFurtherActionByteCallback doIPFurtherActionByteCallback){
			val GContainer subContainer = doIPFurtherActionByteCallback.getTarget()
			containerValue.setContainer(subContainer, "DoIPFurtherActionByteCallback")
		}
		
		def DoIPGetGidCallback getDoIPGetGidCallback(){
			containerValue.getByType(typeof(DoIPGetGidCallback))
		}
		
		def void setDoIPGetGidCallback(DoIPGetGidCallback doIPGetGidCallback){
			val GContainer subContainer = doIPGetGidCallback.getTarget()
			containerValue.setContainer(subContainer, "DoIPGetGidCallback")
		}
		
		def DoIPPowerModeCallback getDoIPPowerModeCallback(){
			containerValue.getByType(typeof(DoIPPowerModeCallback))
		}
		
		def void setDoIPPowerModeCallback(DoIPPowerModeCallback doIPPowerModeCallback){
			val GContainer subContainer = doIPPowerModeCallback.getTarget()
			containerValue.setContainer(subContainer, "DoIPPowerModeCallback")
		}
		
		def DoIPTriggerGidSyncCallback getDoIPTriggerGidSyncCallback(){
			containerValue.getByType(typeof(DoIPTriggerGidSyncCallback))
		}
		
		def void setDoIPTriggerGidSyncCallback(DoIPTriggerGidSyncCallback doIPTriggerGidSyncCallback){
			val GContainer subContainer = doIPTriggerGidSyncCallback.getTarget()
			containerValue.setContainer(subContainer, "DoIPTriggerGidSyncCallback")
		}
		
		
		static class DoIPFurtherActionByteCallback implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DoIPFurtherActionByteCallback)){
					return false
				}
				this.target == (object as DoIPFurtherActionByteCallback).target
			}
		
			def String getDoIPFurtherActionByteDirect(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPFurtherActionByteDirect"].getStringValue()
			}
			
			def void setDoIPFurtherActionByteDirect(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPFurtherActionByteDirect"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPFurtherActionByteDirect"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class DoIPGetGidCallback implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DoIPGetGidCallback)){
					return false
				}
				this.target == (object as DoIPGetGidCallback).target
			}
		
			def String getDoIPGetGidDirect(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGetGidDirect"].getStringValue()
			}
			
			def void setDoIPGetGidDirect(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGetGidDirect"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPGetGidDirect"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class DoIPPowerModeCallback implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DoIPPowerModeCallback)){
					return false
				}
				this.target == (object as DoIPPowerModeCallback).target
			}
		
			def String getDoIPPowerModeDirect(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPowerModeDirect"].getStringValue()
			}
			
			def void setDoIPPowerModeDirect(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPowerModeDirect"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPPowerModeDirect"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class DoIPTriggerGidSyncCallback implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DoIPTriggerGidSyncCallback)){
					return false
				}
				this.target == (object as DoIPTriggerGidSyncCallback).target
			}
		
			def String getDoIPTriggerGidSyncDirect(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTriggerGidSyncDirect"].getStringValue()
			}
			
			def void setDoIPTriggerGidSyncDirect(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTriggerGidSyncDirect"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DoIPTriggerGidSyncDirect"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof DoIP)){
			return false
		}
		this.target == (object as DoIP).target
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
