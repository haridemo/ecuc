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
package org.artop.ecuc.gautosar.codegen.xpand.ui.dialogs;

import org.artop.ecuc.gautosar.codegen.xpand.ui.groups.CheckFilesGroup;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.Activator;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.providers.XpandAndCheckEvaluationRequestDescriptor;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Path;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.jface.dialogs.StatusDialog;
import org.eclipse.sphinx.platform.ui.fields.IField;
import org.eclipse.sphinx.platform.ui.fields.IFieldListener;
import org.eclipse.sphinx.xtendxpand.ui.groups.TemplateGroup;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.xtend.expression.TypeSystem;

public class EditXpandAndCheckEvaluationRequestDescriptorDialog extends StatusDialog {

	private XpandAndCheckEvaluationRequestDescriptor requestToEdit;
	private TypeSystem typeSystem;

	public EditXpandAndCheckEvaluationRequestDescriptorDialog(Shell parent, XpandAndCheckEvaluationRequestDescriptor requestToEdit,
			TypeSystem typeSystem) {
		super(parent);
		setTitle(Messages.title_editXpandEvaluationRequestDialog);
		this.requestToEdit = requestToEdit;
		this.typeSystem = typeSystem;
	}

	@Override
	protected Control createDialogArea(Composite parent) {
		Control composite = super.createDialogArea(parent);
		final TemplateGroup templateGroup = new TemplateGroup(Messages.label_xpandTemplateGroupName, (EObject) requestToEdit.getTargetObject(),
				typeSystem, Activator.getPlugin().getDialogSettings());
		templateGroup.createContent(parent, 3);
		templateGroup.getTemplateFileField().setText(
				requestToEdit.getTemplateFile() != null ? requestToEdit.getTemplateFile().getFullPath().makeRelative().toString() : ""); //$NON-NLS-1$
		templateGroup.updateDefinitionFieldItems(requestToEdit.getTemplateFile());
		String[] items = templateGroup.getDefinitionField().getItems();
		for (String item : items) {
			if (item.equals(requestToEdit.getDefineBlock())) {
				templateGroup.getDefinitionField().selectItem(item);
			}
		}
		templateGroup.getTemplateFileField().getTextControl().addListener(SWT.Modify, new Listener() {

			public void handleEvent(Event event) {
				// requestToEdit.setTemplateFile(templateGroup.getFile(templateGroup.getTemplateFileField().getText()));
				requestToEdit.setTemplateFile(getFile(templateGroup.getTemplateFileField().getText()));
			}
		});
		templateGroup.getDefinitionField().addFieldListener(new IFieldListener() {

			public void dialogFieldChanged(IField field) {
				requestToEdit.setDefineBlock(templateGroup.getSelectedDefinitionFieldItem());
			}
		});

		CheckFilesGroup checkFilesGroup = new CheckFilesGroup(Messages.label_checkFilesGroupName, requestToEdit, Activator.getPlugin()
				.getDialogSettings());
		checkFilesGroup.createContent(parent, 3);
		return composite;
	}

	// TODO (aakar) Delete this and use TemplateGroup#getFile in newer Sphinx release
	protected IFile getFile(String fullPath) {
		if (fullPath != null && fullPath.length() > 0) {
			Path path = new Path(fullPath);
			if (path.segmentCount() > 1) {
				return ResourcesPlugin.getWorkspace().getRoot().getFile(path);
			}
		}
		return null;
	}

	public XpandAndCheckEvaluationRequestDescriptor getXpandAndCheckEvaluationRequestDescriptor() {
		return requestToEdit;
	}
}
