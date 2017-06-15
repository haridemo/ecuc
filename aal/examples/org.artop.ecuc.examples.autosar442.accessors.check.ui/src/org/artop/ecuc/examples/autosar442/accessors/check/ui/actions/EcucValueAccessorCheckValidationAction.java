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
package org.artop.ecuc.examples.autosar442.accessors.check.ui.actions;

import java.util.List;
import java.util.Map;

import org.artop.ecuc.examples.autosar442.accessors.check.ui.IEcucValidationUIConstants;
import org.artop.ecuc.gautosar.accessors.check.operations.AutosarCheckValidationOperation;
import org.eclipse.sphinx.emf.check.operations.BasicCheckValidationOperation;
import org.eclipse.sphinx.emf.check.ui.actions.BasicCheckValidationAction;

public class EcucValueAccessorCheckValidationAction extends BasicCheckValidationAction {

	public EcucValueAccessorCheckValidationAction() {
		this(IEcucValidationUIConstants.SUBMENU_VALIDATE_LABEL);
	}

	protected EcucValueAccessorCheckValidationAction(String text) {
		super(text);
	}

	@Override
	protected BasicCheckValidationOperation createCheckValidationOperation(List<Object> modelObjects, Map<Object, Object> options) {
		return new AutosarCheckValidationOperation(modelObjects, options);
	}
}
