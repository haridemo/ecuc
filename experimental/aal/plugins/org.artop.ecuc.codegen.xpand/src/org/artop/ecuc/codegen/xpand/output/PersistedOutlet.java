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
package org.artop.ecuc.codegen.xpand.output;

import org.eclipse.xpand2.output.Outlet;

public class PersistedOutlet extends Outlet {

	private String persistedPath = null;

	public PersistedOutlet() {
	}

	public PersistedOutlet(String path) {
		super(path);
	}

	public PersistedOutlet(boolean append, String encoding, String name, boolean overwrite, String path) {
		super(append, encoding, name, overwrite, path);
	}

	public String getPersistedPath() {
		return persistedPath;
	}

	public void setPersistedPath(String persistedPath) {
		this.persistedPath = persistedPath;
	}
}
