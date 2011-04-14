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
package org.artop.ecuc.examples.gautosar.codegen.xpand.ui.internal;

import org.artop.ecuc.examples.gautosar.codegen.xpand.ui.preferences.EcucOutletsPreferencePage;
import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.sphinx.platform.ui.preferences.IPropertyPageIdProvider;
import org.eclipse.sphinx.xpand.preferences.OutletsPreference;

public class OutletsPreferenceAdapterFactory implements IAdapterFactory {

	/*
	 * @see org.eclipse.core.runtime.IAdapterFactory#getAdapter(java.lang.Object, java.lang.Class)
	 */
	public Object getAdapter(final Object adaptableObject, @SuppressWarnings("rawtypes") Class adapterType) {
		if (adapterType.equals(IPropertyPageIdProvider.class)) {
			if (adaptableObject instanceof OutletsPreference) {
				return new IPropertyPageIdProvider() {
					public String getPropertyPageId() {
						return EcucOutletsPreferencePage.PROPERTY_PAGE_ID;
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
		return new Class<?>[] { IPropertyPageIdProvider.class };
	}
}
