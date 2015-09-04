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
package org.artop.ecuc.autosar4x.dsl.paramdef.generator;

import java.util.List;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Path;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.resource.ScopingResourceSet;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.sphinx.emf.workspace.loading.ModelLoadManager;

/**
 * Helper Class to Access Sphinx Models based on an EMF (Xtext) Resource
 * 
 */
public class SphinxHelper {

	public static List<Resource> getSphinxResourceSet(URI ctx,
			IMetaModelDescriptor descriptor) {
		TransactionalEditingDomain editingDomain = getSphinxEditingDomain(ctx,
				descriptor);
		ResourceSet resourceSet = editingDomain.getResourceSet();
		if (resourceSet instanceof ScopingResourceSet) {
			return ((ScopingResourceSet) resourceSet)
					.getResourcesInModel(getProject(ctx));
		}
		return resourceSet.getResources();

	}

	public static TransactionalEditingDomain getSphinxEditingDomain(URI ctx,
			IMetaModelDescriptor descriptor) {
		IProject project = getProject(ctx);
		ModelLoadManager.INSTANCE.loadProject(project, true, descriptor, false,
				null);
		TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil
				.getEditingDomain(project, descriptor);
		return editingDomain;
	}

	private static IProject getProject(URI ctx) {
		IFile file = getFile(ctx);
		IProject project = file.getProject();
		return project;
	}

	private static IFile getFile(URI ctx) {
		IWorkspace workspace = ResourcesPlugin.getWorkspace();
		IFile file = workspace.getRoot().getFile(
				new Path(ctx.toPlatformString(true)));
		return file;
	}

}
