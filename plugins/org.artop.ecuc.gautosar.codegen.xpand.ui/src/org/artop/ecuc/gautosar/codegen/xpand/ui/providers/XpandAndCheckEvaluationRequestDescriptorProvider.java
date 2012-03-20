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

import org.artop.aal.common.resource.AutosarURIFactory;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.Path;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.xpand2.XpandUtil;
import org.eclipse.xtend.check.CheckUtils;

public class XpandAndCheckEvaluationRequestDescriptorProvider {

	private Object targetObject;
	private IDialogSettings dialogSettings;

	private final String CODE_GEN_SECTION = "CODEGEN_SECTION"; //$NON-NLS-1$
	private final String XPAND_TEMPLATE_KEY = "XPAND_TEMPLATE"; //$NON-NLS-1$
	private final String DEFINE_BLOCK_KEY = "DEFINE_BLOCK"; //$NON-NLS-1$
	private final String CHECK_FILES_KEY = "CHECK_FILES"; //$NON-NLS-1$
	private final String IS_CHECKED_KEY = "IS_CHECKED"; //$NON-NLS-1$

	private String ECU_CONFIGURATION = "EcuConfiguration"; //$NON-NLS-1$
	private String ECU_CONFIGURATION__MODULES = "modules"; //$NON-NLS-1$

	private String ECUC_VALUE_COLLECTION = "EcucValueCollection"; //$NON-NLS-1$
	private String ECUC_VALUE_COLLECTION__ECUC_VALUES = "ecucValues"; //$NON-NLS-1$
	private String ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__ECUC_MODULE_CONFIGURATION_VALUES = "ecucModuleConfigurationValues"; //$NON-NLS-1$

	private Collection<XpandAndCheckEvaluationRequestDescriptor> requestDescriptors = new ArrayList<XpandAndCheckEvaluationRequestDescriptor>();

	public XpandAndCheckEvaluationRequestDescriptorProvider(Object targetObject, IDialogSettings dialogSettings) {
		this.targetObject = targetObject;
		this.dialogSettings = dialogSettings;
		initDefault();
	}

	protected void initDefault() {
		if (targetObject instanceof EObject) {
			EObject target = (EObject) targetObject;
			List<GModuleConfiguration> modules = new ArrayList<GModuleConfiguration>();
			if (ECU_CONFIGURATION.equals(target.eClass().getName())) {
				modules.addAll(getModules3x(target));
			} else if (ECUC_VALUE_COLLECTION.equals(target.eClass().getName())) {
				modules.addAll(getModules40(target));
			}
			if (!modules.isEmpty()) {
				List<IFile> allXpandTemplates = getAllXpandTemplate(EcorePlatformUtil.getFile(targetObject).getProject());
				List<IFile> allCheckFilesTemplates = getAllCheckFiles(EcorePlatformUtil.getFile(targetObject).getProject());

				for (GModuleConfiguration moduleConf : modules) {
					IFile applicableXpandTemplate = getApplicableXpandTemplate(moduleConf, allXpandTemplates);
					Collection<IFile> applicableCheckFiles = getApplicableCheckFiles(moduleConf, allCheckFilesTemplates);
					if (applicableXpandTemplate != null || !applicableCheckFiles.isEmpty()) {
						requestDescriptors
								.add(new XpandAndCheckEvaluationRequestDescriptor(moduleConf, applicableXpandTemplate, applicableCheckFiles));
					}
				}
			}
		}
	}

	public Collection<XpandAndCheckEvaluationRequestDescriptor> getXpandAndCheckEvaluationRequestDescriptors() {
		return Collections.unmodifiableCollection(requestDescriptors);
	}

	private IFile getApplicableXpandTemplate(GModuleConfiguration moduleConf, Collection<IFile> xpandTemplates) {
		for (IFile template : xpandTemplates) {
			if (template.getName().equals(moduleConf.gGetDefinition().gGetShortName() + "." + XpandUtil.TEMPLATE_EXTENSION)) { //$NON-NLS-1$
				return template;
			}
		}
		return null;
	}

