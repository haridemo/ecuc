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
package org.artop.ecuc.codegen.xpand.ui.internal;

import java.net.URL;

import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.ui.EclipseUIPlugin;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.edit.ui.provider.ExtendedImageRegistry;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.widgets.Display;

/**
 * This is the central singleton for this plug-in.
 */
public final class Activator extends EMFPlugin {

	/**
	 * Keep track of the singleton.
	 */
	public static final Activator INSTANCE = new Activator();

	/**
	 * Keep track of the singleton.
	 */
	private static Implementation plugin;

	/**
	 * Create the instance.
	 */
	public Activator() {
		super(new ResourceLocator[] {});
	}

	/**
	 * Returns the singleton instance of the Eclipse plugin.
	 * 
	 * @return the singleton instance.
	 */
	@Override
	public ResourceLocator getPluginResourceLocator() {
		return plugin;
	}

	/**
	 * Returns the singleton instance of the Eclipse plugin.
	 * 
	 * @return the singleton instance.
	 */
	public static Implementation getPlugin() {
		return plugin;
	}

	/**
	 * Returns the singleton instance of the Eclipse plug-in. This method does actually the same thing as getPlugin()
	 * and has been put in place for compatibility reasons with Activator classes which are not EMF-based but generated
	 * by PDE.
	 * 
	 * @return the singleton instance.
	 */
	public static Implementation getDefault() {
		return plugin;
	}

	/**
	 * The actual implementation of the Eclipse <b>Plugin</b>.
	 */
	public static class Implementation extends EclipseUIPlugin {

		/**
		 * Creates an instance.
		 */
		public Implementation() {
			super();

			// Remember the static instance.
			//
			plugin = this;
		}

		public ImageDescriptor getImageDescriptor(String key) {
			Object imageURL = getImage(key);
			if (imageURL instanceof URL) {
				return getImageDescriptor((URL) imageURL);
			}
			return null;
		}

		public ImageDescriptor getImageDescriptor(URL url) {
			// FIXME File bug to EMF: Impossible to use ExtendedImageRegistry.INSTANCE when Display.getCurrent() returns
			// null
			if (Display.getCurrent() != null) {
				return ExtendedImageRegistry.INSTANCE.getImageDescriptor(url);
			}
			return ImageDescriptor.createFromURL(url);
		}
	}
}
