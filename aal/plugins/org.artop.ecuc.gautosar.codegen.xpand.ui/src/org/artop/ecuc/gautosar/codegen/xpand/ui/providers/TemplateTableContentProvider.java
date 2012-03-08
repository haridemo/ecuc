/**
 * <copyright>
 * 
 * Copyright (c) See4sys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.gautosar.codegen.xpand.ui.providers;

import org.eclipse.jface.viewers.ArrayContentProvider;

public class TemplateTableContentProvider extends ArrayContentProvider {

	@Override
	public Object[] getElements(Object inputElement) {
		if (inputElement instanceof XpandAndCheckEvaluationRequestDescriptorProvider) {
			return ((XpandAndCheckEvaluationRequestDescriptorProvider) inputElement).getXpandAndCheckEvaluationRequestDescriptors().toArray();
		}
		return super.getElements(inputElement);
	}
}
