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

import static org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace.EcucParameterValueAccessorsTestReferenceWorkspaceDescriptor.AUTOSAR_4X_PARAMETER_DEFINITIONS_FILE_PATH;
import static org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace.EcucParameterValueAccessorsTestReferenceWorkspaceDescriptor.AUTOSAR_4X_PARAMETER_VALUES_FILE_PATH;
import static org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace.EcucParameterValueAccessorsTestReferenceWorkspaceDescriptor.AUTOSAR_4X_PROJECT_NAME;

import org.artop.aal.testutils.integration.referenceworkspace.IntegrationTestCase;
import org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace.internal.Activator;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;

public abstract class AbstractEcucParameterValueAccessorsIntegrationTestCase extends
		IntegrationTestCase<EcucParameterValueAccessorsTestReferenceWorkspace> {

	// Error message Definitions
	private static final String OBJECT_NOT_FOUND_IN_MODEL = "Object pointed by URI fragment : {0} cannot be found in model";//$NON-NLS-1$

	public AbstractEcucParameterValueAccessorsIntegrationTestCase() {
		super(new EcucParameterValueAccessorsTestReferenceWorkspace(AUTOSAR_4X_PROJECT_NAME));
	}

	@Override
	protected Plugin getTestPlugin() {
		return Activator.getPlugin();
	}

	// Module configuration resource
	protected Resource moduleConfResource;

	@Override
	protected void setUp() throws Exception {
		// long start = System.currentTimeMillis();
		super.setUp();

		// System.out.println("Super.setUp time : "+start-System.currentTimeMillis());
		IFile moduleDefFile = getRefWks().autosar4xProject.getFile(AUTOSAR_4X_PARAMETER_DEFINITIONS_FILE_PATH);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleDefFile);
		assertNotNull(moduleDefModelDescriptor);

		moduleConfResource = EcorePlatformUtil.getResource(getRefWks().autosar4xProject.getFile(AUTOSAR_4X_PARAMETER_VALUES_FILE_PATH));
		assertNotNull(moduleConfResource);
	}

	/**
	 * @param targetUriFragment
	 * @return
	 */
	protected EObject getConfigurationObject(String uriFragment) {
		EObject target = moduleConfResource.getEObject(uriFragment);
		assertNotNull(NLS.bind(OBJECT_NOT_FOUND_IN_MODEL, uriFragment), target);
		return target;
	}
}