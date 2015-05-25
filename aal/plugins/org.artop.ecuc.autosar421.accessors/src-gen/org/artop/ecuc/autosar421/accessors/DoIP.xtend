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
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPEid"])
		}
		
		def void setDoIPEid(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPEid"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPEid"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getDoIPGid(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGid"])
		}
		
		def void setDoIPGid(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGid"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPGid"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getDoIPLogicalAddress(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPLogicalAddress"])
		}
		
		def void setDoIPLogicalAddress(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPLogicalAddress"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPLogicalAddress"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<DoIPChannel> getDoIPChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DoIPChannel")
				}
			}
			return new BasicWrappingEList<DoIPChannel, GContainer>(filteredContainers, typeof(DoIPChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPChannel doIPChannel) {
					doIPChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPChannel"))
					super.delegateAdd(doIPChannel)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPChannel doIPChannel) {
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
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPRoutingActivation doIPRoutingActivation) {
					doIPRoutingActivation.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPRoutingActivation"))
					super.delegateAdd(doIPRoutingActivation)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPRoutingActivation doIPRoutingActivation) {
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
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPTester doIPTester) {
					doIPTester.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPTester"))
					super.delegateAdd(doIPTester)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPTester doIPTester) {
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
			
			
			def org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPTester getDoIPChannelSARef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPTester), "DoIPChannelSARef")
			}
					
			def void setDoIPChannelSARef(org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPTester object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPChannelSARef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress getDoIPChannelTARef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress), "DoIPChannelTARef")
			}
					
			def void setDoIPChannelTARef(org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPChannelTARef"], object.getTarget())
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
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduRRxPduId"])
				}
				
				def void setDoIPPduRRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduRRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPPduRRxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPPduRRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPPduRRxPduRef")
				}
						
				def void setDoIPPduRRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPPduRRxPduRef"], object.getTarget())
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
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduRTxPduId"])
				}
				
				def void setDoIPPduRTxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduRTxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPPduRTxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def DoIPPduType getDoIPPduType(){
					getDoIPPduTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduType"])
				}
				
				def void setDoIPPduType(DoIPPduType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPduType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPPduType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum DoIPPduType {
					DOIP_IFPDU, 
					DOIP_TPPDU
				}
					
				def DoIPPduType getDoIPPduTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DOIP_IFPDU" : DoIPPduType.DOIP_IFPDU
						case "DOIP_TPPDU" : DoIPPduType.DOIP_TPPDU
					}
				}
				
				def void setDoIPPduTypeValue(GParameterValue paramValue, DoIPPduType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPPduRTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPPduRTxPduRef")
				}
						
				def void setDoIPPduRTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPPduRTxPduRef"], object.getTarget())
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPConnections$DoIPTargetAddress doIPTargetAddress) {
						doIPTargetAddress.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPTargetAddress"))
						super.delegateAdd(doIPTargetAddress)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPConnections$DoIPTargetAddress doIPTargetAddress) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPConnections$DoIPTcpConnection doIPTcpConnection) {
						doIPTcpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPTcpConnection"))
						super.delegateAdd(doIPTcpConnection)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPConnections$DoIPTcpConnection doIPTcpConnection) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPConnections$DoIPUdpConnection doIPUdpConnection) {
						doIPUdpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPUdpConnection"))
						super.delegateAdd(doIPUdpConnection)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.DoIP$DoIPConfigSet$DoIPConnections$DoIPUdpConnection doIPUdpConnection) {
						doIPUdpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("DoIPUdpConnection"))
						super.delegateAdd(index, doIPUdpConnection)
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
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTargetAddressValue"])
				}
				
				def void setDoIPTargetAddressValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTargetAddressValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPTargetAddressValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				
				
				
				def DoIPSoAdRxPdu getDoIPSoAdRxPdu(){
					containerValue.getByType(typeof(DoIPSoAdRxPdu))
				}
				
				def void setDoIPSoAdRxPdu(DoIPSoAdRxPdu doIPSoAdRxPdu){
					val GContainer subContainer = doIPSoAdRxPdu.getTarget()
					containerValue.setContainer(subContainer, "DoIPSoAdRxPdu")
				}
				
				def DoIPSoAdTxPdu getDoIPSoAdTxPdu(){
					containerValue.getByType(typeof(DoIPSoAdTxPdu))
				}
				
				def void setDoIPSoAdTxPdu(DoIPSoAdTxPdu doIPSoAdTxPdu){
					val GContainer subContainer = doIPSoAdTxPdu.getTarget()
					containerValue.setContainer(subContainer, "DoIPSoAdTxPdu")
				}
				
				
				static class DoIPSoAdRxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
					
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
					
					def String getShortName(){
						containerValue?.gGetShortName
					}
					
					def void setShortName(String name){
						containerValue?.gSetShortName(name)
					}
					
					override def GContainer getTarget(){
						containerValue
					}
					
					override def boolean equals(Object object) {
				        if (!(object instanceof DoIPSoAdRxPdu)){
							return false
						}
						this.target == (object as DoIPSoAdRxPdu).target
					}
					
					def BigInteger getDoIPSoAdRxPduId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdRxPduId"])
					}
					
					def void setDoIPSoAdRxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdRxPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPSoAdRxPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPSoAdRxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPSoAdRxPduRef")
					}
							
					def void setDoIPSoAdRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPSoAdRxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DoIPSoAdTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
					
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
					
					def String getShortName(){
						containerValue?.gGetShortName
					}
					
					def void setShortName(String name){
						containerValue?.gSetShortName(name)
					}
					
					override def GContainer getTarget(){
						containerValue
					}
					
					override def boolean equals(Object object) {
				        if (!(object instanceof DoIPSoAdTxPdu)){
							return false
						}
						this.target == (object as DoIPSoAdTxPdu).target
					}
					
					def BigInteger getDoIPSoAdTxPduId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdTxPduId"])
					}
					
					def void setDoIPSoAdTxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdTxPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPSoAdTxPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPSoAdTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPSoAdTxPduRef")
					}
							
					def void setDoIPSoAdTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPSoAdTxPduRef"], object.getTarget())
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
				
				
				
				def DoIPSoAdRxPdu getDoIPSoAdRxPdu(){
					containerValue.getByType(typeof(DoIPSoAdRxPdu))
				}
				
				def void setDoIPSoAdRxPdu(DoIPSoAdRxPdu doIPSoAdRxPdu){
					val GContainer subContainer = doIPSoAdRxPdu.getTarget()
					containerValue.setContainer(subContainer, "DoIPSoAdRxPdu")
				}
				
				def DoIPSoAdTxPdu getDoIPSoAdTxPdu(){
					containerValue.getByType(typeof(DoIPSoAdTxPdu))
				}
				
				def void setDoIPSoAdTxPdu(DoIPSoAdTxPdu doIPSoAdTxPdu){
					val GContainer subContainer = doIPSoAdTxPdu.getTarget()
					containerValue.setContainer(subContainer, "DoIPSoAdTxPdu")
				}
				
				
				static class DoIPSoAdRxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
					
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
					
					def String getShortName(){
						containerValue?.gGetShortName
					}
					
					def void setShortName(String name){
						containerValue?.gSetShortName(name)
					}
					
					override def GContainer getTarget(){
						containerValue
					}
					
					override def boolean equals(Object object) {
				        if (!(object instanceof DoIPSoAdRxPdu)){
							return false
						}
						this.target == (object as DoIPSoAdRxPdu).target
					}
					
					def BigInteger getDoIPSoAdRxPduId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdRxPduId"])
					}
					
					def void setDoIPSoAdRxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdRxPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPSoAdRxPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPSoAdRxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPSoAdRxPduRef")
					}
							
					def void setDoIPSoAdRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPSoAdRxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DoIPSoAdTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
					
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
					
					def String getShortName(){
						containerValue?.gGetShortName
					}
					
					def void setShortName(String name){
						containerValue?.gSetShortName(name)
					}
					
					override def GContainer getTarget(){
						containerValue
					}
					
					override def boolean equals(Object object) {
				        if (!(object instanceof DoIPSoAdTxPdu)){
							return false
						}
						this.target == (object as DoIPSoAdTxPdu).target
					}
					
					def BigInteger getDoIPSoAdTxPduId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdTxPduId"])
					}
					
					def void setDoIPSoAdTxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPSoAdTxPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPSoAdTxPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDoIPSoAdTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DoIPSoAdTxPduRef")
					}
							
					def void setDoIPSoAdTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DoIPSoAdTxPduRef"], object.getTarget())
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
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationNumber"])
			}
			
			def void setDoIPRoutingActivationNumber(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationNumber"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationNumber"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress> getDoIPTargetAddressRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DoIPTargetAddressRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DoIPTargetAddressRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPConnections.DoIPTargetAddress(referenceValueValue as GContainer)
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
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationFunc"])
				}
				
				def void setDoIPRoutingActivationAuthenticationFunc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationFunc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationAuthenticationFunc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDoIPRoutingActivationAuthenticationReqLength(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationReqLength"])
				}
				
				def void setDoIPRoutingActivationAuthenticationReqLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationReqLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationAuthenticationReqLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDoIPRoutingActivationAuthenticationResLength(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationResLength"])
				}
				
				def void setDoIPRoutingActivationAuthenticationResLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationAuthenticationResLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationAuthenticationResLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationFunc"])
				}
				
				def void setDoIPRoutingActivationConfirmationFunc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationFunc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationConfirmationFunc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDoIPRoutingActivationConfirmationReqLength(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationReqLength"])
				}
				
				def void setDoIPRoutingActivationConfirmationReqLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationReqLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationConfirmationReqLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getDoIPRoutingActivationConfirmationResLength(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationResLength"])
				}
				
				def void setDoIPRoutingActivationConfirmationResLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPRoutingActivationConfirmationResLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPRoutingActivationConfirmationResLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPNumByteDiagAckNack"])
			}
			
			def void setDoIPNumByteDiagAckNack(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPNumByteDiagAckNack"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPNumByteDiagAckNack"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getDoIPTesterSA(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTesterSA"])
			}
			
			def void setDoIPTesterSA(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTesterSA"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPTesterSA"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation> getDoIPRoutingActivationRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DoIPRoutingActivationRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DoIPRoutingActivationRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.DoIP.DoIPConfigSet.DoIPRoutingActivation(referenceValueValue as GContainer)
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
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPAliveCheckResponseTimeout"])
		}
		
		def void setDoIPAliveCheckResponseTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPAliveCheckResponseTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPAliveCheckResponseTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDoIPDevelopmentErrorDetect(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPDevelopmentErrorDetect"])
		}
		
		def void setDoIPDevelopmentErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPDevelopmentErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPDevelopmentErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPDhcpOptionVinUse(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPDhcpOptionVinUse"])
		}
		
		def void setDoIPDhcpOptionVinUse(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPDhcpOptionVinUse"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPDhcpOptionVinUse"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPEntityStatusMaxByteFieldUse(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPEntityStatusMaxByteFieldUse"])
		}
		
		def void setDoIPEntityStatusMaxByteFieldUse(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPEntityStatusMaxByteFieldUse"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPEntityStatusMaxByteFieldUse"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getDoIPGIDInvalidityPattern(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGIDInvalidityPattern"])
		}
		
		def void setDoIPGIDInvalidityPattern(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGIDInvalidityPattern"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPGIDInvalidityPattern"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getDoIPGeneralInactivityTime(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGeneralInactivityTime"])
		}
		
		def void setDoIPGeneralInactivityTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGeneralInactivityTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPGeneralInactivityTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def String getDoIPHostNameSizeMax(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPHostNameSizeMax"])
		}
		
		def void setDoIPHostNameSizeMax(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPHostNameSizeMax"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPHostNameSizeMax"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getDoIPInitialInactivityTime(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPInitialInactivityTime"])
		}
		
		def void setDoIPInitialInactivityTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPInitialInactivityTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPInitialInactivityTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getDoIPInitialVehicleAnnouncementTime(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPInitialVehicleAnnouncementTime"])
		}
		
		def void setDoIPInitialVehicleAnnouncementTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPInitialVehicleAnnouncementTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPInitialVehicleAnnouncementTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getDoIPMainFunctionPeriod(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMainFunctionPeriod"])
		}
		
		def void setDoIPMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getDoIPMaxRequestBytes(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxRequestBytes"])
		}
		
		def void setDoIPMaxRequestBytes(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxRequestBytes"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPMaxRequestBytes"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getDoIPMaxTesterConnections(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxTesterConnections"])
		}
		
		def void setDoIPMaxTesterConnections(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxTesterConnections"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPMaxTesterConnections"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getDoIPMaxUDPRequestPerMessage(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxUDPRequestPerMessage"])
		}
		
		def void setDoIPMaxUDPRequestPerMessage(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPMaxUDPRequestPerMessage"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPMaxUDPRequestPerMessage"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def DoIPNodeType getDoIPNodeType(){
			getDoIPNodeTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPNodeType"])
		}
		
		def void setDoIPNodeType(DoIPNodeType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPNodeType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPNodeType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum DoIPNodeType {
			DOIP_GATEWAY, 
			DOIP_NODE
		}
			
		def DoIPNodeType getDoIPNodeTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DOIP_GATEWAY" : DoIPNodeType.DOIP_GATEWAY
				case "DOIP_NODE" : DoIPNodeType.DOIP_NODE
			}
		}
		
		def void setDoIPNodeTypeValue(GParameterValue paramValue, DoIPNodeType value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getDoIPUseEIDasGID(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseEIDasGID"])
		}
		
		def void setDoIPUseEIDasGID(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseEIDasGID"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPUseEIDasGID"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPUseMacAddressForIdentification(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseMacAddressForIdentification"])
		}
		
		def void setDoIPUseMacAddressForIdentification(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseMacAddressForIdentification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPUseMacAddressForIdentification"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPUseVehicleIdentificationSyncStatus(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseVehicleIdentificationSyncStatus"])
		}
		
		def void setDoIPUseVehicleIdentificationSyncStatus(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPUseVehicleIdentificationSyncStatus"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPUseVehicleIdentificationSyncStatus"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getDoIPVehicleAnnouncementInterval(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementInterval"])
		}
		
		def void setDoIPVehicleAnnouncementInterval(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementInterval"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVehicleAnnouncementInterval"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getDoIPVehicleAnnouncementRepetition(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementRepetition"])
		}
		
		def void setDoIPVehicleAnnouncementRepetition(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVehicleAnnouncementRepetition"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVehicleAnnouncementRepetition"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDoIPVersionInfoApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVersionInfoApi"])
		}
		
		def void setDoIPVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDoIPVinGidMaster(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVinGidMaster"])
		}
		
		def void setDoIPVinGidMaster(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVinGidMaster"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVinGidMaster"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getDoIPVinInvalidityPattern(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVinInvalidityPattern"])
		}
		
		def void setDoIPVinInvalidityPattern(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPVinInvalidityPattern"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPVinInvalidityPattern"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGetGidDirect"])
			}
			
			def void setDoIPGetGidDirect(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPGetGidDirect"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPGetGidDirect"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPowerModeDirect"])
			}
			
			def void setDoIPPowerModeDirect(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPPowerModeDirect"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPPowerModeDirect"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTriggerGidSyncDirect"])
			}
			
			def void setDoIPTriggerGidSyncDirect(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DoIPTriggerGidSyncDirect"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DoIPTriggerGidSyncDirect"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		if (definitionFeature != null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
