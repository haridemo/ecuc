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
package org.artop.ecuc.autosar4x.dsl.values.ui.templates

import org.eclipse.jface.text.templates.TemplateContext
import org.eclipse.jface.text.templates.TemplateVariable
import org.eclipse.xtext.ui.editor.templates.XtextTemplateContextType

class AutoFillTemplateContextType extends XtextTemplateContextType {
	
	override resolve(TemplateVariable variable, TemplateContext context) {
		if (variable.name.startsWith("value_boolean_")) {
			val defaultValue = variable.variableType.params.map[toString].head
			variable.values = #[defaultValue, if ("true" == defaultValue) "false" else "true"]
			variable.setResolved(true)
			variable.setUnambiguous(false)
		} else if (variable.name.startsWith("value_string_")) {
			val defaultValue = variable.variableType.params.map[toString].head
			variable.values = #[defaultValue]
			variable.setResolved(true)
			variable.setUnambiguous(true)
		} else if (variable.name.startsWith("value_float_")) {
			val defaultValue = variable.variableType.params.map[toString].head
			variable.values = #[defaultValue]
			variable.setResolved(true)
			variable.setUnambiguous(true)
		} else if (variable.name.startsWith("value_int_")) {
			val defaultValue = variable.variableType.params.map[toString].head
			variable.values = #[defaultValue]
			variable.setResolved(true)
			variable.setUnambiguous(true)
		} else if (variable.name.startsWith("value_enum_literal_")) {
			val literals = variable.variableType.params.map[toString]
			variable.values = literals
			variable.setResolved(true)
			variable.setUnambiguous(literals.size>1)
		}
		super.resolve(variable, context)
	}
	
}