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
package org.artop.ecuc.autosar4x.dsl.values.inferrer;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.resource.DerivedStateAwareResource;

public class DerivedTypeAcceptor implements IDerivedTypeAcceptor {

	private DerivedStateAwareResource resource;

	public DerivedTypeAcceptor(DerivedStateAwareResource resource) {
		this.resource = resource;
	}

	public <T extends EObject> void accept(T type) {
		if (type != null && type.eContainer() == null) {
			resource.getContents().add(type);
		}
	}

}