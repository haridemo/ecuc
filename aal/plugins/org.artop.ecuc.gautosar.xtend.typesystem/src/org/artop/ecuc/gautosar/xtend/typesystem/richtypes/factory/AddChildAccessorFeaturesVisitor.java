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
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;

public class AddChildAccessorFeaturesVisitor implements IEcucRichTypeHierarchyVisitor {

	public void visit(CompositeEcucRichType target) {
		for (final CompositeEcucRichType childType : target.getChildTypes()) {
			// Don't add child properties for choice container definitions
			if (childType instanceof RichChoiceContainerDefType) {
				continue;
			}

			// Is current type a choice container definition?
			if (target instanceof RichChoiceContainerDefType) {
				// Add child properties to parent type of current choice container definition
				target.getParentType().addChildAccessorFeatures(childType);
			} else {
				// Add child properties to current type
				target.addChildAccessorFeatures(childType);
			}
		}
	}
}
