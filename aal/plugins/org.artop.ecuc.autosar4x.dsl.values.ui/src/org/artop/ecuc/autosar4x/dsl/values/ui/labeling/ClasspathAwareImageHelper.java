/**
 * <copyright>
 *
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     itemis - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.autosar4x.dsl.values.ui.labeling;

import java.net.URL;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.xtext.ui.PluginImageHelper;

import com.google.inject.Singleton;

@Singleton
public class ClasspathAwareImageHelper extends PluginImageHelper {

	// @@FORMAT_OFF@@
	/*
	 * TGE Workaround um einen Bug/Missing Feature im PluginImageHelper
	 * https://bugs.eclipse.org/bugs/show_bug.cgi?id=404741 TODO bei neuer Xtext-Release überprüfen, ob Bug schon
	 * behoben ist. Ist bei Xtext 2.4.3 noch nicht behoben
	 */
	// @@FORMAT_ON@@
	@Override
	public Image getImage(String imageName) {
		String imgname = imageName == null ? getDefaultImage() : imageName;
		if (imgname != null) {
			Image result = null;
			String name = getPathSuffix() + imgname;
			URL imgUrl = getPlugin().getBundle().getResource(name); // use class loader (in Helios SR1 the class loader
																	// is not used)
			if (imgUrl != null) {
				ImageDescriptor id = null;
				result = getPlugin().getImageRegistry().get(imgUrl.toExternalForm());
				if (result == null) {
					id = ImageDescriptor.createFromURL(imgUrl);
					if (id != null) {
						result = id.createImage();
						getPlugin().getImageRegistry().put(imgUrl.toExternalForm(), result);
					}
				}
				return result;
			}
			String notFound = getNotFound();
			if (!imgname.equals(notFound)) {
				return getImage(notFound);
			}
		}
		return null;
	}

}
