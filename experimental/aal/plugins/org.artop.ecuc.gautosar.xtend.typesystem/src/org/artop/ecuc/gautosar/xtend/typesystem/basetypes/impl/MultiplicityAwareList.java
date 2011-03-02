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

public class MultiplicityAwareList<E> extends ArrayList<E> {
	private int lowerMultiplicity;
	private int upperMultiplicity;

	public MultiplicityAwareList(int lowerMultiplicity, int upperMultiplicity) {
		super();
		this.lowerMultiplicity = lowerMultiplicity;
		this.upperMultiplicity = upperMultiplicity;
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
