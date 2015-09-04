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
package org.artop.ecuc.autosar4x.dsl.values.ui.contentassist

import autosar40.ecucparameterdef.EcucBooleanParamDef
import autosar40.ecucparameterdef.EcucEnumerationParamDef
import autosar40.ecucparameterdef.EcucFloatParamDef
import autosar40.ecucparameterdef.EcucIntegerParamDef
import autosar40.ecucparameterdef.EcucParamConfContainerDef
import autosar40.ecucparameterdef.EcucStringParamDef
import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter
import org.artop.ecuc.autosar4x.dsl.values.services.EcucValuesDslGrammarAccess
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.Assignment
import org.eclipse.xtext.EcoreUtil2
import org.eclipse.xtext.Keyword
import org.eclipse.xtext.RuleCall
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext
import org.eclipse.xtext.ui.editor.contentassist.ICompletionProposalAcceptor
import autosar40.ecucparameterdef.EcucAbstractStringParamDef
import autosar40.ecucparameterdef.EcucAddInfoParamDef

/**
 * see http://www.eclipse.org/Xtext/documentation.html#contentAssist on how to customize content assistant
 */
class EcucValuesDslProposalProvider extends AbstractEcucValuesDslProposalProvider {

	override complete_NUMERIC(EObject model, RuleCall ruleCall, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		if (model instanceof Parameter) {
			val def = model.definition
			if (def instanceof EcucFloatParamDef) {
				val defaultValue = def.defaultValue?.mixedText
				if (defaultValue != null && !defaultValue.empty) {
					acceptor.accept(createCompletionProposal(defaultValue,defaultValue, null, context))
				}
				acceptor.accept(createCompletionProposal("1","Integer", null, context))
				acceptor.accept(createCompletionProposal("1.0","Float", null, context))
			} else if (def instanceof EcucIntegerParamDef) {
				val defaultValue = def.defaultValue?.mixedText
				if (defaultValue != null && !defaultValue.empty) {
					acceptor.accept(createCompletionProposal(defaultValue,defaultValue, null, context))
				}
				acceptor.accept(createCompletionProposal("1","Integer", null, context))				
			}
		}
	}
	
	override completeStringValue_Value(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		if (model instanceof Parameter) {
			val def = model.definition
			if (def instanceof EcucAbstractStringParamDef) {
				acceptor.accept(createCompletionProposal("\"value\"","\"value\"", null, context))				
			} else if (def instanceof EcucAddInfoParamDef) {
				acceptor.accept(createCompletionProposal("\"doku\"","\"doku\"", null, context))				
			}
		}
	} 
	
	override completeBooleanValue_Value(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		if (model instanceof Parameter) {
			val def = model.definition
			if (def instanceof EcucBooleanParamDef) {
				super.completeBooleanValue_Value(model, assignment, context, acceptor)
			}
		}
	}
	
	@Inject EcucValuesDslGrammarAccess ga
	
	override completeKeyword(Keyword keyword, ContentAssistContext contentAssistContext, ICompletionProposalAcceptor acceptor) {
		if (keyword == ga.booleanLiteralAccess.falseFalseKeyword_1_0 || keyword == ga.booleanLiteralAccess.trueTrueKeyword_0_0) {
			val model = contentAssistContext.currentModel
			if (model instanceof Parameter) {
				val def = model.definition
				if (def instanceof EcucBooleanParamDef) {
					super.completeKeyword(keyword, contentAssistContext, acceptor)
				} else {
					return
				}
			}
		} else if (ga.parameterAccess.paramKeyword_1 == keyword) {
			val model = contentAssistContext.currentModel
			if (model instanceof Container) {
				val def = model.definition
				if (def instanceof EcucParamConfContainerDef) {
					if (def.parameters.size>0) {
						super.completeKeyword(keyword, contentAssistContext, acceptor)
					}
					return
				}
			}
		} else if (ga.containerAccess.containerKeyword_1 == keyword) {
			val model = contentAssistContext.currentModel
			if (model instanceof Container) {
				val def = model.definition
				if (def instanceof EcucParamConfContainerDef) {
					if (def.subContainers.size>0) {
						super.completeKeyword(keyword, contentAssistContext, acceptor)
					}
					return
				}
			} else if (model instanceof Module) {
				val def = model.definition
				if (def.containers.size>0) {
					super.completeKeyword(keyword, contentAssistContext, acceptor)
				}
				return
				
			}
		} else if (ga.referenceAccess.refKeyword_1 == keyword) {
			val model = contentAssistContext.currentModel
			if (model instanceof Container) {
				val def = model.definition
				if (def instanceof EcucParamConfContainerDef) {
					if (def.references.size>0) {
						super.completeKeyword(keyword, contentAssistContext, acceptor)
					}
					return
				}
			}
		}
		super.completeKeyword(keyword, contentAssistContext, acceptor)
	}
	
	override complete_STRING(EObject model, RuleCall ruleCall, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		if (model instanceof Parameter) {
			val def = model.definition
			if (def instanceof EcucStringParamDef) {
				super.complete_STRING(model, ruleCall, context, acceptor)
			}
		}
	}
	
	override completeEnumValue_Literal(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		val param = EcoreUtil2.getContainerOfType(model, Parameter)if (param != null) {
			val def = param.definition
			if (def instanceof EcucEnumerationParamDef) {
				if (def.literals.size > 0) {
					for (l : def.literals) {
						acceptor.accept(createCompletionProposal("."+l.shortName, "."+l.shortName, null, context))
					}
				} else {
					acceptor.accept(createCompletionProposal(".TBD", "TDB", null, context))
				}
				return
			}
		}
		
		super.completeEnumValue_Literal(model, assignment, context, acceptor)
	}
	
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

}
