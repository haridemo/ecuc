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
package org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace;

import static org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace.EcucValueAccessorsTestReferenceWorkspaceDescriptor.AUTOSAR_4X_PROJECT_NAME;

import org.artop.aal.testutils.integration.referenceworkspace.AbstractAutosarTestReferenceWorkspace;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;

import autosar40.util.Autosar40ReleaseDescriptor;

/**
 * ECUC Value Accessors Test Reference Workspace
 */
public class EcucValueAccessorsTestReferenceWorkspace extends AbstractAutosarTestReferenceWorkspace {

	/* ----- Projects ----- */
	public IProject autosar4xProject;

	/* ----- EditingDomains ----- */
	public TransactionalEditingDomain editingDomain4x;

	public EcucValueAccessorsTestReferenceWorkspace(String... referenceProjectNames) {
		super(new EcucValueAccessorsTestReferenceWorkspaceDescriptor(referenceProjectNames));
	}

	@Override
	protected void initContentAccessors() {
		initReferenceProjectAccessors();
		initReferenceEditingDomainAccessors();
	}

	protected void initReferenceProjectAccessors() {
		autosar4xProject = getDescriptor().getReferenceProject(AUTOSAR_4X_PROJECT_NAME);
	}

	protected void initReferenceEditingDomainAccessors() {
		editingDomain4x = WorkspaceEditingDomainUtil.getEditingDomain(ResourcesPlugin.getWorkspace().getRoot(), Autosar40ReleaseDescriptor.INSTANCE);
	}
}