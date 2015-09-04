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

public interface IDerivedModelInferrer {

	/**
	 * <p>
	 * This method is called at two different times in a resource's life-cycle, reflected by whether {preIndexingPhase}
	 * is set to <code>true</code> or <code>false</code>. When set to <code>true</code> everything is still in a
	 * pre-indexing phase, that means linking hasn't been done yet. In this phase you just need to create the derived
	 * elements which should be indexed (i.e. found globally).
	 * </p>
	 * <p>
	 * You must only infer derived elements which directly result from elements contained in the current resource!
	 * </p>
	 * <p>
	 * </p>
	 *
	 * @param e
	 *            the root element from the parse result
	 * @param acceptor
	 *            an acceptor awaiting derived root {@link EObject}s
	 * @param preIndexingPhase
	 *            whether the call is done in before indexing. During this phase clients may not rely on any global
	 *            indexing information and only need to to provide the information needed by the language's
	 *            {@link org.eclipse.xtext.resource.IDefaultResourceDescriptionStrategy}. IF not implemented differently
	 *            this is just the {@link EObject}s with their qualified name, but no members and no other data.
	 */
	void infer(EObject e, /* @NonNull */IDerivedTypeAcceptor acceptor, boolean preIndexingPhase);

	/**
	 * A null-implementation.
	 */
	public static class NullImpl implements IDerivedModelInferrer {

		public void infer(EObject e, /* @NonNull */IDerivedTypeAcceptor acceptor, boolean preIndexingPhase) {
		}

	}

}