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

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.internal.xpand2.ast.AbstractDefinition;
import org.eclipse.internal.xpand2.ast.Template;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.xtendxpand.ui.groups.TemplateGroup;
import org.eclipse.xpand2.XpandUtil;
import org.eclipse.xtend.expression.TypeSystem;
import org.eclipse.xtend.typesystem.Type;

/**
 * Extended template group that inherits from {@link TemplateGroup} in order to let fields be initialized with default
 * values when it is possible (default Xpand file and default definition template).
 */
public class ExtendedTemplateGroup extends TemplateGroup {

	/**
	 * The default expected Xpand template definition.
	 */
	private static final String DEFAULT_TEMPLATE_NAME = "main"; //$NON-NLS-1$

	/**
	 * Constructor.
	 * 
	 * @param groupName
	 *            The name this group.
	 * @param modelObject
	 *            The target model object.
	 * @param typeSystem
	 *            The considered type system.
	 */
	public ExtendedTemplateGroup(String groupName, EObject modelObject, TypeSystem typeSystem) {
		super(groupName, modelObject, typeSystem);
		initGroupSettings();
	}

	/**
	 * Constructor.
	 * 
	 * @param groupName
	 *            The name this group.
	 * @param modelObject
	 *            The target model object.
	 * @param typeSystem
	 *            The considered type system.
	 * @param dialogSettings
	 *            The settings of the dialog this group is attached to.
	 */
	public ExtendedTemplateGroup(String groupName, EObject modelObject, TypeSystem typeSystem, IDialogSettings dialogSettings) {
		super(groupName, modelObject, typeSystem, dialogSettings);
		initGroupSettings();
	}

	/**
	 * Initializes group settings in order to provide default values in fields (template file location and template
	 * definition name) to avoid user manually selecting Xpand file to apply.
	 */
	protected void initGroupSettings() {
		IDialogSettings settings = getDialogSettings();
		if (settings != null) {
			String key = getTemplateFileDialogSettingsKey(modelObject);
			IDialogSettings topLevelSection = settings.getSection(CODE_GEN_SECTION);
			if (topLevelSection == null) {
				topLevelSection = settings.addNewSection(CODE_GEN_SECTION);
			}

			IDialogSettings templateFileSection = topLevelSection.getSection(key);
			if (templateFileSection == null) {

				String templateFileLocation = getTemplateFileLocation();
				if (templateFileLocation != null) {
					// Create a new section
					templateFileSection = topLevelSection.addNewSection(key);

					// Store the location of the template file
					templateFileSection.put(key, templateFileLocation);

					// Store the name of the template to apply
					templateFileSection.put(STORE_SELECTED_DEFINITION, getDefaultTemplateDefinitionName());
				}
			}
		}
	}

	/**
	 * Returns the location of one default applicable Xpand template file, considering the target model object. Research
	 * criteria are applied to Xpand file, which must:
	 * <ul>
	 * <li>Belong to the same project as model object resource's one, or to one referenced project;</li>
	 * <li>Have a name that starts with the typesystem name of the model object;</li>
	 * <li>Contain a <tt>main</tt> definition template, applicable to meta-type of model object.</li>
	 * </ul>
	 * <p>
	 * Let's note that this is the first Xpand file that matches this criteria that is selected for default proposal.
	 * 
	 * @return The location of the default Xpand template file that can be found in the considered project;
	 *         <code>null</code> otherwise.
	 */
	protected String getTemplateFileLocation() {
		String result = null;

		IFile modelFile = EcorePlatformUtil.getFile(modelObject);
		if (modelFile != null) {
			IProject project = modelFile.getProject();
			if (project != null) {
				Type type = typeSystem.getType(modelObject);
				if (type != null) {
					String modelElementName = getSimpleTypeName(type);

					// Retrieve Xpand file which name starts with model element name
					List<IFile> xpandFiles = getApplicableXpandFiles(project, modelElementName);

					// Look for applicable Xpand file regarding model element name.
					for (IFile f : xpandFiles) {
						Template template = loadTemplate(f);
						if (template == null) {
							continue;
						}

						for (AbstractDefinition definition : template.getAllDefinitions()) {
							// TODO Replace filtering by one that takes inheritance hierarchy into account; see:
							// org.eclipse.sphinx.xtendxpand.ui.groups.TemplateGroup.createDefinitionFieldItems(List<AbstractDefinition>))
							if (getDefaultTemplateDefinitionName().equals(definition.getName())
									&& (type.getName().equals(definition.getTargetType()) || getSimpleTypeName(type).equals(
											definition.getTargetType()))) {
								result = f.getFullPath().toString();
								break;
							}
						}

						// Stop iteration on template files if an applicable one has been found
						if (result != null) {
							break;
						}
					}
				}
			}
		}

		return result;
	}

	/**
	 * @param project
	 *            The project whose members must be inspected for finding Xpand files.
	 * @param prefix
	 *            The expected prefix for Xpand files to return; cannot be <code>null</code> (but can be empty).
	 * @return The list of Xpand files whose name starts by the specified <code>prefix</code>.
	 */
	protected List<IFile> getApplicableXpandFiles(IProject project, String prefix) {
		List<IFile> result = new ArrayList<IFile>();

		Collection<IFile> allFiles = ExtendedPlatform.getAllFiles(project, true);
		for (IFile file : allFiles) {
			// Check whether file is an Xpand file and starts with specified prefix
			if (XpandUtil.TEMPLATE_EXTENSION.equals(file.getFileExtension()) && file.getName().startsWith(prefix)) {
				result.add(file);
			}
		}

		return result;
	}

	/**
	 * Returns the default name of Xpand template definition that will be searched with Xpand files for initializing
	 * <em>Definition</em> field in this group.
	 * <p>
	 * Clients may override this method in order to specify another default name.
	 * 
	 * @return The default template definition name to look for.
	 */
	protected String getDefaultTemplateDefinitionName() {
		return DEFAULT_TEMPLATE_NAME;
	}
}