	private Collection<IFile> getApplicableCheckFiles(GModuleConfiguration moduleConf, Collection<IFile> checkFiles) {
		List<IFile> result = new ArrayList<IFile>();
		for (IFile checkFile : checkFiles) {
			if (checkFile.getName().startsWith(moduleConf.gGetDefinition().gGetShortName())) {
				result.add(checkFile);
			}
		}
		return result;
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

	private List<IFile> getAllCheckFiles(IProject arProject) {
		List<IFile> result = new ArrayList<IFile>();
		Collection<IFile> allFiles = ExtendedPlatform.getAllFiles(arProject, true);
		for (IFile file : allFiles) {
			if (CheckUtils.FILE_EXTENSION.equals(file.getFileExtension())) {
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

	public void restoreDefaults() {
		requestDescriptors.clear();
		initDefault();
		clearSettings();
	}

	private void clearSettings() {
		if (dialogSettings != null) {
			IDialogSettings topLevelSection = dialogSettings.getSection(CODE_GEN_SECTION);
			if (topLevelSection != null) {
				String ecuAqn = AutosarURIFactory.getAbsoluteQualifiedName(targetObject);
				topLevelSection.addNewSection(ecuAqn);
			}
		}
	}

	public void restoreState(CheckboxTableViewer viewer) {
		if (dialogSettings != null) {
			IDialogSettings topLevelSection = dialogSettings.getSection(CODE_GEN_SECTION);
			if (topLevelSection != null) {
				String ecuAqn = AutosarURIFactory.getAbsoluteQualifiedName(targetObject);
				IDialogSettings ecuSection = topLevelSection.getSection(ecuAqn);
				if (ecuSection != null) {
					for (XpandAndCheckEvaluationRequestDescriptor descriptor : requestDescriptors) {
						GModuleConfiguration moduleConf = (GModuleConfiguration) descriptor.getTargetObject();
						String moduleConfAqn = AutosarURIFactory.getAbsoluteQualifiedName(moduleConf);
						IDialogSettings moduleConfSection = ecuSection.getSection(moduleConfAqn);
						IProject project = EcorePlatformUtil.getFile(moduleConf).getProject();
						if (moduleConfSection != null) {
							boolean isChecked = moduleConfSection.getBoolean(IS_CHECKED_KEY);
							if (isChecked) {
								viewer.setChecked(descriptor, isChecked);
							}
							String templateFilePath = moduleConfSection.get(XPAND_TEMPLATE_KEY);
							if (templateFilePath != null) {
								if (templateFilePath.length() == 0) {
									descriptor.setTemplateFile(null);
									descriptor.setDefineBlock(null);
								} else if (project.getFile(new Path(templateFilePath)).exists()) {
									descriptor.setTemplateFile(project.getFile(new Path(templateFilePath)));
									if (moduleConfSection.get(DEFINE_BLOCK_KEY) != null) {
										descriptor.setDefineBlock(moduleConfSection.get(DEFINE_BLOCK_KEY));
									}
								}
							} else if (moduleConfSection.get(DEFINE_BLOCK_KEY) != null) {
								descriptor.setDefineBlock(moduleConfSection.get(DEFINE_BLOCK_KEY));

							}
							String[] array = moduleConfSection.getArray(CHECK_FILES_KEY);
							if (array != null) {
								for (String checkFilePath : array) {
									if (project.getFile(new Path(checkFilePath)).exists()) {
										descriptor.getCheckFiles().add(project.getFile(new Path(checkFilePath)));
									}
								}
							}
						}
					}
					viewer.refresh();
				}
			}
		}
	}

	public void saveState(List<Object> checkedElements) {
		if (dialogSettings != null) {
			IDialogSettings topLevelSection = getOrCreateSection(dialogSettings, CODE_GEN_SECTION);

			// ECU section, the key is the aqn of the ECU
			String ecuAqn = AutosarURIFactory.getAbsoluteQualifiedName(targetObject);
			IDialogSettings ecuSection = getOrCreateSection(topLevelSection, ecuAqn);

			for (XpandAndCheckEvaluationRequestDescriptor descriptor : requestDescriptors) {
				GModuleConfiguration moduleConf = (GModuleConfiguration) descriptor.getTargetObject();
				String moduleConfAqn = AutosarURIFactory.getAbsoluteQualifiedName(moduleConf);
				IDialogSettings moduleConfSection = getOrCreateSection(ecuSection, moduleConfAqn);

				if (checkedElements.contains(descriptor)) {
					moduleConfSection.put(IS_CHECKED_KEY, Boolean.TRUE);
				}
				if (!XpandAndCheckEvaluationRequestDescriptor.DEFAULT_DEFINE_BLOCK.equals(descriptor.getDefineBlock())) {
					moduleConfSection.put(DEFINE_BLOCK_KEY, descriptor.getDefineBlock());
				}
				if (descriptor.getTemplateFile() == null
						|| !descriptor.getTemplateFile().getName()
								.equals(moduleConf.gGetDefinition().gGetShortName() + "." + XpandUtil.TEMPLATE_EXTENSION)) { //$NON-NLS-1$
					moduleConfSection.put(XPAND_TEMPLATE_KEY, descriptor.getTemplateFile() == null ? "" : descriptor.getTemplateFile().getFullPath() //$NON-NLS-1$
							.toString());
				}
				List<String> userAddedCheckFiles = new ArrayList<String>();
				for (IFile checkFile : descriptor.getCheckFiles()) {
					if (!checkFile.getName().startsWith(moduleConf.gGetDefinition().gGetShortName())) {
						userAddedCheckFiles.add(checkFile.getProjectRelativePath().toString());
					}
				}
				if (!userAddedCheckFiles.isEmpty()) {
					moduleConfSection.put(CHECK_FILES_KEY, userAddedCheckFiles.toArray(new String[userAddedCheckFiles.size()]));
				}
			}
		}
	}

	// TODO (aakar) Replace this by DialogSettings.getOrCreateSection when Eclipse 3.6 is no longer supported
	public IDialogSettings getOrCreateSection(IDialogSettings settings, String sectionName) {
		IDialogSettings section = settings.getSection(sectionName);
		if (section == null) {
			section = settings.addNewSection(sectionName);
		}
		return section;
	}
}
