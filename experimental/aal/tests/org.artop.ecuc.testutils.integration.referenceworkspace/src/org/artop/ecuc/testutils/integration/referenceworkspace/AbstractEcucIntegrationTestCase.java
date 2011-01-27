/**
 * <copyright>
 * 
 * Copyright (c) Geensys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     Geensys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.testutils.integration.referenceworkspace;

import org.artop.ecl.testutils.integration.AbstractIntegrationTestCase;
import org.artop.ecuc.testutils.integration.referenceworkspace.internal.Activator;
import org.eclipse.core.runtime.Plugin;

@SuppressWarnings("nls")
public class AbstractEcucIntegrationTestCase extends AbstractIntegrationTestCase<EcucTestReferenceWorkspace> {

	public AbstractEcucIntegrationTestCase() {
		super("EcucTestReferenceWorkspace");
	}

	@Override
	protected Plugin getTestPlugin() {
		return Activator.getPlugin();
	}

	@Override
	protected EcucTestReferenceWorkspace doCreateReferenceWorkspace(String[] referenceProjectNames) {
		return new EcucTestReferenceWorkspace(referenceProjectNames);
	}
}