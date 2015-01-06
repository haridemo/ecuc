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
package org.artop.ecuc.examples.autosar421.accessorgen.ui.handlers;

import org.artop.ecuc.autosar421.accessorgen.operations.GenerateEcucValueAccessor421Operation;
import org.artop.ecuc.examples.autosar421.accessorgen.ui.actions.GenerateEcucValueAccessor421GenAction;
import org.artop.ecuc.gautosar.accessorgen.ui.handlers.AbstractGenerateFromAutosarHandler;
import org.eclipse.core.commands.IHandler2;
import org.eclipse.core.resources.IFile;
import org.eclipse.sphinx.platform.operations.IWorkspaceOperation;

/**
 * A {@link IHandler2 command handler} for generating an ParameterValue accessors from an AUTOSAR model.
 */
public class GenerateParameterValueAccessor421GenHandler extends AbstractGenerateFromAutosarHandler {

	/*
	 * @see
	 * org.artop.ecuc.gautosar.paramdefgen.ui.handlers.AbstractGenerateFromAutosarHandler#createGenerateFromAutosarOperation
	 * (org.eclipse.core.resources.IFile)
	 */
	@Override
	protected IWorkspaceOperation createGenerateFromAutosarOperation(IFile autosarFile) {
		return new GenerateEcucValueAccessor421Operation(autosarFile,
				GenerateEcucValueAccessor421GenAction.DEFAULT_ABSOLUTE_QUALIFIED_AR_PACKAGE_NAME);
	}
}