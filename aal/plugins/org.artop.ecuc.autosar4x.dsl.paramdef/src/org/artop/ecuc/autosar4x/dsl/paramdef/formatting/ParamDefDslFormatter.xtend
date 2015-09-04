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
package org.artop.ecuc.autosar4x.dsl.paramdef.formatting

import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.paramdef.services.ParamDefDslGrammarAccess
import org.eclipse.xtext.formatting.impl.AbstractDeclarativeFormatter
import org.eclipse.xtext.formatting.impl.FormattingConfig

/**
 * This class contains custom formatting description.
 * 
 * see : http://www.eclipse.org/Xtext/documentation.html#formatting
 * on how and when to use it 
 * 
 * Also see {@link org.eclipse.xtext.xtext.XtextFormattingTokenSerializer} as an example
 * 
 */
class ParamDefDslFormatter extends AbstractDeclarativeFormatter {

	@Inject extension ParamDefDslGrammarAccess
	
	override protected void configureFormatting(FormattingConfig c) {
		c.setLinewrap.before(moduleDefAccess.moduleKeyword_0)
		c.setIndentationIncrement.after(moduleDefAccess.leftCurlyBracketKeyword_3)
		c.setIndentationDecrement.before(moduleDefAccess.rightCurlyBracketKeyword_5)
		c.setLinewrap.before(moduleDefAccess.rightCurlyBracketKeyword_5)
		c.setLinewrap.before(moduleDefAccess.leftParenthesisKeyword_2_0)
		c.setLinewrap.after(moduleDefAccess.leftParenthesisKeyword_2_0)
		c.setIndentationIncrement.after(moduleDefAccess.leftParenthesisKeyword_2_0)
		c.setLinewrap.before(moduleDefAccess.rightParenthesisKeyword_2_2)
		c.setLinewrap.before(moduleDefAccess.rightParenthesisKeyword_2_2)
		c.setIndentationDecrement.before(moduleDefAccess.rightParenthesisKeyword_2_2)
		c.setLinewrap.before(moduleDefAccess.descKeyword_2_1_0_0)
		c.setLinewrap.before(moduleDefAccess.tagsKeyword_2_1_1_0)
		
		c.setLinewrap.before(containerDefAccess.containerKeyword_0)
		c.setIndentationIncrement.after(containerDefAccess.leftCurlyBracketKeyword_3)
		c.setIndentationDecrement.before(containerDefAccess.rightCurlyBracketKeyword_5)
		c.setLinewrap.before(containerDefAccess.rightCurlyBracketKeyword_5)
		c.setLinewrap.before(containerDefAccess.rightCurlyBracketKeyword_5)
		c.setLinewrap.before(containerDefAccess.leftParenthesisKeyword_2_0)
		c.setLinewrap.after(containerDefAccess.leftParenthesisKeyword_2_0)
		c.setIndentationIncrement.after(containerDefAccess.leftParenthesisKeyword_2_0)
		c.setLinewrap.before(containerDefAccess.rightParenthesisKeyword_2_2)
		c.setLinewrap.before(containerDefAccess.rightParenthesisKeyword_2_2)
		c.setIndentationDecrement.before(containerDefAccess.rightParenthesisKeyword_2_2)
		c.setLinewrap.before(containerDefAccess.requiresIndexKeyword_2_1_0_0)
		c.setLinewrap.before(containerDefAccess.descKeyword_2_1_1_0)
		c.setLinewrap.before(containerDefAccess.tagsKeyword_2_1_2_0)
		c.setLinewrap.before(containerDefAccess.lowerMultiplicityKeyword_2_1_3_0)
		c.setLinewrap.before(containerDefAccess.upperMultiplicityKeyword_2_1_4_0)
		
		
		c.setLinewrap.before(choiceContainerDefAccess.choiceKeyword_0)
		c.setIndentationIncrement.after(choiceContainerDefAccess.leftCurlyBracketKeyword_3)
		c.setIndentationDecrement.before(choiceContainerDefAccess.rightCurlyBracketKeyword_5)
		c.setLinewrap.before(choiceContainerDefAccess.rightCurlyBracketKeyword_5)
		c.setLinewrap.before(choiceContainerDefAccess.leftParenthesisKeyword_2_0)
		c.setLinewrap.after(choiceContainerDefAccess.leftParenthesisKeyword_2_0)
		c.setIndentationIncrement.after(choiceContainerDefAccess.leftParenthesisKeyword_2_0)
		c.setLinewrap.before(choiceContainerDefAccess.rightParenthesisKeyword_2_2)
		c.setLinewrap.before(choiceContainerDefAccess.rightParenthesisKeyword_2_2)
		c.setIndentationDecrement.before(choiceContainerDefAccess.rightParenthesisKeyword_2_2)
		
		c.setLinewrap.before(choiceContainerDefAccess.requiresIndexKeyword_2_1_0_0)
		c.setLinewrap.before(choiceContainerDefAccess.descKeyword_2_1_1_0)
		c.setLinewrap.before(choiceContainerDefAccess.tagsKeyword_2_1_2_0)
		c.setLinewrap.before(choiceContainerDefAccess.lowerMultiplicityKeyword_2_1_3_0)
		c.setLinewrap.before(choiceContainerDefAccess.upperMultiplicityKeyword_2_1_4_0)
		
		c.setLinewrap.before(parameterDefAccess.paramKeyword_0)
		c.setLinewrap.before(parameterDefAccess.leftParenthesisKeyword_4_0)
		c.setLinewrap.after(parameterDefAccess.leftParenthesisKeyword_4_0)
		c.setIndentationIncrement.after(parameterDefAccess.leftParenthesisKeyword_4_0)
		c.setLinewrap.before(parameterDefAccess.rightParenthesisKeyword_4_2)
		c.setLinewrap.before(parameterDefAccess.rightParenthesisKeyword_4_2)
		c.setIndentationDecrement.before(parameterDefAccess.rightParenthesisKeyword_4_2)
		c.setLinewrap.before(parameterDefAccess.requiresIndexKeyword_4_1_0_0)
		c.setLinewrap.before(parameterDefAccess.defaultKeyword_4_1_1_0)
		c.setLinewrap.before(parameterDefAccess.literalsKeyword_4_1_2_0)
		c.setLinewrap.before(parameterDefAccess.descKeyword_4_1_3_0)
		c.setLinewrap.before(parameterDefAccess.tagsKeyword_4_1_4_0)
		c.setLinewrap.before(parameterDefAccess.lowerMultiplicityKeyword_4_1_5_0)
		c.setLinewrap.before(parameterDefAccess.upperMultiplicityKeyword_4_1_6_0)
		c.setLinewrap.before(parameterDefAccess.minKeyword_4_1_7_0)
		c.setLinewrap.before(parameterDefAccess.maxKeyword_4_1_8_0)
		
		c.setLinewrap.before(referenceDefAccess.refKeyword_0)
		c.setLinewrap.before(referenceDefAccess.leftParenthesisKeyword_5_0)
		c.setLinewrap.after(referenceDefAccess.leftParenthesisKeyword_5_0)
		c.setIndentationIncrement.after(referenceDefAccess.leftParenthesisKeyword_5_0)
		c.setLinewrap.before(referenceDefAccess.rightParenthesisKeyword_5_2)
		c.setLinewrap.before(referenceDefAccess.rightParenthesisKeyword_5_2)
		c.setIndentationDecrement.before(referenceDefAccess.rightParenthesisKeyword_5_2)
		c.setLinewrap.before(referenceDefAccess.requiresIndexKeyword_5_1_0_0)
		c.setLinewrap.before(referenceDefAccess.descKeyword_5_1_1_0)
		c.setLinewrap.before(referenceDefAccess.tagsKeyword_5_1_2_0)
		c.setLinewrap.before(referenceDefAccess.lowerMultiplicityKeyword_5_1_3_0)
		c.setLinewrap.before(referenceDefAccess.upperMultiplicityKeyword_5_1_4_0)
		
		c.setLinewrap.before(instanceReferenceDefAccess.irefKeyword_0)
		c.setLinewrap.before(instanceReferenceDefAccess.leftParenthesisKeyword_6_0)
		c.setLinewrap.after(instanceReferenceDefAccess.leftParenthesisKeyword_6_0)
		c.setIndentationIncrement.after(instanceReferenceDefAccess.leftParenthesisKeyword_6_0)
		c.setLinewrap.before(instanceReferenceDefAccess.rightParenthesisKeyword_6_2)
		c.setLinewrap.before(instanceReferenceDefAccess.rightParenthesisKeyword_6_2)
		c.setIndentationDecrement.before(instanceReferenceDefAccess.rightParenthesisKeyword_6_2)
		c.setLinewrap.before(instanceReferenceDefAccess.requiresIndexKeyword_6_1_0_0)
		c.setLinewrap.before(instanceReferenceDefAccess.descKeyword_6_1_1_0)
		c.setLinewrap.before(instanceReferenceDefAccess.tagsKeyword_6_1_2_0)
		c.setLinewrap.before(instanceReferenceDefAccess.lowerMultiplicityKeyword_6_1_3_0)
		c.setLinewrap.before(instanceReferenceDefAccess.upperMultiplicityKeyword_6_1_4_0)
		
		c.setLinewrap.before(foreignReferenceDefAccess.frefKeyword_0)
		c.setLinewrap.before(foreignReferenceDefAccess.leftParenthesisKeyword_4_0)
		c.setLinewrap.after(foreignReferenceDefAccess.leftParenthesisKeyword_4_0)
		c.setIndentationIncrement.after(foreignReferenceDefAccess.leftParenthesisKeyword_4_0)
		c.setLinewrap.before(foreignReferenceDefAccess.rightParenthesisKeyword_4_2)
		c.setLinewrap.before(foreignReferenceDefAccess.rightParenthesisKeyword_4_2)
		c.setIndentationDecrement.before(foreignReferenceDefAccess.rightParenthesisKeyword_4_2)
		c.setLinewrap.before(foreignReferenceDefAccess.requiresIndexKeyword_4_1_0_0)
		c.setLinewrap.before(foreignReferenceDefAccess.descKeyword_4_1_1_0)
		c.setLinewrap.before(foreignReferenceDefAccess.tagsKeyword_4_1_2_0)
		c.setLinewrap.before(foreignReferenceDefAccess.lowerMultiplicityKeyword_4_1_3_0)
		c.setLinewrap.before(foreignReferenceDefAccess.upperMultiplicityKeyword_4_1_4_0)
		
	}
}
