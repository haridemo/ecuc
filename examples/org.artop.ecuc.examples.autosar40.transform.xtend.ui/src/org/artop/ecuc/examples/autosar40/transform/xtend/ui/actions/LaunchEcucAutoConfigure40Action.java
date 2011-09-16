/**
 * <copyright>
 * 
 * Copyright (c) See4sys, itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 *     itemis - [1448] Provide an example for automatically creating ECU configurations from ECU extracts of system descriptions using Xtend
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

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.gautosar.services.DefaultMetaModelServiceProvider;
import org.artop.aal.gautosar.services.factories.IGAutosarFactoryService;
import org.artop.ecuc.examples.autosar40.transform.xtend.ui.internal.messages.Messages;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.ui.util.ExtendedPlatformUI;
import org.eclipse.sphinx.xtendxpand.jobs.SaveAsNewFileHandler;
import org.eclipse.sphinx.xtendxpand.jobs.XtendJob;
import org.eclipse.sphinx.xtendxpand.ui.actions.BasicM2MAction;
import org.eclipse.sphinx.xtendxpand.ui.wizards.M2MConfigurationWizard;

public class LaunchEcucAutoConfigure40Action extends BasicM2MAction {

	public LaunchEcucAutoConfigure40Action() {
		super(Messages.menuItem_launchAutoConfigure);
	}

	public LaunchEcucAutoConfigure40Action(String text) {
		super(text);
	}

	/*
	 * @see org.eclipse.sphinx.xpand.ui.actions.BasicM2TAction#run()
	 */
	@Override
	public void run() {
		M2MConfigurationWizard wizard = new M2MConfigurationWizard(getSelectedModelObject(), getMetaModels()) {
			@Override
			protected IJobChangeListener createResultObjectHandler(XtendJob xtendJob) {
				return new SaveAsNewFileHandler(xtendJob) {

					private String rootARPackageName = "ARRoot"; //$NON-NLS-1$
					private IPath projectRelativeResultPath = new Path("bsw.config").append("Car_Configuration").addFileExtension(AutosarReleaseDescriptor.ARXML_DEFAULT_FILE_EXTENSION); //$NON-NLS-1$ //$NON-NLS-2$

					@Override
					protected void handleResultObjects(Map<Object, Collection<?>> resultObjects) {
						DefaultMetaModelServiceProvider mmServiceProvider = new DefaultMetaModelServiceProvider();
						Map<Object, Collection<?>> saveableResultObjects = new HashMap<Object, Collection<?>>();

						for (Object inputObject : resultObjects.keySet()) {
							Collection<?> resultObjectsForInputObject = resultObjects.get(inputObject);
							Set<Object> saveableResultObjectForInputObject = new HashSet<Object>();

							if (!resultObjectsForInputObject.isEmpty()) {
								GARPackage rootARPackage = null;
								GAUTOSAR autosar = null;
								IMetaModelDescriptor mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(resultObjectsForInputObject
										.iterator().next());
								IGAutosarFactoryService factory = mmServiceProvider.getService(mmDescriptor, IGAutosarFactoryService.class);
								if (factory != null) {
									autosar = factory.createGAUTOSAR();
									rootARPackage = factory.createGARPackage();
									rootARPackage.gSetShortName(getNewRootARPackageName());
									autosar.gGetArPackages().add(rootARPackage);
								}

								for (Object resultObject : resultObjectsForInputObject) {
									if (resultObject instanceof GAUTOSAR) {
										saveableResultObjectForInputObject.add(resultObject);
									} else if (resultObject instanceof GPackageableElement) {
										if (rootARPackage != null) {
											rootARPackage.gGetElements().add((GPackageableElement) resultObject);
										}
									}
								}

								if (rootARPackage != null && !rootARPackage.gGetElements().isEmpty()) {
									saveableResultObjectForInputObject.add(autosar);
								}
							}

							if (!saveableResultObjectForInputObject.isEmpty()) {
								saveableResultObjects.put(inputObject, saveableResultObjectForInputObject);
							}
						}

						super.handleResultObjects(saveableResultObjects);
					}

					public String getNewRootARPackageName() {
						return rootARPackageName;
					}

					public void setNewRootARPackageName(String rootARPackageName) {
						this.rootARPackageName = rootARPackageName;

					}

					public IPath getProjectRelativeResultPath() {
						return projectRelativeResultPath;
					}

					public void setProjectRelativeResultPath(IPath projectRelativeResultPath) {
						this.projectRelativeResultPath = projectRelativeResultPath;
					}

					@Override
					protected IPath getResultPath(Object inputObject, EObject resultObject) {
						IFile inputFile = EcorePlatformUtil.getFile(inputObject);
						if (inputFile != null) {
							return inputFile.getProject().getFullPath().append(getProjectRelativeResultPath());
						}
						return null;
					}
				};
			}
		};
		wizard.setM2MJobName(getM2MJobName());
		wizard.setWorkspaceResourceLoader(getWorkspaceResourceLoader());
		WizardDialog wizardDialog = new WizardDialog(ExtendedPlatformUI.getDisplay().getActiveShell(), wizard);
		wizardDialog.open();
	}
}
