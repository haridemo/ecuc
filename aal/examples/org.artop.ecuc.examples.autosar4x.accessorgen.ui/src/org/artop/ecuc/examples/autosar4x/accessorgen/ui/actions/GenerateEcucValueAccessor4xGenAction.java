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
package org.artop.ecuc.examples.autosar4x.accessorgen.ui.actions;

import org.artop.ecuc.autosar4x.accessorgen.internal.messages.Messages;
import org.artop.ecuc.autosar4x.accessorgen.operations.GenerateEcucValueAccessor4xOperation;
import org.artop.ecuc.gautosar.accessorgen.ui.actions.AbstractGenerateFromAutosarAction;
import org.eclipse.core.resources.IFile;
import org.eclipse.sphinx.platform.operations.IWorkspaceOperation;
import org.eclipse.ui.actions.BaseSelectionListenerAction;

import gautosar.ggenericstructure.ginfrastructure.GARPackage;

/**
 * An {@link BaseSelectionListenerAction action} for generating an AUTSOAR ECUC value accessors from an AUTOSAR model.
 */
public class GenerateEcucValueAccessor4xGenAction extends AbstractGenerateFromAutosarAction {

	public static final String DEFAULT_ABSOLUTE_QUALIFIED_AR_PACKAGE_NAME = "/AUTOSAR/EcucDefs"; //$NON-NLS-1$

	public GenerateEcucValueAccessor4xGenAction() {
		super(Messages.operation_generateEcucValueAccessor_label);
	}

	public GenerateEcucValueAccessor4xGenAction(String text) {
		super(text);
	}

	/*
	 * @see org.artop.ecuc.gautosar.paramdefgen.ui.actions.AbstractGenerateFromAutosarAction#
	 * createGenerateFromAutosarOperation (org.eclipse.core.resources.IFile)
	 */
	@Override
	protected IWorkspaceOperation createGenerateFromAutosarOperation(IFile autosarFile) {
		return new GenerateEcucValueAccessor4xOperation(autosarFile, DEFAULT_ABSOLUTE_QUALIFIED_AR_PACKAGE_NAME);
	}

	/*
	 * @see org.artop.ecuc.gautosar.accessorgen.ui.actions.AbstractGenerateFromAutosarAction#
	 * createGenerateFromAutosarOperation (gautosar.ggenericstructure.ginfrastructure.GARPackage)
	 */
	@Override
	protected IWorkspaceOperation createGenerateFromAutosarOperation(GARPackage arPackage) {
		return new GenerateEcucValueAccessor4xOperation(arPackage);
	}
}
