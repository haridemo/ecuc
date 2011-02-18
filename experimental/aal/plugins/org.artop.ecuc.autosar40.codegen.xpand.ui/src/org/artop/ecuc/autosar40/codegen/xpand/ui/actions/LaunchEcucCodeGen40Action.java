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
package org.artop.ecuc.autosar40.codegen.xpand.ui.actions;

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecl.emf.workspace.loading.ModelLoadManager;
import org.artop.ecuc.autosar40.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.codegen.xpand.output.ExtendedOutlet;
import org.artop.ecuc.codegen.xpand.preferences.IEcucCodeGenerationPreferences;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListener;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.xpand.ExecutionContextRequest;
import org.eclipse.sphinx.xpand.ui.actions.AbstractM2TAction;
import org.eclipse.xpand2.XpandUtil;
import org.eclipse.xpand2.output.Outlet;
import org.eclipse.xtend.typesystem.MetaModel;

import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucModuleConfigurationValuesRefConditional;
import autosar40.ecucdescription.EcucValueCollection;

public class LaunchEcucCodeGen40Action extends AbstractM2TAction {

	public static final String DEFAULT_ROOT_DEFINE_NAME = "main"; //$NON-NLS-1$
	public static final String UNKNOWN_TEMPLATE_NAME = "unknown"; //$NON-NLS-1$

	protected List<GModuleConfiguration> ecucModulesConfigurationValues = new ArrayList<GModuleConfiguration>();

	private ResourceSetListener resourceChangedListener = null;

	public LaunchEcucCodeGen40Action() {
		super(Messages.menuItem_launchEcucCodeGen);
	}

	protected LaunchEcucCodeGen40Action(String text) {
		super(text);
	}

	@Override
	protected boolean updateSelection(IStructuredSelection selection) {
		if (selection.size() == 1) {
			Object selected = selection.getFirstElement();
			if (selected instanceof EcucValueCollection) {
				EcucValueCollection ecucValueCollection = (EcucValueCollection) selected;
				boolean isProxy = false;
				EList<EcucModuleConfigurationValuesRefConditional> ecucValues = ecucValueCollection.getEcucValues();
				for (EcucModuleConfigurationValuesRefConditional ref : ecucValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = ref.getEcucModuleConfigurationValues();
					if (ecucModuleConfigurationValues != null) {
						if (ecucModuleConfigurationValues.eIsProxy() || ecucModuleConfigurationValues.getDefinition() != null
								&& ecucModuleConfigurationValues.getDefinition().eIsProxy()) {
							isProxy = true;
							// break;
						} else {
							ecucModulesConfigurationValues.add(ecucModuleConfigurationValues);
						}
					}
				}
				if (isProxy) {
					// Trigger asynchronous loading of underlying AUTOSAR model including referenced AUTOSAR models in
					// BSW Platform projects (i.e., AUTOSAR projects with Xpand/Xtend nature) to make sure that
					// referenced module definition has a chance to get resolved
					IFile moduleConfigurationFile = EcorePlatformUtil.getFile(ecucValueCollection);
					IModelDescriptor moduleConfigurationModel = ModelDescriptorRegistry.INSTANCE.getModel(moduleConfigurationFile);
					ModelLoadManager.INSTANCE.loadModel(moduleConfigurationModel, true, true, null);

					// Install resource changed listener which updates this action's selection state once the loading
					// has been finished
					TransactionalEditingDomain editingDomain = TransactionUtil.getEditingDomain(ecucValueCollection);
					if (editingDomain != null) {
						if (resourceChangedListener == null) {
							resourceChangedListener = createResourceChangedListener();
						}
						editingDomain.addResourceSetListener(resourceChangedListener);
					}
				} else {
					// Uninstall resource changed listener in case there is any
					if (resourceChangedListener != null) {
						TransactionalEditingDomain editingDomain = TransactionUtil.getEditingDomain(ecucValueCollection);
						if (editingDomain != null) {
							editingDomain.removeResourceSetListener(resourceChangedListener);
							resourceChangedListener = null;
						}
					}
				}
				return !isProxy && !ecucModulesConfigurationValues.isEmpty() && !getExecutionContextRequests().isEmpty();
			}
		}
		return false;
	}

