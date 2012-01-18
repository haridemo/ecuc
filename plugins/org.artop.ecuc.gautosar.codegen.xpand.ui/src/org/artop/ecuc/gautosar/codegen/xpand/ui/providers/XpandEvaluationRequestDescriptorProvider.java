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
package org.artop.ecuc.gautosar.codegen.xpand.ui.providers;

import gautosar.gecucdescription.GModuleConfiguration;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.xpand2.XpandUtil;

public class XpandEvaluationRequestDescriptorProvider {

	private String ECU_CONFIGURATION = "EcuConfiguration"; //$NON-NLS-1$
	private String ECU_CONFIGURATION__MODULES = "modules"; //$NON-NLS-1$

	private String ECUC_VALUE_COLLECTION = "EcucValueCollection"; //$NON-NLS-1$
	private String ECUC_VALUE_COLLECTION__ECUC_VALUES = "ecucValues"; //$NON-NLS-1$
	private String ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__ECUC_MODULE_CONFIGURATION_VALUES = "ecucModuleConfigurationValues"; //$NON-NLS-1$

	private Collection<XpandEvaluationRequestDescriptor> requestDescriptors = new ArrayList<XpandEvaluationRequestDescriptor>();

	public XpandEvaluationRequestDescriptorProvider(Object targetObject) {
		init(targetObject);
	}

	protected void init(Object targetObject) {
		if (targetObject instanceof EObject) {
			EObject target = (EObject) targetObject;
			List<GModuleConfiguration> modules = new ArrayList<GModuleConfiguration>();
			if (ECU_CONFIGURATION.equals(target.eClass().getName())) {
				modules.addAll(getModules3x(target));
			} else if (ECUC_VALUE_COLLECTION.equals(target.eClass().getName())) {
				modules.addAll(getModules40(target));
			}
			if (!modules.isEmpty()) {
				List<IFile> allXpandTemplate = getAllXpandTemplate(EcorePlatformUtil.getFile(targetObject).getProject());
				for (GModuleConfiguration moduleConf : modules) {
					for (IFile template : allXpandTemplate) {
						if (template.getName().equals(moduleConf.gGetDefinition().gGetShortName() + "." + XpandUtil.TEMPLATE_EXTENSION)) { //$NON-NLS-1$
							requestDescriptors.add(new XpandEvaluationRequestDescriptor(moduleConf, template));
							break;
						}
					}
				}
			}
		}
	}

	public Collection<XpandEvaluationRequestDescriptor> getXpandEvaluationRequestDescriptors() {
		return Collections.unmodifiableCollection(requestDescriptors);
	}

	private List<IFile> getAllXpandTemplate(IProject arProject) {
		List<IFile> result = new ArrayList<IFile>();
		Collection<IFile> allFiles = ExtendedPlatform.getAllFiles(arProject, true);
		for (IFile file : allFiles) {
			if (XpandUtil.TEMPLATE_EXTENSION.equals(file.getFileExtension())) {
				result.add(file);
			}
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	private Collection<GModuleConfiguration> getModules3x(EObject ecuConfiguration) {
		EStructuralFeature modulesFeature = EObjectUtil.getEStructuralFeature(ecuConfiguration, ECU_CONFIGURATION__MODULES);
		if (modulesFeature != null) {
			return (Collection<GModuleConfiguration>) ecuConfiguration.eGet(modulesFeature);
		}
		return Collections.emptyList();
	}

	@SuppressWarnings("unchecked")
	private Collection<GModuleConfiguration> getModules40(EObject ecucValueCollection) {
		List<GModuleConfiguration> modules = new ArrayList<GModuleConfiguration>();
		EStructuralFeature ecucValuesFeature = EObjectUtil.getEStructuralFeature(ecucValueCollection, ECUC_VALUE_COLLECTION__ECUC_VALUES);
		if (ecucValuesFeature != null) {
			// EList<EcucModuleConfigurationValuesRefConditional>
			Collection<EObject> ecucValues = (Collection<EObject>) ecucValueCollection.eGet(ecucValuesFeature);
			EStructuralFeature ecucModuleConfigurationValuesFeature = null;
			for (EObject ecucModuleConfigurationValuesRefConditional : ecucValues) {
				if (ecucModuleConfigurationValuesFeature == null) {
					ecucModuleConfigurationValuesFeature = EObjectUtil.getEStructuralFeature(ecucModuleConfigurationValuesRefConditional,
							ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__ECUC_MODULE_CONFIGURATION_VALUES);
				}
				if (ecucModuleConfigurationValuesFeature != null) {
					GModuleConfiguration module = (GModuleConfiguration) ecucModuleConfigurationValuesRefConditional
							.eGet(ecucModuleConfigurationValuesFeature);
					if (module != null) {
						modules.add(module);
					}
				} else {
					break;
				}
			}
		}
		return modules;
	}
}
