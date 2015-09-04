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
package org.artop.ecuc.autosar4x.dsl.values.ui;

import org.artop.ecuc.autosar4x.dsl.values.ui.editor.DerivedStateAwareReconcilingXtextDocument;
import org.artop.ecuc.autosar4x.dsl.values.ui.editor.MyDslEditorOpener;
import org.artop.ecuc.autosar4x.dsl.values.ui.editor.MyDslHyperlinkHelper;
import org.artop.ecuc.autosar4x.dsl.values.ui.labeling.ClasspathAwareImageHelper;
import org.artop.ecuc.autosar4x.dsl.values.ui.templates.AutoFillTemplateContextType;
import org.artop.ecuc.autosar4x.dsl.values.ui.templates.AutoFillTemplateProposalProvider;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.xtext.ui.LanguageSpecific;
import org.eclipse.xtext.ui.PluginImageHelper;
import org.eclipse.xtext.ui.editor.IURIEditorOpener;
import org.eclipse.xtext.ui.editor.contentassist.ITemplateProposalProvider;
import org.eclipse.xtext.ui.editor.hyperlinking.IHyperlinkHelper;
import org.eclipse.xtext.ui.editor.model.IXtextDocument;
import org.eclipse.xtext.ui.editor.model.XtextDocument;
import org.eclipse.xtext.ui.editor.templates.XtextTemplateContextType;

/**
 * Use this class to register components to be used within the IDE.
 */
public class EcucValuesDslUiModule extends org.artop.ecuc.autosar4x.dsl.values.ui.AbstractEcucValuesDslUiModule {
	public EcucValuesDslUiModule(AbstractUIPlugin plugin) {
		super(plugin);
	}
	
	public Class<? extends XtextTemplateContextType> bindXtextTemplateContextType() {
		return AutoFillTemplateContextType.class;
	}
	
	@Override
	public Class<? extends ITemplateProposalProvider> bindITemplateProposalProvider() {
		return AutoFillTemplateProposalProvider.class;
	}
	
	public Class<? extends IXtextDocument> bindIXtextDocument() {
		return DerivedStateAwareReconcilingXtextDocument.class;
	}
	public Class<? extends XtextDocument> bindXtextDocument() {
		return DerivedStateAwareReconcilingXtextDocument.class;
	}
	
	public Class<? extends PluginImageHelper> bindPluginImageHelper() {
		return ClasspathAwareImageHelper.class;
	}
	
	public Class<? extends IHyperlinkHelper> bindIHyperlinkHelper() {
		return MyDslHyperlinkHelper.class;
	}
	
	@Override
    public void configureLanguageSpecificURIEditorOpener(com.google.inject.Binder binder) {
        binder.bind(IURIEditorOpener.class).annotatedWith(LanguageSpecific.class).to(MyDslEditorOpener.class);
    }
}
