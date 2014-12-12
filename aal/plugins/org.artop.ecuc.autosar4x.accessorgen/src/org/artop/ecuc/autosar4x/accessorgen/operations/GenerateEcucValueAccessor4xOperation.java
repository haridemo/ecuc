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

import org.artop.ecuc.autosar4x.accessorgen.EcucValueAccessor4xGenerator;
import org.artop.ecuc.autosar4x.accessorgen.internal.messages.Messages;
import org.artop.ecuc.gautosar.accessorgen.operations.AbstractGenerateFromAutosarOperation;
import org.artop.ecuc.gautosar.accessorgen.operations.IGenerateFromAutosarOperation;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubMonitor;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;

/**
 * A {@link IGenerateFromAutosarOperation operation} for generating the ECUC value accessors from an AUTOSAR model.
 */
public class GenerateEcucValueAccessor4xOperation extends AbstractGenerateFromAutosarOperation {

	private static final String SRC_GEN_PATH = "src-gen"; //$NON-NLS-1$

	public GenerateEcucValueAccessor4xOperation(IFile autosarFile, String absoluteQualifiedARPackageName) {
		super(Messages.operation_generateEcucValueAccessor_label, autosarFile, absoluteQualifiedARPackageName);
	}

	public GenerateEcucValueAccessor4xOperation(String label, IFile autosarFile, String absoluteQualifiedARPackageName) {
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
		SubMonitor progress = SubMonitor.convert(monitor, "Generating EcucValue Accessors", 100); //$NON-NLS-1$
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}

		if (targetProject != null && arPackage instanceof ARPackage) {
			EcucValueAccessor4xGenerator ecucValueAccessorGenerator = createEcucValueAccessorGenerator();
			String srcFolderName = SRC_GEN_PATH + "/" + targetProject.getName().replaceAll("\\.", "/"); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
			ecucValueAccessorGenerator.writeAccessorClasses(arPackage, srcFolderName, targetProject.getName(), targetProject);
			ecucValueAccessorGenerator.generateEcucValueAccessorFactoryClass(targetProject, srcFolderName, targetProject.getName(),
					getAutosarRevision(progress));
		}
	}

	protected EcucValueAccessor4xGenerator createEcucValueAccessorGenerator() {
		return new EcucValueAccessor4xGenerator();
	}
}