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
import java.util.Collection;
import java.util.List;

import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecl.emf.workspace.loading.ModelLoadManager;
import org.artop.ecl.platform.ui.util.ExtendedPlatformUI;
import org.artop.ecuc.autosar40.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.actions.LaunchEcucCodeGenAction;
import org.eclipse.core.resources.IFile;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.xpand.ExecutionContextRequest;
import org.eclipse.sphinx.xpand.jobs.BasicM2TJob;

import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucModuleConfigurationValuesRefConditional;
import autosar40.ecucdescription.EcucValueCollection;

public class LaunchEcucCodeGen40Action extends LaunchEcucCodeGenAction {

	protected List<GModuleConfiguration> ecucModulesConfigurationValues = new ArrayList<GModuleConfiguration>();

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

	@Override
	protected Collection<ExecutionContextRequest> getExecutionContextRequests() {
		List<ExecutionContextRequest> requests = new ArrayList<ExecutionContextRequest>();
		for (GModuleConfiguration moduleConf : ecucModulesConfigurationValues) {
			IFile templateFile = getTemplateFile();
			if (templateFile != null && templateFile.exists()) {
				String definitionName = getScopingResourceLoader().getDefinitionName(templateFile, getRootDefineName());
				requests.add(new ExecutionContextRequest(definitionName, moduleConf));
			}
		}
		return requests;
	}

	@Override
	public void run() {
		if (getDefinitionName() != null) {
			BasicM2TJob job = createM2TJob();
			// Show console and make sure that all system output produced during execution gets displayed there
			ExtendedPlatformUI.showSystemConsole();
			job.setMetaModel(getMetaModel());
			job.schedule();
			return;
		}
	}
}