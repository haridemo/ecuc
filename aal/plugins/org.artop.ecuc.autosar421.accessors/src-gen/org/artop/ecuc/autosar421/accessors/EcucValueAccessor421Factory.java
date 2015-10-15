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
package org.artop.ecuc.autosar421.accessors;

import org.artop.ecuc.gautosar.accessors.lib.factory.AbstractEcucValueAccessorFactory;

public class EcucValueAccessor421Factory extends AbstractEcucValueAccessorFactory {

	private static final String ECUC_VALUE_ACCESSORS_JAVA_PACKAGE_NAME = "org.artop.ecuc.autosar421.accessors"; //$NON-NLS-1$

	public static final EcucValueAccessor421Factory INSTANCE = new EcucValueAccessor421Factory();

	// Prevent instantiation
	private EcucValueAccessor421Factory() {

	}

	@Override
	protected String getEcucValueAccessorJavaPackageName() {
		return ECUC_VALUE_ACCESSORS_JAVA_PACKAGE_NAME;
	}
}
