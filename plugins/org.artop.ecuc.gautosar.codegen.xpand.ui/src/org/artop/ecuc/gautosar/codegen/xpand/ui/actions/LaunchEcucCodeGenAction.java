/**
 * <copyright>
 * 
 * Copyright (c) See4sys, itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 *     itemis - Adapted to changes in Sphinx
 * 
 * </copyright>
 */
package org.artop.ecuc.gautosar.codegen.xpand.ui.actions;

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;

import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.IOutletsPreferenceConstants;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.emf.ecore.EObject;
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
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.mwe.IXtendXpandConstants;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.workspace.loading.ModelLoadManager;
import org.eclipse.sphinx.platform.ui.util.ExtendedPlatformUI;
import org.eclipse.sphinx.xtendxpand.preferences.OutletsPreference;
import org.eclipse.sphinx.xtendxpand.ui.actions.BasicM2TAction;
import org.eclipse.sphinx.xtendxpand.ui.wizards.M2TConfigurationWizard;

public class LaunchEcucCodeGenAction extends BasicM2TAction {

	protected GModuleConfiguration moduleConfiguration;
	protected GModuleDef moduleDef;

	protected ResourceSetListener resourceChangedListener = null;

	public LaunchEcucCodeGenAction() {
		super(Messages.menuItem_launchEcucCodeGen);
	}

	public LaunchEcucCodeGenAction(String text) {
		super(text);
	}

	/*
	 * @see
	 * org.eclipse.sphinx.xpand.ui.actions.BasicM2TAction#updateSelection(org.eclipse.jface.viewers.IStructuredSelection
	 * )
	 */
	@Override
	protected boolean updateSelection(IStructuredSelection selection) {
		if (selection.size() == 1) {
			Object selected = selection.getFirstElement();
			if (selected instanceof GModuleConfiguration) {
				// Retrieve module configuration behind selection as well as module definition which it references
				moduleConfiguration = (GModuleConfiguration) selected;
				moduleDef = moduleConfiguration.gGetDefinition();

				// Referenced module definition not available? (this can be the case when the AUTOSAR model behind the
				// selected element has not been fully loaded yet or the referenced module definition is really missing)
				if (moduleDef != null) {
					if (moduleDef.eIsProxy()) {
						// Trigger asynchronous loading of underlying AUTOSAR model including referenced AUTOSAR models
						// in BSW Platform projects (i.e., AUTOSAR projects with Xpand/Xtend nature) to make sure that
						// referenced module definition has a chance to get resolved
						IFile moduleConfigurationFile = EcorePlatformUtil.getFile(moduleConfiguration);
						IModelDescriptor moduleConfigurationModel = ModelDescriptorRegistry.INSTANCE.getModel(moduleConfigurationFile);
						ModelLoadManager.INSTANCE.loadModel(moduleConfigurationModel, true, true, null);

						// Install resource changed listener which updates this action's selection state once the
						// loading has been finished
						TransactionalEditingDomain editingDomain = TransactionUtil.getEditingDomain(moduleConfiguration);
						if (editingDomain != null) {
							if (resourceChangedListener == null) {
								resourceChangedListener = createResourceChangedListener();
							}
							editingDomain.addResourceSetListener(resourceChangedListener);
						}
					} else {
						// Uninstall resource changed listener in case there is any
						if (resourceChangedListener != null) {
							TransactionalEditingDomain editingDomain = TransactionUtil.getEditingDomain(moduleConfiguration);
							if (editingDomain != null) {
								editingDomain.removeResourceSetListener(resourceChangedListener);
								resourceChangedListener = null;
							}
						}
					}
				}
				return moduleDef != null && !moduleDef.eIsProxy();
			}
		}
		return false;
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

	/*
	 * @see org.eclipse.sphinx.xpand.ui.actions.BasicM2TAction#run()
	 */
	@Override
	public void run() {
		M2TConfigurationWizard wizard = new M2TConfigurationWizard(getSelectedModelObject(), getMetaModels());
		wizard.setM2TJobName(getM2TJobName());
		wizard.setWorkspaceResourceLoader(getWorkspaceResourceLoader());
		wizard.setOutletsPreference(getOutletsPreference());
		wizard.setDefaultOutlet(getDefaultOutlet());
		wizard.setResultMessageHandler(createResultMessageHandler());

		WizardDialog wizardDialog = new WizardDialog(ExtendedPlatformUI.getDisplay().getActiveShell(), wizard);
		wizardDialog.open();
	}

	/*
	 * @see org.eclipse.sphinx.xpand.ui.actions.BasicM2TAction#getTemplateFile()
	 */
	@Override
	protected IFile getTemplateFile(EObject modelObject) {
		if (modelObject instanceof GModuleConfiguration) {
			IFile moduleDefFile = EcorePlatformUtil.getFile(((GModuleConfiguration) modelObject).gGetDefinition());
			if (moduleDefFile != null) {
				IPath templatePath = moduleDefFile.getFullPath().removeFileExtension().addFileExtension(IXtendXpandConstants.TEMPLATE_EXTENSION);
				return ResourcesPlugin.getWorkspace().getRoot().getFile(templatePath);
			}
		}
		return null;
	}

	/*
	 * @see org.eclipse.sphinx.xpand.ui.actions.BasicM2TAction#getOutletsPreference()
	 */
	@Override
	protected OutletsPreference getOutletsPreference() {
		return IOutletsPreferenceConstants.ECUC_OUTLETS_PREFERENCE;
	}
}
