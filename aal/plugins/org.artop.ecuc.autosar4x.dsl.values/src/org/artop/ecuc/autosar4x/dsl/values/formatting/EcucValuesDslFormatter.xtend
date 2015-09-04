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
package org.artop.ecuc.autosar4x.dsl.values.formatting

import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.services.EcucValuesDslGrammarAccess
import org.eclipse.xtext.formatting.impl.AbstractDeclarativeFormatter
import org.eclipse.xtext.formatting.impl.FormattingConfig

/**
 * This class contains custom formatting description.
 * 
 * see : http://www.eclipse.org/Xtext/documentation.html#formatting
 * on how and when to use it 
 * 
 * Also see {@link org.eclipse.xtext.xtext.XtextFormattingTokenSerializer} as an example
 */
class EcucValuesDslFormatter extends AbstractDeclarativeFormatter {

@Inject extension EcucValuesDslGrammarAccess ga
	
	override protected void configureFormatting(FormattingConfig c) {
		c.setIndentationIncrement.after(moduleAccess.leftCurlyBracketKeyword_6)
		c.setLinewrap.after(moduleAccess.leftCurlyBracketKeyword_6)
		c.setIndentationDecrement.before(moduleAccess.rightCurlyBracketKeyword_8)
		c.setLinewrap.before(moduleAccess.rightCurlyBracketKeyword_8)
		c.setIndentationIncrement.after(containerAccess.leftCurlyBracketKeyword_6)
		c.setLinewrap.after(containerAccess.leftCurlyBracketKeyword_6)
		c.setIndentationDecrement.before(containerAccess.rightCurlyBracketKeyword_8)
		c.setLinewrap.before(containerAccess.rightCurlyBracketKeyword_8)
		
		c.setLinewrap.before(moduleAccess.moduleKeyword_1)
		c.setLinewrap.before(containerAccess.containerKeyword_1)
		c.setLinewrap.before(parameterAccess.paramKeyword_1)
		c.setLinewrap.before(referenceAccess.refKeyword_1)
		
		c.setNoLinewrap.before(enumValueAccess.literalAssignment)
		c.setNoLinewrap.before(parameterAccess.equalsSignKeyword_3)
		c.setNoLinewrap.before(containerAccess.equalsSignKeyword_5)
		c.setNoLinewrap.before(parameterAccess.definitionAssignment_2)
		c.setNoLinewrap.before(containerAccess.definitionAssignment_2)
		c.setNoLinewrap.before(containerAccess.shortNameAssignment_3_1)
		c.setNoLinewrap.before(containerAccess.colonKeyword_3_0)
		
		c.setNoLinewrap.before(referenceValueAccess.containerAssignment)
		c.setNoLinewrap.before(referenceAccess.equalsSignKeyword_3)
		c.setNoLinewrap.before(referenceAccess.definitionAssignment_2)
		
		c.setNoSpace.after(parameterAccess.leftParenthesisKeyword_5_0)
		c.setNoSpace.after(referenceAccess.leftParenthesisKeyword_5_0)
		c.setNoSpace.after(containerAccess.leftParenthesisKeyword_4_0)
		
		c.setNoSpace.before(parameterAccess.rightParenthesisKeyword_5_2)
		c.setNoSpace.before(referenceAccess.rightParenthesisKeyword_5_2)
		c.setNoSpace.before(containerAccess.rightParenthesisKeyword_4_2)
	}
}
