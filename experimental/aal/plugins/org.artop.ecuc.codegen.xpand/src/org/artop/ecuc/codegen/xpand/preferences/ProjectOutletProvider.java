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
package org.artop.ecuc.codegen.xpand.preferences;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.artop.ecuc.codegen.xpand.output.ExtendedOutlet;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IEclipsePreferences.IPreferenceChangeListener;
import org.eclipse.core.runtime.preferences.IEclipsePreferences.PreferenceChangeEvent;
import org.eclipse.xpand2.output.Outlet;

public class ProjectOutletProvider implements IPreferenceChangeListener {

	private IProject fProject;
	private List<ExtendedOutlet> fAllOutlets;
	private List<ExtendedOutlet> unstoredOutlets;

	public ProjectOutletProvider(IProject project) {
		fProject = project;
		fAllOutlets = new ArrayList<ExtendedOutlet>();
		unstoredOutlets = new ArrayList<ExtendedOutlet>();
		fAllOutlets.addAll(getStoredOutlets());
		addPreferenceChangeListener();
	}

	public void addOutlet(ExtendedOutlet outlet) {
		unstoredOutlets.add(outlet);
		fAllOutlets.add(outlet);
	}

	public void removeOutlet(ExtendedOutlet outlet) {
		unstoredOutlets.remove(outlet);
		fAllOutlets.remove(outlet);
	}

	public Collection<ExtendedOutlet> getOutlets() {
		List<ExtendedOutlet> result = new ArrayList<ExtendedOutlet>();
		result.addAll(fAllOutlets);
		return result;
	}

	public Collection<ExtendedOutlet> getNamedOutlets() {
		Collection<ExtendedOutlet> result = getOutlets();
		Outlet defaultOutlet = getDefaultOutlet();
		if (defaultOutlet != null) {
			result.remove(defaultOutlet);
		}
		return result;
	}

	public ExtendedOutlet getDefaultOutlet() {
		for (ExtendedOutlet outlet : getOutlets()) {
			if (outlet.getName() == null) {
				return outlet;
			}
		}
		return null;
	}

	protected IEclipsePreferences getProjectPreferences(IProject project) {
		Assert.isNotNull(project);
		ProjectScope projectScope = new ProjectScope(project);
		return projectScope.getNode(IEcucCodeGenerationPreferences.DEFAULT_OUTLET.getQualifier());
	}

	protected Collection<ExtendedOutlet> getStoredOutlets() {
		List<ExtendedOutlet> result = new ArrayList<ExtendedOutlet>();
		ExtendedOutlet outlet = IEcucCodeGenerationPreferences.DEFAULT_OUTLET.get(fProject);
		if (outlet != null) {
			result.add(outlet);
		}
		Collection<ExtendedOutlet> outlets = IEcucCodeGenerationPreferences.CUSTOM_OUTLETS.get(fProject);
		if (outlets != null && !outlets.isEmpty()) {
			result.addAll(outlets);
		}
		return result;
	}

	protected void addPreferenceChangeListener() {
		IEclipsePreferences prefs = getProjectPreferences(fProject);
		if (prefs != null) {
			prefs.addPreferenceChangeListener(this);
		}
	}

	public void setToDefault() {
		IEcucCodeGenerationPreferences.DEFAULT_OUTLET.setToDefault(fProject);
		IEcucCodeGenerationPreferences.CUSTOM_OUTLETS.setToDefault(fProject);
		unstoredOutlets.clear();
		fAllOutlets.clear();
		fAllOutlets.addAll(getStoredOutlets());
	}

	public synchronized void store() {
		IEcucCodeGenerationPreferences.DEFAULT_OUTLET.set(fProject, getDefaultOutlet());
		IEcucCodeGenerationPreferences.CUSTOM_OUTLETS.set(fProject, getNamedOutlets());
		// Once stored, clear the list of not stored outlets
		unstoredOutlets.clear();
	}

	// TODO (aakar) to implement
	public void preferenceChange(PreferenceChangeEvent event) {
		System.out.println();
	}

	public void dispose() {
		IEclipsePreferences prefs = getProjectPreferences(fProject);
		if (prefs != null) {
			prefs.removePreferenceChangeListener(this);
		}
		fAllOutlets.clear();
		unstoredOutlets.clear();
	}
}
