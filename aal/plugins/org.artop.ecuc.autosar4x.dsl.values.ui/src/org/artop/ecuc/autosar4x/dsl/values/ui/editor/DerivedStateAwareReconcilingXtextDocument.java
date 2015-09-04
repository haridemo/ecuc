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
package org.artop.ecuc.autosar4x.dsl.values.ui.editor;

import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.ui.editor.model.DocumentTokenSource;
import org.eclipse.xtext.ui.editor.model.XtextDocument;
import org.eclipse.xtext.ui.editor.model.edit.ITextEditComposer;
import org.eclipse.xtext.util.concurrent.IUnitOfWork;

import com.google.inject.Inject;

/**
 * XtextDocument that leverages DerivedStateAwareReconcilingUnitOfWork when modified programmatically Workaround for
 * https://bugs.eclipse.org/bugs/show_bug.cgi?id=452515
 *
 * @author Christian Dietrich
 */
public class DerivedStateAwareReconcilingXtextDocument extends XtextDocument {

	private ITextEditComposer composer;

	@Inject
	public DerivedStateAwareReconcilingXtextDocument(DocumentTokenSource tokenSource, ITextEditComposer composer) {
		super(tokenSource, composer);
		this.composer = composer;
	}

	@Override
	public <T> T modify(IUnitOfWork<T, XtextResource> work) {
		readOnly(noWork);
		IUnitOfWork<T, XtextResource> reconcilingUnitOfWork = new DerivedStateAwareReconcilingUnitOfWork<T>(work, this, composer);
		return internalModify(reconcilingUnitOfWork);
	}

	private final static IUnitOfWork.Void<XtextResource> noWork = new IUnitOfWork.Void<XtextResource>() {
		@Override
		public void process(XtextResource state) throws Exception {
		}
	};

}
