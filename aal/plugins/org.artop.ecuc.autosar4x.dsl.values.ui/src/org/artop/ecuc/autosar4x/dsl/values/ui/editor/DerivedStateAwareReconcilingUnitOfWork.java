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

import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.xtext.EcoreUtil2;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.ui.editor.model.IXtextDocument;
import org.eclipse.xtext.ui.editor.model.edit.ITextEditComposer;
import org.eclipse.xtext.ui.editor.model.edit.ReconcilingUnitOfWork;
import org.eclipse.xtext.util.CancelIndicator;
import org.eclipse.xtext.util.concurrent.IUnitOfWork;

/**
 * ReconcilingUnitOfWork that ignores derived model elements when resolving Workaround for
 * https://bugs.eclipse.org/bugs/show_bug.cgi?id=452515
 *
 * @author Christian Dietrich
 * @param <T>
 */
public class DerivedStateAwareReconcilingUnitOfWork<T> extends ReconcilingUnitOfWork<T> {

	private IXtextDocument document;
	private IUnitOfWork<T, XtextResource> work;
	private ITextEditComposer composer;

	public DerivedStateAwareReconcilingUnitOfWork(IUnitOfWork<T, XtextResource> work, IXtextDocument document, ITextEditComposer composer) {
		super(work, document, composer);
		this.work = work;
		this.document = document;
		this.composer = composer;
	}

	@Override
	public T exec(XtextResource state) throws Exception {
		String original = document.get();
		DocumentChangeListener documentChangeListener = new DocumentChangeListener();
		T result;
		try {
			document.addDocumentListener(documentChangeListener);
			// lazy linking URIs might change, so resolve everything before applying any changes
			EcoreUtil2.resolveAll(state.getContents().get(0), CancelIndicator.NullImpl);
			composer.beginRecording(state);
			result = work.exec(state);
			final TextEdit edit = composer.endRecording();
			if (edit != null) {
				if (documentChangeListener.hasDocumentChanged()) {
					throw new IllegalStateException("Cannot modify document textually and semantically within the same unit of work");
				}
				edit.apply(document);
			}
		} catch (RuntimeException e) {
			document.set(original);
			throw e;
		} catch (Exception e) {
			document.set(original);
			throw new RuntimeException(e);
		} finally {
			document.removeDocumentListener(documentChangeListener);
		}
		return result;
	}

	protected static class DocumentChangeListener implements IDocumentListener {

		private boolean documentChanged = false;

		public void documentAboutToBeChanged(DocumentEvent event) {
			// ignore
		}

		public void documentChanged(DocumentEvent event) {
			documentChanged = true;
		}

		public boolean hasDocumentChanged() {
			return documentChanged;
		}
	}

}
