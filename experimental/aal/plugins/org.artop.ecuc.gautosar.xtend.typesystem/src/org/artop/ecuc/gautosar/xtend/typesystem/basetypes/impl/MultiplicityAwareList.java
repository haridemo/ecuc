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

import java.util.ArrayList;
import java.util.Collection;

public class MultiplicityAwareList<E> extends ArrayList<E> {

	public static final int MULTIPLICITY_INFINITE = -1;
	public static final int NO_MULTIPLICITY = -2;
	public static final int DEFAULT_LOWER_MULTIPLICITY = 1;
	public static final int DEFAULT_UPPER_MULTIPLICITY = 1;
	private static final long serialVersionUID = -8254228878120340483L;

	private int lowerMultiplicity = NO_MULTIPLICITY;
	private int upperMultiplicity = NO_MULTIPLICITY;

	public MultiplicityAwareList() {
		super();
	}

	public MultiplicityAwareList(Collection<? extends E> c) {
		super(c);
	}

	public MultiplicityAwareList(int initialCapacity) {
		super(initialCapacity);
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
