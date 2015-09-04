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
package org.artop.ecuc.autosar4x.dsl.values.generator

import autosar40.autosartoplevelstructure.AUTOSAR
import autosar40.util.Autosar40ReleaseDescriptor
import org.artop.ecuc.autosar4x.dsl.values.scoping.SphinxHelper
import org.eclipse.core.runtime.NullProgressMonitor
import org.eclipse.core.runtime.Path
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.util.EcoreUtil.Copier
import org.eclipse.sphinx.emf.util.EcorePlatformUtil
import org.eclipse.xtext.generator.IFileSystemAccess
import org.eclipse.xtext.generator.IGenerator

/**
 * Generates code from your model files on save.
 * 
 */
class EcucValuesDsl2AutosarGenerator implements IGenerator {
	

	// serialized the inferred autosar model to a arxml file
	override void doGenerate(Resource xtextResource, IFileSystemAccess fsa) {
		if (xtextResource.contents.filter(AUTOSAR).size == 0) {
			return
		}

		val uri = xtextResource.URI
		val name = uri.trimFileExtension.lastSegment
		val outputUri = uri.trimSegments(1).appendSegment("gen").appendSegment(name).appendFileExtension(Autosar40ReleaseDescriptor.ARXML_DEFAULT_FILE_EXTENSION)

		val Copier copier = new Copier(false, true);
		val EObject resultObject = copier.copy(xtextResource.contents.filter(AUTOSAR).head);
		copier.copyReferences();
		
		EcorePlatformUtil.saveNewModelResource(SphinxHelper.getSphinxEditingDomain(xtextResource,Autosar40ReleaseDescriptor.INSTANCE),
			new Path(outputUri.toPlatformString(true)),
			Autosar40ReleaseDescriptor.ARXML_CONTENT_TYPE_ID,
			resultObject, 
			null, 
			false, 
			new NullProgressMonitor
		)
		
	}
}
