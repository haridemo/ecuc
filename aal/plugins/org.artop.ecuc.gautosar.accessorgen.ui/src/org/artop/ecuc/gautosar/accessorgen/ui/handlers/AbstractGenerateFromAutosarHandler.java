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
package org.artop.ecuc.gautosar.accessorgen.ui.handlers;

import java.lang.reflect.InvocationTargetException;

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.resources.IFile;
import org.eclipse.jface.dialogs.ProgressMonitorDialog;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.platform.operations.IWorkspaceOperation;
import org.eclipse.sphinx.platform.ui.operations.RunnableWithProgressAdapter;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.handlers.HandlerUtil;

public abstract class AbstractGenerateFromAutosarHandler extends AbstractHandler {

	/*
	 * @see org.eclipse.core.commands.AbstractHandler#execute(org.eclipse.core.commands.ExecutionEvent)
	 */
	@Override
	public Object execute(ExecutionEvent event) throws ExecutionException {
		// Retrieve selected AUTOSAR file
		ISelection selection = HandlerUtil.getActiveMenuSelection(event);
		IFile autosarFile = getAutosarFile(selection);
		if (autosarFile == null) {
			throw new ExecutionException("No AUTOSAR file selected"); //$NON-NLS-1$
		}

		// Create appropriate generate from AUTOSAR operation
		IWorkspaceOperation operation = createGenerateFromAutosarOperation(autosarFile);

		// Run generated from AUTOSAR operation in a progress monitor dialog
		try {
			Shell shell = HandlerUtil.getActiveShell(event);
			ProgressMonitorDialog dialog = new ProgressMonitorDialog(shell);
			dialog.run(true, true, new RunnableWithProgressAdapter(operation));
		} catch (InterruptedException ex) {
			// Operation has been canceled by user, do nothing
		} catch (InvocationTargetException ex) {
			throw new ExecutionException(ex.getMessage(), ex);
		}

		return null;
	}

	protected IFile getAutosarFile(ISelection selection) {
		if (selection instanceof IStructuredSelection) {
			IStructuredSelection structuredSelection = (IStructuredSelection) selection;
			if (structuredSelection.size() == 1) {
				Object selected = structuredSelection.getFirstElement();
				if (selected instanceof IFile) {
					IFile selectedFile = (IFile) selected;
					String fileExtension = selectedFile.getFileExtension();
					if (fileExtension != null && fileExtension.equals(AutosarReleaseDescriptor.ARXML_DEFAULT_FILE_EXTENSION)) {
						return selectedFile;
					}
				}
			}
		}
		return null;
	}

	protected abstract IWorkspaceOperation createGenerateFromAutosarOperation(IFile ecoreFile);
}
