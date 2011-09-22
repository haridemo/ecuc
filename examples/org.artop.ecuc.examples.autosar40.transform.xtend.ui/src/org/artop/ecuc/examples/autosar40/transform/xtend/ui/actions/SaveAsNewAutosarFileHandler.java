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
package org.artop.ecuc.examples.autosar40.transform.xtend.ui.actions;

import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.artop.aal.gautosar.services.DefaultMetaModelServiceProvider;
import org.artop.aal.gautosar.services.factories.IGAutosarFactoryService;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.xtendxpand.jobs.M2MJob;
import org.eclipse.sphinx.xtendxpand.jobs.SaveAsNewFileHandler;
import org.eclipse.sphinx.xtendxpand.jobs.XtendJob;

import autosar40.autosartoplevelstructure.AUTOSAR;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;

/**
 * An {@link IJobChangeListener} implementation that can be registered on an {@link XtendJob} instance or a
 * {@link M2MJob} instance that encloses the latter and saves the {@link XtendJob#getResultObjects() result objects}
 * produced by the {@link XtendJob} as new AUTOSAR XML files in the workspace. Supports result objects being
 * {@link AUTOSAR}s or {@link PackageableElement}s to be saved directly. While {@link AUTOSAR} objects are saved in new
 * AUTOSAR XML files as is {@link PackageableElement} objects are automatically wrapped in a new {@link AUTOSAR} object
 * and an {@link ARPackage} with a {@link ARPackage#getShortName() short name} computed by
 * {@link #getResultARPackageName(Object)}.
 * 
 * @see XtendJob
 * @see M2MJob
 */
public class SaveAsNewAutosarFileHandler extends SaveAsNewFileHandler {

	protected static final String DEFAULT_ROOT_ARPACKAGE_NAME = "ARRoot"; //$NON-NLS-1$

	private String defaultResultARPackageName = null;
	private IPath defaultProjectRelativeResultPath = null;

	public String getDefaultResultARPackageName() {
		if (defaultResultARPackageName == null) {
			defaultResultARPackageName = DEFAULT_ROOT_ARPACKAGE_NAME;
		}
		return defaultResultARPackageName;
	}

	public void setDefaultResultARPackageName(String defaultResultARPackageName) {
		this.defaultResultARPackageName = defaultResultARPackageName;
	}

	public IPath getDefaultPRojectRelativeResultPath() {
		return defaultProjectRelativeResultPath;
	}

	public void setDefaultProjectRelativeResultPath(IPath defaultProjectRelativeResultPath) {
		this.defaultProjectRelativeResultPath = defaultProjectRelativeResultPath;
	}

	protected String getResultARPackageName(Object inputObject) {
		return getDefaultResultARPackageName();
	}

	@Override
	protected IPath getProjectRelativeResultPath(IFile inputFile, EObject resultObject) {
		return getDefaultPRojectRelativeResultPath();
	}

	/*
	 * @see org.eclipse.sphinx.xtendxpand.jobs.SaveAsNewFileHandler#handleResultObjects(java.util.Map)
	 */
	@Override
	protected void handleResultObjects(Map<Object, Collection<?>> resultObjects) {
		DefaultMetaModelServiceProvider mmServiceProvider = new DefaultMetaModelServiceProvider();
		Map<Object, Collection<?>> saveableResultObjects = new HashMap<Object, Collection<?>>();

		for (Object inputObject : resultObjects.keySet()) {
			Collection<?> resultObjectsForInputObject = resultObjects.get(inputObject);
			Set<Object> saveableResultObjectsForInputObject = new HashSet<Object>();

			if (!resultObjectsForInputObject.isEmpty()) {
				GARPackage resultARPackage = null;
				GAUTOSAR resultAutosar = null;
				IMetaModelDescriptor mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(resultObjectsForInputObject.iterator().next());
				IGAutosarFactoryService factory = mmServiceProvider.getService(mmDescriptor, IGAutosarFactoryService.class);
				if (factory != null) {
					resultAutosar = factory.createGAUTOSAR();
					resultARPackage = factory.createGARPackage();
					resultARPackage.gSetShortName(getResultARPackageName(inputObject));
					resultAutosar.gGetArPackages().add(resultARPackage);
				}

				for (Object resultObject : resultObjectsForInputObject) {
					if (resultObject instanceof GAUTOSAR) {
						saveableResultObjectsForInputObject.add(resultObject);
					} else if (resultObject instanceof GPackageableElement) {
						if (resultARPackage != null) {
							resultARPackage.gGetElements().add((GPackageableElement) resultObject);
						}
					}
				}

				if (resultARPackage != null && !resultARPackage.gGetElements().isEmpty()) {
					saveableResultObjectsForInputObject.add(resultAutosar);
				}
			}

			if (!saveableResultObjectsForInputObject.isEmpty()) {
				saveableResultObjects.put(inputObject, saveableResultObjectsForInputObject);
			}
		}

		super.handleResultObjects(saveableResultObjects);
	}
}
