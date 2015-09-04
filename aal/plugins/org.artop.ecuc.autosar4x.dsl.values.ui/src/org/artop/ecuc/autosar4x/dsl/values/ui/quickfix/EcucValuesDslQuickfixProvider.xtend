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
package org.artop.ecuc.autosar4x.dsl.values.ui.quickfix

import autosar40.ecucdescription.EcucContainerValue
import autosar40.ecucparameterdef.EcucAbstractStringParamDef
import autosar40.ecucparameterdef.EcucAddInfoParamDef
import autosar40.ecucparameterdef.EcucBooleanParamDef
import autosar40.ecucparameterdef.EcucEnumerationParamDef
import autosar40.ecucparameterdef.EcucFloatParamDef
import autosar40.ecucparameterdef.EcucIntegerParamDef
import autosar40.ecucparameterdef.EcucParamConfContainerDef
import autosar40.ecucparameterdef.EcucParameterDef
import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContainedElement
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslFactory
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.SimpleValue
import org.artop.ecuc.autosar4x.dsl.values.inferrer.IDerivedModelAssociations
import org.artop.ecuc.autosar4x.dsl.values.validation.EcucValuesDslValidator
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.ui.editor.quickfix.DefaultQuickfixProvider
import org.eclipse.xtext.ui.editor.quickfix.Fix
import org.eclipse.xtext.ui.editor.quickfix.IssueResolutionAcceptor
import org.eclipse.xtext.validation.Issue

/**
 * Custom quickfixes.
 *
 * see http://www.eclipse.org/Xtext/documentation.html#quickfixes
 */
class EcucValuesDslQuickfixProvider extends DefaultQuickfixProvider {

@Inject extension IDerivedModelAssociations
	
	@Fix(EcucValuesDslValidator::MISSING_INDEX)
	def fixMissingIndex(Issue issue, IssueResolutionAcceptor acceptor) {
		acceptor.accept(issue, "Add Missing Index","Add Missing Index", null) [
			obj, ctx|
				if (obj instanceof ContainedElement) {
					obj.index = 1
				}
		]
	}
	
	// quickfix on autosar elements (derived elements)
	@Fix("org.artop.aal.autosar40.constraints.ecuc.20006")
	def fixMissingParam(Issue issue, IssueResolutionAcceptor acceptor) {
		if (issue.data.size>0) {
			
			acceptor.accept(issue, "Add Missing Param " + issue.data.head, "Add Missing Param " + issue.data.head, null) [
				objx, ctx|
					
					val EObject obj = if(objx instanceof Container) {
						objx
					} else if (objx instanceof EcucContainerValue) {
						objx.primarySourceElement
					} else {
						null
					}
				
				
					if (obj instanceof Container) {
						val def = obj.definition
						if (def instanceof EcucParamConfContainerDef) {
							for (p : def.parameters) {
								if (issue.data.contains(p.shortName)) {
									val np = EcucValuesDslFactory.eINSTANCE.createParameter
									np.definition = p
									np.value  = p.valueTemplate
									obj.elements += np
								}
							}
						}
					}
			]
		}
	
	}
	
	def dispatch SimpleValue valueTemplate(EcucEnumerationParamDef d) {
		val v = EcucValuesDslFactory.eINSTANCE.createEnumValue
		if (d.literals.size>0)
			v.literal = d.literals.head.shortName
		else
			v.literal = "TODO"
		v
	}
	
	def dispatch SimpleValue valueTemplate(EcucIntegerParamDef d) {
		val v = EcucValuesDslFactory.eINSTANCE.createNumericValue
		v.value = "1"
		v
	}
	
	def dispatch SimpleValue valueTemplate(EcucFloatParamDef d) {
		val v = EcucValuesDslFactory.eINSTANCE.createNumericValue
		v.value = "1.0"
		v
	}
	
	def dispatch SimpleValue valueTemplate(EcucBooleanParamDef d) {
		val v = EcucValuesDslFactory.eINSTANCE.createBooleanValue
		v.value = BooleanLiteral::TRUE
		v
	}
	
	def dispatch SimpleValue valueTemplate(EcucAbstractStringParamDef d) {
		val v = EcucValuesDslFactory.eINSTANCE.createStringValue
		v.value = "value"
		v
	}
	
	def dispatch SimpleValue valueTemplate(EcucParameterDef d) {
		val v = EcucValuesDslFactory.eINSTANCE.createStringValue
		v.value = "TODO"
		v
	}
	
	def dispatch SimpleValue valueTemplate(EcucAddInfoParamDef d) {
		val v = EcucValuesDslFactory.eINSTANCE.createStringValue
		v.value = "TODO"
		v
	}
}
