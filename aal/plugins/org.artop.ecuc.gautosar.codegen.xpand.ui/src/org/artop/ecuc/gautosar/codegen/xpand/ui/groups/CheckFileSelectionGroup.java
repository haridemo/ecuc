/**
 * <copyright>
 * 
 * Copyright (c) {contributing company name} and others.
 * All rights reserved. This program and the accompanying materials 
 * are made available under the terms of the Artop Software License 
 * Based on Released AUTOSAR Material (ASLR) which accompanies this 
 * distribution, and is available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     see4sys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.gautosar.codegen.xpand.ui.groups;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.sphinx.emf.mwe.IXtendXpandConstants;
import org.eclipse.sphinx.emf.resource.ExtendedResource;
import org.eclipse.sphinx.emf.resource.ExtendedResourceAdapterFactory;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.ui.groups.FileSelectionGroup;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.xtend.check.CheckUtils;
import org.eclipse.xtend.expression.TypeSystem;
import org.eclipse.xtend.typesystem.Type;

/**
 * Extended Check file selection group that inherits from {@link FileSelectionGroup} in order to let fields be
 * initialized with default values when it is possible (default applicable Check files).
 */
public class CheckFileSelectionGroup extends FileSelectionGroup {

	@SuppressWarnings("restriction")
	private static final String BUNDLE_NAME = org.eclipse.sphinx.xtendxpand.ui.internal.Activator.getPlugin().getSymbolicName();

	/**
	 * The Check group dialog settings keys.
	 */
	protected static final String CHECK_SECTION_NAME = BUNDLE_NAME + ".CHECK_SECTION"; //$NON-NLS-1$
	protected static final String STORE_CHECK_FILES = "CHECK_FILES$"; //$NON-NLS-1$

	/**
	 * The target model object.
	 */
	protected EObject modelObject;

	/**
	 * The {@linkplain TypeSystem Type System} to be used.
	 */
	protected TypeSystem typeSystem;

	/**
	 * Constructor.
	 * 
	 * @param modelObject
	 *            The target model object.
	 * @param typeSystem
	 *            The considered type system.
	 * @param dialogSettings
	 *            The settings of the dialog this group is attached to.
	 */
	public CheckFileSelectionGroup(EObject modelObject, TypeSystem typeSystem, IDialogSettings dialogSettings) {
		super(Messages.label_checkFilesGroupName, Messages.label_checkFilesEnableButton, new String(), IXtendXpandConstants.CHECK_EXTENSION, null,
				dialogSettings);
		this.modelObject = modelObject;
		this.typeSystem = typeSystem;
		initGroupSettings();
	}

	/**
	 * Initializes group settings in order to provide default values in fields (file location) to avoid user manually
	 * selecting Check file to apply.
	 */
	protected void initGroupSettings() {
		// Retrieve applicable Check files and store them (if found)
		List<IFile> checkFiles = getDefaultCheckFiles();
		if (!checkFiles.isEmpty()) {

			IDialogSettings settings = getDialogSettings();
			if (settings != null) {
				IDialogSettings topLevelSection = settings.getSection(CHECK_SECTION_NAME);
				if (topLevelSection == null) {
					topLevelSection = settings.addNewSection(CHECK_SECTION_NAME);
				}

				String key = getCheckFilesDialogSettingsKey(modelObject);
				IDialogSettings checkFilesSection = topLevelSection.getSection(key);
				if (checkFilesSection == null) {
					checkFilesSection = topLevelSection.addNewSection(key);
				}

				String[] filesPaths = new String[checkFiles.size()];
				int i = 0;
				for (IFile f : checkFiles) {
					filesPaths[i] = f.getFullPath().makeRelative().toString();
					i++;
				}

				checkFilesSection.put(STORE_ENABLE_BUTTON, true);
				checkFilesSection.put(STORE_SELECTED_FILES, filesPaths);
			}
		}
	}

