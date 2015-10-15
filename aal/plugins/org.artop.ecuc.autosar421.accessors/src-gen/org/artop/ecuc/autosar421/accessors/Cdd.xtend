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

class Cdd implements IWrapper<GModuleConfiguration> {
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

	def CddComStackContribution getCddComStackContribution(){
		moduleConfiguration.getByType(typeof(CddComStackContribution))
	}

	def void setCddComStackContribution(CddComStackContribution cddComStackContribution){
		val GContainer container = cddComStackContribution.getTarget()
	    moduleConfiguration.setContainer(container, "CddComStackContribution")
	}
	def CddConfigSet getCddConfigSet(){
		moduleConfiguration.getByType(typeof(CddConfigSet))
	}

	def void setCddConfigSet(CddConfigSet cddConfigSet){
		val GContainer container = cddConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "CddConfigSet")
	}
	def CddEcucPartitionInteraction getCddEcucPartitionInteraction(){
		moduleConfiguration.getByType(typeof(CddEcucPartitionInteraction))
	}

	def void setCddEcucPartitionInteraction(CddEcucPartitionInteraction cddEcucPartitionInteraction){
		val GContainer container = cddEcucPartitionInteraction.getTarget()
	    moduleConfiguration.setContainer(container, "CddEcucPartitionInteraction")
	}

	static class CddComStackContribution implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CddComStackContribution)){
				return false
			}
			this.target == (object as CddComStackContribution).target
		}
	
		
		
		def CddComIfUpperLayerContribution getCddComIfUpperLayerContribution(){
			containerValue.getByType(typeof(CddComIfUpperLayerContribution))
		}
		
		def void setCddComIfUpperLayerContribution(CddComIfUpperLayerContribution cddComIfUpperLayerContribution){
			val GContainer subContainer = cddComIfUpperLayerContribution.getTarget()
			containerValue.setContainer(subContainer, "CddComIfUpperLayerContribution")
		}
		
		def CddComMLowerLayerContribution getCddComMLowerLayerContribution(){
			containerValue.getByType(typeof(CddComMLowerLayerContribution))
		}
		
		def void setCddComMLowerLayerContribution(CddComMLowerLayerContribution cddComMLowerLayerContribution){
			val GContainer subContainer = cddComMLowerLayerContribution.getTarget()
			containerValue.setContainer(subContainer, "CddComMLowerLayerContribution")
		}
		
		def CddGenericNmLowerLayerContribution getCddGenericNmLowerLayerContribution(){
			containerValue.getByType(typeof(CddGenericNmLowerLayerContribution))
		}
		
		def void setCddGenericNmLowerLayerContribution(CddGenericNmLowerLayerContribution cddGenericNmLowerLayerContribution){
			val GContainer subContainer = cddGenericNmLowerLayerContribution.getTarget()
			containerValue.setContainer(subContainer, "CddGenericNmLowerLayerContribution")
		}
		
		def CddPduRLowerLayerContribution getCddPduRLowerLayerContribution(){
			containerValue.getByType(typeof(CddPduRLowerLayerContribution))
		}
		
		def void setCddPduRLowerLayerContribution(CddPduRLowerLayerContribution cddPduRLowerLayerContribution){
			val GContainer subContainer = cddPduRLowerLayerContribution.getTarget()
			containerValue.setContainer(subContainer, "CddPduRLowerLayerContribution")
		}
		
		def CddPduRUpperLayerContribution getCddPduRUpperLayerContribution(){
			containerValue.getByType(typeof(CddPduRUpperLayerContribution))
		}
		
		def void setCddPduRUpperLayerContribution(CddPduRUpperLayerContribution cddPduRUpperLayerContribution){
			val GContainer subContainer = cddPduRUpperLayerContribution.getTarget()
			containerValue.setContainer(subContainer, "CddPduRUpperLayerContribution")
		}
		
		def CddSoAdUpperLayerContribution getCddSoAdUpperLayerContribution(){
			containerValue.getByType(typeof(CddSoAdUpperLayerContribution))
		}
		
		def void setCddSoAdUpperLayerContribution(CddSoAdUpperLayerContribution cddSoAdUpperLayerContribution){
			val GContainer subContainer = cddSoAdUpperLayerContribution.getTarget()
			containerValue.setContainer(subContainer, "CddSoAdUpperLayerContribution")
		}
		
		
		static class CddComIfUpperLayerContribution implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CddComIfUpperLayerContribution)){
					return false
				}
				this.target == (object as CddComIfUpperLayerContribution).target
			}
		
			
			
			def List<CddComIfUpperLayerRxPdu> getCddComIfUpperLayerRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddComIfUpperLayerRxPdu")
					}
				}
				return new BasicWrappingEList<CddComIfUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddComIfUpperLayerRxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddComIfUpperLayerContribution.CddComIfUpperLayerRxPdu cddComIfUpperLayerRxPdu) {
						cddComIfUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddComIfUpperLayerRxPdu"))
						super.delegateAdd(cddComIfUpperLayerRxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddComIfUpperLayerContribution.CddComIfUpperLayerRxPdu cddComIfUpperLayerRxPdu) {
						cddComIfUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddComIfUpperLayerRxPdu"))
						super.delegateAdd(index, cddComIfUpperLayerRxPdu)
					}
				}
			}
			
			def List<CddComIfUpperLayerTxPdu> getCddComIfUpperLayerTxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddComIfUpperLayerTxPdu")
					}
				}
				return new BasicWrappingEList<CddComIfUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddComIfUpperLayerTxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddComIfUpperLayerContribution.CddComIfUpperLayerTxPdu cddComIfUpperLayerTxPdu) {
						cddComIfUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddComIfUpperLayerTxPdu"))
						super.delegateAdd(cddComIfUpperLayerTxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddComIfUpperLayerContribution.CddComIfUpperLayerTxPdu cddComIfUpperLayerTxPdu) {
						cddComIfUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddComIfUpperLayerTxPdu"))
						super.delegateAdd(index, cddComIfUpperLayerTxPdu)
					}
				}
			}
			
			
			static class CddComIfUpperLayerRxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddComIfUpperLayerRxPdu)){
						return false
					}
					this.target == (object as CddComIfUpperLayerRxPdu).target
				}
			
				def BigInteger getCddComIfHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"].getBigIntegerValue()
				}
				
				def void setCddComIfHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddComIfHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddComIfPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddComIfPduRef")
				}
				
				def void setCddComIfPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddComIfPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CddComIfUpperLayerTxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddComIfUpperLayerTxPdu)){
						return false
					}
					this.target == (object as CddComIfUpperLayerTxPdu).target
				}
			
				def BigInteger getCddComIfHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"].getBigIntegerValue()
				}
				
				def void setCddComIfHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddComIfHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddComIfPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddComIfPduRef")
				}
				
				def void setCddComIfPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddComIfPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddComMLowerLayerContribution implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CddComMLowerLayerContribution)){
					return false
				}
				this.target == (object as CddComMLowerLayerContribution).target
			}
		
			
			
			def List<CddComMLowerLayerChannel> getCddComMLowerLayerChannels(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddComMLowerLayerChannel")
					}
				}
				return new BasicWrappingEList<CddComMLowerLayerChannel, GContainer>(filteredContainers, typeof(CddComMLowerLayerChannel), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddComMLowerLayerContribution.CddComMLowerLayerChannel cddComMLowerLayerChannel) {
						cddComMLowerLayerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CddComMLowerLayerChannel"))
						super.delegateAdd(cddComMLowerLayerChannel)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddComMLowerLayerContribution.CddComMLowerLayerChannel cddComMLowerLayerChannel) {
						cddComMLowerLayerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CddComMLowerLayerChannel"))
						super.delegateAdd(index, cddComMLowerLayerChannel)
					}
				}
			}
			
			
			static class CddComMLowerLayerChannel implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddComMLowerLayerChannel)){
						return false
					}
					this.target == (object as CddComMLowerLayerChannel).target
				}
			
				
				def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCddComMLowerLayerChannelRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CddComMLowerLayerChannelRef")
				}
				
				def void setCddComMLowerLayerChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddComMLowerLayerChannelRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddGenericNmLowerLayerContribution implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CddGenericNmLowerLayerContribution)){
					return false
				}
				this.target == (object as CddGenericNmLowerLayerContribution).target
			}
		
			
			
			def List<CddGenericNmLowerLayerChannel> getCddGenericNmLowerLayerChannels(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddGenericNmLowerLayerChannel")
					}
				}
				return new BasicWrappingEList<CddGenericNmLowerLayerChannel, GContainer>(filteredContainers, typeof(CddGenericNmLowerLayerChannel), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddGenericNmLowerLayerContribution.CddGenericNmLowerLayerChannel cddGenericNmLowerLayerChannel) {
						cddGenericNmLowerLayerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CddGenericNmLowerLayerChannel"))
						super.delegateAdd(cddGenericNmLowerLayerChannel)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddGenericNmLowerLayerContribution.CddGenericNmLowerLayerChannel cddGenericNmLowerLayerChannel) {
						cddGenericNmLowerLayerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CddGenericNmLowerLayerChannel"))
						super.delegateAdd(index, cddGenericNmLowerLayerChannel)
					}
				}
			}
			
			
			static class CddGenericNmLowerLayerChannel implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddGenericNmLowerLayerChannel)){
						return false
					}
					this.target == (object as CddGenericNmLowerLayerChannel).target
				}
			
				
				def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCddGenericNmComMNetworkHandleRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CddGenericNmComMNetworkHandleRef")
				}
				
				def void setCddGenericNmComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddGenericNmComMNetworkHandleRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddPduRLowerLayerContribution implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CddPduRLowerLayerContribution)){
					return false
				}
				this.target == (object as CddPduRLowerLayerContribution).target
			}
		
			
			
			def List<CddPduRLowerLayerRxPdu> getCddPduRLowerLayerRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddPduRLowerLayerRxPdu")
					}
				}
				return new BasicWrappingEList<CddPduRLowerLayerRxPdu, GContainer>(filteredContainers, typeof(CddPduRLowerLayerRxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddPduRLowerLayerContribution.CddPduRLowerLayerRxPdu cddPduRLowerLayerRxPdu) {
						cddPduRLowerLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRLowerLayerRxPdu"))
						super.delegateAdd(cddPduRLowerLayerRxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddPduRLowerLayerContribution.CddPduRLowerLayerRxPdu cddPduRLowerLayerRxPdu) {
						cddPduRLowerLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRLowerLayerRxPdu"))
						super.delegateAdd(index, cddPduRLowerLayerRxPdu)
					}
				}
			}
			
			def List<CddPduRLowerLayerTxPdu> getCddPduRLowerLayerTxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddPduRLowerLayerTxPdu")
					}
				}
				return new BasicWrappingEList<CddPduRLowerLayerTxPdu, GContainer>(filteredContainers, typeof(CddPduRLowerLayerTxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddPduRLowerLayerContribution.CddPduRLowerLayerTxPdu cddPduRLowerLayerTxPdu) {
						cddPduRLowerLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRLowerLayerTxPdu"))
						super.delegateAdd(cddPduRLowerLayerTxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddPduRLowerLayerContribution.CddPduRLowerLayerTxPdu cddPduRLowerLayerTxPdu) {
						cddPduRLowerLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRLowerLayerTxPdu"))
						super.delegateAdd(index, cddPduRLowerLayerTxPdu)
					}
				}
			}
			
			
			static class CddPduRLowerLayerRxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddPduRLowerLayerRxPdu)){
						return false
					}
					this.target == (object as CddPduRLowerLayerRxPdu).target
				}
			
				def CddPduRApiType getCddPduRApiType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
				
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCddPduRLowerLayerHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"].getBigIntegerValue()
				}
				
				def void setCddPduRLowerLayerHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRLowerLayerHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRLowerLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRLowerLayerPduRef")
				}
				
				def void setCddPduRLowerLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRLowerLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CddPduRLowerLayerTxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddPduRLowerLayerTxPdu)){
						return false
					}
					this.target == (object as CddPduRLowerLayerTxPdu).target
				}
			
				def CddPduRApiType getCddPduRApiType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
				
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCddPduRLowerLayerHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"].getBigIntegerValue()
				}
				
				def void setCddPduRLowerLayerHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRLowerLayerHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRLowerLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRLowerLayerPduRef")
				}
				
				def void setCddPduRLowerLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRLowerLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddPduRUpperLayerContribution implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CddPduRUpperLayerContribution)){
					return false
				}
				this.target == (object as CddPduRUpperLayerContribution).target
			}
		
			
			
			def List<CddPduRUpperLayerRxPdu> getCddPduRUpperLayerRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddPduRUpperLayerRxPdu")
					}
				}
				return new BasicWrappingEList<CddPduRUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddPduRUpperLayerRxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddPduRUpperLayerContribution.CddPduRUpperLayerRxPdu cddPduRUpperLayerRxPdu) {
						cddPduRUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRUpperLayerRxPdu"))
						super.delegateAdd(cddPduRUpperLayerRxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddPduRUpperLayerContribution.CddPduRUpperLayerRxPdu cddPduRUpperLayerRxPdu) {
						cddPduRUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRUpperLayerRxPdu"))
						super.delegateAdd(index, cddPduRUpperLayerRxPdu)
					}
				}
			}
			
			def List<CddPduRUpperLayerTxPdu> getCddPduRUpperLayerTxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddPduRUpperLayerTxPdu")
					}
				}
				return new BasicWrappingEList<CddPduRUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddPduRUpperLayerTxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddPduRUpperLayerContribution.CddPduRUpperLayerTxPdu cddPduRUpperLayerTxPdu) {
						cddPduRUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRUpperLayerTxPdu"))
						super.delegateAdd(cddPduRUpperLayerTxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddPduRUpperLayerContribution.CddPduRUpperLayerTxPdu cddPduRUpperLayerTxPdu) {
						cddPduRUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRUpperLayerTxPdu"))
						super.delegateAdd(index, cddPduRUpperLayerTxPdu)
					}
				}
			}
			
			
			static class CddPduRUpperLayerRxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddPduRUpperLayerRxPdu)){
						return false
					}
					this.target == (object as CddPduRUpperLayerRxPdu).target
				}
			
				def CddPduRApiType getCddPduRApiType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
				
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCddPduRUpperLayerHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"].getBigIntegerValue()
				}
				
				def void setCddPduRUpperLayerHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRUpperLayerHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRUpperLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRUpperLayerPduRef")
				}
				
				def void setCddPduRUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRUpperLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CddPduRUpperLayerTxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddPduRUpperLayerTxPdu)){
						return false
					}
					this.target == (object as CddPduRUpperLayerTxPdu).target
				}
			
				def CddPduRApiType getCddPduRApiType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
				
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCddPduRUpperLayerHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"].getBigIntegerValue()
				}
				
				def void setCddPduRUpperLayerHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRUpperLayerHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRUpperLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRUpperLayerPduRef")
				}
				
				def void setCddPduRUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRUpperLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddSoAdUpperLayerContribution implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CddSoAdUpperLayerContribution)){
					return false
				}
				this.target == (object as CddSoAdUpperLayerContribution).target
			}
		
			
			
			def List<CddSoAdUpperLayerRxPdu> getCddSoAdUpperLayerRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddSoAdUpperLayerRxPdu")
					}
				}
				return new BasicWrappingEList<CddSoAdUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddSoAdUpperLayerRxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddSoAdUpperLayerContribution.CddSoAdUpperLayerRxPdu cddSoAdUpperLayerRxPdu) {
						cddSoAdUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddSoAdUpperLayerRxPdu"))
						super.delegateAdd(cddSoAdUpperLayerRxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddSoAdUpperLayerContribution.CddSoAdUpperLayerRxPdu cddSoAdUpperLayerRxPdu) {
						cddSoAdUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddSoAdUpperLayerRxPdu"))
						super.delegateAdd(index, cddSoAdUpperLayerRxPdu)
					}
				}
			}
			
			def List<CddSoAdUpperLayerTxPdu> getCddSoAdUpperLayerTxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddSoAdUpperLayerTxPdu")
					}
				}
				return new BasicWrappingEList<CddSoAdUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddSoAdUpperLayerTxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddSoAdUpperLayerContribution.CddSoAdUpperLayerTxPdu cddSoAdUpperLayerTxPdu) {
						cddSoAdUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddSoAdUpperLayerTxPdu"))
						super.delegateAdd(cddSoAdUpperLayerTxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddComStackContribution.CddSoAdUpperLayerContribution.CddSoAdUpperLayerTxPdu cddSoAdUpperLayerTxPdu) {
						cddSoAdUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddSoAdUpperLayerTxPdu"))
						super.delegateAdd(index, cddSoAdUpperLayerTxPdu)
					}
				}
			}
			
			
			static class CddSoAdUpperLayerRxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddSoAdUpperLayerRxPdu)){
						return false
					}
					this.target == (object as CddSoAdUpperLayerRxPdu).target
				}
			
				def CddPduRApiType getCddPduRApiType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
				
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCddSoAdUpperLayerHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"].getBigIntegerValue()
				}
				
				def void setCddSoAdUpperLayerHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddSoAdUpperLayerHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddSoAdUpperLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddSoAdUpperLayerPduRef")
				}
				
				def void setCddSoAdUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddSoAdUpperLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CddSoAdUpperLayerTxPdu implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddSoAdUpperLayerTxPdu)){
						return false
					}
					this.target == (object as CddSoAdUpperLayerTxPdu).target
				}
			
				def CddPduRApiType getCddPduRApiType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
				
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCddSoAdUpperLayerHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"].getBigIntegerValue()
				}
				
				def void setCddSoAdUpperLayerHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddSoAdUpperLayerHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddSoAdUpperLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddSoAdUpperLayerPduRef")
				}
				
				def void setCddSoAdUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddSoAdUpperLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class CddConfigSet implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CddConfigSet)){
				return false
			}
			this.target == (object as CddConfigSet).target
		}
	
		
		
		def CddComStackContribution getCddComStackContribution(){
			containerValue.getByType(typeof(CddComStackContribution))
		}
		
		def void setCddComStackContribution(CddComStackContribution cddComStackContribution){
			val GContainer subContainer = cddComStackContribution.getTarget()
			containerValue.setContainer(subContainer, "CddComStackContribution")
		}
		
		def CddEcucPartitionInteraction getCddEcucPartitionInteraction(){
			containerValue.getByType(typeof(CddEcucPartitionInteraction))
		}
		
		def void setCddEcucPartitionInteraction(CddEcucPartitionInteraction cddEcucPartitionInteraction){
			val GContainer subContainer = cddEcucPartitionInteraction.getTarget()
			containerValue.setContainer(subContainer, "CddEcucPartitionInteraction")
		}
		
		
		static class CddComStackContribution implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CddComStackContribution)){
					return false
				}
				this.target == (object as CddComStackContribution).target
			}
		
			
			
			def CddComIfUpperLayerContribution getCddComIfUpperLayerContribution(){
				containerValue.getByType(typeof(CddComIfUpperLayerContribution))
			}
			
			def void setCddComIfUpperLayerContribution(CddComIfUpperLayerContribution cddComIfUpperLayerContribution){
				val GContainer subContainer = cddComIfUpperLayerContribution.getTarget()
				containerValue.setContainer(subContainer, "CddComIfUpperLayerContribution")
			}
			
			def CddComMLowerLayerContribution getCddComMLowerLayerContribution(){
				containerValue.getByType(typeof(CddComMLowerLayerContribution))
			}
			
			def void setCddComMLowerLayerContribution(CddComMLowerLayerContribution cddComMLowerLayerContribution){
				val GContainer subContainer = cddComMLowerLayerContribution.getTarget()
				containerValue.setContainer(subContainer, "CddComMLowerLayerContribution")
			}
			
			def CddGenericNmLowerLayerContribution getCddGenericNmLowerLayerContribution(){
				containerValue.getByType(typeof(CddGenericNmLowerLayerContribution))
			}
			
			def void setCddGenericNmLowerLayerContribution(CddGenericNmLowerLayerContribution cddGenericNmLowerLayerContribution){
				val GContainer subContainer = cddGenericNmLowerLayerContribution.getTarget()
				containerValue.setContainer(subContainer, "CddGenericNmLowerLayerContribution")
			}
			
			def CddPduRLowerLayerContribution getCddPduRLowerLayerContribution(){
				containerValue.getByType(typeof(CddPduRLowerLayerContribution))
			}
			
			def void setCddPduRLowerLayerContribution(CddPduRLowerLayerContribution cddPduRLowerLayerContribution){
				val GContainer subContainer = cddPduRLowerLayerContribution.getTarget()
				containerValue.setContainer(subContainer, "CddPduRLowerLayerContribution")
			}
			
			def CddPduRUpperLayerContribution getCddPduRUpperLayerContribution(){
				containerValue.getByType(typeof(CddPduRUpperLayerContribution))
			}
			
			def void setCddPduRUpperLayerContribution(CddPduRUpperLayerContribution cddPduRUpperLayerContribution){
				val GContainer subContainer = cddPduRUpperLayerContribution.getTarget()
				containerValue.setContainer(subContainer, "CddPduRUpperLayerContribution")
			}
			
			def CddSoAdUpperLayerContribution getCddSoAdUpperLayerContribution(){
				containerValue.getByType(typeof(CddSoAdUpperLayerContribution))
			}
			
			def void setCddSoAdUpperLayerContribution(CddSoAdUpperLayerContribution cddSoAdUpperLayerContribution){
				val GContainer subContainer = cddSoAdUpperLayerContribution.getTarget()
				containerValue.setContainer(subContainer, "CddSoAdUpperLayerContribution")
			}
			
			
			static class CddComIfUpperLayerContribution implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddComIfUpperLayerContribution)){
						return false
					}
					this.target == (object as CddComIfUpperLayerContribution).target
				}
			
				
				
				def List<CddComIfUpperLayerRxPdu> getCddComIfUpperLayerRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddComIfUpperLayerRxPdu")
						}
					}
					return new BasicWrappingEList<CddComIfUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddComIfUpperLayerRxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddComIfUpperLayerContribution.CddComIfUpperLayerRxPdu cddComIfUpperLayerRxPdu) {
							cddComIfUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddComIfUpperLayerRxPdu"))
							super.delegateAdd(cddComIfUpperLayerRxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddComIfUpperLayerContribution.CddComIfUpperLayerRxPdu cddComIfUpperLayerRxPdu) {
							cddComIfUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddComIfUpperLayerRxPdu"))
							super.delegateAdd(index, cddComIfUpperLayerRxPdu)
						}
					}
				}
				
				def List<CddComIfUpperLayerTxPdu> getCddComIfUpperLayerTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddComIfUpperLayerTxPdu")
						}
					}
					return new BasicWrappingEList<CddComIfUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddComIfUpperLayerTxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddComIfUpperLayerContribution.CddComIfUpperLayerTxPdu cddComIfUpperLayerTxPdu) {
							cddComIfUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddComIfUpperLayerTxPdu"))
							super.delegateAdd(cddComIfUpperLayerTxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddComIfUpperLayerContribution.CddComIfUpperLayerTxPdu cddComIfUpperLayerTxPdu) {
							cddComIfUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddComIfUpperLayerTxPdu"))
							super.delegateAdd(index, cddComIfUpperLayerTxPdu)
						}
					}
				}
				
				
				static class CddComIfUpperLayerRxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddComIfUpperLayerRxPdu)){
							return false
						}
						this.target == (object as CddComIfUpperLayerRxPdu).target
					}
				
					def BigInteger getCddComIfHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"].getBigIntegerValue()
					}
					
					def void setCddComIfHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddComIfHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddComIfPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddComIfPduRef")
					}
					
					def void setCddComIfPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddComIfPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CddComIfUpperLayerTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddComIfUpperLayerTxPdu)){
							return false
						}
						this.target == (object as CddComIfUpperLayerTxPdu).target
					}
				
					def BigInteger getCddComIfHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"].getBigIntegerValue()
					}
					
					def void setCddComIfHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddComIfHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddComIfPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddComIfPduRef")
					}
					
					def void setCddComIfPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddComIfPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddComMLowerLayerContribution implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddComMLowerLayerContribution)){
						return false
					}
					this.target == (object as CddComMLowerLayerContribution).target
				}
			
				
				
				def List<CddComMLowerLayerChannel> getCddComMLowerLayerChannels(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddComMLowerLayerChannel")
						}
					}
					return new BasicWrappingEList<CddComMLowerLayerChannel, GContainer>(filteredContainers, typeof(CddComMLowerLayerChannel), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddComMLowerLayerContribution.CddComMLowerLayerChannel cddComMLowerLayerChannel) {
							cddComMLowerLayerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CddComMLowerLayerChannel"))
							super.delegateAdd(cddComMLowerLayerChannel)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddComMLowerLayerContribution.CddComMLowerLayerChannel cddComMLowerLayerChannel) {
							cddComMLowerLayerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CddComMLowerLayerChannel"))
							super.delegateAdd(index, cddComMLowerLayerChannel)
						}
					}
				}
				
				
				static class CddComMLowerLayerChannel implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddComMLowerLayerChannel)){
							return false
						}
						this.target == (object as CddComMLowerLayerChannel).target
					}
				
					
					def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCddComMLowerLayerChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CddComMLowerLayerChannelRef")
					}
					
					def void setCddComMLowerLayerChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddComMLowerLayerChannelRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddGenericNmLowerLayerContribution implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddGenericNmLowerLayerContribution)){
						return false
					}
					this.target == (object as CddGenericNmLowerLayerContribution).target
				}
			
				
				
				def List<CddGenericNmLowerLayerChannel> getCddGenericNmLowerLayerChannels(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddGenericNmLowerLayerChannel")
						}
					}
					return new BasicWrappingEList<CddGenericNmLowerLayerChannel, GContainer>(filteredContainers, typeof(CddGenericNmLowerLayerChannel), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddGenericNmLowerLayerContribution.CddGenericNmLowerLayerChannel cddGenericNmLowerLayerChannel) {
							cddGenericNmLowerLayerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CddGenericNmLowerLayerChannel"))
							super.delegateAdd(cddGenericNmLowerLayerChannel)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddGenericNmLowerLayerContribution.CddGenericNmLowerLayerChannel cddGenericNmLowerLayerChannel) {
							cddGenericNmLowerLayerChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CddGenericNmLowerLayerChannel"))
							super.delegateAdd(index, cddGenericNmLowerLayerChannel)
						}
					}
				}
				
				
				static class CddGenericNmLowerLayerChannel implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddGenericNmLowerLayerChannel)){
							return false
						}
						this.target == (object as CddGenericNmLowerLayerChannel).target
					}
				
					
					def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCddGenericNmComMNetworkHandleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CddGenericNmComMNetworkHandleRef")
					}
					
					def void setCddGenericNmComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddGenericNmComMNetworkHandleRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddPduRLowerLayerContribution implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddPduRLowerLayerContribution)){
						return false
					}
					this.target == (object as CddPduRLowerLayerContribution).target
				}
			
				
				
				def List<CddPduRLowerLayerRxPdu> getCddPduRLowerLayerRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddPduRLowerLayerRxPdu")
						}
					}
					return new BasicWrappingEList<CddPduRLowerLayerRxPdu, GContainer>(filteredContainers, typeof(CddPduRLowerLayerRxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddPduRLowerLayerContribution.CddPduRLowerLayerRxPdu cddPduRLowerLayerRxPdu) {
							cddPduRLowerLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRLowerLayerRxPdu"))
							super.delegateAdd(cddPduRLowerLayerRxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddPduRLowerLayerContribution.CddPduRLowerLayerRxPdu cddPduRLowerLayerRxPdu) {
							cddPduRLowerLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRLowerLayerRxPdu"))
							super.delegateAdd(index, cddPduRLowerLayerRxPdu)
						}
					}
				}
				
				def List<CddPduRLowerLayerTxPdu> getCddPduRLowerLayerTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddPduRLowerLayerTxPdu")
						}
					}
					return new BasicWrappingEList<CddPduRLowerLayerTxPdu, GContainer>(filteredContainers, typeof(CddPduRLowerLayerTxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddPduRLowerLayerContribution.CddPduRLowerLayerTxPdu cddPduRLowerLayerTxPdu) {
							cddPduRLowerLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRLowerLayerTxPdu"))
							super.delegateAdd(cddPduRLowerLayerTxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddPduRLowerLayerContribution.CddPduRLowerLayerTxPdu cddPduRLowerLayerTxPdu) {
							cddPduRLowerLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRLowerLayerTxPdu"))
							super.delegateAdd(index, cddPduRLowerLayerTxPdu)
						}
					}
				}
				
				
				static class CddPduRLowerLayerRxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddPduRLowerLayerRxPdu)){
							return false
						}
						this.target == (object as CddPduRLowerLayerRxPdu).target
					}
				
					def CddPduRApiType getCddPduRApiType(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
					
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getCddPduRLowerLayerHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"].getBigIntegerValue()
					}
					
					def void setCddPduRLowerLayerHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRLowerLayerHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRLowerLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRLowerLayerPduRef")
					}
					
					def void setCddPduRLowerLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRLowerLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CddPduRLowerLayerTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddPduRLowerLayerTxPdu)){
							return false
						}
						this.target == (object as CddPduRLowerLayerTxPdu).target
					}
				
					def CddPduRApiType getCddPduRApiType(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
					
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getCddPduRLowerLayerHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"].getBigIntegerValue()
					}
					
					def void setCddPduRLowerLayerHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRLowerLayerHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRLowerLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRLowerLayerPduRef")
					}
					
					def void setCddPduRLowerLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRLowerLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddPduRUpperLayerContribution implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddPduRUpperLayerContribution)){
						return false
					}
					this.target == (object as CddPduRUpperLayerContribution).target
				}
			
				
				
				def List<CddPduRUpperLayerRxPdu> getCddPduRUpperLayerRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddPduRUpperLayerRxPdu")
						}
					}
					return new BasicWrappingEList<CddPduRUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddPduRUpperLayerRxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddPduRUpperLayerContribution.CddPduRUpperLayerRxPdu cddPduRUpperLayerRxPdu) {
							cddPduRUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRUpperLayerRxPdu"))
							super.delegateAdd(cddPduRUpperLayerRxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddPduRUpperLayerContribution.CddPduRUpperLayerRxPdu cddPduRUpperLayerRxPdu) {
							cddPduRUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRUpperLayerRxPdu"))
							super.delegateAdd(index, cddPduRUpperLayerRxPdu)
						}
					}
				}
				
				def List<CddPduRUpperLayerTxPdu> getCddPduRUpperLayerTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddPduRUpperLayerTxPdu")
						}
					}
					return new BasicWrappingEList<CddPduRUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddPduRUpperLayerTxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddPduRUpperLayerContribution.CddPduRUpperLayerTxPdu cddPduRUpperLayerTxPdu) {
							cddPduRUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRUpperLayerTxPdu"))
							super.delegateAdd(cddPduRUpperLayerTxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddPduRUpperLayerContribution.CddPduRUpperLayerTxPdu cddPduRUpperLayerTxPdu) {
							cddPduRUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddPduRUpperLayerTxPdu"))
							super.delegateAdd(index, cddPduRUpperLayerTxPdu)
						}
					}
				}
				
				
				static class CddPduRUpperLayerRxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddPduRUpperLayerRxPdu)){
							return false
						}
						this.target == (object as CddPduRUpperLayerRxPdu).target
					}
				
					def CddPduRApiType getCddPduRApiType(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
					
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getCddPduRUpperLayerHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"].getBigIntegerValue()
					}
					
					def void setCddPduRUpperLayerHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRUpperLayerHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRUpperLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRUpperLayerPduRef")
					}
					
					def void setCddPduRUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRUpperLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CddPduRUpperLayerTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddPduRUpperLayerTxPdu)){
							return false
						}
						this.target == (object as CddPduRUpperLayerTxPdu).target
					}
				
					def CddPduRApiType getCddPduRApiType(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
					
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getCddPduRUpperLayerHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"].getBigIntegerValue()
					}
					
					def void setCddPduRUpperLayerHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRUpperLayerHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRUpperLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRUpperLayerPduRef")
					}
					
					def void setCddPduRUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRUpperLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddSoAdUpperLayerContribution implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof CddSoAdUpperLayerContribution)){
						return false
					}
					this.target == (object as CddSoAdUpperLayerContribution).target
				}
			
				
				
				def List<CddSoAdUpperLayerRxPdu> getCddSoAdUpperLayerRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddSoAdUpperLayerRxPdu")
						}
					}
					return new BasicWrappingEList<CddSoAdUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddSoAdUpperLayerRxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddSoAdUpperLayerContribution.CddSoAdUpperLayerRxPdu cddSoAdUpperLayerRxPdu) {
							cddSoAdUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddSoAdUpperLayerRxPdu"))
							super.delegateAdd(cddSoAdUpperLayerRxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddSoAdUpperLayerContribution.CddSoAdUpperLayerRxPdu cddSoAdUpperLayerRxPdu) {
							cddSoAdUpperLayerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddSoAdUpperLayerRxPdu"))
							super.delegateAdd(index, cddSoAdUpperLayerRxPdu)
						}
					}
				}
				
				def List<CddSoAdUpperLayerTxPdu> getCddSoAdUpperLayerTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddSoAdUpperLayerTxPdu")
						}
					}
					return new BasicWrappingEList<CddSoAdUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddSoAdUpperLayerTxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddSoAdUpperLayerContribution.CddSoAdUpperLayerTxPdu cddSoAdUpperLayerTxPdu) {
							cddSoAdUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddSoAdUpperLayerTxPdu"))
							super.delegateAdd(cddSoAdUpperLayerTxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Cdd.CddConfigSet.CddComStackContribution.CddSoAdUpperLayerContribution.CddSoAdUpperLayerTxPdu cddSoAdUpperLayerTxPdu) {
							cddSoAdUpperLayerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CddSoAdUpperLayerTxPdu"))
							super.delegateAdd(index, cddSoAdUpperLayerTxPdu)
						}
					}
				}
				
				
				static class CddSoAdUpperLayerRxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddSoAdUpperLayerRxPdu)){
							return false
						}
						this.target == (object as CddSoAdUpperLayerRxPdu).target
					}
				
					def CddPduRApiType getCddPduRApiType(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
					
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getCddSoAdUpperLayerHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"].getBigIntegerValue()
					}
					
					def void setCddSoAdUpperLayerHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddSoAdUpperLayerHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddSoAdUpperLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddSoAdUpperLayerPduRef")
					}
					
					def void setCddSoAdUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddSoAdUpperLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CddSoAdUpperLayerTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof CddSoAdUpperLayerTxPdu)){
							return false
						}
						this.target == (object as CddSoAdUpperLayerTxPdu).target
					}
				
					def CddPduRApiType getCddPduRApiType(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"].getCddPduRApiTypeValue()
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
					
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue parameterValue, CddPduRApiType value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getCddSoAdUpperLayerHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"].getBigIntegerValue()
					}
					
					def void setCddSoAdUpperLayerHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddSoAdUpperLayerHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddSoAdUpperLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddSoAdUpperLayerPduRef")
					}
					
					def void setCddSoAdUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddSoAdUpperLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
		static class CddEcucPartitionInteraction implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof CddEcucPartitionInteraction)){
					return false
				}
				this.target == (object as CddEcucPartitionInteraction).target
			}
		
			def String getCddPartitionStoppedFunctionName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPartitionStoppedFunctionName"].getStringValue()
			}
			
			def void setCddPartitionStoppedFunctionName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPartitionStoppedFunctionName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPartitionStoppedFunctionName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getCddEcucPartitionRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "CddEcucPartitionRef")
			}
			
			def void setCddEcucPartitionRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddEcucPartitionRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class CddEcucPartitionInteraction implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof CddEcucPartitionInteraction)){
				return false
			}
			this.target == (object as CddEcucPartitionInteraction).target
		}
	
		def String getCddPartitionStoppedFunctionName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPartitionStoppedFunctionName"].getStringValue()
		}
		
		def void setCddPartitionStoppedFunctionName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPartitionStoppedFunctionName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CddPartitionStoppedFunctionName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getCddEcucPartitionRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "CddEcucPartitionRef")
		}
		
		def void setCddEcucPartitionRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CddEcucPartitionRef"], object.getTarget())
			}
		}
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Cdd)){
			return false
		}
		this.target == (object as Cdd).target
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
