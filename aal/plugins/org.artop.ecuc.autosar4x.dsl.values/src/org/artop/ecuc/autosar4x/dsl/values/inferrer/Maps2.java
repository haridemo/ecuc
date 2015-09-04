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

import java.util.LinkedHashMap;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;

/**
 * Partial Copy of {@link org.eclipse.xtext.xbase.typesystem.util.Maps2}
 *
 * @author Christian Dietrich
 */
@SuppressWarnings("restriction")
public class Maps2 {

	public static <K, V> LinkedHashMap<K, V> newLinkedHashMapWithExpectedSize(int expectedSize) {
		return new LinkedHashMap<K, V>(capacity(expectedSize)) {
			private static final long serialVersionUID = 1L;

			@Override
			public void clear() {
				if (isEmpty()) {
					return;
				}
				super.clear();
			}
		};
	}

	private static int capacity(int expectedSize) {
		if (expectedSize < 3) {
			Preconditions.checkArgument(expectedSize >= 0);
			return expectedSize + 1;
		}
		if (expectedSize < Ints.MAX_POWER_OF_TWO) {
			return expectedSize + expectedSize / 3;
		}
		return Integer.MAX_VALUE; // any large value
	}

}
