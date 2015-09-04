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
package org.artop.ecuc.autosar4x.dsl.paramdef.ui.wizards;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.dialogs.WizardNewFileCreationPage;
import org.eclipse.ui.ide.IDE;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.ui.wizards.newresource.BasicNewResourceWizard;
import org.eclipse.xtext.resource.FileExtensionProvider;

public class NewFileWizard extends BasicNewResourceWizard {

	public static final String WIZARD_ID = "org.eclipse.emf.mwe2.language.ui.wizard.NewMwe2FileWizard"; //$NON-NLS-1$

	private WizardNewFileCreationPage mainPage;

	private static final Logger logger = Logger.getLogger(NewFileWizard.class);

	@Inject
	private FileExtensionProvider extensionProvider;

	@Inject
	private IWorkspace workspace;

	@Override
	public void addPages() {
		super.addPages();
		mainPage = new WizardNewFileCreationPage("newFilePage1", getSelection());
		mainPage.setTitle("New Ecuc Values File");
		mainPage.setDescription("Creates a new Ecuc Values File");
		mainPage.setFileExtension(extensionProvider.getPrimaryFileExtension());
		addPage(mainPage);
	}

	@Override
	public void init(IWorkbench workbench, IStructuredSelection currentSelection) {
		super.init(workbench, currentSelection);
		setWindowTitle("New Ecuc Values");
		setNeedsProgressMonitor(true);
	}

	@Override
	protected void initializeDefaultPageImageDescriptor() {
		ImageDescriptor descriptor = AbstractUIPlugin.imageDescriptorFromPlugin("org.eclipse.ui.ide", //$NON-NLS-1$
				"$nl$/icons/full/wizban/newfile_wiz.png"); //$NON-NLS-1$
		setDefaultPageImageDescriptor(descriptor);
	}

	@Override
	public boolean performFinish() {
		IFile file = mainPage.createNewFile();
		if (file == null) {
			return false;
		}

		selectAndReveal(file);

		// Open editor on new file. Cannot use the URIEditorOpener since the file was not built yet.
		IWorkbenchWindow dw = getWorkbench().getActiveWorkbenchWindow();
		try {
			if (dw != null) {
				IWorkbenchPage page = dw.getActivePage();
				if (page != null) {
					IDE.openEditor(page, file, true);
				}
			}
		} catch (PartInitException e) {
			logger.error(e.getMessage(), e);
		}

		return true;
	}
}
