/**
 * <copyright>
 * 
 * Copyright (c) 2011 itemis and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: 
 *     itemis - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.examples.autosar40.transform.xtend.extensions;

import java.math.BigInteger;

public class ConvertUtil {

	public static BigInteger toInteger(Object src) {
		if (src == null) {
			return null;
		}
		if (src instanceof BigInteger) {
			return (BigInteger) src;
		}

		if (src instanceof Integer) {
			return BigInteger.valueOf(((Integer) src).longValue());
		} else if (src instanceof Byte) {
			return BigInteger.valueOf(((Byte) src).longValue());
		} else if (src instanceof Long) {
			return BigInteger.valueOf((Long) src);
		} else if (src instanceof Short) {
			return BigInteger.valueOf(((Short) src).longValue());
		}

		throw new IllegalArgumentException("Unable to convert java type " + src.getClass().getName() + " to Integer."); //$NON-NLS-1$ //$NON-NLS-2$
	}
}
