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
package org.artop.ecuc.autosar421.accessorgen.operations;

import gautosar.ggenericstructure.ginfrastructure.GARPackage;

import org.artop.ecuc.autosar421.accessorgen.EcucValueAccessor421Generator;
import org.artop.ecuc.autosar4x.accessorgen.AbstractEcucValueAccessor4xGenerator;
import org.artop.ecuc.autosar4x.accessorgen.operations.AbstractGenerateEcucValueAccessor4xOperation;
import org.eclipse.core.resources.IFile;

public class GenerateEcucValueAccessor421Operation extends AbstractGenerateEcucValueAccessor4xOperation {

	public GenerateEcucValueAccessor421Operation(IFile autosarFile, String defaultAbsoluteQualifiedARPackageName) {
		super(autosarFile, defaultAbsoluteQualifiedARPackageName);
	}

	public GenerateEcucValueAccessor421Operation(String label, IFile autosarFile, String defaultAbsoluteQualifiedARPackageName) {
		super(label, autosarFile, defaultAbsoluteQualifiedARPackageName);
	}

	public GenerateEcucValueAccessor421Operation(String label, GARPackage arPackage) {
		super(label, arPackage);
	}

	public GenerateEcucValueAccessor421Operation(GARPackage arPackage) {
		super(arPackage);
	}

	@Override
	protected AbstractEcucValueAccessor4xGenerator createEcucValueAccessorGenerator() {
		return new EcucValueAccessor421Generator();
	}
}
