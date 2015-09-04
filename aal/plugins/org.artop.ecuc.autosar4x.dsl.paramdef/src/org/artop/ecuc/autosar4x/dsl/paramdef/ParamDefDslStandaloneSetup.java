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
package org.artop.ecuc.autosar4x.dsl.paramdef;

/**
 * Initialization support for running Xtext languages 
 * without equinox extension registry
 */
public class ParamDefDslStandaloneSetup extends ParamDefDslStandaloneSetupGenerated{

	public static void doSetup() {
		new ParamDefDslStandaloneSetup().createInjectorAndDoEMFRegistration();
	}
}

