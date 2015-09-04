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

import com.google.inject.ImplementedBy;

@ImplementedBy(DerivedModelAssociator.class)
public interface IDerivedModelAssociator {

	/**
	 * Associated the given source element with the given derivedElement.
	 * 
	 * @param sourceElement
	 *            the source EObject
	 * @param derivedElement
	 *            the inferred EObject
	 */
	void associate(EObject sourceElement, EObject derivedElement);

	/**
	 * Associated the given source element with the given derivedElement and marks the association as primary on both
	 * sides.
	 *
	 * @param sourceElement
	 *            the source EObject
	 * @param derivedElement
	 *            the inferred EObject
	 */
	void associatePrimary(EObject sourceElement, EObject derivedElement);

	/**
	 * Removes an association between the given source and derived elements.
	 *
	 * @throws IllegalArgumentException
	 *             if the given source element is null; if the given derived element is null or dangling; if elements
	 *             does not belong to the same resource
	 */
	void removeAssociation(EObject sourceElement, EObject derivedElement);

	/**
	 * Removes all associations for the given derived element.
	 *
	 * @throws IllegalArgumentException
	 *             if the give derived element is null or dangling
	 */
	void removeAllAssociation(EObject derivedElement);

}
