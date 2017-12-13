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

class LinIf implements IWrapper<GModuleConfiguration> {
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

	def LinIfGeneral getLinIfGeneral(){
		moduleConfiguration.getByType(typeof(LinIfGeneral))
	}

	def void setLinIfGeneral(LinIfGeneral linIfGeneral){
		val GContainer container = linIfGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "LinIfGeneral")
	}
	def LinIfGlobalConfig getLinIfGlobalConfig(){
		moduleConfiguration.getByType(typeof(LinIfGlobalConfig))
	}

	def void setLinIfGlobalConfig(LinIfGlobalConfig linIfGlobalConfig){
		val GContainer container = linIfGlobalConfig.getTarget()
	    moduleConfiguration.setContainer(container, "LinIfGlobalConfig")
	}

	static class LinIfGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinIfGeneral)){
				return false
			}
			this.target == (object as LinIfGeneral).target
		}
	
		def Boolean getLinIfCancelTransmitSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfCancelTransmitSupported"].getBooleanValue()
		}
		
		def void setLinIfCancelTransmitSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfCancelTransmitSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfCancelTransmitSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinIfDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfDevErrorDetect"].getBooleanValue()
		}
		
		def void setLinIfDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinIfMultipleDriversSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMultipleDriversSupported"].getBooleanValue()
		}
		
		def void setLinIfMultipleDriversSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMultipleDriversSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfMultipleDriversSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinIfMultipleTrcvDriverSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMultipleTrcvDriverSupported"].getBooleanValue()
		}
		
		def void setLinIfMultipleTrcvDriverSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMultipleTrcvDriverSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfMultipleTrcvDriverSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinIfNcOptionalRequestSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfNcOptionalRequestSupported"].getBooleanValue()
		}
		
		def void setLinIfNcOptionalRequestSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfNcOptionalRequestSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfNcOptionalRequestSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def List<String> getLinIfPublicCddHeaderFiles(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "LinIfPublicCddHeaderFile")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfPublicCddHeaderFile"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getLinIfTpSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTpSupported"].getBooleanValue()
		}
		
		def void setLinIfTpSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTpSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTpSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinIfTrcvDriverSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTrcvDriverSupported"].getBooleanValue()
		}
		
		def void setLinIfTrcvDriverSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTrcvDriverSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTrcvDriverSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinIfVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfVersionInfoApi"].getBooleanValue()
		}
		
		def void setLinIfVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class LinIfGlobalConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinIfGlobalConfig)){
				return false
			}
			this.target == (object as LinIfGlobalConfig).target
		}
	
		
		
		def List<LinIfChannel> getLinIfChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "LinIfChannel")
				}
			}
			return new BasicWrappingEList<LinIfChannel, GContainer>(filteredContainers, typeof(LinIfChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel linIfChannel) {
					linIfChannel.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfChannel"))
					super.delegateAdd(linIfChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel linIfChannel) {
					linIfChannel.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfChannel"))
					super.delegateAdd(index, linIfChannel)
				}
			}
		}
		
		
		static class LinIfChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof LinIfChannel)){
					return false
				}
				this.target == (object as LinIfChannel).target
			}
		
			def LinIfGotoSleepConfirmationUL getLinIfGotoSleepConfirmationUL(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfGotoSleepConfirmationUL"].getLinIfGotoSleepConfirmationULValue()
			}
			
			def void setLinIfGotoSleepConfirmationUL(LinIfGotoSleepConfirmationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfGotoSleepConfirmationUL"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfGotoSleepConfirmationUL"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum LinIfGotoSleepConfirmationUL {
				CDD, 
				LIN_SM
			}
			
			def LinIfGotoSleepConfirmationUL getLinIfGotoSleepConfirmationULValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CDD" : LinIfGotoSleepConfirmationUL.CDD
					case "LIN_SM" : LinIfGotoSleepConfirmationUL.LIN_SM
				}
			}
			
			def void setLinIfGotoSleepConfirmationULValue(GParameterValue parameterValue, LinIfGotoSleepConfirmationUL value){
				parameterValue.setValue(value)
			}
			
			def BigDecimal getLinIfMainFunctionPeriod(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMainFunctionPeriod"].getBigDecimalValue()
			}
			
			def void setLinIfMainFunctionPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMainFunctionPeriod"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfMainFunctionPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getLinIfMaxFrameCnt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMaxFrameCnt"].getBigIntegerValue()
			}
			
			def void setLinIfMaxFrameCnt(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfMaxFrameCnt"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfMaxFrameCnt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getLinIfScheduleChangeNextTimeBase(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleChangeNextTimeBase"].getBooleanValue()
			}
			
			def void setLinIfScheduleChangeNextTimeBase(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleChangeNextTimeBase"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfScheduleChangeNextTimeBase"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def LinIfScheduleRequestConfirmationUL getLinIfScheduleRequestConfirmationUL(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleRequestConfirmationUL"].getLinIfScheduleRequestConfirmationULValue()
			}
			
			def void setLinIfScheduleRequestConfirmationUL(LinIfScheduleRequestConfirmationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleRequestConfirmationUL"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfScheduleRequestConfirmationUL"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum LinIfScheduleRequestConfirmationUL {
				CDD, 
				LIN_SM
			}
			
			def LinIfScheduleRequestConfirmationUL getLinIfScheduleRequestConfirmationULValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CDD" : LinIfScheduleRequestConfirmationUL.CDD
					case "LIN_SM" : LinIfScheduleRequestConfirmationUL.LIN_SM
				}
			}
			
			def void setLinIfScheduleRequestConfirmationULValue(GParameterValue parameterValue, LinIfScheduleRequestConfirmationUL value){
				parameterValue.setValue(value)
			}
			
			def LinIfStartupState getLinIfStartupState(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfStartupState"].getLinIfStartupStateValue()
			}
			
			def void setLinIfStartupState(LinIfStartupState value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfStartupState"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfStartupState"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum LinIfStartupState {
				NORMAL, 
				SLEEP
			}
			
			def LinIfStartupState getLinIfStartupStateValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "NORMAL" : LinIfStartupState.NORMAL
					case "SLEEP" : LinIfStartupState.SLEEP
				}
			}
			
			def void setLinIfStartupStateValue(GParameterValue parameterValue, LinIfStartupState value){
				parameterValue.setValue(value)
			}
			
			def LinIfWakeupConfirmationUL getLinIfWakeupConfirmationUL(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfWakeupConfirmationUL"].getLinIfWakeupConfirmationULValue()
			}
			
			def void setLinIfWakeupConfirmationUL(LinIfWakeupConfirmationUL value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfWakeupConfirmationUL"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfWakeupConfirmationUL"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum LinIfWakeupConfirmationUL {
				CDD, 
				LIN_SM
			}
			
			def LinIfWakeupConfirmationUL getLinIfWakeupConfirmationULValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CDD" : LinIfWakeupConfirmationUL.CDD
					case "LIN_SM" : LinIfWakeupConfirmationUL.LIN_SM
				}
			}
			
			def void setLinIfWakeupConfirmationULValue(GParameterValue parameterValue, LinIfWakeupConfirmationUL value){
				parameterValue.setValue(value)
			}
			
			
			
			def org.artop.ecuc.autosar444.accessors.Lin.LinGlobalConfig.LinChannel getLinIfChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Lin.LinGlobalConfig.LinChannel), "LinIfChannelRef")
			}
			
			def void setLinIfChannelRef(org.artop.ecuc.autosar444.accessors.Lin.LinGlobalConfig.LinChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfChannelRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel getLinIfComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel), "LinIfComMNetworkHandleRef")
			}
			
			def void setLinIfComMNetworkHandleRef(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			
			def List<LinIfFrame> getLinIfFrames(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "LinIfFrame")
					}
				}
				return new BasicWrappingEList<LinIfFrame, GContainer>(filteredContainers, typeof(LinIfFrame), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame linIfFrame) {
						linIfFrame.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfFrame"))
						super.delegateAdd(linIfFrame)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame linIfFrame) {
						linIfFrame.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfFrame"))
						super.delegateAdd(index, linIfFrame)
					}
				}
			}
			
			def LinIfMaster getLinIfMaster(){
				containerValue.getByType(typeof(LinIfMaster))
			}
			
			def void setLinIfMaster(LinIfMaster linIfMaster){
				val GContainer subContainer = linIfMaster.getTarget()
				containerValue.setContainer(subContainer, "LinIfMaster")
			}
			
			def List<LinIfScheduleTable> getLinIfScheduleTables(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "LinIfScheduleTable")
					}
				}
				return new BasicWrappingEList<LinIfScheduleTable, GContainer>(filteredContainers, typeof(LinIfScheduleTable), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable linIfScheduleTable) {
						linIfScheduleTable.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfScheduleTable"))
						super.delegateAdd(linIfScheduleTable)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable linIfScheduleTable) {
						linIfScheduleTable.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfScheduleTable"))
						super.delegateAdd(index, linIfScheduleTable)
					}
				}
			}
			
			def LinIfTransceiverDrvConfig getLinIfTransceiverDrvConfig(){
				containerValue.getByType(typeof(LinIfTransceiverDrvConfig))
			}
			
			def void setLinIfTransceiverDrvConfig(LinIfTransceiverDrvConfig linIfTransceiverDrvConfig){
				val GContainer subContainer = linIfTransceiverDrvConfig.getTarget()
				containerValue.setContainer(subContainer, "LinIfTransceiverDrvConfig")
			}
			
			
			static class LinIfFrame implements IWrapper<GContainer> {
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
			        if (!(object instanceof LinIfFrame)){
						return false
					}
					this.target == (object as LinIfFrame).target
				}
			
				def LinIfChecksumType getLinIfChecksumType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfChecksumType"].getLinIfChecksumTypeValue()
				}
				
				def void setLinIfChecksumType(LinIfChecksumType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfChecksumType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfChecksumType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum LinIfChecksumType {
					CLASSIC, 
					ENHANCED
				}
				
				def LinIfChecksumType getLinIfChecksumTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CLASSIC" : LinIfChecksumType.CLASSIC
						case "ENHANCED" : LinIfChecksumType.ENHANCED
					}
				}
				
				def void setLinIfChecksumTypeValue(GParameterValue parameterValue, LinIfChecksumType value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getLinIfFrameId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFrameId"].getBigIntegerValue()
				}
				
				def void setLinIfFrameId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFrameId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFrameId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def LinIfFrameType getLinIfFrameType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFrameType"].getLinIfFrameTypeValue()
				}
				
				def void setLinIfFrameType(LinIfFrameType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFrameType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFrameType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum LinIfFrameType {
					ASSIGN, 
					ASSIGN_FRAME_ID_RANGE, 
					ASSIGN_NAD, 
					CONDITIONAL, 
					EVENT_TRIGGERED, 
					FREE, 
					MRF, 
					SAVE_CONFIGURATION, 
					SPORADIC, 
					SRF, 
					UNASSIGN, 
					UNCONDITIONAL
				}
				
				def LinIfFrameType getLinIfFrameTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "ASSIGN" : LinIfFrameType.ASSIGN
						case "ASSIGN_FRAME_ID_RANGE" : LinIfFrameType.ASSIGN_FRAME_ID_RANGE
						case "ASSIGN_NAD" : LinIfFrameType.ASSIGN_NAD
						case "CONDITIONAL" : LinIfFrameType.CONDITIONAL
						case "EVENT_TRIGGERED" : LinIfFrameType.EVENT_TRIGGERED
						case "FREE" : LinIfFrameType.FREE
						case "MRF" : LinIfFrameType.MRF
						case "SAVE_CONFIGURATION" : LinIfFrameType.SAVE_CONFIGURATION
						case "SPORADIC" : LinIfFrameType.SPORADIC
						case "SRF" : LinIfFrameType.SRF
						case "UNASSIGN" : LinIfFrameType.UNASSIGN
						case "UNCONDITIONAL" : LinIfFrameType.UNCONDITIONAL
					}
				}
				
				def void setLinIfFrameTypeValue(GParameterValue parameterValue, LinIfFrameType value){
					parameterValue.setValue(value)
				}
				
				
				
				def LinIfFixedFrameSdu getLinIfFixedFrameSdu(){
					containerValue.getByType(typeof(LinIfFixedFrameSdu))
				}
				
				def void setLinIfFixedFrameSdu(LinIfFixedFrameSdu linIfFixedFrameSdu){
					val GContainer subContainer = linIfFixedFrameSdu.getTarget()
					containerValue.setContainer(subContainer, "LinIfFixedFrameSdu")
				}
				
				def LinIfPduDirection getLinIfPduDirection(){
					containerValue.getByType(typeof(LinIfPduDirection))
				}
				
				def void setLinIfPduDirection(LinIfPduDirection linIfPduDirection){
					val GContainer subContainer = linIfPduDirection.getTarget()
					containerValue.setContainer(subContainer, "LinIfPduDirection")
				}
				
				def List<LinIfSubstitutionFrames> getLinIfSubstitutionFrames(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "LinIfSubstitutionFrames")
						}
					}
					return new BasicWrappingEList<LinIfSubstitutionFrames, GContainer>(filteredContainers, typeof(LinIfSubstitutionFrames), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame.LinIfSubstitutionFrames linIfSubstitutionFrames) {
							linIfSubstitutionFrames.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfSubstitutionFrames"))
							super.delegateAdd(linIfSubstitutionFrames)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame.LinIfSubstitutionFrames linIfSubstitutionFrames) {
							linIfSubstitutionFrames.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfSubstitutionFrames"))
							super.delegateAdd(index, linIfSubstitutionFrames)
						}
					}
				}
				
				
				static class LinIfFixedFrameSdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof LinIfFixedFrameSdu)){
							return false
						}
						this.target == (object as LinIfFixedFrameSdu).target
					}
				
					
					
					def List<LinIfFixedFrameSduByte> getLinIfFixedFrameSduBytes(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "LinIfFixedFrameSduByte")
							}
						}
						return new BasicWrappingEList<LinIfFixedFrameSduByte, GContainer>(filteredContainers, typeof(LinIfFixedFrameSduByte), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame.LinIfFixedFrameSdu.LinIfFixedFrameSduByte linIfFixedFrameSduByte) {
								linIfFixedFrameSduByte.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfFixedFrameSduByte"))
								super.delegateAdd(linIfFixedFrameSduByte)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame.LinIfFixedFrameSdu.LinIfFixedFrameSduByte linIfFixedFrameSduByte) {
								linIfFixedFrameSduByte.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfFixedFrameSduByte"))
								super.delegateAdd(index, linIfFixedFrameSduByte)
							}
						}
					}
					
					
					static class LinIfFixedFrameSduByte implements IWrapper<GContainer> {
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
					        if (!(object instanceof LinIfFixedFrameSduByte)){
								return false
							}
							this.target == (object as LinIfFixedFrameSduByte).target
						}
					
						def BigInteger getLinIfFixedFrameSduBytePos(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFixedFrameSduBytePos"].getBigIntegerValue()
						}
						
						def void setLinIfFixedFrameSduBytePos(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFixedFrameSduBytePos"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFixedFrameSduBytePos"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getLinIfFixedFrameSduByteVal(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFixedFrameSduByteVal"].getBigIntegerValue()
						}
						
						def void setLinIfFixedFrameSduByteVal(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFixedFrameSduByteVal"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFixedFrameSduByteVal"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						
					}
					
				}
				
				static class LinIfPduDirection implements IWrapper<GContainer> {
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
				        if (!(object instanceof LinIfPduDirection)){
							return false
						}
						this.target == (object as LinIfPduDirection).target
					}
				
					def LinIfInternalPdu getLinIfInternalPdu(){
						containerValue.getByType(typeof(LinIfInternalPdu))
					}
					
					def void setLinIfInternalPdu(LinIfInternalPdu linIfInternalPdu){
						val GContainer subContainer = linIfInternalPdu.getTarget()
						containerValue.setContainer(subContainer, "LinIfInternalPdu")
					}
					def LinIfRxPdu getLinIfRxPdu(){
						containerValue.getByType(typeof(LinIfRxPdu))
					}
					
					def void setLinIfRxPdu(LinIfRxPdu linIfRxPdu){
						val GContainer subContainer = linIfRxPdu.getTarget()
						containerValue.setContainer(subContainer, "LinIfRxPdu")
					}
					def LinIfSlaveToSlavePdu getLinIfSlaveToSlavePdu(){
						containerValue.getByType(typeof(LinIfSlaveToSlavePdu))
					}
					
					def void setLinIfSlaveToSlavePdu(LinIfSlaveToSlavePdu linIfSlaveToSlavePdu){
						val GContainer subContainer = linIfSlaveToSlavePdu.getTarget()
						containerValue.setContainer(subContainer, "LinIfSlaveToSlavePdu")
					}
					def LinIfTxPdu getLinIfTxPdu(){
						containerValue.getByType(typeof(LinIfTxPdu))
					}
					
					def void setLinIfTxPdu(LinIfTxPdu linIfTxPdu){
						val GContainer subContainer = linIfTxPdu.getTarget()
						containerValue.setContainer(subContainer, "LinIfTxPdu")
					}
					
					static class LinIfInternalPdu implements IWrapper<GContainer> {
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
					        if (!(object instanceof LinIfInternalPdu)){
								return false
							}
							this.target == (object as LinIfInternalPdu).target
						}
					
						
						
						
					}
					
					static class LinIfRxPdu implements IWrapper<GContainer> {
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
					        if (!(object instanceof LinIfRxPdu)){
								return false
							}
							this.target == (object as LinIfRxPdu).target
						}
					
						def String getLinIfRxIndicationUL(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfRxIndicationUL"].getStringValue()
						}
						
						def void setLinIfRxIndicationUL(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfRxIndicationUL"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfRxIndicationUL"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def LinIfUserRxIndicationUL getLinIfUserRxIndicationUL(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfUserRxIndicationUL"].getLinIfUserRxIndicationULValue()
						}
						
						def void setLinIfUserRxIndicationUL(LinIfUserRxIndicationUL value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfUserRxIndicationUL"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfUserRxIndicationUL"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum LinIfUserRxIndicationUL {
							CDD, 
							PDUR
						}
						
						def LinIfUserRxIndicationUL getLinIfUserRxIndicationULValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "CDD" : LinIfUserRxIndicationUL.CDD
								case "PDUR" : LinIfUserRxIndicationUL.PDUR
							}
						}
						
						def void setLinIfUserRxIndicationULValue(GParameterValue parameterValue, LinIfUserRxIndicationUL value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getLinIfRxPduRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "LinIfRxPduRef")
						}
						
						def void setLinIfRxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfRxPduRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class LinIfSlaveToSlavePdu implements IWrapper<GContainer> {
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
					        if (!(object instanceof LinIfSlaveToSlavePdu)){
								return false
							}
							this.target == (object as LinIfSlaveToSlavePdu).target
						}
					
						
						
						
					}
					
					static class LinIfTxPdu implements IWrapper<GContainer> {
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
					        if (!(object instanceof LinIfTxPdu)){
								return false
							}
							this.target == (object as LinIfTxPdu).target
						}
					
						def String getLinIfTxConfirmationUL(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxConfirmationUL"].getStringValue()
						}
						
						def void setLinIfTxConfirmationUL(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxConfirmationUL"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTxConfirmationUL"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getLinIfTxPduId(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxPduId"].getBigIntegerValue()
						}
						
						def void setLinIfTxPduId(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxPduId"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTxPduId"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def String getLinIfTxTriggerTransmitUL(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxTriggerTransmitUL"].getStringValue()
						}
						
						def void setLinIfTxTriggerTransmitUL(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfTxTriggerTransmitUL"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfTxTriggerTransmitUL"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def LinIfUserTxUL getLinIfUserTxUL(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfUserTxUL"].getLinIfUserTxULValue()
						}
						
						def void setLinIfUserTxUL(LinIfUserTxUL value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfUserTxUL"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfUserTxUL"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum LinIfUserTxUL {
							CDD, 
							PDUR
						}
						
						def LinIfUserTxUL getLinIfUserTxULValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "CDD" : LinIfUserTxUL.CDD
								case "PDUR" : LinIfUserTxUL.PDUR
							}
						}
						
						def void setLinIfUserTxULValue(GParameterValue parameterValue, LinIfUserTxUL value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getLinIfTxPduRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "LinIfTxPduRef")
						}
						
						def void setLinIfTxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfTxPduRef"], object.getTarget())
							}
						}
						
						
						
					}
					
				}
				
				static class LinIfSubstitutionFrames implements IWrapper<GContainer> {
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
				        if (!(object instanceof LinIfSubstitutionFrames)){
							return false
						}
						this.target == (object as LinIfSubstitutionFrames).target
					}
				
					def BigInteger getLinIfFramePriority(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFramePriority"].getBigIntegerValue()
					}
					
					def void setLinIfFramePriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfFramePriority"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfFramePriority"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame getLinIfSubstitutionFrameRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame), "LinIfSubstitutionFrameRef")
					}
					
					def void setLinIfSubstitutionFrameRef(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfSubstitutionFrameRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class LinIfMaster implements IWrapper<GContainer> {
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
			        if (!(object instanceof LinIfMaster)){
						return false
					}
					this.target == (object as LinIfMaster).target
				}
			
				def BigDecimal getLinIfJitter(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfJitter"].getBigDecimalValue()
				}
				
				def void setLinIfJitter(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfJitter"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfJitter"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class LinIfScheduleTable implements IWrapper<GContainer> {
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
			        if (!(object instanceof LinIfScheduleTable)){
						return false
					}
					this.target == (object as LinIfScheduleTable).target
				}
			
				def LinIfResumePosition getLinIfResumePosition(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfResumePosition"].getLinIfResumePositionValue()
				}
				
				def void setLinIfResumePosition(LinIfResumePosition value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfResumePosition"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfResumePosition"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum LinIfResumePosition {
					CONTINUE_AT_IT_POINT, 
					START_FROM_BEGINNING
				}
				
				def LinIfResumePosition getLinIfResumePositionValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CONTINUE_AT_IT_POINT" : LinIfResumePosition.CONTINUE_AT_IT_POINT
						case "START_FROM_BEGINNING" : LinIfResumePosition.START_FROM_BEGINNING
					}
				}
				
				def void setLinIfResumePositionValue(GParameterValue parameterValue, LinIfResumePosition value){
					parameterValue.setValue(value)
				}
				
				def LinIfRunMode getLinIfRunMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfRunMode"].getLinIfRunModeValue()
				}
				
				def void setLinIfRunMode(LinIfRunMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfRunMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfRunMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum LinIfRunMode {
					RUN_CONTINUOUS, 
					RUN_ONCE
				}
				
				def LinIfRunMode getLinIfRunModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "RUN_CONTINUOUS" : LinIfRunMode.RUN_CONTINUOUS
						case "RUN_ONCE" : LinIfRunMode.RUN_ONCE
					}
				}
				
				def void setLinIfRunModeValue(GParameterValue parameterValue, LinIfRunMode value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getLinIfScheduleTableIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleTableIndex"].getBigIntegerValue()
				}
				
				def void setLinIfScheduleTableIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfScheduleTableIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfScheduleTableIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def List<LinIfEntry> getLinIfEntries(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "LinIfEntry")
						}
					}
					return new BasicWrappingEList<LinIfEntry, GContainer>(filteredContainers, typeof(LinIfEntry), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable.LinIfEntry linIfEntry) {
							linIfEntry.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfEntry"))
							super.delegateAdd(linIfEntry)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable.LinIfEntry linIfEntry) {
							linIfEntry.target?.gSetDefinition(containerValue.getContainerDefinition("LinIfEntry"))
							super.delegateAdd(index, linIfEntry)
						}
					}
				}
				
				
				static class LinIfEntry implements IWrapper<GContainer> {
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
				        if (!(object instanceof LinIfEntry)){
							return false
						}
						this.target == (object as LinIfEntry).target
					}
				
					def BigDecimal getLinIfDelay(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfDelay"].getBigDecimalValue()
					}
					
					def void setLinIfDelay(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfDelay"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfDelay"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getLinIfEntryIndex(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfEntryIndex"].getBigIntegerValue()
					}
					
					def void setLinIfEntryIndex(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinIfEntryIndex"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinIfEntryIndex"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable getLinIfCollisionResolvingRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable), "LinIfCollisionResolvingRef")
					}
					
					def void setLinIfCollisionResolvingRef(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfScheduleTable object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfCollisionResolvingRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame getLinIfFrameRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame), "LinIfFrameRef")
					}
					
					def void setLinIfFrameRef(org.artop.ecuc.autosar444.accessors.LinIf.LinIfGlobalConfig.LinIfChannel.LinIfFrame object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfFrameRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class LinIfTransceiverDrvConfig implements IWrapper<GContainer> {
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
			        if (!(object instanceof LinIfTransceiverDrvConfig)){
						return false
					}
					this.target == (object as LinIfTransceiverDrvConfig).target
				}
			
				
				def org.artop.ecuc.autosar444.accessors.LinTrcv.LinTrcvChannel getLinIfTrcvIdRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.LinTrcv.LinTrcvChannel), "LinIfTrcvIdRef")
				}
				
				def void setLinIfTrcvIdRef(org.artop.ecuc.autosar444.accessors.LinTrcv.LinTrcvChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinIfTrcvIdRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof LinIf)){
			return false
		}
		this.target == (object as LinIf).target
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
