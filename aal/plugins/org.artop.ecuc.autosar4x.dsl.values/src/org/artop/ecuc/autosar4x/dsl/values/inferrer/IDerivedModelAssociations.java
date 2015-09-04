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

import java.util.Set;

import org.eclipse.emf.ecore.EObject;

import com.google.inject.ImplementedBy;

@ImplementedBy(DerivedModelAssociator.class)
public interface IDerivedModelAssociations {

	/**
	 * @return all source elements associated with the given derived element.
	 */
	Set<EObject> getSourceElements(EObject derivedElement);

	/**
	 * @return all derived elements associated with the given source element.
	 */
	Set<EObject> getDerivedElements(EObject sourceElement);

	/**
	 * @return the primary source element for the given derived element.
	 */
	EObject getPrimarySourceElement(EObject derivedElement);

	/**
	 * @return the primary derived element for the given source element.
	 */
	EObject getPrimaryDerivedElement(EObject sourceElement);

	/**
	 * @return whether the given derived element is a primary derived element.
	 */
	boolean isPrimaryDerivedElement(EObject derivedElement);

}
