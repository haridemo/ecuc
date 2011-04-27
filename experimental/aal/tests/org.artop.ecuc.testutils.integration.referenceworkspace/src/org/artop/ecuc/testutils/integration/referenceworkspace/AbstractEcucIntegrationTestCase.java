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
package org.artop.ecuc.testutils.integration.referenceworkspace;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.testutils.integration.referenceworkspace.internal.Activator;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.testutils.integration.AbstractIntegrationTestCase;
import org.eclipse.xtend.typesystem.Type;

@SuppressWarnings("nls")
public class AbstractEcucIntegrationTestCase extends AbstractIntegrationTestCase<EcucTestReferenceWorkspace> {
	// Error message Definitions
	private static final String TYPE_IS_MISSING = "type {0} is missing"; //$NON-NLS-1$
	private static final String TYPE_NOT_RETURNED_FOR_OBJECT = "Expected type : {0} for Object :{1} is not returned by EcucMetaModel";//$NON-NLS-1$
	private static final String OBJECT_NOT_FOUND_IN_MODEL = "Object pointed by URI fragment : {0} cannot be found in model";//$NON-NLS-1$
	private static final String TYPE_RETURNED_NOT_EQUALS_TO_EXPECTED = "Type returned :{0} is not equal to expected type :{1}";//$NON-NLS-1$

	public AbstractEcucIntegrationTestCase() {
		super("EcucTestReferenceWorkspace");
	}

	@Override
	protected Plugin getTestPlugin() {
		return Activator.getPlugin();
	}

	@Override
	protected EcucTestReferenceWorkspace doCreateReferenceWorkspace(String[] referenceProjectNames) {
		return new EcucTestReferenceWorkspace(referenceProjectNames);
	}

	// EcucMetaModel Type system global instance
	protected EcucMetaModel ecucMetaModel;

	// Module configuration resource
	protected Resource moduleConfResource;

	@Override
	protected void setUp() throws Exception {
		// long start = System.currentTimeMillis();
		super.setUp();
		// System.out.println("Super.setUp time : "+start-System.currentTimeMillis());
		IFile moduleDefFile = refWks.xPandAutosar40Project.getFile(EcucTestReferenceWorkspace.XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleDefFile);
		assertNotNull(moduleDefModelDescriptor);
		ecucMetaModel = (EcucMetaModel) Platform.getAdapterManager().loadAdapter(moduleDefModelDescriptor, EcucMetaModel.class.getName());
		assertNotNull(ecucMetaModel);
		moduleConfResource = EcorePlatformUtil.getResource(refWks.xPandAutosar40Project
				.getFile(EcucTestReferenceWorkspace.XPAND_AUTOSAR_40_AR_FILE_PATH_CAR_CONFIGURATION));
		assertNotNull(moduleConfResource);
	}

	/**
	 * Asserts that the expected type with qualified name expectedTypeName is registered by ecucMetaModel
	 * 
	 * @param expectedTypeName
	 *            The qualified name of the expected type
	 */
	protected void assertExistsTypeInEcucMetaModel(String expectedTypeName) {
		assertNotNull(NLS.bind(TYPE_IS_MISSING, expectedTypeName), ecucMetaModel.getTypeForName(expectedTypeName));
	}

	/**
	 * Asserts that the type return by ecucMetaModel for the object defined in module configuration pointed by the given
	 * targetUriFragment exists and is equal to the expected Type
	 * 
	 * @param targetUriFragment
	 *            The uri fragment of the object inside
	 *            /org.artop.ecuc.examples.autosar40.codegen.xpand/bsw.config/Car_Configuration.arxml test resource
	 * @param expectedTypeName
	 *            The qualified name of the expected type
	 */
	protected void assertReturnedEcucMetaModelTypeNameEquals(String targetUriFragment, String expectedTypeName) {

		EObject target = moduleConfResource.getEObject(targetUriFragment);
		// Check if object is found in model
		assertNotNull(NLS.bind(OBJECT_NOT_FOUND_IN_MODEL, targetUriFragment), target);
		Type type = ecucMetaModel.getType(target);
		// Check if one type is returned for target object
		assertNotNull(NLS.bind(TYPE_NOT_RETURNED_FOR_OBJECT, new String[] { expectedTypeName, targetUriFragment }), type);
		// check if returned type is equals to expected type
		assertEquals(NLS.bind(TYPE_RETURNED_NOT_EQUALS_TO_EXPECTED, new String[] { type.getName(), expectedTypeName }), expectedTypeName,
				type.getName());
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