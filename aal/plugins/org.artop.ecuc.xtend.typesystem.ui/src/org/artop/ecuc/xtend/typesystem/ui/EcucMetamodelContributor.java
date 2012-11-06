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
package org.artop.ecuc.xtend.typesystem.ui;

import java.util.HashSet;
import java.util.Set;

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.workspace.preferences.IAutosarWorkspacePreferences;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.IEcucMetaModelFactory;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
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
		// Ecuc Metamodel Contributor can be activated on non-AUTOSAR project, the below if is to prevent a NPE in this
		// case, because the returned release is null.
		if (autosarRelease != null) {
			for (IModelDescriptor autosarModel : ModelDescriptorRegistry.INSTANCE.getModels(project, autosarRelease)) {
				EcucMetaModel metaModel = getEcucMetaModel(autosarModel, typeSystem);
				if (metaModel != null) {
					metaModels.add(metaModel);
				}
			}
			// Add an EcucMetaModel even if there is no ModelDescriptor for the project (see
			// https://www.artop.org/bugs/show_bug.cgi?id=1509)
			if (metaModels.size() == 0) {
				IEcucMetaModelFactory ecucMetaModelFactory = (IEcucMetaModelFactory) autosarRelease.getAdapter(IEcucMetaModelFactory.class);
				if (ecucMetaModelFactory != null) {
					metaModels.add(ecucMetaModelFactory.createEcucMetaModel(new EcucContext()));
				} else {
					metaModels.add(new EcucMetaModel(new EcucContext()));
				}
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
