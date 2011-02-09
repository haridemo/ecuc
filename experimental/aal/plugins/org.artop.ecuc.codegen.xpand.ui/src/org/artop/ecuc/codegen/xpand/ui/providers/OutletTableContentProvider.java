package org.artop.ecuc.codegen.xpand.ui.providers;

import org.artop.ecuc.codegen.xpand.preferences.ProjectOutletProvider;
import org.eclipse.jface.viewers.ArrayContentProvider;

public class OutletTableContentProvider extends ArrayContentProvider {

	@Override
	public Object[] getElements(Object inputElement) {
		if (inputElement instanceof ProjectOutletProvider) {
			return ((ProjectOutletProvider) inputElement).getOutlets().toArray();
		}
		return super.getElements(inputElement);
	}
}
