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
package org.artop.ecuc.gautosar.accessorgen

public class EcucValueAccessorFactoryGenerator {

	public def static generate(String javaPackageName, String ecucValueAccessorFactoryClassName) '''
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
	package «javaPackageName»;

	import org.artop.ecuc.gautosar.accessors.lib.factory.AbstractEcucValueAccessorFactory;

	public class «ecucValueAccessorFactoryClassName» extends AbstractEcucValueAccessorFactory {

		private static final String ECUC_VALUE_ACCESSORS_JAVA_PACKAGE_NAME = "«javaPackageName»"; //$NON-NLS-1$

		public static final «ecucValueAccessorFactoryClassName» INSTANCE = new «ecucValueAccessorFactoryClassName»();

		// Prevent instantiation
		private «ecucValueAccessorFactoryClassName»() {

		}

		@Override
		protected String getEcucValueAccessorJavaPackageName() {
			return ECUC_VALUE_ACCESSORS_JAVA_PACKAGE_NAME;
		}
	}
	'''
}