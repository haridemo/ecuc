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
package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory;

import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigReferenceType;

public class AddConfigReferenceValueAccessorFeaturesVisitor implements IEcucRichTypeHierarchyVisitor {

	public void visit(CompositeEcucRichType target) {
		if (target instanceof RichConfigReferenceType) {
			((RichConfigReferenceType) target).addValueAccessorFeatures();
		}
	}
}