package org.artop.ecuc.codegen.xpand.ui;

import org.artop.ecuc.codegen.xpand.ui.providers.OutletTableContentProvider;
import org.artop.ecuc.codegen.xpand.ui.providers.OutletTableLabelProvider;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.layout.TableColumnLayout;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.ColumnWeightData;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;

public class OutletsBlock {

	private TableViewer fTableViewer;

	public void createControl(Composite parent) {

		Assert.isNotNull(parent.getShell(), "The shell of the composite is null !");
		GC gc = new GC(parent.getShell());
		gc.setFont(JFaceResources.getDialogFont());

		Composite tableComposite = new Composite(parent, SWT.NONE);
		GridData data = new GridData(GridData.FILL_BOTH);
		data.widthHint = 360;
		data.heightHint = convertHeightInCharsToPixels(10, gc);
		tableComposite.setLayoutData(data);

		TableColumnLayout columnLayout = new TableColumnLayout();
		tableComposite.setLayout(columnLayout);
		Table table = new Table(tableComposite, SWT.BORDER | SWT.MULTI | SWT.FULL_SELECTION | SWT.H_SCROLL | SWT.V_SCROLL);
		table.setHeaderVisible(true);
		table.setLinesVisible(true);

		TableColumn column1 = new TableColumn(table, SWT.NONE);
		column1.setText("Name"); //$NON-NLS-1$
		int minWidth = computeMinimumColumnWidth(gc, "Name"); //$NON-NLS-1$
		columnLayout.setColumnData(column1, new ColumnWeightData(1, minWidth, true));

		TableColumn column2 = new TableColumn(table, SWT.NONE);
		column2.setText("Path"); //$NON-NLS-1$
		minWidth = computeMinimumColumnWidth(gc, "Path"); //$NON-NLS-1$
		columnLayout.setColumnData(column2, new ColumnWeightData(3, minWidth, true));

		gc.dispose();

		fTableViewer = new TableViewer(table);
		fTableViewer.setLabelProvider(new OutletTableLabelProvider());
		fTableViewer.setContentProvider(new OutletTableContentProvider());
	}

	public TableViewer getTableViewer() {
		return fTableViewer;
	}

	public void setEnabled(boolean enabled) {
		fTableViewer.getTable().setEnabled(enabled);
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
}
