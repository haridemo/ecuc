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
package org.artop.ecuc.gautosar.accessors.check.services;

import org.eclipse.emf.common.util.URI;
import org.eclipse.sphinx.emf.check.services.CheckProblemMarkerService;

public class AutosarCheckProblemMarkerService extends CheckProblemMarkerService {

	private static final String AUTOSAR_URI_DESTINATION_TYPE_QUERY = "?type="; //$NON-NLS-1$

	public static AutosarCheckProblemMarkerService INSTANCE = new AutosarCheckProblemMarkerService();

	private AutosarCheckProblemMarkerService() {
	}

	@Override
	protected boolean contains(URI uri, URI anotherURI) {
		if (uri != null && anotherURI != null) {
			int index = uri.toString().indexOf(AUTOSAR_URI_DESTINATION_TYPE_QUERY);
			String uriString = index > 1 ? uri.toString().substring(0, index) : uri.toString();
			index = anotherURI.toString().indexOf(AUTOSAR_URI_DESTINATION_TYPE_QUERY);
			String anotherUriString = index > 1 ? anotherURI.toString().substring(0, index) : anotherURI.toString();
			return uriString.contains(anotherUriString);
		}
		return false;
	}
}
