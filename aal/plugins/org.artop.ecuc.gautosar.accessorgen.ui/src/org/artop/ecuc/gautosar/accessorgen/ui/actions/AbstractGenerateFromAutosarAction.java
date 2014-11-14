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
package org.artop.ecuc.gautosar.accessorgen.ui.actions;

import java.lang.reflect.InvocationTargetException;

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.ecuc.gautosar.accessorgen.ui.internal.Activator;
import org.eclipse.core.resources.IFile;
import org.eclipse.jface.dialogs.ProgressMonitorDialog;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.platform.operations.IWorkspaceOperation;
import org.eclipse.sphinx.platform.ui.operations.RunnableWithProgressAdapter;
import org.eclipse.sphinx.platform.ui.util.ExtendedPlatformUI;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.actions.BaseSelectionListenerAction;

public abstract class AbstractGenerateFromAutosarAction extends BaseSelectionListenerAction {

	protected IFile selectedAutosarFile;

	public AbstractGenerateFromAutosarAction(String text) {
		super(text);
	}

	/*
	 * @see
	 * org.eclipse.ui.actions.BaseSelectionListenerAction#updateSelection(org.eclipse.jface.viewers.IStructuredSelection
	 * )
	 */
	@Override
	public boolean updateSelection(IStructuredSelection selection) {
		// Check if selection contains precisely 1 AUTOSAR file
		selectedAutosarFile = null;
		if (selection.size() == 1) {
			Object selected = selection.getFirstElement();
			if (selected instanceof IFile) {
				IFile selectedFile = (IFile) selected;
				String fileExtension = selectedFile.getFileExtension();
				if (fileExtension != null && fileExtension.equals(AutosarReleaseDescriptor.ARXML_DEFAULT_FILE_EXTENSION)) {
					selectedAutosarFile = selectedFile;
				}
			}
		}
		return selectedAutosarFile != null;
	}

	/*
	 * @see org.eclipse.jface.action.Action#run()
	 */
	@Override
	public void run() {
		// Create appropriate generate from AUTOSAR operation
		IWorkspaceOperation operation = createGenerateFromAutosarOperation(selectedAutosarFile);

		// Run generated from AUTOSAR operation in a progress monitor dialog
		try {
			Shell shell = ExtendedPlatformUI.getActiveShell();
			ProgressMonitorDialog dialog = new ProgressMonitorDialog(shell);
			dialog.run(true, true, new RunnableWithProgressAdapter(operation));
		} catch (InterruptedException ex) {
			// Operation has been canceled by user, do nothing
		} catch (InvocationTargetException ex) {
			PlatformLogUtil.logAsError(Activator.getDefault(), ex);
		}
	}

	protected abstract IWorkspaceOperation createGenerateFromAutosarOperation(IFile autosarFile);
}
