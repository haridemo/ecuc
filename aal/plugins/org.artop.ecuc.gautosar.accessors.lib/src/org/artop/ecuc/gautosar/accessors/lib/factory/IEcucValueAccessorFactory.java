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
package org.artop.ecuc.gautosar.accessors.lib.factory;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.sphinx.emf.util.IWrapper;

public interface IEcucValueAccessorFactory {

	<E extends IWrapper<?>> E createEcucValueAccessor(Class<E> wrapperType, GIdentifiable identifiable) throws CoreException;

	IWrapper<?> createEcucValueAccessor(GIdentifiable identifiable) throws CoreException;
}
