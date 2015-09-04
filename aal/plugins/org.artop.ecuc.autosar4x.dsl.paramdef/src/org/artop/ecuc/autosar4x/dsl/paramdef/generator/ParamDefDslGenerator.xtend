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
package org.artop.ecuc.autosar4x.dsl.paramdef.generator

import autosar40.util.Autosar40ReleaseDescriptor
import javax.inject.Inject
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess
import org.eclipse.xtext.generator.IGenerator

class ParamDefDslGenerator implements IGenerator {
	
	@Inject ParamDefDslToAutosarTransformer transformer

	override void doGenerate(Resource xtextResource, IFileSystemAccess fsa) {
		val uri = xtextResource.URI
		val name = uri.trimFileExtension.lastSegment
		val outputUri = uri.trimSegments(1).appendSegment("gen").appendSegment(name).appendFileExtension(Autosar40ReleaseDescriptor.ARXML_DEFAULT_FILE_EXTENSION)
		transformer.transform(outputUri, xtextResource)
	}


}
