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

class Dbg implements IWrapper<GModuleConfiguration> {
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
	
	def DbgBuffering getDbgBuffering(){
		moduleConfiguration.getByType(typeof(DbgBuffering))
	}
	
	def void setDbgBuffering(DbgBuffering dbgBuffering){
		val GContainer container = dbgBuffering.getTarget() 
	    moduleConfiguration.setContainer(container, "DbgBuffering")
	}
	def DbgCommunication getDbgCommunication(){
		moduleConfiguration.getByType(typeof(DbgCommunication))
	}
	
	def void setDbgCommunication(DbgCommunication dbgCommunication){
		val GContainer container = dbgCommunication.getTarget() 
	    moduleConfiguration.setContainer(container, "DbgCommunication")
	}
	def DbgDIDConfiguration getDbgDIDConfiguration(){
		moduleConfiguration.getByType(typeof(DbgDIDConfiguration))
	}
	
	def void setDbgDIDConfiguration(DbgDIDConfiguration dbgDIDConfiguration){
		val GContainer container = dbgDIDConfiguration.getTarget() 
	    moduleConfiguration.setContainer(container, "DbgDIDConfiguration")
	}
	def DbgGeneral getDbgGeneral(){
		moduleConfiguration.getByType(typeof(DbgGeneral))
	}
	
