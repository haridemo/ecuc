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
package org.artop.ecuc.gautosar.accessorgen.operations;

import gautosar.ggenericstructure.ginfrastructure.GARPackage;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.sphinx.platform.operations.IWorkspaceOperation;

public interface IGenerateFromAutosarOperation extends IWorkspaceOperation {

	// FIXME Add methods using model descriptor
	// + EMF resource
	void generate(GARPackage arPackage, IProject targetProject, IProgressMonitor monitor) throws CoreException, OperationCanceledException;
}