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
package org.artop.ecuc.gautosar.accessors.lib

import gautosar.gecucdescription.GConfigReferenceValue
import gautosar.gecucdescription.GContainer
import gautosar.gecucdescription.GModuleConfiguration
import gautosar.gecucdescription.GReferenceValue
import gautosar.gecucdescription.GecucdescriptionPackage
import gautosar.gecucparameterdef.GChoiceContainerDef
import gautosar.gecucparameterdef.GContainerDef
import gautosar.gecucparameterdef.GModuleDef
import gautosar.gecucparameterdef.GParamConfContainerDef
import gautosar.gecucparameterdef.GParamConfMultiplicity
import gautosar.ggenericstructure.ginfrastructure.GARObject
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable
import gautosar.ggenericstructure.ginfrastructure.GReferrable
import java.util.ArrayList
import java.util.List
import org.eclipse.core.runtime.Assert
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import java.math.BigInteger
import java.math.BigDecimal

class EcucValueAccessorUtil {
	
	def static <T> T getByType(GModuleConfiguration moduleConfiguration, Class<T> clazz) {
		Assert.isNotNull(moduleConfiguration)
		Assert.isNotNull(clazz)
		
		val container = moduleConfiguration.gGetContainers.findFirst[gGetDefinition?.gGetShortName == clazz.simpleName]
		if (container != null) {
			val constructor = clazz.getDeclaredConstructor(typeof(GContainer))
			return constructor.newInstance(container)
		} else {
			null
		}
	}
	
	def static <T> T getByType(GContainer container, Class<T> clazz) {
		Assert.isNotNull(container)
		Assert.isNotNull(clazz)
		
		val subContainer = container.gGetSubContainers.findFirst[gGetDefinition?.gGetShortName == clazz.simpleName]
		if (subContainer != null) {
			val constructor = clazz.getDeclaredConstructor(typeof(GContainer))
			return constructor.newInstance(subContainer)
		} else {
			null
		}
	}
	
	def static void setContainer(GARObject target, GContainer container, String containerDefName){
		Assert.isTrue(target instanceof GModuleConfiguration || target instanceof GContainer)
		
		val feature = getEContainingFeature(target, GecucdescriptionPackage.eINSTANCE.getGContainer())
		if (container != null && !"".equals(container.toString())) { //$NON-NLS-1$
			if (feature.isMany()) {
				(((target as EObject).eGet(feature)) as List<Object>).add(container)
			} else {
				target.eSet(feature, container)
			}
		}
	
		// Sets the right container definition if not yet done
		container.gSetDefinition(getContainerDefinition(target, containerDefName))
	}
	
	def static GContainerDef getContainerDefinition(GARObject parent, String containerDefName){
		if (parent instanceof GModuleConfiguration){
			return parent.gGetDefinition?.gGetContainers.findFirst[gGetShortName.equals(containerDefName)]
		} else if (parent instanceof GContainer){
			val definition = parent.gGetDefinition
			if (definition instanceof GParamConfContainerDef) {
				return definition.gGetSubContainers.findFirst[gGetShortName.equals(containerDefName)]
			} else if (definition instanceof GChoiceContainerDef) {
				return definition.gGetChoices.findFirst[gGetShortName.equals(containerDefName)]
			}
		}
		return null
	}
		
   def static EStructuralFeature getEContainingFeature(EObject target, EClass ecucValueType) {
		if (target instanceof GModuleConfiguration && GecucdescriptionPackage.eINSTANCE.getGContainer().isSuperTypeOf(ecucValueType)) {
			return target.eClass().getEStructuralFeature("containers") //$NON-NLS-1$
		}
		if (target instanceof GContainer && GecucdescriptionPackage.eINSTANCE.getGContainer().isSuperTypeOf(ecucValueType)) {
			return target.eClass().getEStructuralFeature("subContainers") //$NON-NLS-1$
		}
		if (target instanceof GContainer && GecucdescriptionPackage.eINSTANCE.getGParameterValue().isSuperTypeOf(ecucValueType)) {
			return target.eClass().getEStructuralFeature("parameterValues") //$NON-NLS-1$
		}
		if (target instanceof GContainer && GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue().isSuperTypeOf(ecucValueType)) {
			return target.eClass().getEStructuralFeature("referenceValues") //$NON-NLS-1$
		}
		return null
	}
	
