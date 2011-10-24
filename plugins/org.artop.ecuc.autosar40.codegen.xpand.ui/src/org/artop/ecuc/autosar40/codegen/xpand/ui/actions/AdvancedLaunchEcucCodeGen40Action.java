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

import java.util.ArrayList;
import java.util.List;

import org.artop.ecuc.autosar40.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.actions.LaunchEcucCodeGenAction;
import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.AdvancedM2TConfigurationWizard;
import org.eclipse.core.resources.IFile;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.workspace.loading.ModelLoadManager;
import org.eclipse.sphinx.platform.ui.util.ExtendedPlatformUI;

import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucModuleConfigurationValuesRefConditional;
import autosar40.ecucdescription.EcucValueCollection;

public class AdvancedLaunchEcucCodeGen40Action extends LaunchEcucCodeGenAction {

	protected List<GModuleConfiguration> ecucModulesConfigurationValues = new ArrayList<GModuleConfiguration>();

	public AdvancedLaunchEcucCodeGen40Action() {
		super(Messages.menuItem_launchEcucCodeGen + " (Advanced)");
	}

	protected AdvancedLaunchEcucCodeGen40Action(String text) {
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
				return !isProxy && !ecucModulesConfigurationValues.isEmpty();
			}
		}
		return false;
	}

	@Override
	public void run() {
		AdvancedM2TConfigurationWizard wizard = new AdvancedM2TConfigurationWizard(getSelectedModelObject(), getMetaModels());
		wizard.setM2TJobName(getM2TJobName());
		wizard.setWorkspaceResourceLoader(getWorkspaceResourceLoader());
		wizard.setOutletsPreference(getOutletsPreference());
		wizard.setDefaultOutlet(getDefaultOutlet());
		wizard.setResultMessageHandler(createResultMessageHandler());

		WizardDialog wizardDialog = new WizardDialog(ExtendedPlatformUI.getDisplay().getActiveShell(), wizard);
		wizardDialog.open();
	}

	@Override
	protected void clearCache() {
		ecucModulesConfigurationValues.clear();
		super.clearCache();
	}
}
