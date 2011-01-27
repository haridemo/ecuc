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
package org.artop.ecuc.testutils.integration.referenceworkspace;

import org.artop.ecl.emf.util.WorkspaceEditingDomainUtil;
import org.artop.ecl.testutils.integration.AbstractReferenceWorkspace;
import org.artop.ecuc.testutils.integration.referenceworkspace.internal.Activator;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

import autosar40.util.Autosar40ReleaseDescriptor;

/**
 * 
 */
@SuppressWarnings("nls")
public class EcucTestReferenceWorkspace extends AbstractReferenceWorkspace {

	protected static final String ECUC_TEST_REFERENCE_WORKSPACE_ARCHIVE_FILE_NAME = "referenceWorkspace.zip";

	/* ----- AUTOSAR 4.0 XPAND Project ----- */
	public static final String XPAND_AUTOSAR_40_PROJECT_NAME = "org.artop.ecuc.examples.autosar40.codegen.xpand";
	public static final String XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE = "/bsw.platform/Vehicle.arxml";
	public static final String XPAND_AUTOSAR_40_AR_FILE_PATH_CAR_CONFIGURATION = "/bsw.config/Car_Configuration.arxml";
	public static final String XPAND_AUTOSAR_40_XPT_FILE_PATH_VEHICLE = "/bsw.platform/Vehicle.xpt";
	public static final String XPAND_AUTOSAR_40_XPT_FILE_PATH_VEHICLEH = "/bsw.platform/VehicleH.xpt";
	/* ----- Projects ----- */
	public IProject xPandAutosar40Project;

	/* ----- EditingDomains ----- */
	public TransactionalEditingDomain editingDomain40;

	public EcucTestReferenceWorkspace(String[] referenceProjectNames) {
		super(referenceProjectNames);
	}

	public Plugin getReferenceWorkspacePlugin() {
		return Activator.getPlugin();
	}

	public String getReferenceWorkspaceArchiveFileName() {
		return ECUC_TEST_REFERENCE_WORKSPACE_ARCHIVE_FILE_NAME;
	}

	@Override
	public void initContentAccessors() {
		initReferenceProjectAccessors();
		initReferenceEditingDomainAccessors();
	}

	protected void initReferenceProjectAccessors() {
		xPandAutosar40Project = getReferenceProject(XPAND_AUTOSAR_40_PROJECT_NAME);
	}

	protected void initReferenceEditingDomainAccessors() {
		editingDomain40 = WorkspaceEditingDomainUtil.getEditingDomain(ResourcesPlugin.getWorkspace().getRoot(), Autosar40ReleaseDescriptor.INSTANCE);
	}

	@Override
	protected void initReferenceFileDescriptors() {
		addFileDescriptors(XPAND_AUTOSAR_40_PROJECT_NAME, new String[] { XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE,
				XPAND_AUTOSAR_40_AR_FILE_PATH_CAR_CONFIGURATION }, Autosar40ReleaseDescriptor.INSTANCE);
	}

	@Override
	protected String[] getReferenceProjectsNames() {
		return new String[] { XPAND_AUTOSAR_40_PROJECT_NAME };
	}
}