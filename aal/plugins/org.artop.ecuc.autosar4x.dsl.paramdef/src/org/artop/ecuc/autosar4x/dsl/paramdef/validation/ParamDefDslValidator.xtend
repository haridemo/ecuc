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
package org.artop.ecuc.autosar4x.dsl.paramdef.validation

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterType
import org.eclipse.xtext.validation.Check

/**
 * Validation of DSL Files
 */
class ParamDefDslValidator extends AbstractParamDefDslValidator {

	@Check
	def checkMin(ParameterDef d) {
		if (d.eIsSet(ParamDefDslPackage.Literals.PARAMETER_DEF__MIN)) {
			if (!(ParameterType.INTEGER == d.type ||  ParameterType.FLOAT == d.type)) {
				error("the 'min' property is allowed for INTEGER and FLOAT only", d, ParamDefDslPackage.Literals.PARAMETER_DEF__MIN)
			}
		}
	}
	
	@Check
	def checkMax(ParameterDef d) {
		if (d.eIsSet(ParamDefDslPackage.Literals.PARAMETER_DEF__MAX)) {
			if (!(ParameterType.INTEGER == d.type ||  ParameterType.FLOAT == d.type)) {
				error("the 'max' property is allowed for INTEGER and FLOAT only", d, ParamDefDslPackage.Literals.PARAMETER_DEF__MAX)
			}
		}
	}
	
	@Check
	def checkLiterals(ParameterDef d) {
		if (!d.literals.isEmpty) {
			if (ParameterType.ENUM != d.type) {
				error("the 'literals' property is allowed for ENUM only", d, ParamDefDslPackage.Literals.PARAMETER_DEF__MAX)
			}
		}
	}
	
	@Check
	def checkDefaults(ParameterDef d) {
		if (d.^default != null) {
			if (d.type != ParameterType.BOOLEAN && d.type != ParameterType.FLOAT && d.type != ParameterType.INTEGER && d.type != ParameterType.ENUM) {
				error("default value is allowed for 'BOOLEAN', 'ENUM', 'INTEGER' and 'FLOAT' only", d, ParamDefDslPackage.Literals.PARAMETER_DEF__DEFAULT)
			}
		}
	}
}
