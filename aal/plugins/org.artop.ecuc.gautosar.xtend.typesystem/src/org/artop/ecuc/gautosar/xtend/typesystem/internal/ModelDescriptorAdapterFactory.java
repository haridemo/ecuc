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
package org.artop.ecuc.gautosar.xtend.typesystem.internal;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.sphinx.emf.model.IModelDescriptor;

/**
 * An {@link AdapterFactory adapter factory} for {@link IModelDescriptor model descriptor}s that supports the following
 * adapter types:
 * <ul>
 * <li>{@link EcucMetaModel}</li>
 * </ul>
 * 
 * @see IAdapterFactory
 * @see EcucMetaModel
 */
public class ModelDescriptorAdapterFactory implements IAdapterFactory {

	/*
	 * @see org.eclipse.core.runtime.IAdapterFactory#getAdapter(java.lang.Object, java.lang.Class)
	 */
	public Object getAdapter(final Object adaptableObject, @SuppressWarnings("rawtypes") Class adapterType) {
		if (adapterType.equals(EcucMetaModel.class)) {
			if (adaptableObject instanceof IModelDescriptor) {
				return EcucMetaModelManager.INSTANCE.getEcucMetaModel((IModelDescriptor) adaptableObject);
			}
		}
		return null;
	}

	/*
	 * @see org.eclipse.core.runtime.IAdapterFactory#getAdapterList()
	 */
	@SuppressWarnings("rawtypes")
	public Class[] getAdapterList() {
		return new Class<?>[] { EcucMetaModel.class };
	}
}
