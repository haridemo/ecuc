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
package org.artop.ecuc.autosar4x.dsl.values.naming

import org.eclipse.xtext.naming.IQualifiedNameConverter.DefaultImpl

/**
 * a QualifiedNameConverter that uses '/' as separator
 * @author Christian Dietrich
 */
class EcucValuesDslQualifiedNameConverter extends DefaultImpl {
	
	override getDelimiter() {
		return "/"
	}
	
}