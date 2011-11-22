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
package org.artop.ecuc.gautosar.codegen.xpand.ui.groups;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.artop.ecuc.gautosar.codegen.xpand.ui.dialogs.EditXpandEvaluationRequestDialog;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.providers.TemplateTableContentProvider;
import org.artop.ecuc.gautosar.codegen.xpand.ui.providers.TemplateTableLabelProvider;
import org.artop.ecuc.gautosar.codegen.xpand.ui.providers.XpandEvaluationRequestDescriptor;
import org.artop.ecuc.gautosar.codegen.xpand.ui.providers.XpandEvaluationRequestDescriptorProvider;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.layout.TableColumnLayout;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.ColumnWeightData;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.window.Window;
import org.eclipse.sphinx.platform.ui.groups.AbstractGroup;
import org.eclipse.sphinx.platform.ui.util.SWTUtil;
import org.eclipse.sphinx.xtendxpand.XpandEvaluationRequest;
import org.eclipse.sphinx.xtendxpand.util.XtendXpandUtil;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.xtend.expression.TypeSystem;

public class TemplateTableGroup extends AbstractGroup {

	/**
	 * The table presenting the outlets.
	 */
	private CheckboxTableViewer tableViewer;

	/**
	 * The select all button.
	 */
	private Button selectAllButton;

	/**
	 * The deselect all button.
	 */
	private Button deselectAllButton;

	/**
	 * The edit button.
	 */
	private Button editButton;

	/**
	 * The outlet provider.
	 */
	private XpandEvaluationRequestDescriptorProvider requestDescriptorProvider;

	/**
	 * The TypeSystem used to get the type of the target object.
	 */
	private TypeSystem typeSystem;

	private Listener listener = new Listener() {

		public void handleEvent(Event event) {
			if (event.widget == editButton) {
				edit();
			} else if (event.widget == selectAllButton) {
				selectAll();
				updateButtons();
			} else if (event.widget == deselectAllButton) {
				deselectAll();
				updateButtons();
			}
		}
	};

	public TemplateTableGroup(String groupName, XpandEvaluationRequestDescriptorProvider requestDescriptorProvider, TypeSystem typeSystem,
			IDialogSettings dialogSettings) {
		super(groupName, dialogSettings);
		this.requestDescriptorProvider = requestDescriptorProvider;
		this.typeSystem = typeSystem;
	}

	@Override
	protected void doCreateContent(Composite parent, int numColumns) {
		Assert.isNotNull(parent.getShell());

		parent.setLayout(new GridLayout(numColumns, false));

		GC gc = new GC(parent.getShell());
		gc.setFont(JFaceResources.getDialogFont());

		Composite tableComposite = new Composite(parent, SWT.NONE);
		GridData data = new GridData(GridData.FILL_BOTH);
		data.widthHint = 360;
		data.heightHint = convertHeightInCharsToPixels(10, gc);
		tableComposite.setLayoutData(data);

		TableColumnLayout columnLayout = new TableColumnLayout();
		tableComposite.setLayout(columnLayout);
		Table table = new Table(tableComposite, SWT.CHECK | SWT.BORDER | SWT.MULTI | SWT.FULL_SELECTION | SWT.H_SCROLL | SWT.V_SCROLL);
		table.setHeaderVisible(true);
		table.setLinesVisible(true);

		TableColumn moduleColumn = new TableColumn(table, SWT.NONE);
		moduleColumn.setText(Messages.label_moduleTableColumn);
		int minWidth = computeMinimumColumnWidth(gc, Messages.label_moduleTableColumn);
		columnLayout.setColumnData(moduleColumn, new ColumnWeightData(2, minWidth, true));

		TableColumn templateColumn = new TableColumn(table, SWT.NONE);
		templateColumn.setText(Messages.label_templatePathTableColumn);
		minWidth = computeMinimumColumnWidth(gc, Messages.label_templatePathTableColumn);
		columnLayout.setColumnData(templateColumn, new ColumnWeightData(4, minWidth, true));

		TableColumn defineBlockColumn = new TableColumn(table, SWT.NONE);
		defineBlockColumn.setText(Messages.label_defineBlockTableColumn);
		minWidth = computeMinimumColumnWidth(gc, Messages.label_defineBlockTableColumn);
		columnLayout.setColumnData(defineBlockColumn, new ColumnWeightData(2, minWidth, true));

		gc.dispose();

		tableViewer = new CheckboxTableViewer(table);
		tableViewer.setLabelProvider(new TemplateTableLabelProvider());
		tableViewer.setContentProvider(new TemplateTableContentProvider());
		tableViewer.setInput(requestDescriptorProvider);

		addTableViewerListener();
		addButtons(parent);
	}

	protected void addTableViewerListener() {
		tableViewer.addDoubleClickListener(new IDoubleClickListener() {
			public void doubleClick(DoubleClickEvent e) {
				edit();
			}
		});

		tableViewer.addSelectionChangedListener(new ISelectionChangedListener() {
			public void selectionChanged(SelectionChangedEvent e) {
				updateButtons();
			}
		});
	}

