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

/**
 * The acceptor is part of the {@link IDerivedModelInferrer} API. It's passed into
 * {@link IDerivedModelInferrer#infer(EObject, IDerivedTypeAcceptor, boolean) infer(..)} to accept created
 * {@link EObject}. They will be added to the {@link EObject}'s {@link org.eclipse.emf.ecore.resource.Resource} of the
 * {@link EObject}.
 *
 * @author Sven Efftinge - initial API
 * @noimplement This interface is not intended to be implemented by clients.
 * @since 2.7
 */
public interface IDerivedTypeAcceptor {

	/**
	 * Accepts a {@link EObject} with no container, to be added to the contents list of a
	 * {@link org.eclipse.emf.ecore.resource.Resource}. The second parameter is a lazy initializer that is never
	 * executed during <i>preIndexingPhase</i>.
	 *
	 * @see IDerivedModelInferrer#infer(EObject, IDerivedTypeAcceptor, boolean)
	 * @param type
	 *            the type to
	 * @param lateInitialization
	 *            the initializer
	 */
	<T extends EObject> void accept(T type);

}