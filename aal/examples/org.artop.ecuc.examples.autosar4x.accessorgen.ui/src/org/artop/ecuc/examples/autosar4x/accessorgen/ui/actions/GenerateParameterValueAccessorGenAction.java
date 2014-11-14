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
import org.artop.ecuc.autosar4x.accessorgen.operations.GenerateParameterValueAccessorOperation;
import org.artop.ecuc.gautosar.accessorgen.ui.actions.AbstractGenerateFromAutosarAction;
import org.eclipse.core.resources.IFile;
import org.eclipse.sphinx.platform.operations.IWorkspaceOperation;
import org.eclipse.ui.actions.BaseSelectionListenerAction;

/**
 * An {@link BaseSelectionListenerAction action} for generating an AUTSOAR parameterValue accessors from an AUTOSAR
 * model.
 */
public class GenerateParameterValueAccessorGenAction extends AbstractGenerateFromAutosarAction {

	public static final String ABSOLUTE_QUALIFIED_AR_PACKAGE_NAME = "/AUTOSAR/EcucDefs"; //$NON-NLS-1$

	public GenerateParameterValueAccessorGenAction() {
		super(Messages.operation_generateParameterValueAccessor_label);
	}

	public GenerateParameterValueAccessorGenAction(String text) {
		super(text);
	}

	/*
	 * @see
	 * org.artop.ecuc.gautosar.paramdefgen.ui.actions.AbstractGenerateFromAutosarAction#createGenerateFromAutosarOperation
	 * (org.eclipse.core.resources.IFile)
	 */
	@Override
	protected IWorkspaceOperation createGenerateFromAutosarOperation(IFile autosarFile) {
		return new GenerateParameterValueAccessorOperation(autosarFile, ABSOLUTE_QUALIFIED_AR_PACKAGE_NAME);
	}
}