	/**
	 * Adds the add, edit and remove outlets buttons.
	 */
	protected void addButtons(Composite parent) {
		Composite buttonsComposite = new Composite(parent, SWT.NONE);
		buttonsComposite.setLayoutData(new GridData(GridData.VERTICAL_ALIGN_BEGINNING));
		GridLayout blayout = new GridLayout();
		blayout.marginHeight = 0;
		blayout.marginWidth = 0;
		buttonsComposite.setLayout(blayout);

		editButton = SWTUtil.createButton(buttonsComposite, Messages.label_editButton, SWT.PUSH);
		editButton.addListener(SWT.Selection, listener);

		selectAllButton = SWTUtil.createButton(buttonsComposite, Messages.label_selectAllButton, SWT.PUSH);
		selectAllButton.addListener(SWT.Selection, listener);

		deselectAllButton = SWTUtil.createButton(buttonsComposite, Messages.label_deselectAllButton, SWT.PUSH);
		deselectAllButton.addListener(SWT.Selection, listener);
		updateButtons();
	}

	public CheckboxTableViewer getTableViewer() {
		return tableViewer;
	}

	public void setEnabled(boolean enabled) {
		tableViewer.getTable().setEnabled(enabled);
	}

	public Composite getButtonsComposite() {
		if (selectAllButton != null) {
			return selectAllButton.getParent();
		}
		return null;
	}

	/**
	 * Updates the buttons.
	 */
	protected void updateButtons() {
		IStructuredSelection selection = (IStructuredSelection) tableViewer.getSelection();
		int selectionCount = selection.size();
		int itemCount = tableViewer.getTable().getItemCount();
		editButton.setEnabled(selectionCount == 1);
		selectAllButton.setEnabled(tableViewer.getCheckedElements().length < itemCount);
		deselectAllButton.setEnabled(tableViewer.getCheckedElements().length > 0);
	}

	protected void edit() {
		IStructuredSelection selection = (IStructuredSelection) tableViewer.getSelection();
		XpandEvaluationRequestDescriptor selectedRequestDescriptor = (XpandEvaluationRequestDescriptor) selection.getFirstElement();
		XpandEvaluationRequestDescriptor requestToEdit = new XpandEvaluationRequestDescriptor(selectedRequestDescriptor.getTargetObject(),
				selectedRequestDescriptor.getTemplateFile(), selectedRequestDescriptor.getDefineBlock());
		XpandEvaluationRequestDescriptor editedRequestDescriptor = editXpandEvaluationRequestDescriptor(requestToEdit);
		if (editedRequestDescriptor != null) {
			selectedRequestDescriptor.setTargetObject(editedRequestDescriptor.getTargetObject());
			selectedRequestDescriptor.setTemplateFile(editedRequestDescriptor.getTemplateFile());
			selectedRequestDescriptor.setDefineBlock(editedRequestDescriptor.getDefineBlock());
			tableViewer.refresh();
		}
	}

	protected void selectAll() {
		getTableViewer().setAllChecked(true);
	}

	protected void deselectAll() {
		getTableViewer().setAllChecked(false);

	}

	protected XpandEvaluationRequestDescriptor editXpandEvaluationRequestDescriptor(XpandEvaluationRequestDescriptor requestToEdit) {
		EditXpandEvaluationRequestDialog dialog = new EditXpandEvaluationRequestDialog(getTableViewer().getControl().getShell(), requestToEdit,
				typeSystem);
		if (dialog.open() == Window.OK) {
			return dialog.getXpandEvaluationRequestDescriptor();
		}
		return null;
	}

	protected int convertHeightInCharsToPixels(int chars, GC gc) {
		if (gc.getFontMetrics() == null) {
			return 0;
		}
		return Dialog.convertHeightInCharsToPixels(gc.getFontMetrics(), chars);
	}

	private int computeMinimumColumnWidth(GC gc, String string) {
		return gc.stringExtent(string).x + 10;
	}

	public Button getAddButton() {
		return selectAllButton;
	}

	public Button getEditButton() {
		return editButton;
	}

	public Button getRemoveButton() {
		return deselectAllButton;
	}

	public Collection<XpandEvaluationRequest> getXpandEvaluationRequests() {
		List<XpandEvaluationRequest> requests = new ArrayList<XpandEvaluationRequest>();
		Object[] checkedElements = getTableViewer().getCheckedElements();
		for (Object element : checkedElements) {
			XpandEvaluationRequestDescriptor requestDescriptor = (XpandEvaluationRequestDescriptor) element;
			String qualifiedName = XtendXpandUtil.getQualifiedName(requestDescriptor.getTemplateFile(), requestDescriptor.getDefineBlock());
			requests.add(new XpandEvaluationRequest(qualifiedName, requestDescriptor.getTargetObject()));
		}
		return requests;
	}
}
