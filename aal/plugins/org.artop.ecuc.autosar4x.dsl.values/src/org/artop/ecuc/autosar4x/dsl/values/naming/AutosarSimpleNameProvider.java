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
package org.artop.ecuc.autosar4x.dsl.values.naming;

import javax.inject.Inject;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.naming.IQualifiedNameConverter;
import org.eclipse.xtext.naming.IQualifiedNameProvider;
import org.eclipse.xtext.naming.QualifiedName;
import org.eclipse.xtext.util.SimpleAttributeResolver;

/**
 * Provides simple names for AUTOSAR/Artop elements
 *
 * @author Christian Dietrich
 */
public class AutosarSimpleNameProvider extends IQualifiedNameProvider.AbstractImpl {

	private static final SimpleAttributeResolver<EObject, String> RESOLVER = SimpleAttributeResolver.newResolver(String.class, "shortName");

	@Inject
	private IQualifiedNameConverter qualifiedNameConverter;

	public QualifiedName getFullyQualifiedName(EObject obj) {
		final String name = RESOLVER.apply(obj);
		if (name == null) {
			return null;
		}
		return qualifiedNameConverter.toQualifiedName(name);
	}

}
