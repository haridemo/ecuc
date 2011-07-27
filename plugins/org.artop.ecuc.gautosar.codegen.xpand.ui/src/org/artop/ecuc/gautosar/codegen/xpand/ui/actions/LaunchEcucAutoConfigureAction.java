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

import java.util.Collection;
import java.util.HashSet;

import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.resources.IFile;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.ui.util.ExtendedPlatformUI;
import org.eclipse.sphinx.xtendxpand.ui.actions.BasicM2MAction;
import org.eclipse.sphinx.xtendxpand.ui.wizards.M2MConfigurationWizard;
import org.eclipse.xtend.typesystem.MetaModel;

public class LaunchEcucAutoConfigureAction extends BasicM2MAction {

	public LaunchEcucAutoConfigureAction() {
		super(Messages.menuItem_launchAutoConfigure);
	}

	public LaunchEcucAutoConfigureAction(String text) {
		super(text);
	}

	/*
	 * @see org.eclipse.sphinx.xpand.ui.actions.BasicM2TAction#run()
	 */
	@Override
	public void run() {
		M2MConfigurationWizard wizard = new M2MConfigurationWizard(getSelectedModelObject(), getMetaModels());
		wizard.setM2MJobName(getM2MJobName());
		wizard.setWorkspaceResourceLoader(getWorkspaceResourceLoader());
		WizardDialog wizardDialog = new WizardDialog(ExtendedPlatformUI.getDisplay().getActiveShell(), wizard);
		wizardDialog.open();
	}

	/*
	 * @see org.eclipse.sphinx.xpand.ui.actions.BasicM2MAction#getMetaModels()
	 */
	@Override
	protected Collection<MetaModel> getMetaModels() {
		Collection<MetaModel> metaModels = new HashSet<MetaModel>();
		IFile selectedModelObjectFile = EcorePlatformUtil.getFile(getSelectedModelObject());
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(selectedModelObjectFile);
		if (moduleDefModelDescriptor != null) {
			metaModels.add((MetaModel) moduleDefModelDescriptor.getAdapter(EcucMetaModel.class));
			return metaModels;
		}
		return null;
	}
}
