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

import org.eclipse.core.resources.IFile;

public class XpandEvaluationRequestDescriptor {

	private static final String DEFAULT_DEFINE_BLOCK = "main"; //$NON-NLS-1$
	private Object targetObject;
	private IFile templateFile;
	private String defineBlock;

	public XpandEvaluationRequestDescriptor(Object targetObject, IFile templateFile) {
		this.targetObject = targetObject;
		this.templateFile = templateFile;
		defineBlock = DEFAULT_DEFINE_BLOCK;
	}

	public XpandEvaluationRequestDescriptor(Object targetObject, IFile templateFile, String defineBlock) {
		this.targetObject = targetObject;
		this.templateFile = templateFile;
		this.defineBlock = defineBlock;
	}

	public Object getTargetObject() {
		return targetObject;
	}

	public void setTargetObject(Object targetObject) {
		this.targetObject = targetObject;
	}

	public IFile getTemplateFile() {
		return templateFile;
	}

	public void setTemplateFile(IFile templateFile) {
		this.templateFile = templateFile;
	}

	public String getDefineBlock() {
		return defineBlock;
	}

	public void setDefineBlock(String defineBlock) {
		this.defineBlock = defineBlock;
	}
}
