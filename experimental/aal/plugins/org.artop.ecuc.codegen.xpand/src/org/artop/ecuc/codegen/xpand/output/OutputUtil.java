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
import org.artop.ecl.platform.util.PlatformLogUtil;
import org.artop.ecuc.codegen.xpand.Activator;
import org.artop.ecuc.codegen.xpand.adapter.factories.EObjectAdapaterFactory;
import org.artop.ecuc.codegen.xpand.preferences.ProjectOutletProvider;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.emf.ecore.EObject;

public class OutputUtil {

	public static List<PersistedOutlet> toOutlets(String valueAsString) {
		List<PersistedOutlet> result = new ArrayList<PersistedOutlet>();
		String[] values = valueAsString.split(File.pathSeparator);
		for (String value : values) {
			String[] args = value.split("@"); //$NON-NLS-1$
			String name = args[0];
			String expression = args[1];
			String path = computeOutletPath(expression);
			PersistedOutlet outlet = new PersistedOutlet(path);
			outlet.setPersistedPath(expression);
			if (!name.isEmpty()) {
				outlet.setName(name);
			}
			result.add(outlet);
		}
		return result;

	}

	private static final EObjectAdapaterFactory EOBJECT_ADAPATER_FACTORY = new EObjectAdapaterFactory();

	public static String computeOutletPath(String location) {
		IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
		IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
		try {
			// Add the EObjectAdapterFactory to the registry so that project_loc variable can be resolved when the
			// selection is an EObject
			Platform.getAdapterManager().registerAdapters(EOBJECT_ADAPATER_FACTORY, EObject.class);
			String resolvedEntry = manager.performStringSubstitution(location);
			Platform.getAdapterManager().unregisterAdapters(EOBJECT_ADAPATER_FACTORY, EObject.class);
			IPath resolvedPath = new Path(resolvedEntry);
			if (resolvedPath.isAbsolute()) {
				File file = resolvedPath.toFile();
				return file.getAbsolutePath();
			} else {
				IResource resource = root.findMember(resolvedPath);
				if (resource != null) {
					IPath path = resource.getLocation();
					if (location != null) {
						return path.toFile().getAbsolutePath();
					}
				}
			}
		} catch (CoreException ex) {
			PlatformLogUtil.logAsError(Activator.getDefault(), ex);
		} finally {
			Platform.getAdapterManager().unregisterAdapters(EOBJECT_ADAPATER_FACTORY, EObject.class);
		}
		return null;

	}

	public static ProjectOutletProvider getOutletProvider(EObject object) {
		IFile file = EcorePlatformUtil.getFile(object);
		if (file != null && file.getProject() != null) {
			return new ProjectOutletProvider(file.getProject());
		}
		return null;
	}
}
