/**
 * <copyright>
 *
 * Copyright (c) See4sys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     See4sys - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.gautosar.xtend.typesystem.basetypes.impl;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.sphinx.emf.util.AbstractFilteringEList;

public abstract class AbstractMultiplicityAwareFilteringEList<E> extends AbstractFilteringEList<E> {

	private static final long serialVersionUID = 1L;

	public static final int MULTIPLICITY_INFINITE = -1;
	public static final int NO_MULTIPLICITY = -2;
	public static final int DEFAULT_LOWER_MULTIPLICITY = 1;
	public static final int DEFAULT_UPPER_MULTIPLICITY = 1;

	private int lowerMultiplicity = NO_MULTIPLICITY;
	private int upperMultiplicity = NO_MULTIPLICITY;

	public AbstractMultiplicityAwareFilteringEList(EObject targetOwner, EStructuralFeature targetFeature) {
		super(targetOwner, targetFeature);
	}

	public int getLowerMultiplicity() {
		return lowerMultiplicity;
	}

	public void setLowerMultiplicity(int lowerMultiplicity) {
		this.lowerMultiplicity = lowerMultiplicity;
	}

	public int getUpperMultiplicity() {
		return upperMultiplicity;
	}

	public void setUpperMultiplicity(int upperMultiplicity) {
		this.upperMultiplicity = upperMultiplicity;
	}
}
