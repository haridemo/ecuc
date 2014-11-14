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
package org.artop.ecuc.autosar4x.accessors.lib

import autosar40.ecucdescription.EcucAddInfoParamValue
import autosar40.ecucdescription.EcucNumericalParamValue
import autosar40.ecucdescription.EcucTextualParamValue
import autosar40.ecucparameterdef.EcucBooleanParamDef
import autosar40.ecucparameterdef.EcucFloatParamDef
import autosar40.ecucparameterdef.EcucIntegerParamDef
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock
import autosar40.util.Autosar40Factory
import gautosar.gecucdescription.GContainer
import gautosar.gecucdescription.GParameterValue
import gautosar.gecucparameterdef.GConfigParameter
import gautosar.gecucparameterdef.GConfigReference
import org.artop.aal.autosar40.gautosar40.ecucdescription.GEcucNumericalParamValue40XAdapter
import org.artop.ecuc.gautosar.accessors.lib.ParameterValueAccessorUtil
import org.eclipse.core.runtime.Assert
import autosar40.ecucparameterdef.EcucAddInfoParamDef

class ParameterValueAccessor4xUtil {

	def static Integer getIntegerValue(GParameterValue parameterValue) {
		if (parameterValue instanceof EcucNumericalParamValue) {
			return ParameterValueAccessorUtil.toInteger(parameterValue.value?.mixedText)
		}
	}

	def static Float getFloatValue(GParameterValue parameterValue) {
		if (parameterValue instanceof EcucNumericalParamValue) {
			ParameterValueAccessorUtil.toFloat(parameterValue.value?.mixedText)
		}
	}
	
	def static Boolean getBooleanValue(GParameterValue parameterValue) {
		if (parameterValue instanceof EcucNumericalParamValue) {
			ParameterValueAccessorUtil.toBoolean(parameterValue.value?.mixedText)
		}
	}
	
	def static String getStringValue(GParameterValue parameterValue){
		if (parameterValue instanceof EcucTextualParamValue){
			parameterValue.value
		}
	}
	
	def static DocumentationBlock getDocumentationBlockValue(GParameterValue parameterValue){
		if (parameterValue instanceof EcucAddInfoParamValue){
			parameterValue.value
		}
	}
	
	def static Object getObjectValue(GParameterValue parameterValue) {
		parameterValue
	}
	
	def static void setParameterValue(GParameterValue parameterValue, Object parameterValueValue) {
		if (parameterValue instanceof EcucNumericalParamValue) {
			new GEcucNumericalParamValue40XAdapter(parameterValue)
					.setValue(parameterValueValue?.toString);
		} else if (parameterValue instanceof EcucTextualParamValue) {
			parameterValue.setValue(parameterValueValue?.toString);
		} else if (parameterValue instanceof EcucAddInfoParamValue) {
			if (parameterValueValue instanceof DocumentationBlock) {
				parameterValue.setValue(parameterValueValue);
			}
		}
	}
	
	def static GParameterValue createParameterValue(GConfigParameter parameterDefinition) {
		Assert.isNotNull(parameterDefinition);
		
		var GParameterValue parameterValue
		parameterValue = if (parameterDefinition instanceof EcucBooleanParamDef || parameterDefinition instanceof EcucFloatParamDef || parameterDefinition instanceof EcucIntegerParamDef) 
		Autosar40Factory.eINSTANCE.createEcucNumericalParamValue else if (parameterDefinition instanceof EcucAddInfoParamDef)  Autosar40Factory.eINSTANCE.createEcucAddInfoParamValue else Autosar40Factory.eINSTANCE.createEcucTextualParamValue
		parameterValue.gSetDefinition(parameterDefinition)
		parameterValue
	}
	
	def static <T> void setReference(GContainer container, GConfigReference referenceDef, GContainer referenceValueValue){
		Assert.isNotNull(container)
		
		val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
		referenceValue.gSetDefinition(referenceDef)
		referenceValue.gSetValue(referenceValueValue) 
		container.gGetReferenceValues += referenceValue
	}
}
