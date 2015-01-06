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

class J1939Dcm implements IWrapper<GModuleConfiguration> {
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
	
	def J1939DcmConfigSet getJ1939DcmConfigSet(){
		moduleConfiguration.getByType(typeof(J1939DcmConfigSet))
	}
	
	def void setJ1939DcmConfigSet(J1939DcmConfigSet j1939DcmConfigSet){
		val GContainer container = j1939DcmConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "J1939DcmConfigSet")
	}
	def J1939DcmGeneral getJ1939DcmGeneral(){
		moduleConfiguration.getByType(typeof(J1939DcmGeneral))
	}
	
	def void setJ1939DcmGeneral(J1939DcmGeneral j1939DcmGeneral){
		val GContainer container = j1939DcmGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "J1939DcmGeneral")
	}
	
	static class J1939DcmConfigSet implements IWrapper<GContainer> {
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
		
		
		
		def List<J1939DcmChannel> getJ1939DcmChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939DcmChannel")
				}
			}
			return new BasicWrappingEList<J1939DcmChannel, GContainer>(filteredContainers, typeof(J1939DcmChannel), typeof(GContainer))
		}
		
		def List<J1939DcmNode> getJ1939DcmNodes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939DcmNode")
				}
			}
			return new BasicWrappingEList<J1939DcmNode, GContainer>(filteredContainers, typeof(J1939DcmNode), typeof(GContainer))
		}
		
		
		static class J1939DcmChannel implements IWrapper<GContainer> {
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
			
			def J1939DcmBusType getJ1939DcmBusType(){
				getJ1939DcmBusTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmBusType"])
			}
			
			def void setJ1939DcmBusType(J1939DcmBusType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmBusType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmBusType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum J1939DcmBusType {
				J1939DCM_ISO9141, 
				J1939DCM_J1587, 
				J1939DCM_J1850, 
				J1939DCM_J1922, 
				J1939DCM_J1939_NETWORK_1, 
				J1939DCM_J1939_NETWORK_2, 
				J1939DCM_J1939_NETWORK_3, 
				J1939DCM_OTHER
			}
				
			def J1939DcmBusType getJ1939DcmBusTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "J1939DCM_ISO9141" : J1939DcmBusType.J1939DCM_ISO9141
					case "J1939DCM_J1587" : J1939DcmBusType.J1939DCM_J1587
					case "J1939DCM_J1850" : J1939DcmBusType.J1939DCM_J1850
					case "J1939DCM_J1922" : J1939DcmBusType.J1939DCM_J1922
					case "J1939DCM_J1939_NETWORK_1" : J1939DcmBusType.J1939DCM_J1939_NETWORK_1
					case "J1939DCM_J1939_NETWORK_2" : J1939DcmBusType.J1939DCM_J1939_NETWORK_2
					case "J1939DCM_J1939_NETWORK_3" : J1939DcmBusType.J1939DCM_J1939_NETWORK_3
					case "J1939DCM_OTHER" : J1939DcmBusType.J1939DCM_OTHER
				}
			}
			
			def void setJ1939DcmBusTypeValue(GParameterValue paramValue, J1939DcmBusType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getJ1939DcmComMChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "J1939DcmComMChannelRef")
			}
					
			def void setJ1939DcmComMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939DcmComMChannelRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class J1939DcmNode implements IWrapper<GContainer> {
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
			
			def List<Integer> getJ1939DcmSPNsInDataStreams(){
				val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
					override protected accept(EcucNumericalParamValue item) {
						return accept(item, typeof(GConfigParameter), "J1939DcmSPNsInDataStream")
					}
				}
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmSPNsInDataStream"]
					return new IntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(Integer), parameterDef)
				}
			}
			
			
			def org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode getJ1939DcmNmNodeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode), "J1939DcmNmNodeRef")
			}
					
			def void setJ1939DcmNmNodeRef(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939DcmNmNodeRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.J1939Rm.J1939RmConfigSet.J1939RmNode.J1939RmUser getJ1939DcmNodeRmUserRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.J1939Rm.J1939RmConfigSet.J1939RmNode.J1939RmUser), "J1939DcmNodeRmUserRef")
			}
					
			def void setJ1939DcmNodeRmUserRef(org.artop.ecuc.autosar421.accessors.J1939Rm.J1939RmConfigSet.J1939RmNode.J1939RmUser object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939DcmNodeRmUserRef"], object.getTarget())
				}
			}
			
			
			def List<J1939DcmDiagnosticMessageSupport> getJ1939DcmDiagnosticMessageSupports(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "J1939DcmDiagnosticMessageSupport")
					}
				}
				return new BasicWrappingEList<J1939DcmDiagnosticMessageSupport, GContainer>(filteredContainers, typeof(J1939DcmDiagnosticMessageSupport), typeof(GContainer))
			}
			
			
			static class J1939DcmDiagnosticMessageSupport implements IWrapper<GContainer> {
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
				
				def J1939DcmDmxSupport getJ1939DcmDmxSupport(){
					getJ1939DcmDmxSupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmDmxSupport"])
				}
				
				def void setJ1939DcmDmxSupport(J1939DcmDmxSupport value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmDmxSupport"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmDmxSupport"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum J1939DcmDmxSupport {
					J1939DCM_DM01_SUPPORT, 
					J1939DCM_DM02_SUPPORT, 
					J1939DCM_DM03_SUPPORT, 
					J1939DCM_DM04_SUPPORT, 
					J1939DCM_DM05_SUPPORT, 
					J1939DCM_DM06_SUPPORT, 
					J1939DCM_DM07_SUPPORT, 
					J1939DCM_DM08_SUPPORT, 
					J1939DCM_DM09_SUPPORT, 
					J1939DCM_DM10_SUPPORT, 
					J1939DCM_DM11_SUPPORT, 
					J1939DCM_DM12_SUPPORT, 
					J1939DCM_DM13_SUPPORT, 
					J1939DCM_DM14_SUPPORT, 
					J1939DCM_DM15_SUPPORT, 
					J1939DCM_DM16_SUPPORT, 
					J1939DCM_DM17_SUPPORT, 
					J1939DCM_DM18_SUPPORT, 
					J1939DCM_DM19_SUPPORT, 
					J1939DCM_DM20_SUPPORT, 
					J1939DCM_DM21_SUPPORT, 
					J1939DCM_DM22_SUPPORT, 
					J1939DCM_DM23_SUPPORT, 
					J1939DCM_DM24_SUPPORT, 
					J1939DCM_DM25_SUPPORT, 
					J1939DCM_DM26_SUPPORT, 
					J1939DCM_DM27_SUPPORT, 
					J1939DCM_DM28_SUPPORT, 
					J1939DCM_DM29_SUPPORT, 
					J1939DCM_DM30_SUPPORT, 
					J1939DCM_DM31_SUPPORT, 
					J1939DCM_DM32_SUPPORT, 
					J1939DCM_DM33_SUPPORT, 
					J1939DCM_DM34_SUPPORT, 
					J1939DCM_DM35_SUPPORT, 
					J1939DCM_DM36_SUPPORT, 
					J1939DCM_DM37_SUPPORT, 
					J1939DCM_DM38_SUPPORT, 
					J1939DCM_DM39_SUPPORT, 
					J1939DCM_DM40_SUPPORT, 
					J1939DCM_DM41_SUPPORT, 
					J1939DCM_DM42_SUPPORT, 
					J1939DCM_DM43_SUPPORT, 
					J1939DCM_DM44_SUPPORT, 
					J1939DCM_DM45_SUPPORT, 
					J1939DCM_DM46_SUPPORT, 
					J1939DCM_DM47_SUPPORT, 
					J1939DCM_DM48_SUPPORT, 
					J1939DCM_DM49_SUPPORT, 
					J1939DCM_DM50_SUPPORT, 
					J1939DCM_DM51_SUPPORT, 
					J1939DCM_DM52_SUPPORT, 
					J1939DCM_DM53_SUPPORT, 
					J1939DCM_DM54_SUPPORT, 
					J1939DCM_DM55_SUPPORT, 
					J1939DCM_DM56_SUPPORT, 
					J1939DCM_DM57_SUPPORT
				}
					
				def J1939DcmDmxSupport getJ1939DcmDmxSupportValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "J1939DCM_DM01_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM01_SUPPORT
						case "J1939DCM_DM02_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM02_SUPPORT
						case "J1939DCM_DM03_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM03_SUPPORT
						case "J1939DCM_DM04_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM04_SUPPORT
						case "J1939DCM_DM05_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM05_SUPPORT
						case "J1939DCM_DM06_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM06_SUPPORT
						case "J1939DCM_DM07_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM07_SUPPORT
						case "J1939DCM_DM08_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM08_SUPPORT
						case "J1939DCM_DM09_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM09_SUPPORT
						case "J1939DCM_DM10_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM10_SUPPORT
						case "J1939DCM_DM11_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM11_SUPPORT
						case "J1939DCM_DM12_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM12_SUPPORT
						case "J1939DCM_DM13_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM13_SUPPORT
						case "J1939DCM_DM14_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM14_SUPPORT
						case "J1939DCM_DM15_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM15_SUPPORT
						case "J1939DCM_DM16_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM16_SUPPORT
						case "J1939DCM_DM17_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM17_SUPPORT
						case "J1939DCM_DM18_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM18_SUPPORT
						case "J1939DCM_DM19_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM19_SUPPORT
						case "J1939DCM_DM20_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM20_SUPPORT
						case "J1939DCM_DM21_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM21_SUPPORT
						case "J1939DCM_DM22_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM22_SUPPORT
						case "J1939DCM_DM23_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM23_SUPPORT
						case "J1939DCM_DM24_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM24_SUPPORT
						case "J1939DCM_DM25_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM25_SUPPORT
						case "J1939DCM_DM26_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM26_SUPPORT
						case "J1939DCM_DM27_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM27_SUPPORT
						case "J1939DCM_DM28_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM28_SUPPORT
						case "J1939DCM_DM29_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM29_SUPPORT
						case "J1939DCM_DM30_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM30_SUPPORT
						case "J1939DCM_DM31_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM31_SUPPORT
						case "J1939DCM_DM32_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM32_SUPPORT
						case "J1939DCM_DM33_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM33_SUPPORT
						case "J1939DCM_DM34_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM34_SUPPORT
						case "J1939DCM_DM35_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM35_SUPPORT
						case "J1939DCM_DM36_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM36_SUPPORT
						case "J1939DCM_DM37_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM37_SUPPORT
						case "J1939DCM_DM38_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM38_SUPPORT
						case "J1939DCM_DM39_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM39_SUPPORT
						case "J1939DCM_DM40_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM40_SUPPORT
						case "J1939DCM_DM41_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM41_SUPPORT
						case "J1939DCM_DM42_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM42_SUPPORT
						case "J1939DCM_DM43_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM43_SUPPORT
						case "J1939DCM_DM44_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM44_SUPPORT
						case "J1939DCM_DM45_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM45_SUPPORT
						case "J1939DCM_DM46_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM46_SUPPORT
						case "J1939DCM_DM47_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM47_SUPPORT
						case "J1939DCM_DM48_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM48_SUPPORT
						case "J1939DCM_DM49_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM49_SUPPORT
						case "J1939DCM_DM50_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM50_SUPPORT
						case "J1939DCM_DM51_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM51_SUPPORT
						case "J1939DCM_DM52_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM52_SUPPORT
						case "J1939DCM_DM53_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM53_SUPPORT
						case "J1939DCM_DM54_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM54_SUPPORT
						case "J1939DCM_DM55_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM55_SUPPORT
						case "J1939DCM_DM56_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM56_SUPPORT
						case "J1939DCM_DM57_SUPPORT" : J1939DcmDmxSupport.J1939DCM_DM57_SUPPORT
					}
				}
				
				def void setJ1939DcmDmxSupportValue(GParameterValue paramValue, J1939DcmDmxSupport value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.J1939Dcm.J1939DcmConfigSet.J1939DcmChannel getJ1939DcmDiagnosticMessageSupportChannelRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.J1939Dcm.J1939DcmConfigSet.J1939DcmChannel), "J1939DcmDiagnosticMessageSupportChannelRef")
				}
						
				def void setJ1939DcmDiagnosticMessageSupportChannelRef(org.artop.ecuc.autosar421.accessors.J1939Dcm.J1939DcmConfigSet.J1939DcmChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939DcmDiagnosticMessageSupportChannelRef"], object.getTarget())
					}
				}
				
				
				def J1939DcmRxPdu getJ1939DcmRxPdu(){
					containerValue.getByType(typeof(J1939DcmRxPdu))
				}
				
				def void setJ1939DcmRxPdu(J1939DcmRxPdu j1939DcmRxPdu){
					val GContainer subContainer = j1939DcmRxPdu.getTarget()
					containerValue.setContainer(subContainer, "J1939DcmRxPdu")
				}
				
				def J1939DcmTxPdu getJ1939DcmTxPdu(){
					containerValue.getByType(typeof(J1939DcmTxPdu))
				}
				
				def void setJ1939DcmTxPdu(J1939DcmTxPdu j1939DcmTxPdu){
					val GContainer subContainer = j1939DcmTxPdu.getTarget()
					containerValue.setContainer(subContainer, "J1939DcmTxPdu")
				}
				
				
				static class J1939DcmRxPdu implements IWrapper<GContainer> {
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
					
					def Integer getJ1939DcmRxPduId(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmRxPduId"])
					}
					
					def void setJ1939DcmRxPduId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmRxPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmRxPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939DcmRxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939DcmRxPduRef")
					}
							
					def void setJ1939DcmRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939DcmRxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class J1939DcmTxPdu implements IWrapper<GContainer> {
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
					
					def Integer getJ1939DcmTxPduId(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmTxPduId"])
					}
					
					def void setJ1939DcmTxPduId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmTxPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmTxPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939DcmTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939DcmTxPduRef")
					}
							
					def void setJ1939DcmTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939DcmTxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
	}
	static class J1939DcmGeneral implements IWrapper<GContainer> {
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
		
		def Integer getJ1939DcmCommonBufferSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmCommonBufferSize"])
		}
		
		def void setJ1939DcmCommonBufferSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmCommonBufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmCommonBufferSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getJ1939DcmDM01BufferSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmDM01BufferSize"])
		}
		
		def void setJ1939DcmDM01BufferSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmDM01BufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmDM01BufferSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939DcmDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmDevErrorDetect"])
		}
		
		def void setJ1939DcmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getJ1939DcmMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmMainFunctionPeriod"])
		}
		
		def void setJ1939DcmMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getJ1939DcmMaxDTCsPerMainFunction(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmMaxDTCsPerMainFunction"])
		}
		
		def void setJ1939DcmMaxDTCsPerMainFunction(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmMaxDTCsPerMainFunction"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmMaxDTCsPerMainFunction"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getJ1939DcmMaxFreezeFramesPerMainFunction(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmMaxFreezeFramesPerMainFunction"])
		}
		
		def void setJ1939DcmMaxFreezeFramesPerMainFunction(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmMaxFreezeFramesPerMainFunction"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmMaxFreezeFramesPerMainFunction"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getJ1939DcmMaxRatiosPerMainFunction(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmMaxRatiosPerMainFunction"])
		}
		
		def void setJ1939DcmMaxRatiosPerMainFunction(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmMaxRatiosPerMainFunction"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmMaxRatiosPerMainFunction"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939DcmVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmVersionInfoApi"])
		}
		
		def void setJ1939DcmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939DcmVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939DcmVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