	def static <T> T getReference(GContainer container, Class<T> clazz, String referenceDefinitionName){
		Assert.isNotNull(container)
		Assert.isNotNull(clazz)
		
		val GConfigReferenceValue referenceValue = container.gGetReferenceValues.findFirst[gGetDefinition?.gGetShortName == referenceDefinitionName]
		if (referenceValue instanceof GReferenceValue){
			val referenceValueValue = referenceValue.gGetValue
			if (referenceValueValue instanceof GContainer){
				if (referenceValueValue.gGetDefinition?.gGetShortName == clazz.simpleName) {
					val constructor = clazz.getDeclaredConstructor(typeof(GContainer))
					return constructor.newInstance(referenceValueValue)
				}
			}
		}
		null
	}
	
	def static String getAccessorClassQualifiedName(String javaPackageName, GContainerDef containerDef, String separator) {
		Assert.isNotNull(containerDef)
		
		var StringBuilder builder = new StringBuilder
		builder.append(javaPackageName + ".")
		
		var List<String> segments = newArrayList
		segments.add(containerDef.gGetShortName)
		var parent = containerDef.eContainer
		while(parent instanceof GReferrable && !(parent instanceof GModuleDef)) {
			segments.add((parent as GReferrable).gGetShortName)
			parent = parent.eContainer
		}
		
		if (parent instanceof GModuleDef){
			segments.add((parent as GReferrable).gGetShortName)
		}
		
		for (i : segments.size >.. 0) {
			builder.append(segments.get(i))
			if (i !=0){
				builder.append(separator)
			}
		}
		
		builder.toString
	}
	
	def static BigInteger toBigInteger(String value) {
		new BigInteger(value)
	}

	def static BigDecimal toBigDecimal(String value) {
		new BigDecimal(value)
	}
	
	def static Boolean toBoolean(String value){
		if ("1".equals(value) || Boolean.parseBoolean(value)) //$NON-NLS-1$
			return Boolean.TRUE
		return Boolean.FALSE
	}
	
	def static String getBooleanParameterValueValue(Boolean value, boolean convert){
		if (convert){
			if (value) return "1" else return "0" //$NON-NLS-1$ //$NON-NLS-2$
		} else value.toString
	}
	
	def static <T> List<T> toList(Iterable<T> in){
		val result = new ArrayList<T>
		result += in
		return result
	}
	
	def static boolean isMany(GIdentifiable childType) {
		Assert.isNotNull(childType)
		
		if (childType instanceof GParamConfMultiplicity) {
			if (childType.gGetUpperMultiplicityInfinite()) {
				return true
			} else {
				val String upperMultiplicity = childType.gGetUpperMultiplicityAsString()
				return upperMultiplicity != null && upperMultiplicity.length() > 0 && !"1".equals(upperMultiplicity) //$NON-NLS-1$
			}
		}
		
		return false
	}
	
	def static String getChildPropertyName(GIdentifiable childType){
		Assert.isNotNull(childType)

		if (isMany(childType)) {
			return getPluralOf(childType.gGetShortName)
		}
		return childType.gGetShortName
	}
	
	def static String getPluralOf(String input) {
		var String plural = input
		if (!input.isNullOrEmpty) {
			if (input.toUpperCase().equals(input)) {
				if (input.length() > 1 && input.endsWith("Y") //$NON-NLS-1$
						&& !(input.endsWith("AY") || input.endsWith("EY") || input.endsWith("OY") || input.endsWith("UY"))) { //$NON-NLS-1$//$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
					plural = plural.substring(0, input.length() - 1) + "IES" //$NON-NLS-1$
				} else if (!input.endsWith("S")) { //$NON-NLS-1$
					plural = plural + "S" //$NON-NLS-1$
				}
			} else {
				if (input.length() > 1 && input.endsWith("y") //$NON-NLS-1$
						&& !(input.endsWith("ay") || input.endsWith("ey") || input.endsWith("oy") || input.endsWith("uy"))) { //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
					plural = plural.substring(0, input.length() - 1) + "ies" //$NON-NLS-1$
				} else if (!input.endsWith("s")) { //$NON-NLS-1$
					plural = plural + "s" //$NON-NLS-1$
				}
			}
		}
		
		return plural
	}
}
