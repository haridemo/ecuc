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
package org.artop.ecuc.gautosar.accessors.check.operations;

import java.util.List;
import java.util.Set;

import org.artop.ecuc.gautosar.accessors.check.services.AutosarCheckProblemMarkerService;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.check.operations.BasicCheckValidationOperation;

public class AutosarCheckValidationOperation extends BasicCheckValidationOperation {

	public AutosarCheckValidationOperation(List<Object> modelObjects, Set<String> categories) {
		super(modelObjects, categories);
	}

	@Override
	protected void updateProblemMarkers(EObject eObject, final Diagnostic diagnostic) {
		AutosarCheckProblemMarkerService.INSTANCE.updateProblemMarkers(eObject, diagnostic);
	}
}
