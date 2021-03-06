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
package org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;

/**
 * the root base object type, such as EObject the super meta class for all types
 */
public class ARObjectTypeImpl extends AbstractEcucMetaTypeImpl implements ARObjectType {

	public ARObjectTypeImpl(final EcucContext context) {
		this(context, TYPE_NAME);
	}

	private ARObjectTypeImpl(EcucContext context, String typeName) {
		super(context, typeName);
	}
}
