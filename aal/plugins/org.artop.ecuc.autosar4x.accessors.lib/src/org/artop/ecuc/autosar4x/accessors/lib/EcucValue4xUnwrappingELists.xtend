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

import static extension org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil.*
import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*

import autosar40.ecucdescription.EcucAddInfoParamValue
import autosar40.ecucdescription.EcucNumericalParamValue
import autosar40.ecucdescription.EcucTextualParamValue
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock
import autosar40.util.Autosar40Factory
import gautosar.gecucparameterdef.GConfigParameter
import java.util.List
import org.eclipse.core.runtime.CoreException
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import java.math.BigInteger
import java.math.BigDecimal

class BigIntegerValueUnwrappingEList extends AbstractUnwrappingEList<EcucNumericalParamValue, BigInteger> {

	private GConfigParameter parameterDef

	new(List<EcucNumericalParamValue> delegateList, Class<EcucNumericalParamValue> wrapperType, Class<BigInteger> targetType, GConfigParameter parameterDef) {
		super(delegateList, wrapperType, targetType)

		this.parameterDef = parameterDef
	}

	override protected wrap(BigInteger object) throws CoreException {
		val parameterValue = Autosar40Factory.eINSTANCE.createEcucNumericalParamValue
		parameterValue.gSetDefinition(parameterDef)
		parameterValue.setValue(object)
		parameterValue
	}

	override protected unwrap(EcucNumericalParamValue parameterValue) {
		parameterValue.value?.mixedText.toBigInteger()
	}
}

class BigDecimalValueUnwrappingEList extends AbstractUnwrappingEList<EcucNumericalParamValue, BigDecimal> {

	private GConfigParameter parameterDef

	new(List<EcucNumericalParamValue> delegateList, Class<EcucNumericalParamValue> wrapperType, Class<BigDecimal> targetType, GConfigParameter parameterDef) {
		super(delegateList, wrapperType, targetType)

		this.parameterDef = parameterDef
	}

	override protected wrap(BigDecimal object) throws CoreException {
		val parameterValue = Autosar40Factory.eINSTANCE.createEcucNumericalParamValue
		parameterValue.gSetDefinition(parameterDef)
		parameterValue.setValue(object)
		parameterValue
	}

	override protected unwrap(EcucNumericalParamValue parameterValue) {
		parameterValue.value?.mixedText.toBigDecimal()
	}
}

class BooleanValueUnwrappingEList extends AbstractUnwrappingEList<EcucNumericalParamValue, Boolean> {

	private GConfigParameter parameterDef

	new(List<EcucNumericalParamValue> delegateList, Class<EcucNumericalParamValue> wrapperType, Class<Boolean> targetType, GConfigParameter parameterDef) {
		super(delegateList, wrapperType, targetType)

		this.parameterDef = parameterDef
	}

	override protected wrap(Boolean object) throws CoreException {
		val parameterValue = Autosar40Factory.eINSTANCE.createEcucNumericalParamValue
		parameterValue.gSetDefinition(parameterDef)
		parameterValue.setValue(object)
		parameterValue
	}

	override protected unwrap(EcucNumericalParamValue parameterValue) {
		parameterValue.value?.mixedText.toBoolean()
	}
}

class StringValueUnwrappingEList extends AbstractUnwrappingEList<EcucTextualParamValue, String> {

	private GConfigParameter parameterDef

	new(List<EcucTextualParamValue> delegateList, Class<EcucTextualParamValue> wrapperType, Class<String> targetType, GConfigParameter parameterDef) {
		super(delegateList, wrapperType, targetType)

		this.parameterDef = parameterDef
	}

	override protected wrap(String object) throws CoreException {
		val parameterValue = Autosar40Factory.eINSTANCE.createEcucTextualParamValue
		parameterValue.gSetDefinition(parameterDef)
		parameterValue.setValue(object)
		parameterValue
	}

	override protected unwrap(EcucTextualParamValue parameterValue) {
		parameterValue.value
	}
}

class DocumentationBlockValueUnwrappingEList extends AbstractUnwrappingEList<EcucAddInfoParamValue, DocumentationBlock> {

	private GConfigParameter parameterDef

	new(List<EcucAddInfoParamValue> delegateList, Class<EcucAddInfoParamValue> wrapperType, Class<DocumentationBlock> targetType, GConfigParameter parameterDef) {
		super(delegateList, wrapperType, targetType)

		this.parameterDef = parameterDef
	}

	override protected wrap(DocumentationBlock object) throws CoreException {
		val parameterValue = Autosar40Factory.eINSTANCE.createEcucAddInfoParamValue
		parameterValue.gSetDefinition(parameterDef)
		parameterValue.setValue(object)
		parameterValue
	}

	override protected unwrap(EcucAddInfoParamValue parameterValue) {
		parameterValue.value
	}
}