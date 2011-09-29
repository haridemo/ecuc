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
package org.artop.ecuc.autosar3x.xtend.typesystem.internal;

import org.artop.ecuc.autosar3x.xtend.typesystem.Ecuc3xMetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.IEcucMetaModelFactory;
import org.eclipse.core.runtime.IAdapterFactory;
import autosar3x.util.Autosar3xReleaseDescriptor;

/**
 * An {@link AdapterFactory adapter factory} for {@link Autosar40ReleaseDescriptor AUTOSAR 4.0 release descriptor}s that
 * supports the following adapter types:
 * <ul>
 * <li>{@link IEcucMetaModelFactory}</li>
 * </ul>
 * 
 * @see IAdapterFactory
 * @see IEcucMetaModelFactory
 */
public class Autosar3xReleaseDescriptorAdapterFactory implements IAdapterFactory {

	/*
	 * @see org.eclipse.core.runtime.IAdapterFactory#getAdapter(java.lang.Object, java.lang.Class)
	 */
	public Object getAdapter(final Object adaptableObject, @SuppressWarnings("rawtypes") Class adapterType) {
		if (adapterType.equals(IEcucMetaModelFactory.class)) {
			if (adaptableObject instanceof Autosar3xReleaseDescriptor) {
				return new IEcucMetaModelFactory() {
					public EcucMetaModel createEcucMetaModel(EcucContext context) {
						return new Ecuc3xMetaModel(context);
					}
				};
			}
		}
		return null;
	}

	/*
	 * @see org.eclipse.core.runtime.IAdapterFactory#getAdapterList()
	 */
	@SuppressWarnings("rawtypes")
	public Class[] getAdapterList() {
		return new Class<?>[] { IEcucMetaModelFactory.class };
	}
}
