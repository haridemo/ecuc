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
package org.artop.ecuc.codegen.xpand.output;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecuc.codegen.xpand.preferences.ProjectOutletProvider;
import org.eclipse.core.resources.IFile;
import org.eclipse.emf.ecore.EObject;

public class OutputUtil {

	// TODO (aakar) Move this to ProjectOutletPreference
	public static List<ExtendedOutlet> toOutlets(String valueAsString) {
		List<ExtendedOutlet> result = new ArrayList<ExtendedOutlet>();
		String[] values = valueAsString.split(File.pathSeparator);
		for (String value : values) {
			String[] args = value.split("@"); //$NON-NLS-1$
			String name = args[0];
			String expression = args[1];
			ExtendedOutlet outlet = new ExtendedOutlet();
			outlet.setPathExpression(expression);
			if (name.length() > 0) {
				outlet.setName(name);
			}
			result.add(outlet);
		}
		return result;

	}

	public static ProjectOutletProvider getOutletProvider(EObject object) {
		IFile file = EcorePlatformUtil.getFile(object);
		if (file != null && file.getProject() != null) {
			return new ProjectOutletProvider(file.getProject());
		}
		return null;
	}
}
