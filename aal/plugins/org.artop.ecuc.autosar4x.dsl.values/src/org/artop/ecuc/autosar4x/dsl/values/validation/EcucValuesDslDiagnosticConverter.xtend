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

import autosar40.ecucdescription.EcucAbstractReferenceValue
import autosar40.ecucdescription.EcucContainerValue
import autosar40.ecucdescription.EcucModuleConfigurationValues
import autosar40.ecucdescription.EcucParameterValue
import autosar40.ecucdescription.EcucValueCollection
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement
import java.util.regex.Pattern
import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage
import org.artop.ecuc.autosar4x.dsl.values.inferrer.IDerivedModelAssociations
import org.eclipse.emf.common.util.Diagnostic
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.xtext.validation.DiagnosticConverterImpl

class EcucValuesDslDiagnosticConverter extends DiagnosticConverterImpl {
	
	@Inject extension IDerivedModelAssociations
	
	// Maps Error on the Derived Autosar Back to the orginal model Element
	override protected getLocationData(EObject obj, EStructuralFeature structuralFeature, int index) {
		if (obj instanceof EcucContainerValue) {
			val source = obj.primarySourceElement
			if (source != null) {
				return getLocationData(source, EcucValuesDslPackage.Literals.CONTAINER__DEFINITION, index)
			}
		} else if (obj instanceof EcucParameterValue) {
			val source = obj.primarySourceElement
			if (source != null) {
				return getLocationData(source, EcucValuesDslPackage.Literals.PARAMETER__DEFINITION, index)
			}
		} else if (obj instanceof EcucAbstractReferenceValue) {
			val source = obj.primarySourceElement
			if (source != null) {
				return getLocationData(source, EcucValuesDslPackage.Literals.REFERENCE__DEFINITION, index)
			}
		}  else if (obj instanceof EcucModuleConfigurationValues) {
			val source = obj.primarySourceElement
			if (source != null) {
				return getLocationData(source, EcucValuesDslPackage.Literals.MODULE__DEFINITION, index)
			}
		} else if (obj instanceof EcucValueCollection) {
			val source = obj.primarySourceElement
			if (source != null) {
				return getLocationData(source, null, index)
			}
		} else if (obj instanceof ARElement) {
			System.err.println("TODO map errors on " + obj.eClass.name)
			
		}
		super.getLocationData(obj, structuralFeature, index)
	}
	
	override protected getIssueCode(Diagnostic diagnostic) {
		super.getIssueCode(diagnostic)
	}
	
	override protected getIssueData(Diagnostic diagnostic) {
		if (diagnostic.source == "org.artop.aal.autosar40.constraints.ecuc" && diagnostic.code == 20006) {
			val message = diagnostic.message
			val pattern = Pattern.compile("Expected min 1 parameter values with definition ((/\\w+)+)(/\\w+). Found 0")
			val matcher = pattern.matcher(message.trim)
			if(matcher.matches && matcher.groupCount>2) {
				val result = newArrayList(matcher.group(matcher.groupCount).substring(1))
				return result
			}
		}
		super.getIssueData(diagnostic)
	}
	
}