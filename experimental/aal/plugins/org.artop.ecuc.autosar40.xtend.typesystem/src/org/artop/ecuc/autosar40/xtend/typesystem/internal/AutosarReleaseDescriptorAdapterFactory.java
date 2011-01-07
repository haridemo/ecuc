/**
 * <copyright>
 * 
 * Copyright (c) Geensys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     Geensys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.autosar40.xtend.typesystem.internal;

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.ecuc.autosar40.xtend.typesystem.Ecuc40MetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.IEcucMetaModelFactory;
import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.emf.common.notify.AdapterFactory;

/**
 * An {@link AdapterFactory adapter factory} for {@link AutosarReleaseDescriptor AUTOSAR release descriptor}s that
 * supports the following adapter types:
 * <ul>
 * <li>{@link IEcucMetaModelFactory}</li>
 * </ul>
 * 
 * @see IAdapterFactory
 * @see IEcucMetaModelFactory
 */
public class AutosarReleaseDescriptorAdapterFactory implements IAdapterFactory {

	/*
	 * @see org.eclipse.core.runtime.IAdapterFactory#getAdapter(java.lang.Object, java.lang.Class)
	 */
	public Object getAdapter(final Object adaptableObject, @SuppressWarnings("rawtypes") Class adapterType) {
		if (adapterType.equals(IEcucMetaModelFactory.class)) {
			if (adaptableObject instanceof AutosarReleaseDescriptor) {
				return new IEcucMetaModelFactory() {
					public EcucMetaModel createEcucMetaModel(EcucContext context) {
						return new Ecuc40MetaModel(context);
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
