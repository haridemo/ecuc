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

class Xfrm implements IWrapper<GModuleConfiguration> {
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

	def XfrmGeneral getXfrmGeneral(){
		moduleConfiguration.getByType(typeof(XfrmGeneral))
	}

	def void setXfrmGeneral(XfrmGeneral xfrmGeneral){
		val GContainer container = xfrmGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "XfrmGeneral")
	}
	def List<XfrmImplementationMapping> getXfrmImplementationMappings(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "XfrmImplementationMapping")
			}
		}
		return new BasicWrappingEList<XfrmImplementationMapping, GContainer>(filteredContainers, typeof(XfrmImplementationMapping), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Xfrm.XfrmImplementationMapping xfrmImplementationMapping) {
				xfrmImplementationMapping.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("XfrmImplementationMapping"))
				super.delegateAdd(xfrmImplementationMapping)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Xfrm.XfrmImplementationMapping xfrmImplementationMapping) {
				xfrmImplementationMapping.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("XfrmImplementationMapping"))
				super.delegateAdd(index, xfrmImplementationMapping)
			}
		}
	}

	static class XfrmGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof XfrmGeneral)){
				return false
			}
			this.target == (object as XfrmGeneral).target
		}
	
		def Boolean getXfrmDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XfrmDevErrorDetect"].getBooleanValue()
		}
		
		def void setXfrmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "XfrmDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "XfrmDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class XfrmImplementationMapping implements IWrapper<GContainer> {
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
	        if (!(object instanceof XfrmImplementationMapping)){
				return false
			}
			this.target == (object as XfrmImplementationMapping).target
		}
	
		
		
		
		
		
		
		def XfrmDemEventParameterRefs getXfrmDemEventParameterRefs(){
			containerValue.getByType(typeof(XfrmDemEventParameterRefs))
		}
		
		def void setXfrmDemEventParameterRefs(XfrmDemEventParameterRefs xfrmDemEventParameterRefs){
			val GContainer subContainer = xfrmDemEventParameterRefs.getTarget()
			containerValue.setContainer(subContainer, "XfrmDemEventParameterRefs")
		}
		
		def XfrmSignal getXfrmSignal(){
			containerValue.getByType(typeof(XfrmSignal))
		}
		
		def void setXfrmSignal(XfrmSignal xfrmSignal){
			val GContainer subContainer = xfrmSignal.getTarget()
			containerValue.setContainer(subContainer, "XfrmSignal")
		}
		
		
		static class XfrmDemEventParameterRefs implements IWrapper<GContainer> {
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
		        if (!(object instanceof XfrmDemEventParameterRefs)){
					return false
				}
				this.target == (object as XfrmDemEventParameterRefs).target
			}
		
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getXFRM_E_MALFORMED_MESSAGE(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "XFRM_E_MALFORMED_MESSAGE")
			}
			
			def void setXFRM_E_MALFORMED_MESSAGE(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "XFRM_E_MALFORMED_MESSAGE"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class XfrmSignal implements IWrapper<GContainer> {
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
		        if (!(object instanceof XfrmSignal)){
					return false
				}
				this.target == (object as XfrmSignal).target
			}
		
			
			
			def XfrmSignalChoice getXfrmSignalChoice(){
				containerValue.getByType(typeof(XfrmSignalChoice))
			}
			
			def void setXfrmSignalChoice(XfrmSignalChoice xfrmSignalChoice){
				val GContainer subContainer = xfrmSignalChoice.getTarget()
				containerValue.setContainer(subContainer, "XfrmSignalChoice")
			}
			
			
			static class XfrmSignalChoice implements IWrapper<GContainer> {
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
			        if (!(object instanceof XfrmSignalChoice)){
						return false
					}
					this.target == (object as XfrmSignalChoice).target
				}
			
				def XfrmISignalGroupRefChoice getXfrmISignalGroupRefChoice(){
					containerValue.getByType(typeof(XfrmISignalGroupRefChoice))
				}
				
				def void setXfrmISignalGroupRefChoice(XfrmISignalGroupRefChoice xfrmISignalGroupRefChoice){
					val GContainer subContainer = xfrmISignalGroupRefChoice.getTarget()
					containerValue.setContainer(subContainer, "XfrmISignalGroupRefChoice")
				}
				def XfrmISignalRefChoice getXfrmISignalRefChoice(){
					containerValue.getByType(typeof(XfrmISignalRefChoice))
				}
				
				def void setXfrmISignalRefChoice(XfrmISignalRefChoice xfrmISignalRefChoice){
					val GContainer subContainer = xfrmISignalRefChoice.getTarget()
					containerValue.setContainer(subContainer, "XfrmISignalRefChoice")
				}
				
				static class XfrmISignalGroupRefChoice implements IWrapper<GContainer> {
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
				        if (!(object instanceof XfrmISignalGroupRefChoice)){
							return false
						}
						this.target == (object as XfrmISignalGroupRefChoice).target
					}
				
					
					
					
					
				}
				
				static class XfrmISignalRefChoice implements IWrapper<GContainer> {
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
				        if (!(object instanceof XfrmISignalRefChoice)){
							return false
						}
						this.target == (object as XfrmISignalRefChoice).target
					}
				
					
					
					
					
				}
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Xfrm)){
			return false
		}
		this.target == (object as Xfrm).target
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
