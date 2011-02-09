package org.artop.ecuc.codegen.xpand.preferences;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.artop.ecuc.codegen.xpand.output.PersistedOutlet;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IEclipsePreferences.IPreferenceChangeListener;
import org.eclipse.core.runtime.preferences.IEclipsePreferences.PreferenceChangeEvent;
import org.eclipse.xpand2.output.Outlet;

public class ProjectOutletProvider implements IPreferenceChangeListener {

	private IProject fProject;
	private List<PersistedOutlet> fAllOutlets;
	private List<PersistedOutlet> fNotStoredOutlets;

	public ProjectOutletProvider(IProject project) {
		fProject = project;
		fAllOutlets = new ArrayList<PersistedOutlet>();
		fNotStoredOutlets = new ArrayList<PersistedOutlet>();
		fAllOutlets.addAll(getStoredOutlets());
		addPreferenceChangeListener();
	}

	public void addOutlet(PersistedOutlet outlet) {
		fNotStoredOutlets.add(outlet);
		fAllOutlets.add(outlet);
	}

	public void removeOutlet(PersistedOutlet outlet) {
		fNotStoredOutlets.remove(outlet);
		fAllOutlets.remove(outlet);
	}

	public Collection<PersistedOutlet> getOutlets() {
		List<PersistedOutlet> result = new ArrayList<PersistedOutlet>();
		result.addAll(fAllOutlets);
		return result;
	}

	public Collection<PersistedOutlet> getCustomOutlets() {
		Collection<PersistedOutlet> result = getOutlets();
		Outlet defaultOutlet = getDefaultOutlet();
		if (defaultOutlet != null) {
			result.remove(defaultOutlet);
		}
		return result;
	}

	public PersistedOutlet getDefaultOutlet() {
		for (PersistedOutlet outlet : getOutlets()) {
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

	protected Collection<PersistedOutlet> getStoredOutlets() {
		List<PersistedOutlet> result = new ArrayList<PersistedOutlet>();
		PersistedOutlet outlet = IEcucCodeGenerationPreferences.DEFAULT_OUTLET.get(fProject);
		if (outlet != null) {
			result.add(outlet);
		}
		Collection<PersistedOutlet> outlets = IEcucCodeGenerationPreferences.CUSTOM_OUTLETS.get(fProject);
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
		fNotStoredOutlets.clear();
		fAllOutlets.clear();
		fAllOutlets.addAll(getStoredOutlets());
	}

	public synchronized void store() {
		IEcucCodeGenerationPreferences.DEFAULT_OUTLET.set(fProject, getDefaultOutlet());
		IEcucCodeGenerationPreferences.CUSTOM_OUTLETS.set(fProject, getCustomOutlets());
		// Once stored, clear the list of not stored outlets
		fNotStoredOutlets.clear();
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
		fNotStoredOutlets.clear();
	}
}
