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
package org.artop.ecuc.xtend.typesystem.ui.internal;

import java.util.HashSet;
import java.util.Set;

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.workspace.preferences.IAutosarWorkspacePreferences;
import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.xtend.expression.TypeSystem;
import org.eclipse.xtend.shared.ui.MetamodelContributor;
import org.eclipse.xtend.typesystem.MetaModel;

public class EcucMetamodelContributor implements MetamodelContributor {

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.xtend.shared.ui.MetamodelContributor#getMetamodels(org.eclipse.jdt.core.IJavaProject,
	 * org.eclipse.xtend.expression.TypeSystem)
	 */
	public MetaModel[] getMetamodels(IJavaProject javaProject, TypeSystem typeSystem) {
		Assert.isNotNull(javaProject);

		// Retrieve ECU configuration metamodel (alias type system) behind given project
		Set<EcucMetaModel> metaModels = new HashSet<EcucMetaModel>();
		final IProject project = javaProject.getProject();
		AutosarReleaseDescriptor autosarRelease = IAutosarWorkspacePreferences.AUTOSAR_RELEASE.get(project);
		for (IModelDescriptor autosarModel : ModelDescriptorRegistry.INSTANCE.getModels(project, autosarRelease)) {
			EcucMetaModel metaModel = getEcucMetaModel(autosarModel, typeSystem);
			if (metaModel != null) {
				metaModels.add(metaModel);
			}
		}

		return metaModels.toArray(new EcucMetaModel[metaModels.size()]);
	}

	protected EcucMetaModel getEcucMetaModel(IModelDescriptor autosarModel, TypeSystem typeSystem) {
		EcucMetaModel metaModel = (EcucMetaModel) Platform.getAdapterManager().loadAdapter(autosarModel, EcucMetaModel.class.getName());
		if (metaModel != null) {
			metaModel.setTypeSystem(typeSystem);
			return metaModel;
		}
		return null;
	}
}