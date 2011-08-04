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
package org.artop.ecuc.gautosar.initializers.internal.messages;

import org.eclipse.osgi.util.NLS;

public class Messages {

	private static final String BUNDLE_NAME = "org.artop.ecuc.gautosar.initializers.internal.messages.Messages"; //$NON-NLS-1$

	public static String job_generateModuleConfiguration;

	public static String job_addConfigurationElement;

	public static String job_initializeModuleConfiguration;

	static {
		NLS.initializeMessages(BUNDLE_NAME, Messages.class);
	}
}
