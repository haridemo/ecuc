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
package org.artop.ecuc.autosar4x.accessorgen.operations;

import gautosar.ggenericstructure.ginfrastructure.GARPackage;

import org.artop.ecuc.autosar4x.accessorgen.ParameterValueAccessor4xGenerator;
import org.artop.ecuc.autosar4x.accessorgen.internal.messages.Messages;
import org.artop.ecuc.gautosar.accessorgen.operations.AbstractGenerateFromAutosarOperation;
import org.artop.ecuc.gautosar.accessorgen.operations.IGenerateFromAutosarOperation;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;

/**
 * A {@link IGenerateFromAutosarOperation operation} for generating a parameterValue accessors from an AUTOSAR model.
 */
public class GenerateParameterValueAccessorOperation extends AbstractGenerateFromAutosarOperation {

	private static final String SRC_GEN_PATH = "src-gen"; //$NON-NLS-1$

	public GenerateParameterValueAccessorOperation(IFile autosarFile, String absoluteQualifiedARPackageName) {
		super(Messages.operation_generateParameterValueAccessor_label, autosarFile, absoluteQualifiedARPackageName);
	}

	public GenerateParameterValueAccessorOperation(String label, IFile autosarFile, String absoluteQualifiedARPackageName) {
		super(label, autosarFile, absoluteQualifiedARPackageName);
	}

	/*
	 * @see org.artop.ecuc.gautosar.accessorgen.operations.AbstractGenerateFromAutosarOperation#generate(gautosar.
	 * ggenericstructure.ginfrastructure.GARPackage, org.eclipse.core.resources.IProject,
	 * org.eclipse.core.runtime.IProgressMonitor)
	 */
	@Override
	public void generate(final GARPackage arPackage, final IProject targetProject, IProgressMonitor monitor) throws CoreException,
			OperationCanceledException {
		monitor.setTaskName("Generating EcucValue Accessors");
		if (targetProject != null && arPackage instanceof ARPackage) {
			ParameterValueAccessor4xGenerator parameterAccessorGenerator = createParameterValueAccessorGenerator();
			parameterAccessorGenerator.writeAccessorClasses(arPackage,
					SRC_GEN_PATH + "/" + targetProject.getName().replaceAll("\\.", "/"), targetProject.getName(), targetProject); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
		}
	}

	protected ParameterValueAccessor4xGenerator createParameterValueAccessorGenerator() {
		return new ParameterValueAccessor4xGenerator();
	}
}
