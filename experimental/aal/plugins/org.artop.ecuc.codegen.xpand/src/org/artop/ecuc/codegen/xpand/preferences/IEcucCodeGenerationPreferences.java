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

import java.io.File;
import java.util.Collection;

import org.artop.ecl.platform.preferences.AbstractProjectPreference;
import org.artop.ecl.platform.preferences.IProjectPreference;
import org.artop.ecuc.codegen.xpand.Activator;
import org.artop.ecuc.codegen.xpand.output.OutputUtil;
import org.artop.ecuc.codegen.xpand.output.PersistedOutlet;
import org.eclipse.core.internal.resources.projectvariables.ProjectLocationVariableResolver;
import org.eclipse.core.internal.resources.projectvariables.WorkspaceLocationVariableResolver;
import org.eclipse.core.resources.IProject;

@SuppressWarnings("restriction")
public interface IEcucCodeGenerationPreferences {

	String XtendXpandNatureId = "org.eclipse.xtend.shared.ui.xtendXPandNature";
	String PROJECT_LOC = ProjectLocationVariableResolver.NAME;
	String WORKSPACE_LOC = WorkspaceLocationVariableResolver.NAME;

	// TODO (aakar) Use BasicM2TJob.DEFAULT_OUTLET_PATH when we move the job to a none-UI plugin
	String DEFAULT_OUTLET_PATH = "gen"; //$NON-NLS-1$

	// Qualifier
	String QUALIFIER = Activator.getPlugin().getSymbolicName();

	// Preference Keys
	String PREF_DEFAULT_OUTLET = "default.outlet"; //$NON-NLS-1$
	String PREF_CUSTOM_OUTLETS = "custom.outlets"; //$NON-NLS-1$

	// Default values
	String PREF_DEFAULT_OUTLET_DEFAULT = "@${project_loc}/" + DEFAULT_OUTLET_PATH; //$NON-NLS-1$
	String PREF_CUSTOM_OUTLETS_DEFAULT = "COUTLET@${project_loc}/coutlet;HOUTLET@${project_loc}/houtlet"; //$NON-NLS-1$

	IProjectPreference<PersistedOutlet> DEFAULT_OUTLET = new AbstractProjectPreference<PersistedOutlet>(XtendXpandNatureId, QUALIFIER,
			PREF_DEFAULT_OUTLET, PREF_DEFAULT_OUTLET_DEFAULT) {
		@Override
		protected PersistedOutlet toObject(IProject project, String valueAsString) {
			return OutputUtil.toOutlets(valueAsString).get(0);
		};

		@Override
		protected String toString(IProject project, PersistedOutlet valueAsObject) {
			return "@" + valueAsObject.getPersistedPath(); //$NON-NLS-1$
		};
	};

	IProjectPreference<Collection<PersistedOutlet>> CUSTOM_OUTLETS = new AbstractProjectPreference<Collection<PersistedOutlet>>(XtendXpandNatureId,
			QUALIFIER, PREF_CUSTOM_OUTLETS, PREF_CUSTOM_OUTLETS_DEFAULT) {
		@Override
		protected Collection<PersistedOutlet> toObject(IProject project, String valueAsString) {
			return OutputUtil.toOutlets(valueAsString);
		};

		@Override
		protected String toString(IProject project, java.util.Collection<PersistedOutlet> valueAsObject) {
			StringBuilder builder = new StringBuilder();
			for (PersistedOutlet outlet : valueAsObject) {
				builder.append(outlet.getName());
				builder.append("@"); //$NON-NLS-1$
				builder.append(outlet.getPersistedPath());
				builder.append(File.pathSeparator);
			}
			return builder.substring(0, builder.lastIndexOf(File.pathSeparator));
		};
	};
}
