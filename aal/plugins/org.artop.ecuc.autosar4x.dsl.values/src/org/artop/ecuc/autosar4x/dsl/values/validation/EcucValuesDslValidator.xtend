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
package org.artop.ecuc.autosar4x.dsl.values.validation

import autosar40.ecucdescription.EcucContainerValue
import autosar40.ecucparameterdef.EcucAbstractStringParamDef
import autosar40.ecucparameterdef.EcucAddInfoParamDef
import autosar40.ecucparameterdef.EcucBooleanParamDef
import autosar40.ecucparameterdef.EcucEnumerationParamDef
import autosar40.ecucparameterdef.EcucFloatParamDef
import autosar40.ecucparameterdef.EcucIntegerParamDef
import autosar40.ecucparameterdef.EcucReferenceDef
import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EnumValue
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.StringValue
import org.artop.ecuc.autosar4x.dsl.values.naming.AutosarQualifiedNameProvider
import org.eclipse.xtext.EcoreUtil2
import org.eclipse.xtext.validation.Check
import org.eclipse.xtext.validation.CheckType

class EcucValuesDslValidator extends AbstractEcucValuesDslValidator {

	public static val MISSING_INDEX = "MISSING_INDEX"
		
	@Inject
	AutosarQualifiedNameProvider artopQualifiedNameProvider
	
	@Check
	def checkIntValueRange(NumericValue value) {
		val p = value.eContainer as Parameter
		val def = p.definition
		if (def instanceof EcucIntegerParamDef) {
			try {
				val v = Integer.parseInt(value.value)
				if (def.min != null && def.min.mixedText != null) {
					val min = Integer.parseInt(def.min.mixedText)
					if (v < min) {
						error('''value must be >= «min»''', value, null)
					}
				}
				if (def.max != null && def.max.mixedText != null) {
					val max = Integer.parseInt(def.max.mixedText)
					if (v > max) {
						error('''value must be <= «max»''', value, null)
					}
				}
			} catch (NumberFormatException e) {
				
			}
		}
	}
	
	@Check
	def checkTyp(Parameter p) {
		val def = p.definition
		checkTyp(p,def)
	}
	
	private def dispatch void checkTyp(Parameter p, Void d) {
		// just for incomplete models
	}
	
	private def dispatch void checkTyp(Parameter p, EcucBooleanParamDef d) {
		if (!(p.value instanceof BooleanValue)) {
			error("value must be boolean", p.value, null)
		}
	}
	
	private def dispatch void checkTyp(Parameter p, EcucAbstractStringParamDef d) {
		if (!(p.value instanceof StringValue)) {
			error("value must be string", p.value, null)
		}
	}
	
	private def dispatch void checkTyp(Parameter p, EcucEnumerationParamDef d) {
		if (!(p.value instanceof EnumValue)) {
			error("value must be enum", p.value, null)
		}
	}
	
	private def dispatch void checkTyp(Parameter p, EcucAddInfoParamDef d) {
		if (!(p.value instanceof StringValue)) {
			error("value must be string", p.value, null)
		}
	}
	
	private def dispatch void checkTyp(Parameter p, EcucIntegerParamDef d) {
		val v = p.value
		if (v instanceof NumericValue) {
			if (v.value.contains(".")) {				
				error("value must be int", p.value, null)
			}
		} else {
			error("value must be int", p.value, null)
		}
	}
	
	private def dispatch void checkTyp(Parameter p, EcucFloatParamDef d) {
		if (!(p.value instanceof NumericValue)) {
			error("value must be float", p.value, null)
		}
	}
	
	@Check(CheckType.NORMAL)
	def checkReqIndex(Container c) {
		val def = c.definition
		if (Boolean.TRUE == def.requiresIndex && !c.eIsSet(EcucValuesDslPackage.Literals.CONTAINED_ELEMENT__INDEX)) {
			error ("Element needs an index", c, EcucValuesDslPackage.Literals.CONTAINER__DEFINITION, MISSING_INDEX)
		}
	}
	
	@Check(CheckType.NORMAL)
	def checkReqIndex(Parameter c) {
		val def = c.definition
		if (Boolean.TRUE == def.requiresIndex && !c.eIsSet(EcucValuesDslPackage.Literals.CONTAINED_ELEMENT__INDEX)) {
			error ("Element needs an index", c, EcucValuesDslPackage.Literals.PARAMETER__DEFINITION, MISSING_INDEX)
		}
	}
	
	@Check(CheckType.NORMAL)
	def checkReqIndex(Reference c) {
		val def = c.definition
		if (Boolean.TRUE == def.requiresIndex && !c.eIsSet(EcucValuesDslPackage.Literals.CONTAINED_ELEMENT__INDEX)) {
			error ("Element needs an index", c, EcucValuesDslPackage.Literals.REFERENCE__DEFINITION, MISSING_INDEX)
		}
	}
}
