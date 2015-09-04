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
package org.artop.ecuc.autosar4x.dsl.values.ui.editor

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable
import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.inferrer.IDerivedModelAssociations
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.resource.XtextResource
import org.eclipse.xtext.ui.editor.LanguageSpecificURIEditorOpener

/**
 * Editor Opener that redirects open actions on derivedelements
 * to their source elements
 */
class MyDslEditorOpener extends LanguageSpecificURIEditorOpener {
	
	@Inject extension IDerivedModelAssociations 
	
	override protected findEObjectByURI(URI uri, XtextResource resource) {
		val EObject o = super.findEObjectByURI(uri, resource)
		if (o instanceof Identifiable) {
			val source = o.primarySourceElement
			if (source != null) {
				return source
			}
		}
		return o
	}
	
}