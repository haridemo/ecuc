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

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

import org.eclipse.core.resources.IFile;

public class XpandAndCheckEvaluationRequestDescriptor {

	private static final String DEFAULT_DEFINE_BLOCK = "main"; //$NON-NLS-1$
	private Object targetObject;
	private IFile templateFile;
	private String defineBlock;

	private Collection<IFile> checkFiles;

	public XpandAndCheckEvaluationRequestDescriptor(Object targetObject, IFile templateFile) {
		this(targetObject, templateFile, DEFAULT_DEFINE_BLOCK);
	}

	public XpandAndCheckEvaluationRequestDescriptor(Object targetObject, IFile templateFile, String defineBlock) {
		this(targetObject, templateFile, defineBlock, Collections.<IFile> emptyList());
	}

	public XpandAndCheckEvaluationRequestDescriptor(Object targetObject, IFile templateFile, Collection<IFile> checkFiles) {
		this(targetObject, templateFile, DEFAULT_DEFINE_BLOCK, checkFiles);
	}

	public XpandAndCheckEvaluationRequestDescriptor(Object targetObject, IFile templateFile, String defineBlock, Collection<IFile> checkFiles) {
		this.targetObject = targetObject;
		this.templateFile = templateFile;
		this.defineBlock = defineBlock;
		this.checkFiles = checkFiles;
	}

	public Object getTargetObject() {
		return targetObject;
	}

	public void setTargetObject(Object targetObject) {
		this.targetObject = targetObject;
	}

	public Collection<IFile> getCheckFiles() {
		if (checkFiles == null) {
			checkFiles = new ArrayList<IFile>();
		}
		return checkFiles;
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
