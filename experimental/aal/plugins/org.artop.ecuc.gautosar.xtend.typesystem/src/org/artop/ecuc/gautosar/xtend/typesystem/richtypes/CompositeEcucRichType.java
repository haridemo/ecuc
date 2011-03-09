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
package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import java.util.List;

import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.emf.ecore.EClass;

/**
 * this is only a marker interface to better support building of the type hierarchy.
 */
public interface CompositeEcucRichType extends EcucRichType {

	void addChildType(CompositeEcucRichType childType);

	List<CompositeEcucRichType> getChildTypes();

	CompositeEcucRichType getParentType();

	void setParentType(CompositeEcucRichType parentType);

	void addChildAccessorFeatures(CompositeEcucRichType childType);

	void addParentAccessorFeatures(CompositeEcucRichType parentType);

	void accept(IEcucRichTypeHierarchyVisitor visitor);

	EClass getEcucValueType();
}
