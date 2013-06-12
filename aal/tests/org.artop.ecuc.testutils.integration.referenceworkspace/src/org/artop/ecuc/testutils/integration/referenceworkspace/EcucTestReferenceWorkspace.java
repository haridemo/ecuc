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
package org.artop.ecuc.testutils.integration.referenceworkspace;

import static org.artop.ecuc.testutils.integration.referenceworkspace.EcucTestReferenceWorkspaceDescriptor.XPAND_AUTOSAR_40_PROJECT_NAME;

import org.artop.aal.testutils.integration.referenceworkspace.AbstractAutosarTestReferenceWorkspace;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;

import autosar40.util.Autosar40ReleaseDescriptor;

/**
 * 
 */
public class EcucTestReferenceWorkspace extends AbstractAutosarTestReferenceWorkspace {

	/* ----- Projects ----- */
	public IProject xPandAutosar40Project;

	/* ----- EditingDomains ----- */
	public TransactionalEditingDomain editingDomain40;

	public EcucTestReferenceWorkspace(String... referenceProjectNames) {
		super(new EcucTestReferenceWorkspaceDescriptor(referenceProjectNames));
	}

	@Override
	protected void initContentAccessors() {
		initReferenceProjectAccessors();
		initReferenceEditingDomainAccessors();
	}

	protected void initReferenceProjectAccessors() {
		xPandAutosar40Project = getDescriptor().getReferenceProject(XPAND_AUTOSAR_40_PROJECT_NAME);
	}

	protected void initReferenceEditingDomainAccessors() {
		editingDomain40 = WorkspaceEditingDomainUtil.getEditingDomain(ResourcesPlugin.getWorkspace().getRoot(), Autosar40ReleaseDescriptor.INSTANCE);
	}

}