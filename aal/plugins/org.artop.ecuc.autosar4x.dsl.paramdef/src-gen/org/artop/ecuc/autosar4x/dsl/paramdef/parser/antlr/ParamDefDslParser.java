/*
* generated by Xtext
*/
package org.artop.ecuc.autosar4x.dsl.paramdef.parser.antlr;

import com.google.inject.Inject;

import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.artop.ecuc.autosar4x.dsl.paramdef.services.ParamDefDslGrammarAccess;

public class ParamDefDslParser extends org.eclipse.xtext.parser.antlr.AbstractAntlrParser {
	
	@Inject
	private ParamDefDslGrammarAccess grammarAccess;
	
	@Override
	protected void setInitialHiddenTokens(XtextTokenStream tokenStream) {
		tokenStream.setInitialHiddenTokens("RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT");
	}
	
	@Override
	protected org.artop.ecuc.autosar4x.dsl.paramdef.parser.antlr.internal.InternalParamDefDslParser createParser(XtextTokenStream stream) {
		return new org.artop.ecuc.autosar4x.dsl.paramdef.parser.antlr.internal.InternalParamDefDslParser(stream, getGrammarAccess());
	}
	
	@Override 
	protected String getDefaultRuleName() {
		return "Model";
	}
	
	public ParamDefDslGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(ParamDefDslGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
}
