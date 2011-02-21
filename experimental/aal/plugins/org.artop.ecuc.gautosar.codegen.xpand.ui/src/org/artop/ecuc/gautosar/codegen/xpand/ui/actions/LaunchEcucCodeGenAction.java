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
package org.artop.ecuc.gautosar.codegen.xpand.ui.actions;

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecl.emf.workspace.loading.ModelLoadManager;
import org.artop.ecl.platform.ui.util.ExtendedPlatformUI;
import org.artop.ecuc.codegen.xpand.output.ExtendedOutlet;
import org.artop.ecuc.codegen.xpand.preferences.IEcucCodeGenerationPreferences;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.EcucM2TConfigurationWizard;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
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
import org.eclipse.sphinx.xpand.ui.actions.BasicM2TAction;
import org.eclipse.xpand2.XpandUtil;
import org.eclipse.xpand2.output.Outlet;
import org.eclipse.xtend.typesystem.MetaModel;

public class LaunchEcucCodeGenAction extends BasicM2TAction {

	protected GModuleConfiguration moduleConfiguration;
	protected GModuleDef moduleDef;

	private ResourceSetListener resourceChangedListener = null;

	public LaunchEcucCodeGenAction() {
		super(Messages.menuItem_launchEcucCodeGen);
	}

	protected LaunchEcucCodeGenAction(String text) {
		super(text);
	}

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
				return moduleDef != null && !moduleDef.eIsProxy() && !getExecutionContextRequests().isEmpty();
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

	@Override
	protected EObject getSelectedModelObject() {
		return moduleConfiguration;
	}

	@Override
	protected MetaModel getMetaModel() {
		IFile moduleConfigurationFile = EcorePlatformUtil.getFile(moduleConfiguration);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleConfigurationFile);
		if (moduleDefModelDescriptor != null) {
			return (MetaModel) moduleDefModelDescriptor.getAdapter(EcucMetaModel.class);
		}
		return null;
	}

	@Override
	protected IFile getTemplateFile() {
		IFile moduleDefFile = EcorePlatformUtil.getFile(moduleDef);
		if (moduleDefFile != null) {
			IPath templatePath = moduleDefFile.getFullPath().removeFileExtension().addFileExtension(XpandUtil.TEMPLATE_EXTENSION);
			return ResourcesPlugin.getWorkspace().getRoot().getFile(templatePath);
		}
		return null;
	}

	@Override
	public void run() {
		EcucM2TConfigurationWizard wizard = new EcucM2TConfigurationWizard(getSelectedModelObject(), getMetaModel(), getScopingResourceLoader(),
				getDefaultOutletURI());
		WizardDialog wizardDialog = new WizardDialog(ExtendedPlatformUI.getDisplay().getActiveShell(), wizard);
		wizardDialog.open();
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