/**
 * <copyright>
 * 
 * Copyright (c) See4sys, itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 *     itemis - [1448] Provide an example for automatically creating ECU configurations from ECU extracts of system descriptions using Xtend
 * </copyright>
 */
package org.artop.ecuc.examples.autosar40.transform.xtend.ui.internal.messages;

import org.eclipse.osgi.util.NLS;

public class Messages extends NLS {

	private static final String BUNDLE_NAME = "org.artop.ecuc.examples.autosar40.transform.xtend.ui.internal.messages.messages"; //$NON-NLS-1$

	public static String menuItem_launchAutoConfigure;

	static {
		// Initialize resource bundle
		NLS.initializeMessages(BUNDLE_NAME, Messages.class);
	}

	private Messages() {
	}
}
