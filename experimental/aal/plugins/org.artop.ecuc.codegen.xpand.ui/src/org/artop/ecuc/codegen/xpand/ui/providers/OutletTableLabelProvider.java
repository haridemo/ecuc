package org.artop.ecuc.codegen.xpand.ui.providers;

import org.artop.ecuc.codegen.xpand.output.ExtendedOutlet;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;
import org.eclipse.xpand2.output.Outlet;

public class OutletTableLabelProvider extends LabelProvider implements ITableLabelProvider {

	public Image getColumnImage(Object element, int columnIndex) {
		return null;
	}

	public String getColumnText(Object element, int columnIndex) {
		if (element instanceof Outlet) {
			ExtendedOutlet outlet = (ExtendedOutlet) element;
			switch (columnIndex) {
			case 0:
				return outlet.getName() == null ? "<default>" : outlet.getName();//$NON-NLS-1$
			case 1:
				return outlet.getPathExpression();
			default:
				return ""; //$NON-NLS-1$
			}
		}
		return element.toString();
	}

}
