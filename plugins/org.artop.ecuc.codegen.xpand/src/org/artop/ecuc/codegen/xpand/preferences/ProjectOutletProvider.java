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
	private List<ExtendedOutlet> unappliedOutlets;

	public ProjectOutletProvider() {
		this(null);
	}

	public ProjectOutletProvider(IProject project) {
		this.project = project;
		allOutlets = new ArrayList<ExtendedOutlet>();
		unappliedOutlets = new ArrayList<ExtendedOutlet>();
		allOutlets.addAll(getOutletsFromPreferences());
		if (project != null) {
			addPreferenceChangeListener();
		}
	}

	public void setProject(IProject project) {
		this.project = project;
	}

	public IProject getProject() {
		return project;
	}

	public void addOutlet(ExtendedOutlet outlet) {
		unappliedOutlets.add(outlet);
		allOutlets.add(outlet);
	}

	public void removeOutlet(ExtendedOutlet outlet) {
		unappliedOutlets.remove(outlet);
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

	protected Collection<ExtendedOutlet> getOutletsFromPreferences() {
		return project != null ? IEcucCodeGenerationPreferences.OUTLETS.get(project) : IEcucCodeGenerationPreferences.OUTLETS
				.getDefaultValueAsObject(null);
	}

	protected void addPreferenceChangeListener() {
		IEclipsePreferences prefs = getProjectPreferences(project);
		if (prefs != null) {
			prefs.addPreferenceChangeListener(this);
		}
	}

	public void setToDefault() {
		if (project != null) {
			IEcucCodeGenerationPreferences.OUTLETS.setToDefault(project);
		}
		unappliedOutlets.clear();
		allOutlets.clear();
		allOutlets.addAll(getOutletsFromPreferences());
	}

	public synchronized void store() {
		if (project != null) {
			unappliedOutlets.clear();
			IEcucCodeGenerationPreferences.OUTLETS.set(project, getOutlets());
		}
	}

	public void preferenceChange(PreferenceChangeEvent event) {
		if (IEcucCodeGenerationPreferences.PREF_OUTLETS.equals(event.getKey())) {
			updateOutlets();
		}
	}

	protected void updateOutlets() {
		allOutlets.clear();
		allOutlets.addAll(getOutletsFromPreferences());
		allOutlets.addAll(unappliedOutlets);
	}

	public void dispose() {
		if (project != null) {
			IEclipsePreferences prefs = getProjectPreferences(project);
			if (prefs != null) {
				prefs.removePreferenceChangeListener(this);
			}
		}
		allOutlets.clear();
		unappliedOutlets.clear();
	}
}
