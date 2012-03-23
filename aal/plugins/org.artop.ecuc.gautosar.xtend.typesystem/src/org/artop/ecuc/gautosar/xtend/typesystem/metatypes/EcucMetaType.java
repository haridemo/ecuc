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
package org.artop.ecuc.gautosar.xtend.typesystem.metatypes;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.xtend.typesystem.Feature;
import org.eclipse.xtend.typesystem.Type;

public interface EcucMetaType extends Type {

	String META_NAMESPACE = "ECUC"; //$NON-NLS-1$
	String TYPE_NAME_SEGMENT_SEPARATOR = "::"; //$NON-NLS-1$

	String getNamespace();

	String getSimpleName();

	EcucContext getContext();

	void addFeature(Feature feature);
}