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
package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.factory;

import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;

public class AddChildAccessor40FeaturesVisitor implements IEcucRichTypeHierarchyVisitor {

	public void visit(CompositeEcucRichType target) {
		for (final CompositeEcucRichType childType : target.getChildTypes()) {
			// Add child properties to current type
			target.addChildAccessorFeatures(childType);
		}
	}
}
