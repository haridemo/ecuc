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

	private IProject project;
	private List<ExtendedOutlet> allOutlets;
	private List<ExtendedOutlet> unstoredOutlets;

	public ProjectOutletProvider(IProject project) {
		this.project = project;
		allOutlets = new ArrayList<ExtendedOutlet>();
		unstoredOutlets = new ArrayList<ExtendedOutlet>();
		allOutlets.addAll(getStoredOutlets());
		addPreferenceChangeListener();
	}

	public void addOutlet(ExtendedOutlet outlet) {
		unstoredOutlets.add(outlet);
		allOutlets.add(outlet);
	}

	public void removeOutlet(ExtendedOutlet outlet) {
		unstoredOutlets.remove(outlet);
		allOutlets.remove(outlet);
	}

	/**
	 * Returns a copy of the outlets so calling add/remove on the result will not affect the provider.
	 * 
	 * @return
	 */
	public Collection<ExtendedOutlet> getOutlets() {
		List<ExtendedOutlet> result = new ArrayList<ExtendedOutlet>();
		result.addAll(allOutlets);
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
		return projectScope.getNode(IEcucCodeGenerationPreferences.OUTLETS.getQualifier());
	}

	protected Collection<ExtendedOutlet> getStoredOutlets() {
		return IEcucCodeGenerationPreferences.OUTLETS.get(project);
	}

	protected void addPreferenceChangeListener() {
		IEclipsePreferences prefs = getProjectPreferences(project);
		if (prefs != null) {
			prefs.addPreferenceChangeListener(this);
		}
	}

	public void setToDefault() {
		IEcucCodeGenerationPreferences.OUTLETS.setToDefault(project);
		unstoredOutlets.clear();
		allOutlets.clear();
		allOutlets.addAll(getStoredOutlets());
	}

	public synchronized void store() {
		IEcucCodeGenerationPreferences.OUTLETS.set(project, getOutlets());
		// Once stored, clear the list of not stored outlets
		unstoredOutlets.clear();
	}

	public void preferenceChange(PreferenceChangeEvent event) {
		if (IEcucCodeGenerationPreferences.PREF_OUTLETS.equals(event.getKey())) {
			updateOutlets();
		}
	}

	protected void updateOutlets() {
		allOutlets.clear();
		allOutlets.addAll(getStoredOutlets());
		allOutlets.addAll(unstoredOutlets);
	}

	public void dispose() {
		IEclipsePreferences prefs = getProjectPreferences(project);
		if (prefs != null) {
			prefs.removePreferenceChangeListener(this);
		}
		allOutlets.clear();
		unstoredOutlets.clear();
	}
}