	@Override
	protected void clearCache() {
		ecucModulesConfigurationValues.clear();
		super.clearCache();
	}

	/**
	 * Creates a ResourceSetListener that detects (re-)loaded resources and updates this action's selection.
	 */
	protected ResourceSetListener createResourceChangedListener() {
		return new ResourceSetListenerImpl(NotificationFilter
				.createFeatureFilter(EcorePackage.eINSTANCE.getEResource(), Resource.RESOURCE__IS_LOADED).or(
						NotificationFilter.createFeatureFilter(EcorePackage.eINSTANCE.getEResourceSet(), ResourceSet.RESOURCE_SET__RESOURCES))) {
			@Override
			public void resourceSetChanged(ResourceSetChangeEvent event) {
				// Update this action's selection state
				selectionChanged(getStructuredSelection());
			}

			@Override
			public boolean isPostcommitOnly() {
				return true;
			}
		};
	}

	@Override
	protected MetaModel getMetaModel() {
		IFile moduleConfigurationFile = EcorePlatformUtil.getFile(getSelectedModelObject());
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleConfigurationFile);
		if (moduleDefModelDescriptor != null) {
			return (MetaModel) moduleDefModelDescriptor.getAdapter(EcucMetaModel.class);
		}
		return null;
	}

	@Override
	protected Collection<ExecutionContextRequest> getExecutionContextRequests() {
		List<ExecutionContextRequest> requests = new ArrayList<ExecutionContextRequest>();
		for (GModuleConfiguration moduleConf : ecucModulesConfigurationValues) {
			IFile templateFile = getTemplateFile(moduleConf.gGetDefinition());
			if (templateFile != null && templateFile.exists()) {
				String qualifiedTemplateName = getScopingResourceLoader().getQualifiedTemplateName(templateFile, getRootDefineName());
				requests.add(new ExecutionContextRequest(qualifiedTemplateName, moduleConf));
			}
		}
		return requests;
	}

	@Override
	protected String getQualifiedTemplateName() {
		return UNKNOWN_TEMPLATE_NAME;
	}

	protected IFile getTemplateFile(GModuleDef moduleDef) {
		IFile moduleDefFile = EcorePlatformUtil.getFile(moduleDef);
		if (moduleDefFile != null) {
			IPath templatePath = moduleDefFile.getFullPath().removeFileExtension().addFileExtension(XpandUtil.TEMPLATE_EXTENSION);
			return ResourcesPlugin.getWorkspace().getRoot().getFile(templatePath);
		}
		return null;
	}

	protected String getRootDefineName() {
		return DEFAULT_ROOT_DEFINE_NAME;
	}

	@Override
	public void run() {
		// if (!existsTemplateFile()) {
		// EcucM2TConfigurationWizard wizard = new EcucM2TConfigurationWizard(getSelectedModelObject(), getMetaModel(),
		// getScopingResourceLoader(),
		// getDefaultOutletURI());
		// WizardDialog wizardDialog = new WizardDialog(ExtendedPlatformUI.getDisplay().getActiveShell(), wizard);
		// wizardDialog.open();
		// return;
		// }
		super.run();
	}

	@Override
	protected Collection<Outlet> getOutlets() {
		IFile file = EcorePlatformUtil.getFile(getSelectedModelObject());
		if (file != null && file.getProject() != null) {
			List<Outlet> result = new ArrayList<Outlet>();
			Collection<ExtendedOutlet> outlets = IEcucCodeGenerationPreferences.OUTLETS.get(file.getProject());
			for (ExtendedOutlet outlet : outlets) {
				result.add(outlet);
			}
			return result;
		}
		return super.getOutlets();
	}
}
