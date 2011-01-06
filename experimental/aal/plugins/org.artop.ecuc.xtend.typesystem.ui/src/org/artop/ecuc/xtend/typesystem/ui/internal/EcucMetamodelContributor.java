package org.artop.ecuc.xtend.typesystem.ui.internal;

import java.util.HashSet;
import java.util.Set;

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.workspace.preferences.IAutosarWorkspacePreferences;
import org.artop.ecl.emf.internal.messages.Messages;
import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.jobs.Job;
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

		// FIXME Check if we can get rid of this (because it creates a risk of deadlocks)
		// Wait until ModelDescriptorRegistry has been fully initialized
		// while (isInitializing()) {
		// try {
		// Thread.sleep(500l);
		// } catch (InterruptedException e) {
		// // Ignore exception
		// }
		// }

		// Retrieve ECU configuration metamodel (alias type system) behind given project
		Set<EcucMetaModel> metaModels = new HashSet<EcucMetaModel>();
		IProject project = javaProject.getProject();
		AutosarReleaseDescriptor autosarRelease = IAutosarWorkspacePreferences.AUTOSAR_RELEASE.get(project);
		for (IModelDescriptor autosarModel : ModelDescriptorRegistry.INSTANCE.getModels(project, autosarRelease)) {
			EcucMetaModel metaModel = getEcucMetaModel(autosarModel, typeSystem);
			if (metaModel != null) {
				metaModels.add(metaModel);
			}
		}

		return metaModels.toArray(new EcucMetaModel[metaModels.size()]);
	}

	// FIXME Move this to new ModelDescriptorRegistry#isInitialized() method and find an another solution to the
	// problem; waiting like this is likely to create deadlocks
	protected boolean isInitializing() {
		for (Job job : Job.getJobManager().find(null)) {
			if (Messages.job_initializingModelDescriptorRegistry.equals(job.getName())) {
				return true;
			}
		}
		return false;
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
