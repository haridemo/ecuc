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

public abstract class AbstractDerivedModelInferrer implements IDerivedModelInferrer {

	public void infer(EObject e, final/* @NonNull */IDerivedTypeAcceptor acceptor, boolean preIndexingPhase) {
		_infer(e, acceptor, preIndexingPhase);
	}

	public void _infer(EObject e, /* @NonNull */IDerivedTypeAcceptor acceptor, boolean preIndexingPhase) {
		for (EObject child : e.eContents()) {
			infer(child, acceptor, preIndexingPhase);
		}
	}
}