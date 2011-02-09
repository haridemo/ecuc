package org.artop.ecuc.codegen.xpand.adapter.factories;

import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IAdapterFactory;

public class EObjectAdapaterFactory implements IAdapterFactory {

	public Object getAdapter(Object adaptableObject, Class adapterType) {
		if (IResource.class.equals(adapterType)) {
			return EcorePlatformUtil.getFile(adaptableObject);
		}
		return null;
	}

	public Class[] getAdapterList() {
		return new Class[] { IResource.class };
	}
}