	@Override
	protected void loadGroupSettings() {
		IDialogSettings settings = getDialogSettings();
		if (settings != null) {
			IDialogSettings topLevelSection = settings.getSection(CHECK_SECTION_NAME);
			if (topLevelSection != null) {
				String key = getCheckFilesDialogSettingsKey(modelObject);
				IDialogSettings checkFilesSection = topLevelSection.getSection(key);
				if (checkFilesSection != null) {
					String[] items = checkFilesSection.getArray(STORE_SELECTED_FILES);
					boolean enableCheck = checkFilesSection.getBoolean(STORE_ENABLE_BUTTON);
					if (items != null) {
						setEnabledButtonSelection(enableCheck);
						for (String fullPath : items) {
							IFile file = getFile(fullPath);
							if (file != null && file.exists()) {
								addFile(file);
							}
						}
						updateFileSelectionEnableState(enableCheck);
					}
				}
			}
		}
	}

	@Override
	public void saveGroupSettings() {
		IDialogSettings settings = getDialogSettings();
		if (settings != null) {
			IDialogSettings topLevelSection = settings.getSection(CHECK_SECTION_NAME);
			if (topLevelSection == null) {
				topLevelSection = settings.addNewSection(CHECK_SECTION_NAME);
			}

			String key = getCheckFilesDialogSettingsKey(modelObject);
			IDialogSettings checkFilesSection = topLevelSection.getSection(key);
			if (checkFilesSection == null) {
				checkFilesSection = topLevelSection.addNewSection(key);
			}

			Collection<IFile> files = getFiles();
			String[] items = new String[files.size()];
			int i = 0;
			for (IFile file : files) {
				items[i] = file.getFullPath().makeRelative().toString();
				i++;
			}
			checkFilesSection.put(STORE_SELECTED_FILES, items);
			checkFilesSection.put(STORE_ENABLE_BUTTON, getEnableButtonState());
		}
	}

	/**
	 * @param object
	 *            The object from which dialog settings key must be created.
	 * @return The Check files dialog settings key, based on the specified {@link EObject}.
	 */
	protected String getCheckFilesDialogSettingsKey(EObject object) {
		// Robustness
		Assert.isNotNull(object);

		URI uri;
		ExtendedResource extendedResource = ExtendedResourceAdapterFactory.INSTANCE.adapt(object.eResource());
		if (extendedResource != null) {
			uri = extendedResource.getURI(object);
		} else {
			uri = EcoreUtil.getURI(object);
		}

		return CheckFileSelectionGroup.STORE_CHECK_FILES + uri.toString();
	}

	/**
	 * Returns a list of default applicable Check files, considering the target model object. Research criteria are
	 * applied to Check files, which must:
	 * <ul>
	 * <li>Belong to the same project as model object resource's one, or to one referenced project;</li>
	 * <li>Have a name that starts with the type-system name of the model object.</li>
	 * </ul>
	 * 
	 * @return The Check files that this group can suggest as default applicable files to user.
	 */
	protected List<IFile> getDefaultCheckFiles() {
		List<IFile> result = new ArrayList<IFile>();

		IFile modelFile = EcorePlatformUtil.getFile(modelObject);
		if (modelFile != null) {
			IProject project = modelFile.getProject();
			if (project != null) {
				Type type = typeSystem.getType(modelObject);
				if (type != null) {
					String modelElementName = getSimpleTypeName(type);

					// Retrieve Check files which name starts with model element name
					Collection<IFile> allFiles = ExtendedPlatform.getAllFiles(project, true);
					for (IFile file : allFiles) {
						// Check whether file is a Check file and starts with specified prefix
						if (CheckUtils.FILE_EXTENSION.equals(file.getFileExtension()) && file.getName().startsWith(modelElementName)) {
							result.add(file);
						}
					}
				}
			}
		}

		return result;
	}

	/**
	 * @param type
	 *            The type of object for which simple name must be returned.
	 * @return The simple name of the given {@link Type}.
	 */
	protected String getSimpleTypeName(Type type) {
		String typeName = type.getName();
		int idx = typeName.lastIndexOf(IXtendXpandConstants.NS_DELIMITER);
		return idx != -1 && typeName.length() >= idx + IXtendXpandConstants.NS_DELIMITER.length() ? typeName.substring(idx
				+ IXtendXpandConstants.NS_DELIMITER.length()) : typeName;
	}
}
