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
package org.artop.ecuc.autosar4x.dsl.values.scoping;

import org.eclipse.xtext.resource.IEObjectDescription;
import org.eclipse.xtext.scoping.IScope;
import org.eclipse.xtext.scoping.impl.AbstractScope;

/**
 * Scope that Delegates to another Scope
 *
 * @author Christian Dietrich
 */
public class DelegateScope extends AbstractScope {

	private IScope delegate;

	protected DelegateScope(IScope parent, IScope delegate) {
		super(parent, false);
		this.delegate = delegate;
	}

	@Override
	protected Iterable<IEObjectDescription> getAllLocalElements() {
		return delegate.getAllElements();
	}

}