	def void setDbgGeneral(DbgGeneral dbgGeneral){
		val GContainer container = dbgGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "DbgGeneral")
	}
	def DbgPeriodicDataCollection getDbgPeriodicDataCollection(){
		moduleConfiguration.getByType(typeof(DbgPeriodicDataCollection))
	}
	
	def void setDbgPeriodicDataCollection(DbgPeriodicDataCollection dbgPeriodicDataCollection){
		val GContainer container = dbgPeriodicDataCollection.getTarget() 
	    moduleConfiguration.setContainer(container, "DbgPeriodicDataCollection")
	}
	def DbgTimestampConfiguration getDbgTimestampConfiguration(){
		moduleConfiguration.getByType(typeof(DbgTimestampConfiguration))
	}
	
	def void setDbgTimestampConfiguration(DbgTimestampConfiguration dbgTimestampConfiguration){
		val GContainer container = dbgTimestampConfiguration.getTarget() 
	    moduleConfiguration.setContainer(container, "DbgTimestampConfiguration")
	}
	
	static class DbgBuffering implements IWrapper<GContainer> {
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
	        if (!(object instanceof DbgBuffering)){
				return false
			}
			this.target == (object as DbgBuffering).target
		}
		
		def BigInteger getDbgBufferSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgBufferSize"])
		}
		
		def void setDbgBufferSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgBufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgBufferSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def DbgBufferStrategy getDbgBufferStrategy(){
			getDbgBufferStrategyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgBufferStrategy"])
		}
		
		def void setDbgBufferStrategy(DbgBufferStrategy value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgBufferStrategy"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgBufferStrategy"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum DbgBufferStrategy {
			OverwriteOldestEntries, 
			StopStorage
		}
			
		def DbgBufferStrategy getDbgBufferStrategyValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "OverwriteOldestEntries" : DbgBufferStrategy.OverwriteOldestEntries
				case "StopStorage" : DbgBufferStrategy.StopStorage
			}
		}
		
		def void setDbgBufferStrategyValue(GParameterValue paramValue, DbgBufferStrategy value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def DbgBufferTransmission getDbgBufferTransmission(){
			getDbgBufferTransmissionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgBufferTransmission"])
		}
		
		def void setDbgBufferTransmission(DbgBufferTransmission value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgBufferTransmission"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgBufferTransmission"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum DbgBufferTransmission {
			StartAfterInitialization, 
			StartOnHostRequest
		}
			
		def DbgBufferTransmission getDbgBufferTransmissionValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "StartAfterInitialization" : DbgBufferTransmission.StartAfterInitialization
				case "StartOnHostRequest" : DbgBufferTransmission.StartOnHostRequest
			}
		}
		
		def void setDbgBufferTransmissionValue(GParameterValue paramValue, DbgBufferTransmission value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		
		
	}
	static class DbgCommunication implements IWrapper<GContainer> {
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
	        if (!(object instanceof DbgCommunication)){
				return false
			}
			this.target == (object as DbgCommunication).target
		}
		
		
		
		def DbgRxPdu getDbgRxPdu(){
			containerValue.getByType(typeof(DbgRxPdu))
		}
		
		def void setDbgRxPdu(DbgRxPdu dbgRxPdu){
			val GContainer subContainer = dbgRxPdu.getTarget()
			containerValue.setContainer(subContainer, "DbgRxPdu")
		}
		
		def DbgTxPdu getDbgTxPdu(){
			containerValue.getByType(typeof(DbgTxPdu))
		}
		
		def void setDbgTxPdu(DbgTxPdu dbgTxPdu){
			val GContainer subContainer = dbgTxPdu.getTarget()
			containerValue.setContainer(subContainer, "DbgTxPdu")
		}
		
		
		static class DbgRxPdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof DbgRxPdu)){
					return false
				}
				this.target == (object as DbgRxPdu).target
			}
			
			def BigInteger getDbgRxPduId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgRxPduId"])
			}
			
			def void setDbgRxPduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgRxPduId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgRxPduId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDbgReceiveIPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DbgReceiveIPduRef")
			}
					
			def void setDbgReceiveIPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DbgReceiveIPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DbgTxPdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof DbgTxPdu)){
					return false
				}
				this.target == (object as DbgTxPdu).target
			}
			
			def BigInteger getDbgTxConfirmationPduId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgTxConfirmationPduId"])
			}
			
			def void setDbgTxConfirmationPduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgTxConfirmationPduId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgTxConfirmationPduId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDbgSendIPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DbgSendIPduRef")
			}
					
			def void setDbgSendIPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DbgSendIPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class DbgDIDConfiguration implements IWrapper<GContainer> {
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
	        if (!(object instanceof DbgDIDConfiguration)){
				return false
			}
			this.target == (object as DbgDIDConfiguration).target
		}
		
		def BigInteger getDbgMaxDynamicDID(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgMaxDynamicDID"])
		}
		
		def void setDbgMaxDynamicDID(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgMaxDynamicDID"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgMaxDynamicDID"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<DbgPredefinedDID> getDbgPredefinedDIDs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DbgPredefinedDID")
				}
			}
			return new BasicWrappingEList<DbgPredefinedDID, GContainer>(filteredContainers, typeof(DbgPredefinedDID), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dbg$DbgDIDConfiguration$DbgPredefinedDID dbgPredefinedDID) {
					dbgPredefinedDID.target?.gSetDefinition(containerValue.getContainerDefinition("DbgPredefinedDID"))
					super.delegateAdd(dbgPredefinedDID)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dbg$DbgDIDConfiguration$DbgPredefinedDID dbgPredefinedDID) {
					dbgPredefinedDID.target?.gSetDefinition(containerValue.getContainerDefinition("DbgPredefinedDID"))
					super.delegateAdd(index, dbgPredefinedDID)
				}	
			}
		}
		
		def List<DbgStaticDID> getDbgStaticDIDs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DbgStaticDID")
				}
			}
			return new BasicWrappingEList<DbgStaticDID, GContainer>(filteredContainers, typeof(DbgStaticDID), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dbg$DbgDIDConfiguration$DbgStaticDID dbgStaticDID) {
					dbgStaticDID.target?.gSetDefinition(containerValue.getContainerDefinition("DbgStaticDID"))
					super.delegateAdd(dbgStaticDID)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dbg$DbgDIDConfiguration$DbgStaticDID dbgStaticDID) {
					dbgStaticDID.target?.gSetDefinition(containerValue.getContainerDefinition("DbgStaticDID"))
					super.delegateAdd(index, dbgStaticDID)
				}	
			}
		}
		
		
		static class DbgPredefinedDID implements IWrapper<GContainer> {
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
		        if (!(object instanceof DbgPredefinedDID)){
					return false
				}
				this.target == (object as DbgPredefinedDID).target
			}
			
			def Boolean getDbgPredefinedDIDActivation(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgPredefinedDIDActivation"])
			}
			
			def void setDbgPredefinedDIDActivation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgPredefinedDIDActivation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgPredefinedDIDActivation"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDbgPredefinedDIDBuffering(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgPredefinedDIDBuffering"])
			}
			
			def void setDbgPredefinedDIDBuffering(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgPredefinedDIDBuffering"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgPredefinedDIDBuffering"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def DbgPredefinedDIDName getDbgPredefinedDIDName(){
				getDbgPredefinedDIDNameValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgPredefinedDIDName"])
			}
			
			def void setDbgPredefinedDIDName(DbgPredefinedDIDName value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgPredefinedDIDName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgPredefinedDIDName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum DbgPredefinedDIDName {
				Dbg_PostTaskHook, 
				Dbg_PreTaskHook, 
				Dbg_TraceDetCall, 
				Dbg_TraceFunctionEntry, 
				Dbg_TraceFunctionExit, 
				Dbg_TraceRTECall, 
				Dbg_TraceRTEComCallback, 
				Dbg_TraceRTEComSignalIv, 
				Dbg_TraceRTEComSignalRx, 
				Dbg_TraceRTEComSignalTx, 
				Dbg_TraceRTEVfbSignalReceive, 
				Dbg_TraceRTEVfbSignalSend, 
				Dbg_TraceRunnableStart, 
				Dbg_TraceRunnableTermination, 
				Dbg_TraceTimestamps
			}
				
			def DbgPredefinedDIDName getDbgPredefinedDIDNameValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "Dbg_PostTaskHook" : DbgPredefinedDIDName.Dbg_PostTaskHook
					case "Dbg_PreTaskHook" : DbgPredefinedDIDName.Dbg_PreTaskHook
					case "Dbg_TraceDetCall" : DbgPredefinedDIDName.Dbg_TraceDetCall
					case "Dbg_TraceFunctionEntry" : DbgPredefinedDIDName.Dbg_TraceFunctionEntry
					case "Dbg_TraceFunctionExit" : DbgPredefinedDIDName.Dbg_TraceFunctionExit
					case "Dbg_TraceRTECall" : DbgPredefinedDIDName.Dbg_TraceRTECall
					case "Dbg_TraceRTEComCallback" : DbgPredefinedDIDName.Dbg_TraceRTEComCallback
					case "Dbg_TraceRTEComSignalIv" : DbgPredefinedDIDName.Dbg_TraceRTEComSignalIv
					case "Dbg_TraceRTEComSignalRx" : DbgPredefinedDIDName.Dbg_TraceRTEComSignalRx
					case "Dbg_TraceRTEComSignalTx" : DbgPredefinedDIDName.Dbg_TraceRTEComSignalTx
					case "Dbg_TraceRTEVfbSignalReceive" : DbgPredefinedDIDName.Dbg_TraceRTEVfbSignalReceive
					case "Dbg_TraceRTEVfbSignalSend" : DbgPredefinedDIDName.Dbg_TraceRTEVfbSignalSend
					case "Dbg_TraceRunnableStart" : DbgPredefinedDIDName.Dbg_TraceRunnableStart
					case "Dbg_TraceRunnableTermination" : DbgPredefinedDIDName.Dbg_TraceRunnableTermination
					case "Dbg_TraceTimestamps" : DbgPredefinedDIDName.Dbg_TraceTimestamps
				}
			}
			
			def void setDbgPredefinedDIDNameValue(GParameterValue paramValue, DbgPredefinedDIDName value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def Boolean getDbgPredefinedDIDTimeStampActivation(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgPredefinedDIDTimeStampActivation"])
			}
			
			def void setDbgPredefinedDIDTimeStampActivation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgPredefinedDIDTimeStampActivation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgPredefinedDIDTimeStampActivation"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<DbgPredefinedDIDAddInfo> getDbgPredefinedDIDAddInfos(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DbgPredefinedDIDAddInfo")
					}
				}
				return new BasicWrappingEList<DbgPredefinedDIDAddInfo, GContainer>(filteredContainers, typeof(DbgPredefinedDIDAddInfo), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dbg$DbgDIDConfiguration$DbgPredefinedDID$DbgPredefinedDIDAddInfo dbgPredefinedDIDAddInfo) {
						dbgPredefinedDIDAddInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DbgPredefinedDIDAddInfo"))
						super.delegateAdd(dbgPredefinedDIDAddInfo)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dbg$DbgDIDConfiguration$DbgPredefinedDID$DbgPredefinedDIDAddInfo dbgPredefinedDIDAddInfo) {
						dbgPredefinedDIDAddInfo.target?.gSetDefinition(containerValue.getContainerDefinition("DbgPredefinedDIDAddInfo"))
						super.delegateAdd(index, dbgPredefinedDIDAddInfo)
					}	
				}
			}
			
			
			static class DbgPredefinedDIDAddInfo implements IWrapper<GContainer> {
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
			        if (!(object instanceof DbgPredefinedDIDAddInfo)){
						return false
					}
					this.target == (object as DbgPredefinedDIDAddInfo).target
				}
				
				def DbgAddInfoComSignal getDbgAddInfoComSignal(){
					containerValue.getByType(typeof(DbgAddInfoComSignal))
				}
				
				def void setDbgAddInfoComSignal(DbgAddInfoComSignal dbgAddInfoComSignal){
					val GContainer subContainer = dbgAddInfoComSignal.getTarget()
					containerValue.setContainer(subContainer, "DbgAddInfoComSignal")
				}
				def DbgAddInfoRteCall getDbgAddInfoRteCall(){
					containerValue.getByType(typeof(DbgAddInfoRteCall))
				}
				
				def void setDbgAddInfoRteCall(DbgAddInfoRteCall dbgAddInfoRteCall){
					val GContainer subContainer = dbgAddInfoRteCall.getTarget()
					containerValue.setContainer(subContainer, "DbgAddInfoRteCall")
				}
				def DbgAddInfoRunnable getDbgAddInfoRunnable(){
					containerValue.getByType(typeof(DbgAddInfoRunnable))
				}
				
				def void setDbgAddInfoRunnable(DbgAddInfoRunnable dbgAddInfoRunnable){
					val GContainer subContainer = dbgAddInfoRunnable.getTarget()
					containerValue.setContainer(subContainer, "DbgAddInfoRunnable")
				}
				def DbgAddInfoVfbSignal getDbgAddInfoVfbSignal(){
					containerValue.getByType(typeof(DbgAddInfoVfbSignal))
				}
				
				def void setDbgAddInfoVfbSignal(DbgAddInfoVfbSignal dbgAddInfoVfbSignal){
					val GContainer subContainer = dbgAddInfoVfbSignal.getTarget()
					containerValue.setContainer(subContainer, "DbgAddInfoVfbSignal")
				}
				
				static class DbgAddInfoComSignal implements IWrapper<GContainer> {
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
				        if (!(object instanceof DbgAddInfoComSignal)){
							return false
						}
						this.target == (object as DbgAddInfoComSignal).target
					}
					
					def String getDbgComSignalName(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgComSignalName"])
					}
					
					def void setDbgComSignalName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgComSignalName"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgComSignalName"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal getDbgComSignalRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal), "DbgComSignalRef")
					}
							
					def void setDbgComSignalRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DbgComSignalRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DbgAddInfoRteCall implements IWrapper<GContainer> {
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
				        if (!(object instanceof DbgAddInfoRteCall)){
							return false
						}
						this.target == (object as DbgAddInfoRteCall).target
					}
					
					def BigInteger getDbgCallComponentId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgCallComponentId"])
					}
					
					def void setDbgCallComponentId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgCallComponentId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgCallComponentId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDbgCallInstanceId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgCallInstanceId"])
					}
					
					def void setDbgCallInstanceId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgCallInstanceId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgCallInstanceId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDbgCallPortId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgCallPortId"])
					}
					
					def void setDbgCallPortId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgCallPortId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgCallPortId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDbgCallServiceId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgCallServiceId"])
					}
					
					def void setDbgCallServiceId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgCallServiceId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgCallServiceId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
					
				}
				
				static class DbgAddInfoRunnable implements IWrapper<GContainer> {
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
				        if (!(object instanceof DbgAddInfoRunnable)){
							return false
						}
						this.target == (object as DbgAddInfoRunnable).target
					}
					
					def BigInteger getDbgRunnableComponentId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgRunnableComponentId"])
					}
					
					def void setDbgRunnableComponentId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgRunnableComponentId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgRunnableComponentId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDbgRunnableId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgRunnableId"])
					}
					
					def void setDbgRunnableId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgRunnableId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgRunnableId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDbgRunnableInstanceId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgRunnableInstanceId"])
					}
					
					def void setDbgRunnableInstanceId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgRunnableInstanceId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgRunnableInstanceId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
					
					
				}
				
				static class DbgAddInfoVfbSignal implements IWrapper<GContainer> {
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
				        if (!(object instanceof DbgAddInfoVfbSignal)){
							return false
						}
						this.target == (object as DbgAddInfoVfbSignal).target
					}
					
					def BigInteger getDbgVfbComponentId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVfbComponentId"])
					}
					
					def void setDbgVfbComponentId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVfbComponentId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgVfbComponentId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDbgVfbDataElementId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVfbDataElementId"])
					}
					
					def void setDbgVfbDataElementId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVfbDataElementId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgVfbDataElementId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDbgVfbInstanceId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVfbInstanceId"])
					}
					
					def void setDbgVfbInstanceId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVfbInstanceId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgVfbInstanceId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDbgVfbPortId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVfbPortId"])
					}
					
					def void setDbgVfbPortId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVfbPortId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgVfbPortId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
					
				}
				
			}
			
		}
		
		static class DbgStaticDID implements IWrapper<GContainer> {
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
		        if (!(object instanceof DbgStaticDID)){
					return false
				}
				this.target == (object as DbgStaticDID).target
			}
			
			def BigInteger getDbgAutomaticCollectionFrequency(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgAutomaticCollectionFrequency"])
			}
			
			def void setDbgAutomaticCollectionFrequency(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgAutomaticCollectionFrequency"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgAutomaticCollectionFrequency"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDbgStaticDIDActivation(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgStaticDIDActivation"])
			}
			
			def void setDbgStaticDIDActivation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgStaticDIDActivation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgStaticDIDActivation"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDbgStaticDIDBuffering(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgStaticDIDBuffering"])
			}
			
			def void setDbgStaticDIDBuffering(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgStaticDIDBuffering"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgStaticDIDBuffering"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getDbgStaticDIDNameRef(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgStaticDIDNameRef"])
			}
			
			def void setDbgStaticDIDNameRef(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgStaticDIDNameRef"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgStaticDIDNameRef"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDbgStaticTimeStampActivation(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgStaticTimeStampActivation"])
			}
			
			def void setDbgStaticTimeStampActivation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgStaticTimeStampActivation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgStaticTimeStampActivation"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<DbgStaticDIDData> getDbgStaticDIDDatas(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DbgStaticDIDData")
					}
				}
				return new BasicWrappingEList<DbgStaticDIDData, GContainer>(filteredContainers, typeof(DbgStaticDIDData), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dbg$DbgDIDConfiguration$DbgStaticDID$DbgStaticDIDData dbgStaticDIDData) {
						dbgStaticDIDData.target?.gSetDefinition(containerValue.getContainerDefinition("DbgStaticDIDData"))
						super.delegateAdd(dbgStaticDIDData)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dbg$DbgDIDConfiguration$DbgStaticDID$DbgStaticDIDData dbgStaticDIDData) {
						dbgStaticDIDData.target?.gSetDefinition(containerValue.getContainerDefinition("DbgStaticDIDData"))
						super.delegateAdd(index, dbgStaticDIDData)
					}	
				}
			}
			
			
			static class DbgStaticDIDData implements IWrapper<GContainer> {
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
			        if (!(object instanceof DbgStaticDIDData)){
						return false
					}
					this.target == (object as DbgStaticDIDData).target
				}
				
				def DbgAddressSizePair getDbgAddressSizePair(){
					containerValue.getByType(typeof(DbgAddressSizePair))
				}
				
				def void setDbgAddressSizePair(DbgAddressSizePair dbgAddressSizePair){
					val GContainer subContainer = dbgAddressSizePair.getTarget()
					containerValue.setContainer(subContainer, "DbgAddressSizePair")
				}
				def DbgDebugData getDbgDebugData(){
					containerValue.getByType(typeof(DbgDebugData))
				}
				
				def void setDbgDebugData(DbgDebugData dbgDebugData){
					val GContainer subContainer = dbgDebugData.getTarget()
					containerValue.setContainer(subContainer, "DbgDebugData")
				}
				def DbgLocalDebugData getDbgLocalDebugData(){
					containerValue.getByType(typeof(DbgLocalDebugData))
				}
				
				def void setDbgLocalDebugData(DbgLocalDebugData dbgLocalDebugData){
					val GContainer subContainer = dbgLocalDebugData.getTarget()
					containerValue.setContainer(subContainer, "DbgLocalDebugData")
				}
				
				static class DbgAddressSizePair implements IWrapper<GContainer> {
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
				        if (!(object instanceof DbgAddressSizePair)){
							return false
						}
						this.target == (object as DbgAddressSizePair).target
					}
					
					def BigInteger getDbgASAbsoluteAddress(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgASAbsoluteAddress"])
					}
					
					def void setDbgASAbsoluteAddress(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgASAbsoluteAddress"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgASAbsoluteAddress"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def String getDbgASNameRef(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgASNameRef"])
					}
					
					def void setDbgASNameRef(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgASNameRef"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgASNameRef"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getDbgASSize(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgASSize"])
					}
					
					def void setDbgASSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgASSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgASSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class DbgDebugData implements IWrapper<GContainer> {
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
				        if (!(object instanceof DbgDebugData)){
							return false
						}
						this.target == (object as DbgDebugData).target
					}
					
					
					
					
					
				}
				
				static class DbgLocalDebugData implements IWrapper<GContainer> {
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
				        if (!(object instanceof DbgLocalDebugData)){
							return false
						}
						this.target == (object as DbgLocalDebugData).target
					}
					
					
					
					
					
				}
				
			}
			
		}
		
	}
	static class DbgGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof DbgGeneral)){
				return false
			}
			this.target == (object as DbgGeneral).target
		}
		
		def Boolean getDbgDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgDevErrorDetect"])
		}
		
		def void setDbgDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def List<String> getDbgHeaderFileInclusions(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "DbgHeaderFileInclusion")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "DbgHeaderFileInclusion"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getDbgVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVersionInfoApi"])
		}
		
		def void setDbgVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class DbgPeriodicDataCollection implements IWrapper<GContainer> {
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
	        if (!(object instanceof DbgPeriodicDataCollection)){
				return false
			}
			this.target == (object as DbgPeriodicDataCollection).target
		}
		
		def BigInteger getDbgDataCollectionTick(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgDataCollectionTick"])
		}
		
		def void setDbgDataCollectionTick(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgDataCollectionTick"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgDataCollectionTick"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsAlarm getDbgAlarmReference(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAlarm), "DbgAlarmReference")
		}
				
		def void setDbgAlarmReference(org.artop.ecuc.autosar421.accessors.Os.OsAlarm object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DbgAlarmReference"], object.getTarget())
			}
		}
		
		
		
	}
	static class DbgTimestampConfiguration implements IWrapper<GContainer> {
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
	        if (!(object instanceof DbgTimestampConfiguration)){
				return false
			}
			this.target == (object as DbgTimestampConfiguration).target
		}
		
		def DbgGlobalTimestampActivation getDbgGlobalTimestampActivation(){
			getDbgGlobalTimestampActivationValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgGlobalTimestampActivation"])
		}
		
		def void setDbgGlobalTimestampActivation(DbgGlobalTimestampActivation value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgGlobalTimestampActivation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgGlobalTimestampActivation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum DbgGlobalTimestampActivation {
			TimestampOff, 
			TimestampOn
		}
			
		def DbgGlobalTimestampActivation getDbgGlobalTimestampActivationValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "TimestampOff" : DbgGlobalTimestampActivation.TimestampOff
				case "TimestampOn" : DbgGlobalTimestampActivation.TimestampOn
			}
		}
		
		def void setDbgGlobalTimestampActivationValue(GParameterValue paramValue, DbgGlobalTimestampActivation value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def DbgTimeStampSize getDbgTimeStampSize(){
			getDbgTimeStampSizeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgTimeStampSize"])
		}
		
		def void setDbgTimeStampSize(DbgTimeStampSize value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DbgTimeStampSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DbgTimeStampSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum DbgTimeStampSize {
			TimeStampSize_16Bit, 
			TimeStampSize_32Bit
		}
			
		def DbgTimeStampSize getDbgTimeStampSizeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "TimeStampSize_16Bit" : DbgTimeStampSize.TimeStampSize_16Bit
				case "TimeStampSize_32Bit" : DbgTimeStampSize.TimeStampSize_32Bit
			}
		}
		
		def void setDbgTimeStampSizeValue(GParameterValue paramValue, DbgTimeStampSize value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration getDbgGptChannel(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration), "DbgGptChannel")
		}
				
		def void setDbgGptChannel(org.artop.ecuc.autosar421.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DbgGptChannel"], object.getTarget())
			}
		}
		
		
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof Dbg)){
			return false
		}
		this.target == (object as Dbg).target
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
