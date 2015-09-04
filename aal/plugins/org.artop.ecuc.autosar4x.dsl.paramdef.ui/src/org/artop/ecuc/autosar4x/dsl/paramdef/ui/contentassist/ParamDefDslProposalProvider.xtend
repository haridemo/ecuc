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
package org.artop.ecuc.autosar4x.dsl.paramdef.ui.contentassist

import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.RuleCall
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext
import org.eclipse.xtext.ui.editor.contentassist.ICompletionProposalAcceptor

/**
 * see http://www.eclipse.org/Xtext/documentation.html#contentAssist on how to customize content assistant
 */
class ParamDefDslProposalProvider extends AbstractParamDefDslProposalProvider {
	
	override complete_VALUE(EObject model, RuleCall ruleCall, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		acceptor.accept(createCompletionProposal("VALUE" , context))
		acceptor.accept(createCompletionProposal("1" , context))
		acceptor.accept(createCompletionProposal("true" , context))
		acceptor.accept(createCompletionProposal("false" , context))
		acceptor.accept(createCompletionProposal("\"VALUE\"" , context))
		super.complete_VALUE(model, ruleCall, context, acceptor)
	}
	
	override complete_KEY(EObject model, RuleCall ruleCall, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		acceptor.accept(createCompletionProposal("KEY" , context))
		acceptor.accept(createCompletionProposal("1" , context))
		acceptor.accept(createCompletionProposal("true" , context))
		acceptor.accept(createCompletionProposal("false" , context))
		acceptor.accept(createCompletionProposal("\"KEY\"" , context))
		super.complete_KEY(model, ruleCall, context, acceptor)
	}
	
	override complete_LOWER_MULTIPLICITY(EObject model, RuleCall ruleCall, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		acceptor.accept(createCompletionProposal("0" , context))
		acceptor.accept(createCompletionProposal("1" , context))
		super.complete_LOWER_MULTIPLICITY(model, ruleCall, context, acceptor)
	}
	
	override complete_UPPER_MULTIPLICITY(EObject model, RuleCall ruleCall, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		acceptor.accept(createCompletionProposal("1" , context))
		acceptor.accept(createCompletionProposal("*" , context))
		super.complete_UPPER_MULTIPLICITY(model, ruleCall, context, acceptor)
	}
	
	override complete_NUMBER(EObject model, RuleCall ruleCall, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		acceptor.accept(createCompletionProposal("1" , context))
		acceptor.accept(createCompletionProposal("1.0" , context))
		super.complete_NUMBER(model, ruleCall, context, acceptor)
	}
	

}
