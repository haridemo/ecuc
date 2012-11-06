/**
 * <copyright>
 * 
 * Copyright (c) 2011 See4sys. All rights reserved.
 * 
 * </copyright>
 */

package org.artop.ecuc.gautosar.xtend.typesystem.internal.messages;

import org.eclipse.osgi.util.NLS;

/**
 * GAUTOSAR Ecuc Typesystem internal messages.
 */
public final class Messages extends NLS {

	private static final String BUNDLE_NAME = "org.artop.ecuc.gautosar.xtend.typesystem.internal.messages.messages"; //$NON-NLS-1$

	public static String doc_RichConfigReferenceType_isConfigured;

	static {
		// Initialize resource bundle
		NLS.initializeMessages(BUNDLE_NAME, Messages.class);
	}

	private Messages() {
	}
}
