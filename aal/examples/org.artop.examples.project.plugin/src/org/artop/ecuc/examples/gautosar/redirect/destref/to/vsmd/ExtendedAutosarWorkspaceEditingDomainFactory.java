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
 *     See4sys - Initial API and implementation
 *     itemis - Switched Artop Technology Demonstrator from ExtendedWorkspaceEditingDomainFactory to ExtendedDiagramEditingDomainFactory
 *              so as to provide consistent setup for exemplary graphical editors for AUTOSAR based on GMF
 *
 * </copyright>
 */
package org.artop.ecuc.examples.gautosar.redirect.destref.to.vsmd;

import org.artop.aal.workspace.domain.AbstractAutosarWorkspaceEditingDomainFactory;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.sphinx.emf.workspace.domain.factory.IExtendedTransactionalEditingDomainFactory;
import org.eclipse.sphinx.gmf.workspace.domain.factory.ExtendedDiagramEditingDomainFactory;

/**
 * Implementation of {@link IExtendedTransactionalEditingDomainFactory workspace editing domain factory} for AUTOSAR
 * that delegates editing domain creation to {@link ExtendedDiagramEditingDomainFactory} provided by Sphinx.
 */
public class ExtendedAutosarWorkspaceEditingDomainFactory extends AbstractAutosarWorkspaceEditingDomainFactory {

	/**
	 * Default constructor.
	 */
	public ExtendedAutosarWorkspaceEditingDomainFactory() {
		// Use an instance of ExtendedDiagramEditingDomainFactory as IExtendedTransactionalEditingDomainFactory
		// delegate
		super(new ExtendedDiagramEditingDomainFactory());
	}

	@Override
	protected ResourceSet createResourceSet() {
		return new ExtendedAutosarResourceSetImpl();
	}
}
