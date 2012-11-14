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
package org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages;

import org.artop.ecuc.gautosar.codegen.xpand.ui.groups.CheckFileSelectionGroup;
import org.eclipse.core.resources.IFile;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.xtendxpand.ui.wizards.pages.CheckConfigurationPage;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.xtend.expression.TypeSystem;

/**
 * Extended Check configuration page that inherits from {@link CheckConfigurationPage} in order to extend creation of
 * {@linkplain org.eclipse.sphinx.platform.ui.groups.FileSelectionGroup File Selection Group} to let default Check
 * file(s) be suggested to user when wizard opens.
 */
public class ExtendedCheckConfigurationPage extends CheckConfigurationPage {

	/**
	 * The {@linkplain TypeSystem Type System} to use within the context of this wizard page.
	 */
	protected TypeSystem typeSystem;

	/**
	 * Constructor.
	 * 
	 * @param pageName
	 *            The name of this wizard page.
	 */
	public ExtendedCheckConfigurationPage(String pageName) {
		super(pageName);
	}

	/**
	 * Initializes this page with the specified model object and type system.
	 * 
	 * @param modelObject
	 *            The target model object.
	 * @param typeSystem
	 *            The type system to consider.
	 */
	public void init(EObject modelObject, TypeSystem typeSystem) {
		super.init(modelObject);
		this.typeSystem = typeSystem;
	}

	/**
	 * Overrides default implementation in order to instantiate a {@link CheckFileSelectionGroup} that has the
	 * capability to suggest default applicable Check file(s), if any.
	 * 
	 * @param parent
	 *            The parent composite within which group must be created.
	 * @see org.eclipse.sphinx.xtendxpand.ui.wizards.pages.CheckConfigurationPage#createCheckGroup(org.eclipse.swt.widgets.Composite)
	 */
	@Override
	protected void createCheckGroup(Composite parent) {
		IFile modelFile = EcorePlatformUtil.getFile(modelObject);
		if (modelFile != null) {
			checkGroup = new CheckFileSelectionGroup(modelObject, typeSystem, getDialogSettings());
			checkGroup.setSectionName(getCheckFileSelectionSectionName(modelObject));
			checkGroup.createContent(parent, 3);
		}
	}
}
