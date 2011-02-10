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

import org.artop.ecuc.codegen.xpand.Activator;
import org.eclipse.core.internal.resources.projectvariables.ProjectLocationVariableResolver;
import org.eclipse.core.internal.resources.projectvariables.WorkspaceLocationVariableResolver;

@SuppressWarnings("restriction")
public interface IEcucCodeGenerationPreferences {

	String XtendXpandNatureId = "org.eclipse.xtend.shared.ui.xtendXPandNature"; //$NON-NLS-1$
	String PROJECT_LOC = ProjectLocationVariableResolver.NAME;
	String WORKSPACE_LOC = WorkspaceLocationVariableResolver.NAME;

	// TODO (aakar) Use BasicM2TJob.DEFAULT_OUTLET_PATH when we move the job to a none-UI plugin
	String DEFAULT_OUTLET_PATH = "gen"; //$NON-NLS-1$

	// Qualifier
	String QUALIFIER = Activator.getPlugin().getSymbolicName();

	// Preference Keys
	String PREF_OUTLETS = QUALIFIER + ".outletNameAndPathExpression"; //$NON-NLS-1$

	// Default values
	String PREF_OUTLETS_DEFAULT = "@${project_loc}/" + DEFAULT_OUTLET_PATH + ";COUTLET@${project_loc}/coutlet;HOUTLET@${project_loc}/houtlet"; //$NON-NLS-1$ //$NON-NLS-2$

	ProjectOutletPreference OUTLETS = new ProjectOutletPreference(XtendXpandNatureId, QUALIFIER, PREF_OUTLETS, PREF_OUTLETS_DEFAULT);
}
