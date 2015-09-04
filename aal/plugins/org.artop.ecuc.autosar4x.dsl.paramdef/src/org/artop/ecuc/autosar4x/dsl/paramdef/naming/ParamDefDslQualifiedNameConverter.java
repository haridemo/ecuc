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
package org.artop.ecuc.autosar4x.dsl.paramdef.naming;

import org.eclipse.xtext.naming.IQualifiedNameConverter.DefaultImpl;

/**
 * Qualified Name Converter that uses / as separator
 * 
 */
public class ParamDefDslQualifiedNameConverter extends DefaultImpl {
	
	@Override
	public String getDelimiter() {
		return "/";
	}

}
