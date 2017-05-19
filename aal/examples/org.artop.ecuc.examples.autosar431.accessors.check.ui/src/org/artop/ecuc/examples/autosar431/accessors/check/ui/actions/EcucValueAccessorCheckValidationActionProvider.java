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
package org.artop.ecuc.examples.autosar431.accessors.check.ui.actions;

import org.eclipse.sphinx.emf.check.ui.actions.BasicCheckValidationAction;
import org.eclipse.sphinx.emf.check.ui.actions.BasicCheckValidationActionProvider;

public class EcucValueAccessorCheckValidationActionProvider extends BasicCheckValidationActionProvider {

	@Override
	protected BasicCheckValidationAction createValidateAction() {
		return new EcucValueAccessorCheckValidationAction();
	}
}
