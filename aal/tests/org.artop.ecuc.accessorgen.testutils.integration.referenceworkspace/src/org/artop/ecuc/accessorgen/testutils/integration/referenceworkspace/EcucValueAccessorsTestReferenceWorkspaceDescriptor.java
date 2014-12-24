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
package org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace;

import static org.osgi.framework.FrameworkUtil.getBundle;

import java.util.Arrays;
import java.util.HashSet;

import org.artop.aal.testutils.integration.referenceworkspace.IRefWorkspaceDescriptor;
import org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace.internal.Activator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.sphinx.testutils.integration.AbstractReferenceWorkspace;
import org.osgi.framework.Bundle;

import autosar40.util.Autosar40ReleaseDescriptor;

@SuppressWarnings("nls")
public class EcucValueAccessorsTestReferenceWorkspaceDescriptor extends AbstractReferenceWorkspace implements IRefWorkspaceDescriptor {

	private static final String REFERENCE_WORKSPACE_NAME = "ecucValueAccessorsReferenceWorkspace";

	private static final Path ARCHIVE_PATH = new Path("resources" + IPath.SEPARATOR + "input" + IPath.SEPARATOR + "referenceWorkspace.zip");

	protected static final String ECUC_PARAMETER_VALUE_ACCESSORS_TEST_REFERENCE_WORKSPACE_ARCHIVE_FILE_NAME = "referenceWorkspace.zip";

	/* ----- AUTOSAR 4x Project ----- */
	public static final String AUTOSAR_4X_PROJECT_NAME = "Autosar4xProject";
	public static final String AUTOSAR_4X_PARAMETER_DEFINITIONS_FILE_PATH = "/parameter.definitions/ECUConfigurationParameters.arxml";
	public static final String AUTOSAR_4X_PARAMETER_VALUES_FILE_PATH = "/parameter.values/Values.arxml";

	// Test Model Objects uri fragments
	public static final String URI_FRAGMENT_ADC_MODULE_CONFIGURATION = "/Values/AdcValues?type=EcucModuleConfigurationValues";
	public static final String URI_FRAGMENT_ADC_CHANNEL2_CONTAINER_VALUE = "/Values/AdcValues/AdcConfigSetValues/AdcHwUnitValues/AdcChannelValues2?type=EcucContainerValue";
	public static final String URI_FRAGMENT_NVM_MODULE_CONFIGURATION = "/Values/NvMValues?type=EcucModuleConfigurationValues";
	public static final String URI_FRAGMENT_BSW_MODULE_CONFIGURATION = "/Values/BswMValues?type=EcucModuleConfigurationValues";
	public static final String URI_FRAGMENT_CANSM_MODULE_CONFIGURATION = "/Values/CanSMValues?type=EcucModuleConfigurationValues";
	public static final String URI_FRAGMENT_BSWMODEVALUES_CONTAINER_VALUE = "/Values/BswMValues/BswMConfigValues/BswMArbitrationValues/BswMModeConditionValues/BswMConditionValueVals/BswModeValues?type=EcucContainerValue";
	public static final String URI_FRAGMENT_ECUC_PARTITION_MODULE_CONFIGURATION = "/Values/EcuCValues/EcucPartitionCollectionValues/EcucPartitionValues?type=EcucContainerValue";

	public EcucValueAccessorsTestReferenceWorkspaceDescriptor(String[] referenceProjectNames) {
		super(new HashSet<String>(Arrays.asList(referenceProjectNames)));
	}

	public Plugin getReferenceWorkspacePlugin() {
		return Activator.getPlugin();
	}

	public String getReferenceWorkspaceArchiveFileName() {
		return ECUC_PARAMETER_VALUE_ACCESSORS_TEST_REFERENCE_WORKSPACE_ARCHIVE_FILE_NAME;
	}

	@Override
	protected void initReferenceFileDescriptors() {
		addFileDescriptors(AUTOSAR_4X_PROJECT_NAME,
				new String[] { AUTOSAR_4X_PARAMETER_DEFINITIONS_FILE_PATH, AUTOSAR_4X_PARAMETER_VALUES_FILE_PATH },
				Autosar40ReleaseDescriptor.INSTANCE);
	}

	@Override
	protected String[] getReferenceProjectsNames() {
		return new String[] { AUTOSAR_4X_PROJECT_NAME };
	}

	public String getName() {
		return REFERENCE_WORKSPACE_NAME;
	}

	public IPath getArchivePath() {
		return ARCHIVE_PATH;
	}

	public Bundle getSrcBundle() {
		return getBundle(EcucValueAccessorsTestReferenceWorkspace.class);
	}

	@Override
	public int getInitialReferenceEditingDomainCount() {
		// is mandatory due to interface, uses implementation from abstract parent
		return super.getInitialReferenceEditingDomainCount();
	}
}
