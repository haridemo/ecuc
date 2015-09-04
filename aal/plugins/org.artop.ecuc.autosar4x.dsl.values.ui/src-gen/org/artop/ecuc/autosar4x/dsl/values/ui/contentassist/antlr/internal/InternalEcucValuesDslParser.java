package org.artop.ecuc.autosar4x.dsl.values.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import org.artop.ecuc.autosar4x.dsl.values.services.EcucValuesDslGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalEcucValuesDslParser extends AbstractInternalContentAssistParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_STRING", "RULE_ID", "RULE_INT", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'true'", "'false'", "'package'", "'module'", "'='", "'{'", "'}'", "':'", "'('", "')'", "'tags'", "','", "'container'", "'index'", "'param'", "'ref'", "'iref'", "'->'", "'.'", "'-'", "'/'"
    };
    public static final int RULE_STRING=4;
    public static final int RULE_SL_COMMENT=8;
    public static final int T__19=19;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__11=11;
    public static final int T__12=12;
    public static final int T__13=13;
    public static final int T__14=14;
    public static final int EOF=-1;
    public static final int T__30=30;
    public static final int T__31=31;
    public static final int RULE_ID=5;
    public static final int RULE_WS=9;
    public static final int RULE_ANY_OTHER=10;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int RULE_INT=6;
    public static final int T__29=29;
    public static final int T__22=22;
    public static final int RULE_ML_COMMENT=7;
    public static final int T__23=23;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__20=20;
    public static final int T__21=21;

    // delegates
    // delegators


        public InternalEcucValuesDslParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalEcucValuesDslParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalEcucValuesDslParser.tokenNames; }
    public String getGrammarFileName() { return "../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g"; }


     
     	private EcucValuesDslGrammarAccess grammarAccess;
     	
        public void setGrammarAccess(EcucValuesDslGrammarAccess grammarAccess) {
        	this.grammarAccess = grammarAccess;
        }
        
        @Override
        protected Grammar getGrammar() {
        	return grammarAccess.getGrammar();
        }
        
        @Override
        protected String getValueForTokenName(String tokenName) {
        	return tokenName;
        }




    // $ANTLR start "entryRuleModel"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:60:1: entryRuleModel : ruleModel EOF ;
    public final void entryRuleModel() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:61:1: ( ruleModel EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:62:1: ruleModel EOF
            {
             before(grammarAccess.getModelRule()); 
            pushFollow(FOLLOW_ruleModel_in_entryRuleModel61);
            ruleModel();

            state._fsp--;

             after(grammarAccess.getModelRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleModel68); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleModel"


    // $ANTLR start "ruleModel"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:69:1: ruleModel : ( ( rule__Model__Group__0 ) ) ;
    public final void ruleModel() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:73:2: ( ( ( rule__Model__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:74:1: ( ( rule__Model__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:74:1: ( ( rule__Model__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:75:1: ( rule__Model__Group__0 )
            {
             before(grammarAccess.getModelAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:76:1: ( rule__Model__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:76:2: rule__Model__Group__0
            {
            pushFollow(FOLLOW_rule__Model__Group__0_in_ruleModel94);
            rule__Model__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getModelAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleModel"


    // $ANTLR start "entryRuleModule"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:88:1: entryRuleModule : ruleModule EOF ;
    public final void entryRuleModule() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:89:1: ( ruleModule EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:90:1: ruleModule EOF
            {
             before(grammarAccess.getModuleRule()); 
            pushFollow(FOLLOW_ruleModule_in_entryRuleModule121);
            ruleModule();

            state._fsp--;

             after(grammarAccess.getModuleRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleModule128); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleModule"


    // $ANTLR start "ruleModule"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:97:1: ruleModule : ( ( rule__Module__Group__0 ) ) ;
    public final void ruleModule() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:101:2: ( ( ( rule__Module__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:102:1: ( ( rule__Module__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:102:1: ( ( rule__Module__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:103:1: ( rule__Module__Group__0 )
            {
             before(grammarAccess.getModuleAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:104:1: ( rule__Module__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:104:2: rule__Module__Group__0
            {
            pushFollow(FOLLOW_rule__Module__Group__0_in_ruleModule154);
            rule__Module__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getModuleAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleModule"


    // $ANTLR start "entryRuleContainedElement"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:116:1: entryRuleContainedElement : ruleContainedElement EOF ;
    public final void entryRuleContainedElement() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:117:1: ( ruleContainedElement EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:118:1: ruleContainedElement EOF
            {
             before(grammarAccess.getContainedElementRule()); 
            pushFollow(FOLLOW_ruleContainedElement_in_entryRuleContainedElement181);
            ruleContainedElement();

            state._fsp--;

             after(grammarAccess.getContainedElementRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleContainedElement188); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleContainedElement"


    // $ANTLR start "ruleContainedElement"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:125:1: ruleContainedElement : ( ( rule__ContainedElement__Alternatives ) ) ;
    public final void ruleContainedElement() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:129:2: ( ( ( rule__ContainedElement__Alternatives ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:130:1: ( ( rule__ContainedElement__Alternatives ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:130:1: ( ( rule__ContainedElement__Alternatives ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:131:1: ( rule__ContainedElement__Alternatives )
            {
             before(grammarAccess.getContainedElementAccess().getAlternatives()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:132:1: ( rule__ContainedElement__Alternatives )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:132:2: rule__ContainedElement__Alternatives
            {
            pushFollow(FOLLOW_rule__ContainedElement__Alternatives_in_ruleContainedElement214);
            rule__ContainedElement__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getContainedElementAccess().getAlternatives()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleContainedElement"


    // $ANTLR start "entryRuleContainer"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:144:1: entryRuleContainer : ruleContainer EOF ;
    public final void entryRuleContainer() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:145:1: ( ruleContainer EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:146:1: ruleContainer EOF
            {
             before(grammarAccess.getContainerRule()); 
            pushFollow(FOLLOW_ruleContainer_in_entryRuleContainer241);
            ruleContainer();

            state._fsp--;

             after(grammarAccess.getContainerRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleContainer248); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleContainer"


    // $ANTLR start "ruleContainer"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:153:1: ruleContainer : ( ( rule__Container__Group__0 ) ) ;
    public final void ruleContainer() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:157:2: ( ( ( rule__Container__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:158:1: ( ( rule__Container__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:158:1: ( ( rule__Container__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:159:1: ( rule__Container__Group__0 )
            {
             before(grammarAccess.getContainerAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:160:1: ( rule__Container__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:160:2: rule__Container__Group__0
            {
            pushFollow(FOLLOW_rule__Container__Group__0_in_ruleContainer274);
            rule__Container__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getContainerAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleContainer"


    // $ANTLR start "entryRuleParameter"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:172:1: entryRuleParameter : ruleParameter EOF ;
    public final void entryRuleParameter() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:173:1: ( ruleParameter EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:174:1: ruleParameter EOF
            {
             before(grammarAccess.getParameterRule()); 
            pushFollow(FOLLOW_ruleParameter_in_entryRuleParameter301);
            ruleParameter();

            state._fsp--;

             after(grammarAccess.getParameterRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleParameter308); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleParameter"


    // $ANTLR start "ruleParameter"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:181:1: ruleParameter : ( ( rule__Parameter__Group__0 ) ) ;
    public final void ruleParameter() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:185:2: ( ( ( rule__Parameter__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:186:1: ( ( rule__Parameter__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:186:1: ( ( rule__Parameter__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:187:1: ( rule__Parameter__Group__0 )
            {
             before(grammarAccess.getParameterAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:188:1: ( rule__Parameter__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:188:2: rule__Parameter__Group__0
            {
            pushFollow(FOLLOW_rule__Parameter__Group__0_in_ruleParameter334);
            rule__Parameter__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getParameterAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleParameter"


    // $ANTLR start "entryRuleReference"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:200:1: entryRuleReference : ruleReference EOF ;
    public final void entryRuleReference() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:201:1: ( ruleReference EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:202:1: ruleReference EOF
            {
             before(grammarAccess.getReferenceRule()); 
            pushFollow(FOLLOW_ruleReference_in_entryRuleReference361);
            ruleReference();

            state._fsp--;

             after(grammarAccess.getReferenceRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleReference368); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleReference"


    // $ANTLR start "ruleReference"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:209:1: ruleReference : ( ( rule__Reference__Group__0 ) ) ;
    public final void ruleReference() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:213:2: ( ( ( rule__Reference__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:214:1: ( ( rule__Reference__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:214:1: ( ( rule__Reference__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:215:1: ( rule__Reference__Group__0 )
            {
             before(grammarAccess.getReferenceAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:216:1: ( rule__Reference__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:216:2: rule__Reference__Group__0
            {
            pushFollow(FOLLOW_rule__Reference__Group__0_in_ruleReference394);
            rule__Reference__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getReferenceAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleReference"


    // $ANTLR start "entryRuleInstanceReference"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:228:1: entryRuleInstanceReference : ruleInstanceReference EOF ;
    public final void entryRuleInstanceReference() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:229:1: ( ruleInstanceReference EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:230:1: ruleInstanceReference EOF
            {
             before(grammarAccess.getInstanceReferenceRule()); 
            pushFollow(FOLLOW_ruleInstanceReference_in_entryRuleInstanceReference421);
            ruleInstanceReference();

            state._fsp--;

             after(grammarAccess.getInstanceReferenceRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleInstanceReference428); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleInstanceReference"


    // $ANTLR start "ruleInstanceReference"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:237:1: ruleInstanceReference : ( ( rule__InstanceReference__Group__0 ) ) ;
    public final void ruleInstanceReference() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:241:2: ( ( ( rule__InstanceReference__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:242:1: ( ( rule__InstanceReference__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:242:1: ( ( rule__InstanceReference__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:243:1: ( rule__InstanceReference__Group__0 )
            {
             before(grammarAccess.getInstanceReferenceAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:244:1: ( rule__InstanceReference__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:244:2: rule__InstanceReference__Group__0
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group__0_in_ruleInstanceReference454);
            rule__InstanceReference__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleInstanceReference"


    // $ANTLR start "entryRuleReferenceValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:256:1: entryRuleReferenceValue : ruleReferenceValue EOF ;
    public final void entryRuleReferenceValue() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:257:1: ( ruleReferenceValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:258:1: ruleReferenceValue EOF
            {
             before(grammarAccess.getReferenceValueRule()); 
            pushFollow(FOLLOW_ruleReferenceValue_in_entryRuleReferenceValue481);
            ruleReferenceValue();

            state._fsp--;

             after(grammarAccess.getReferenceValueRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleReferenceValue488); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleReferenceValue"


    // $ANTLR start "ruleReferenceValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:265:1: ruleReferenceValue : ( ( rule__ReferenceValue__ContainerAssignment ) ) ;
    public final void ruleReferenceValue() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:269:2: ( ( ( rule__ReferenceValue__ContainerAssignment ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:270:1: ( ( rule__ReferenceValue__ContainerAssignment ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:270:1: ( ( rule__ReferenceValue__ContainerAssignment ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:271:1: ( rule__ReferenceValue__ContainerAssignment )
            {
             before(grammarAccess.getReferenceValueAccess().getContainerAssignment()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:272:1: ( rule__ReferenceValue__ContainerAssignment )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:272:2: rule__ReferenceValue__ContainerAssignment
            {
            pushFollow(FOLLOW_rule__ReferenceValue__ContainerAssignment_in_ruleReferenceValue514);
            rule__ReferenceValue__ContainerAssignment();

            state._fsp--;


            }

             after(grammarAccess.getReferenceValueAccess().getContainerAssignment()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleReferenceValue"


    // $ANTLR start "entryRuleInstanceReferenceValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:284:1: entryRuleInstanceReferenceValue : ruleInstanceReferenceValue EOF ;
    public final void entryRuleInstanceReferenceValue() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:285:1: ( ruleInstanceReferenceValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:286:1: ruleInstanceReferenceValue EOF
            {
             before(grammarAccess.getInstanceReferenceValueRule()); 
            pushFollow(FOLLOW_ruleInstanceReferenceValue_in_entryRuleInstanceReferenceValue541);
            ruleInstanceReferenceValue();

            state._fsp--;

             after(grammarAccess.getInstanceReferenceValueRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleInstanceReferenceValue548); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleInstanceReferenceValue"


    // $ANTLR start "ruleInstanceReferenceValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:293:1: ruleInstanceReferenceValue : ( ( rule__InstanceReferenceValue__Group__0 ) ) ;
    public final void ruleInstanceReferenceValue() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:297:2: ( ( ( rule__InstanceReferenceValue__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:298:1: ( ( rule__InstanceReferenceValue__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:298:1: ( ( rule__InstanceReferenceValue__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:299:1: ( rule__InstanceReferenceValue__Group__0 )
            {
             before(grammarAccess.getInstanceReferenceValueAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:300:1: ( rule__InstanceReferenceValue__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:300:2: rule__InstanceReferenceValue__Group__0
            {
            pushFollow(FOLLOW_rule__InstanceReferenceValue__Group__0_in_ruleInstanceReferenceValue574);
            rule__InstanceReferenceValue__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceValueAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleInstanceReferenceValue"


    // $ANTLR start "entryRuleContextChain"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:312:1: entryRuleContextChain : ruleContextChain EOF ;
    public final void entryRuleContextChain() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:313:1: ( ruleContextChain EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:314:1: ruleContextChain EOF
            {
             before(grammarAccess.getContextChainRule()); 
            pushFollow(FOLLOW_ruleContextChain_in_entryRuleContextChain601);
            ruleContextChain();

            state._fsp--;

             after(grammarAccess.getContextChainRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleContextChain608); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleContextChain"


    // $ANTLR start "ruleContextChain"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:321:1: ruleContextChain : ( ( rule__ContextChain__Group__0 ) ) ;
    public final void ruleContextChain() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:325:2: ( ( ( rule__ContextChain__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:326:1: ( ( rule__ContextChain__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:326:1: ( ( rule__ContextChain__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:327:1: ( rule__ContextChain__Group__0 )
            {
             before(grammarAccess.getContextChainAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:328:1: ( rule__ContextChain__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:328:2: rule__ContextChain__Group__0
            {
            pushFollow(FOLLOW_rule__ContextChain__Group__0_in_ruleContextChain634);
            rule__ContextChain__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getContextChainAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleContextChain"


    // $ANTLR start "entryRuleContext"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:340:1: entryRuleContext : ruleContext EOF ;
    public final void entryRuleContext() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:341:1: ( ruleContext EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:342:1: ruleContext EOF
            {
             before(grammarAccess.getContextRule()); 
            pushFollow(FOLLOW_ruleContext_in_entryRuleContext661);
            ruleContext();

            state._fsp--;

             after(grammarAccess.getContextRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleContext668); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleContext"


    // $ANTLR start "ruleContext"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:349:1: ruleContext : ( ( rule__Context__Group__0 ) ) ;
    public final void ruleContext() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:353:2: ( ( ( rule__Context__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:354:1: ( ( rule__Context__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:354:1: ( ( rule__Context__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:355:1: ( rule__Context__Group__0 )
            {
             before(grammarAccess.getContextAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:356:1: ( rule__Context__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:356:2: rule__Context__Group__0
            {
            pushFollow(FOLLOW_rule__Context__Group__0_in_ruleContext694);
            rule__Context__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getContextAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleContext"


    // $ANTLR start "entryRuleSimpleValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:368:1: entryRuleSimpleValue : ruleSimpleValue EOF ;
    public final void entryRuleSimpleValue() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:369:1: ( ruleSimpleValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:370:1: ruleSimpleValue EOF
            {
             before(grammarAccess.getSimpleValueRule()); 
            pushFollow(FOLLOW_ruleSimpleValue_in_entryRuleSimpleValue721);
            ruleSimpleValue();

            state._fsp--;

             after(grammarAccess.getSimpleValueRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleSimpleValue728); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleSimpleValue"


    // $ANTLR start "ruleSimpleValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:377:1: ruleSimpleValue : ( ( rule__SimpleValue__Alternatives ) ) ;
    public final void ruleSimpleValue() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:381:2: ( ( ( rule__SimpleValue__Alternatives ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:382:1: ( ( rule__SimpleValue__Alternatives ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:382:1: ( ( rule__SimpleValue__Alternatives ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:383:1: ( rule__SimpleValue__Alternatives )
            {
             before(grammarAccess.getSimpleValueAccess().getAlternatives()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:384:1: ( rule__SimpleValue__Alternatives )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:384:2: rule__SimpleValue__Alternatives
            {
            pushFollow(FOLLOW_rule__SimpleValue__Alternatives_in_ruleSimpleValue754);
            rule__SimpleValue__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getSimpleValueAccess().getAlternatives()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleSimpleValue"


    // $ANTLR start "entryRuleStringValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:396:1: entryRuleStringValue : ruleStringValue EOF ;
    public final void entryRuleStringValue() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:397:1: ( ruleStringValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:398:1: ruleStringValue EOF
            {
             before(grammarAccess.getStringValueRule()); 
            pushFollow(FOLLOW_ruleStringValue_in_entryRuleStringValue781);
            ruleStringValue();

            state._fsp--;

             after(grammarAccess.getStringValueRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleStringValue788); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleStringValue"


    // $ANTLR start "ruleStringValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:405:1: ruleStringValue : ( ( rule__StringValue__ValueAssignment ) ) ;
    public final void ruleStringValue() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:409:2: ( ( ( rule__StringValue__ValueAssignment ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:410:1: ( ( rule__StringValue__ValueAssignment ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:410:1: ( ( rule__StringValue__ValueAssignment ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:411:1: ( rule__StringValue__ValueAssignment )
            {
             before(grammarAccess.getStringValueAccess().getValueAssignment()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:412:1: ( rule__StringValue__ValueAssignment )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:412:2: rule__StringValue__ValueAssignment
            {
            pushFollow(FOLLOW_rule__StringValue__ValueAssignment_in_ruleStringValue814);
            rule__StringValue__ValueAssignment();

            state._fsp--;


            }

             after(grammarAccess.getStringValueAccess().getValueAssignment()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleStringValue"


    // $ANTLR start "entryRuleEnumValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:424:1: entryRuleEnumValue : ruleEnumValue EOF ;
    public final void entryRuleEnumValue() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:425:1: ( ruleEnumValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:426:1: ruleEnumValue EOF
            {
             before(grammarAccess.getEnumValueRule()); 
            pushFollow(FOLLOW_ruleEnumValue_in_entryRuleEnumValue841);
            ruleEnumValue();

            state._fsp--;

             after(grammarAccess.getEnumValueRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEnumValue848); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleEnumValue"


    // $ANTLR start "ruleEnumValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:433:1: ruleEnumValue : ( ( rule__EnumValue__LiteralAssignment ) ) ;
    public final void ruleEnumValue() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:437:2: ( ( ( rule__EnumValue__LiteralAssignment ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:438:1: ( ( rule__EnumValue__LiteralAssignment ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:438:1: ( ( rule__EnumValue__LiteralAssignment ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:439:1: ( rule__EnumValue__LiteralAssignment )
            {
             before(grammarAccess.getEnumValueAccess().getLiteralAssignment()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:440:1: ( rule__EnumValue__LiteralAssignment )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:440:2: rule__EnumValue__LiteralAssignment
            {
            pushFollow(FOLLOW_rule__EnumValue__LiteralAssignment_in_ruleEnumValue874);
            rule__EnumValue__LiteralAssignment();

            state._fsp--;


            }

             after(grammarAccess.getEnumValueAccess().getLiteralAssignment()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleEnumValue"


    // $ANTLR start "entryRuleEID"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:452:1: entryRuleEID : ruleEID EOF ;
    public final void entryRuleEID() throws RecognitionException {

        	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();

        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:456:1: ( ruleEID EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:457:1: ruleEID EOF
            {
             before(grammarAccess.getEIDRule()); 
            pushFollow(FOLLOW_ruleEID_in_entryRuleEID906);
            ruleEID();

            state._fsp--;

             after(grammarAccess.getEIDRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEID913); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	myHiddenTokenState.restore();

        }
        return ;
    }
    // $ANTLR end "entryRuleEID"


    // $ANTLR start "ruleEID"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:467:1: ruleEID : ( ( rule__EID__Group__0 ) ) ;
    public final void ruleEID() throws RecognitionException {

        		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:472:2: ( ( ( rule__EID__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:473:1: ( ( rule__EID__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:473:1: ( ( rule__EID__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:474:1: ( rule__EID__Group__0 )
            {
             before(grammarAccess.getEIDAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:475:1: ( rule__EID__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:475:2: rule__EID__Group__0
            {
            pushFollow(FOLLOW_rule__EID__Group__0_in_ruleEID943);
            rule__EID__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getEIDAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);
            	myHiddenTokenState.restore();

        }
        return ;
    }
    // $ANTLR end "ruleEID"


    // $ANTLR start "entryRuleBooleanValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:488:1: entryRuleBooleanValue : ruleBooleanValue EOF ;
    public final void entryRuleBooleanValue() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:489:1: ( ruleBooleanValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:490:1: ruleBooleanValue EOF
            {
             before(grammarAccess.getBooleanValueRule()); 
            pushFollow(FOLLOW_ruleBooleanValue_in_entryRuleBooleanValue970);
            ruleBooleanValue();

            state._fsp--;

             after(grammarAccess.getBooleanValueRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleBooleanValue977); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleBooleanValue"


    // $ANTLR start "ruleBooleanValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:497:1: ruleBooleanValue : ( ( rule__BooleanValue__ValueAssignment ) ) ;
    public final void ruleBooleanValue() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:501:2: ( ( ( rule__BooleanValue__ValueAssignment ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:502:1: ( ( rule__BooleanValue__ValueAssignment ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:502:1: ( ( rule__BooleanValue__ValueAssignment ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:503:1: ( rule__BooleanValue__ValueAssignment )
            {
             before(grammarAccess.getBooleanValueAccess().getValueAssignment()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:504:1: ( rule__BooleanValue__ValueAssignment )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:504:2: rule__BooleanValue__ValueAssignment
            {
            pushFollow(FOLLOW_rule__BooleanValue__ValueAssignment_in_ruleBooleanValue1003);
            rule__BooleanValue__ValueAssignment();

            state._fsp--;


            }

             after(grammarAccess.getBooleanValueAccess().getValueAssignment()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleBooleanValue"


    // $ANTLR start "entryRuleNumericValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:516:1: entryRuleNumericValue : ruleNumericValue EOF ;
    public final void entryRuleNumericValue() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:517:1: ( ruleNumericValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:518:1: ruleNumericValue EOF
            {
             before(grammarAccess.getNumericValueRule()); 
            pushFollow(FOLLOW_ruleNumericValue_in_entryRuleNumericValue1030);
            ruleNumericValue();

            state._fsp--;

             after(grammarAccess.getNumericValueRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleNumericValue1037); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleNumericValue"


    // $ANTLR start "ruleNumericValue"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:525:1: ruleNumericValue : ( ( rule__NumericValue__ValueAssignment ) ) ;
    public final void ruleNumericValue() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:529:2: ( ( ( rule__NumericValue__ValueAssignment ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:530:1: ( ( rule__NumericValue__ValueAssignment ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:530:1: ( ( rule__NumericValue__ValueAssignment ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:531:1: ( rule__NumericValue__ValueAssignment )
            {
             before(grammarAccess.getNumericValueAccess().getValueAssignment()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:532:1: ( rule__NumericValue__ValueAssignment )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:532:2: rule__NumericValue__ValueAssignment
            {
            pushFollow(FOLLOW_rule__NumericValue__ValueAssignment_in_ruleNumericValue1063);
            rule__NumericValue__ValueAssignment();

            state._fsp--;


            }

             after(grammarAccess.getNumericValueAccess().getValueAssignment()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleNumericValue"


    // $ANTLR start "entryRuleTag"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:544:1: entryRuleTag : ruleTag EOF ;
    public final void entryRuleTag() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:545:1: ( ruleTag EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:546:1: ruleTag EOF
            {
             before(grammarAccess.getTagRule()); 
            pushFollow(FOLLOW_ruleTag_in_entryRuleTag1090);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getTagRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleTag1097); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleTag"


    // $ANTLR start "ruleTag"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:553:1: ruleTag : ( ( rule__Tag__Group__0 ) ) ;
    public final void ruleTag() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:557:2: ( ( ( rule__Tag__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:558:1: ( ( rule__Tag__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:558:1: ( ( rule__Tag__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:559:1: ( rule__Tag__Group__0 )
            {
             before(grammarAccess.getTagAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:560:1: ( rule__Tag__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:560:2: rule__Tag__Group__0
            {
            pushFollow(FOLLOW_rule__Tag__Group__0_in_ruleTag1123);
            rule__Tag__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getTagAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleTag"


    // $ANTLR start "entryRuleVALUE"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:572:1: entryRuleVALUE : ruleVALUE EOF ;
    public final void entryRuleVALUE() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:573:1: ( ruleVALUE EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:574:1: ruleVALUE EOF
            {
             before(grammarAccess.getVALUERule()); 
            pushFollow(FOLLOW_ruleVALUE_in_entryRuleVALUE1150);
            ruleVALUE();

            state._fsp--;

             after(grammarAccess.getVALUERule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleVALUE1157); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleVALUE"


    // $ANTLR start "ruleVALUE"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:581:1: ruleVALUE : ( ( rule__VALUE__Alternatives ) ) ;
    public final void ruleVALUE() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:585:2: ( ( ( rule__VALUE__Alternatives ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:586:1: ( ( rule__VALUE__Alternatives ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:586:1: ( ( rule__VALUE__Alternatives ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:587:1: ( rule__VALUE__Alternatives )
            {
             before(grammarAccess.getVALUEAccess().getAlternatives()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:588:1: ( rule__VALUE__Alternatives )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:588:2: rule__VALUE__Alternatives
            {
            pushFollow(FOLLOW_rule__VALUE__Alternatives_in_ruleVALUE1183);
            rule__VALUE__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getVALUEAccess().getAlternatives()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleVALUE"


    // $ANTLR start "entryRuleKEY"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:600:1: entryRuleKEY : ruleKEY EOF ;
    public final void entryRuleKEY() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:601:1: ( ruleKEY EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:602:1: ruleKEY EOF
            {
             before(grammarAccess.getKEYRule()); 
            pushFollow(FOLLOW_ruleKEY_in_entryRuleKEY1210);
            ruleKEY();

            state._fsp--;

             after(grammarAccess.getKEYRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleKEY1217); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleKEY"


    // $ANTLR start "ruleKEY"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:609:1: ruleKEY : ( ( rule__KEY__Alternatives ) ) ;
    public final void ruleKEY() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:613:2: ( ( ( rule__KEY__Alternatives ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:614:1: ( ( rule__KEY__Alternatives ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:614:1: ( ( rule__KEY__Alternatives ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:615:1: ( rule__KEY__Alternatives )
            {
             before(grammarAccess.getKEYAccess().getAlternatives()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:616:1: ( rule__KEY__Alternatives )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:616:2: rule__KEY__Alternatives
            {
            pushFollow(FOLLOW_rule__KEY__Alternatives_in_ruleKEY1243);
            rule__KEY__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getKEYAccess().getAlternatives()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleKEY"


    // $ANTLR start "entryRuleNUMERIC"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:628:1: entryRuleNUMERIC : ruleNUMERIC EOF ;
    public final void entryRuleNUMERIC() throws RecognitionException {
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:629:1: ( ruleNUMERIC EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:630:1: ruleNUMERIC EOF
            {
             before(grammarAccess.getNUMERICRule()); 
            pushFollow(FOLLOW_ruleNUMERIC_in_entryRuleNUMERIC1270);
            ruleNUMERIC();

            state._fsp--;

             after(grammarAccess.getNUMERICRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleNUMERIC1277); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleNUMERIC"


    // $ANTLR start "ruleNUMERIC"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:637:1: ruleNUMERIC : ( ( rule__NUMERIC__Group__0 ) ) ;
    public final void ruleNUMERIC() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:641:2: ( ( ( rule__NUMERIC__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:642:1: ( ( rule__NUMERIC__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:642:1: ( ( rule__NUMERIC__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:643:1: ( rule__NUMERIC__Group__0 )
            {
             before(grammarAccess.getNUMERICAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:644:1: ( rule__NUMERIC__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:644:2: rule__NUMERIC__Group__0
            {
            pushFollow(FOLLOW_rule__NUMERIC__Group__0_in_ruleNUMERIC1303);
            rule__NUMERIC__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getNUMERICAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleNUMERIC"


    // $ANTLR start "entryRuleFQN"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:656:1: entryRuleFQN : ruleFQN EOF ;
    public final void entryRuleFQN() throws RecognitionException {

        	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();

        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:660:1: ( ruleFQN EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:661:1: ruleFQN EOF
            {
             before(grammarAccess.getFQNRule()); 
            pushFollow(FOLLOW_ruleFQN_in_entryRuleFQN1335);
            ruleFQN();

            state._fsp--;

             after(grammarAccess.getFQNRule()); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleFQN1342); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	myHiddenTokenState.restore();

        }
        return ;
    }
    // $ANTLR end "entryRuleFQN"


    // $ANTLR start "ruleFQN"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:671:1: ruleFQN : ( ( rule__FQN__Group__0 ) ) ;
    public final void ruleFQN() throws RecognitionException {

        		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:676:2: ( ( ( rule__FQN__Group__0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:677:1: ( ( rule__FQN__Group__0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:677:1: ( ( rule__FQN__Group__0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:678:1: ( rule__FQN__Group__0 )
            {
             before(grammarAccess.getFQNAccess().getGroup()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:679:1: ( rule__FQN__Group__0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:679:2: rule__FQN__Group__0
            {
            pushFollow(FOLLOW_rule__FQN__Group__0_in_ruleFQN1372);
            rule__FQN__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getFQNAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);
            	myHiddenTokenState.restore();

        }
        return ;
    }
    // $ANTLR end "ruleFQN"


    // $ANTLR start "ruleBooleanLiteral"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:693:1: ruleBooleanLiteral : ( ( rule__BooleanLiteral__Alternatives ) ) ;
    public final void ruleBooleanLiteral() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:697:1: ( ( ( rule__BooleanLiteral__Alternatives ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:698:1: ( ( rule__BooleanLiteral__Alternatives ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:698:1: ( ( rule__BooleanLiteral__Alternatives ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:699:1: ( rule__BooleanLiteral__Alternatives )
            {
             before(grammarAccess.getBooleanLiteralAccess().getAlternatives()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:700:1: ( rule__BooleanLiteral__Alternatives )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:700:2: rule__BooleanLiteral__Alternatives
            {
            pushFollow(FOLLOW_rule__BooleanLiteral__Alternatives_in_ruleBooleanLiteral1409);
            rule__BooleanLiteral__Alternatives();

            state._fsp--;


            }

             after(grammarAccess.getBooleanLiteralAccess().getAlternatives()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleBooleanLiteral"


    // $ANTLR start "rule__ContainedElement__Alternatives"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:711:1: rule__ContainedElement__Alternatives : ( ( ruleContainer ) | ( ruleParameter ) | ( ruleReference ) | ( ruleInstanceReference ) );
    public final void rule__ContainedElement__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:715:1: ( ( ruleContainer ) | ( ruleParameter ) | ( ruleReference ) | ( ruleInstanceReference ) )
            int alt1=4;
            switch ( input.LA(1) ) {
            case 23:
                {
                alt1=1;
                }
                break;
            case 25:
                {
                alt1=2;
                }
                break;
            case 26:
                {
                alt1=3;
                }
                break;
            case 27:
                {
                alt1=4;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 1, 0, input);

                throw nvae;
            }

            switch (alt1) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:716:1: ( ruleContainer )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:716:1: ( ruleContainer )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:717:1: ruleContainer
                    {
                     before(grammarAccess.getContainedElementAccess().getContainerParserRuleCall_0()); 
                    pushFollow(FOLLOW_ruleContainer_in_rule__ContainedElement__Alternatives1444);
                    ruleContainer();

                    state._fsp--;

                     after(grammarAccess.getContainedElementAccess().getContainerParserRuleCall_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:722:6: ( ruleParameter )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:722:6: ( ruleParameter )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:723:1: ruleParameter
                    {
                     before(grammarAccess.getContainedElementAccess().getParameterParserRuleCall_1()); 
                    pushFollow(FOLLOW_ruleParameter_in_rule__ContainedElement__Alternatives1461);
                    ruleParameter();

                    state._fsp--;

                     after(grammarAccess.getContainedElementAccess().getParameterParserRuleCall_1()); 

                    }


                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:728:6: ( ruleReference )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:728:6: ( ruleReference )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:729:1: ruleReference
                    {
                     before(grammarAccess.getContainedElementAccess().getReferenceParserRuleCall_2()); 
                    pushFollow(FOLLOW_ruleReference_in_rule__ContainedElement__Alternatives1478);
                    ruleReference();

                    state._fsp--;

                     after(grammarAccess.getContainedElementAccess().getReferenceParserRuleCall_2()); 

                    }


                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:734:6: ( ruleInstanceReference )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:734:6: ( ruleInstanceReference )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:735:1: ruleInstanceReference
                    {
                     before(grammarAccess.getContainedElementAccess().getInstanceReferenceParserRuleCall_3()); 
                    pushFollow(FOLLOW_ruleInstanceReference_in_rule__ContainedElement__Alternatives1495);
                    ruleInstanceReference();

                    state._fsp--;

                     after(grammarAccess.getContainedElementAccess().getInstanceReferenceParserRuleCall_3()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContainedElement__Alternatives"


    // $ANTLR start "rule__SimpleValue__Alternatives"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:745:1: rule__SimpleValue__Alternatives : ( ( ruleStringValue ) | ( ruleNumericValue ) | ( ruleBooleanValue ) | ( ruleEnumValue ) );
    public final void rule__SimpleValue__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:749:1: ( ( ruleStringValue ) | ( ruleNumericValue ) | ( ruleBooleanValue ) | ( ruleEnumValue ) )
            int alt2=4;
            switch ( input.LA(1) ) {
            case RULE_STRING:
                {
                alt2=1;
                }
                break;
            case RULE_INT:
            case 30:
                {
                alt2=2;
                }
                break;
            case 11:
            case 12:
                {
                alt2=3;
                }
                break;
            case 29:
                {
                alt2=4;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 2, 0, input);

                throw nvae;
            }

            switch (alt2) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:750:1: ( ruleStringValue )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:750:1: ( ruleStringValue )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:751:1: ruleStringValue
                    {
                     before(grammarAccess.getSimpleValueAccess().getStringValueParserRuleCall_0()); 
                    pushFollow(FOLLOW_ruleStringValue_in_rule__SimpleValue__Alternatives1527);
                    ruleStringValue();

                    state._fsp--;

                     after(grammarAccess.getSimpleValueAccess().getStringValueParserRuleCall_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:756:6: ( ruleNumericValue )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:756:6: ( ruleNumericValue )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:757:1: ruleNumericValue
                    {
                     before(grammarAccess.getSimpleValueAccess().getNumericValueParserRuleCall_1()); 
                    pushFollow(FOLLOW_ruleNumericValue_in_rule__SimpleValue__Alternatives1544);
                    ruleNumericValue();

                    state._fsp--;

                     after(grammarAccess.getSimpleValueAccess().getNumericValueParserRuleCall_1()); 

                    }


                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:762:6: ( ruleBooleanValue )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:762:6: ( ruleBooleanValue )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:763:1: ruleBooleanValue
                    {
                     before(grammarAccess.getSimpleValueAccess().getBooleanValueParserRuleCall_2()); 
                    pushFollow(FOLLOW_ruleBooleanValue_in_rule__SimpleValue__Alternatives1561);
                    ruleBooleanValue();

                    state._fsp--;

                     after(grammarAccess.getSimpleValueAccess().getBooleanValueParserRuleCall_2()); 

                    }


                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:768:6: ( ruleEnumValue )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:768:6: ( ruleEnumValue )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:769:1: ruleEnumValue
                    {
                     before(grammarAccess.getSimpleValueAccess().getEnumValueParserRuleCall_3()); 
                    pushFollow(FOLLOW_ruleEnumValue_in_rule__SimpleValue__Alternatives1578);
                    ruleEnumValue();

                    state._fsp--;

                     after(grammarAccess.getSimpleValueAccess().getEnumValueParserRuleCall_3()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__SimpleValue__Alternatives"


    // $ANTLR start "rule__VALUE__Alternatives"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:779:1: rule__VALUE__Alternatives : ( ( RULE_STRING ) | ( RULE_ID ) | ( ruleNUMERIC ) | ( 'true' ) | ( 'false' ) );
    public final void rule__VALUE__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:783:1: ( ( RULE_STRING ) | ( RULE_ID ) | ( ruleNUMERIC ) | ( 'true' ) | ( 'false' ) )
            int alt3=5;
            switch ( input.LA(1) ) {
            case RULE_STRING:
                {
                alt3=1;
                }
                break;
            case RULE_ID:
                {
                alt3=2;
                }
                break;
            case RULE_INT:
            case 30:
                {
                alt3=3;
                }
                break;
            case 11:
                {
                alt3=4;
                }
                break;
            case 12:
                {
                alt3=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 3, 0, input);

                throw nvae;
            }

            switch (alt3) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:784:1: ( RULE_STRING )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:784:1: ( RULE_STRING )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:785:1: RULE_STRING
                    {
                     before(grammarAccess.getVALUEAccess().getSTRINGTerminalRuleCall_0()); 
                    match(input,RULE_STRING,FOLLOW_RULE_STRING_in_rule__VALUE__Alternatives1610); 
                     after(grammarAccess.getVALUEAccess().getSTRINGTerminalRuleCall_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:790:6: ( RULE_ID )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:790:6: ( RULE_ID )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:791:1: RULE_ID
                    {
                     before(grammarAccess.getVALUEAccess().getIDTerminalRuleCall_1()); 
                    match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__VALUE__Alternatives1627); 
                     after(grammarAccess.getVALUEAccess().getIDTerminalRuleCall_1()); 

                    }


                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:796:6: ( ruleNUMERIC )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:796:6: ( ruleNUMERIC )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:797:1: ruleNUMERIC
                    {
                     before(grammarAccess.getVALUEAccess().getNUMERICParserRuleCall_2()); 
                    pushFollow(FOLLOW_ruleNUMERIC_in_rule__VALUE__Alternatives1644);
                    ruleNUMERIC();

                    state._fsp--;

                     after(grammarAccess.getVALUEAccess().getNUMERICParserRuleCall_2()); 

                    }


                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:802:6: ( 'true' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:802:6: ( 'true' )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:803:1: 'true'
                    {
                     before(grammarAccess.getVALUEAccess().getTrueKeyword_3()); 
                    match(input,11,FOLLOW_11_in_rule__VALUE__Alternatives1662); 
                     after(grammarAccess.getVALUEAccess().getTrueKeyword_3()); 

                    }


                    }
                    break;
                case 5 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:810:6: ( 'false' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:810:6: ( 'false' )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:811:1: 'false'
                    {
                     before(grammarAccess.getVALUEAccess().getFalseKeyword_4()); 
                    match(input,12,FOLLOW_12_in_rule__VALUE__Alternatives1682); 
                     after(grammarAccess.getVALUEAccess().getFalseKeyword_4()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__VALUE__Alternatives"


    // $ANTLR start "rule__KEY__Alternatives"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:823:1: rule__KEY__Alternatives : ( ( RULE_STRING ) | ( RULE_ID ) | ( ruleNUMERIC ) | ( 'true' ) | ( 'false' ) );
    public final void rule__KEY__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:827:1: ( ( RULE_STRING ) | ( RULE_ID ) | ( ruleNUMERIC ) | ( 'true' ) | ( 'false' ) )
            int alt4=5;
            switch ( input.LA(1) ) {
            case RULE_STRING:
                {
                alt4=1;
                }
                break;
            case RULE_ID:
                {
                alt4=2;
                }
                break;
            case RULE_INT:
            case 30:
                {
                alt4=3;
                }
                break;
            case 11:
                {
                alt4=4;
                }
                break;
            case 12:
                {
                alt4=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 4, 0, input);

                throw nvae;
            }

            switch (alt4) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:828:1: ( RULE_STRING )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:828:1: ( RULE_STRING )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:829:1: RULE_STRING
                    {
                     before(grammarAccess.getKEYAccess().getSTRINGTerminalRuleCall_0()); 
                    match(input,RULE_STRING,FOLLOW_RULE_STRING_in_rule__KEY__Alternatives1716); 
                     after(grammarAccess.getKEYAccess().getSTRINGTerminalRuleCall_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:834:6: ( RULE_ID )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:834:6: ( RULE_ID )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:835:1: RULE_ID
                    {
                     before(grammarAccess.getKEYAccess().getIDTerminalRuleCall_1()); 
                    match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__KEY__Alternatives1733); 
                     after(grammarAccess.getKEYAccess().getIDTerminalRuleCall_1()); 

                    }


                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:840:6: ( ruleNUMERIC )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:840:6: ( ruleNUMERIC )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:841:1: ruleNUMERIC
                    {
                     before(grammarAccess.getKEYAccess().getNUMERICParserRuleCall_2()); 
                    pushFollow(FOLLOW_ruleNUMERIC_in_rule__KEY__Alternatives1750);
                    ruleNUMERIC();

                    state._fsp--;

                     after(grammarAccess.getKEYAccess().getNUMERICParserRuleCall_2()); 

                    }


                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:846:6: ( 'true' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:846:6: ( 'true' )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:847:1: 'true'
                    {
                     before(grammarAccess.getKEYAccess().getTrueKeyword_3()); 
                    match(input,11,FOLLOW_11_in_rule__KEY__Alternatives1768); 
                     after(grammarAccess.getKEYAccess().getTrueKeyword_3()); 

                    }


                    }
                    break;
                case 5 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:854:6: ( 'false' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:854:6: ( 'false' )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:855:1: 'false'
                    {
                     before(grammarAccess.getKEYAccess().getFalseKeyword_4()); 
                    match(input,12,FOLLOW_12_in_rule__KEY__Alternatives1788); 
                     after(grammarAccess.getKEYAccess().getFalseKeyword_4()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__KEY__Alternatives"


    // $ANTLR start "rule__BooleanLiteral__Alternatives"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:867:1: rule__BooleanLiteral__Alternatives : ( ( ( 'true' ) ) | ( ( 'false' ) ) );
    public final void rule__BooleanLiteral__Alternatives() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:871:1: ( ( ( 'true' ) ) | ( ( 'false' ) ) )
            int alt5=2;
            int LA5_0 = input.LA(1);

            if ( (LA5_0==11) ) {
                alt5=1;
            }
            else if ( (LA5_0==12) ) {
                alt5=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 5, 0, input);

                throw nvae;
            }
            switch (alt5) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:872:1: ( ( 'true' ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:872:1: ( ( 'true' ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:873:1: ( 'true' )
                    {
                     before(grammarAccess.getBooleanLiteralAccess().getTrueEnumLiteralDeclaration_0()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:874:1: ( 'true' )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:874:3: 'true'
                    {
                    match(input,11,FOLLOW_11_in_rule__BooleanLiteral__Alternatives1823); 

                    }

                     after(grammarAccess.getBooleanLiteralAccess().getTrueEnumLiteralDeclaration_0()); 

                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:879:6: ( ( 'false' ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:879:6: ( ( 'false' ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:880:1: ( 'false' )
                    {
                     before(grammarAccess.getBooleanLiteralAccess().getFalseEnumLiteralDeclaration_1()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:881:1: ( 'false' )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:881:3: 'false'
                    {
                    match(input,12,FOLLOW_12_in_rule__BooleanLiteral__Alternatives1844); 

                    }

                     after(grammarAccess.getBooleanLiteralAccess().getFalseEnumLiteralDeclaration_1()); 

                    }


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__BooleanLiteral__Alternatives"


    // $ANTLR start "rule__Model__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:893:1: rule__Model__Group__0 : rule__Model__Group__0__Impl rule__Model__Group__1 ;
    public final void rule__Model__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:897:1: ( rule__Model__Group__0__Impl rule__Model__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:898:2: rule__Model__Group__0__Impl rule__Model__Group__1
            {
            pushFollow(FOLLOW_rule__Model__Group__0__Impl_in_rule__Model__Group__01877);
            rule__Model__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Model__Group__1_in_rule__Model__Group__01880);
            rule__Model__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group__0"


    // $ANTLR start "rule__Model__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:905:1: rule__Model__Group__0__Impl : ( ( rule__Model__Group_0__0 )? ) ;
    public final void rule__Model__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:909:1: ( ( ( rule__Model__Group_0__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:910:1: ( ( rule__Model__Group_0__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:910:1: ( ( rule__Model__Group_0__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:911:1: ( rule__Model__Group_0__0 )?
            {
             before(grammarAccess.getModelAccess().getGroup_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:912:1: ( rule__Model__Group_0__0 )?
            int alt6=2;
            int LA6_0 = input.LA(1);

            if ( (LA6_0==13) ) {
                alt6=1;
            }
            switch (alt6) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:912:2: rule__Model__Group_0__0
                    {
                    pushFollow(FOLLOW_rule__Model__Group_0__0_in_rule__Model__Group__0__Impl1907);
                    rule__Model__Group_0__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getModelAccess().getGroup_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group__0__Impl"


    // $ANTLR start "rule__Model__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:922:1: rule__Model__Group__1 : rule__Model__Group__1__Impl ;
    public final void rule__Model__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:926:1: ( rule__Model__Group__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:927:2: rule__Model__Group__1__Impl
            {
            pushFollow(FOLLOW_rule__Model__Group__1__Impl_in_rule__Model__Group__11938);
            rule__Model__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group__1"


    // $ANTLR start "rule__Model__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:933:1: rule__Model__Group__1__Impl : ( ( rule__Model__ModulesAssignment_1 )* ) ;
    public final void rule__Model__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:937:1: ( ( ( rule__Model__ModulesAssignment_1 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:938:1: ( ( rule__Model__ModulesAssignment_1 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:938:1: ( ( rule__Model__ModulesAssignment_1 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:939:1: ( rule__Model__ModulesAssignment_1 )*
            {
             before(grammarAccess.getModelAccess().getModulesAssignment_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:940:1: ( rule__Model__ModulesAssignment_1 )*
            loop7:
            do {
                int alt7=2;
                int LA7_0 = input.LA(1);

                if ( (LA7_0==14) ) {
                    alt7=1;
                }


                switch (alt7) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:940:2: rule__Model__ModulesAssignment_1
            	    {
            	    pushFollow(FOLLOW_rule__Model__ModulesAssignment_1_in_rule__Model__Group__1__Impl1965);
            	    rule__Model__ModulesAssignment_1();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop7;
                }
            } while (true);

             after(grammarAccess.getModelAccess().getModulesAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group__1__Impl"


    // $ANTLR start "rule__Model__Group_0__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:954:1: rule__Model__Group_0__0 : rule__Model__Group_0__0__Impl rule__Model__Group_0__1 ;
    public final void rule__Model__Group_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:958:1: ( rule__Model__Group_0__0__Impl rule__Model__Group_0__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:959:2: rule__Model__Group_0__0__Impl rule__Model__Group_0__1
            {
            pushFollow(FOLLOW_rule__Model__Group_0__0__Impl_in_rule__Model__Group_0__02000);
            rule__Model__Group_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Model__Group_0__1_in_rule__Model__Group_0__02003);
            rule__Model__Group_0__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group_0__0"


    // $ANTLR start "rule__Model__Group_0__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:966:1: rule__Model__Group_0__0__Impl : ( 'package' ) ;
    public final void rule__Model__Group_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:970:1: ( ( 'package' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:971:1: ( 'package' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:971:1: ( 'package' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:972:1: 'package'
            {
             before(grammarAccess.getModelAccess().getPackageKeyword_0_0()); 
            match(input,13,FOLLOW_13_in_rule__Model__Group_0__0__Impl2031); 
             after(grammarAccess.getModelAccess().getPackageKeyword_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group_0__0__Impl"


    // $ANTLR start "rule__Model__Group_0__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:985:1: rule__Model__Group_0__1 : rule__Model__Group_0__1__Impl ;
    public final void rule__Model__Group_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:989:1: ( rule__Model__Group_0__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:990:2: rule__Model__Group_0__1__Impl
            {
            pushFollow(FOLLOW_rule__Model__Group_0__1__Impl_in_rule__Model__Group_0__12062);
            rule__Model__Group_0__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group_0__1"


    // $ANTLR start "rule__Model__Group_0__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:996:1: rule__Model__Group_0__1__Impl : ( ( rule__Model__PackageNameAssignment_0_1 ) ) ;
    public final void rule__Model__Group_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1000:1: ( ( ( rule__Model__PackageNameAssignment_0_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1001:1: ( ( rule__Model__PackageNameAssignment_0_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1001:1: ( ( rule__Model__PackageNameAssignment_0_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1002:1: ( rule__Model__PackageNameAssignment_0_1 )
            {
             before(grammarAccess.getModelAccess().getPackageNameAssignment_0_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1003:1: ( rule__Model__PackageNameAssignment_0_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1003:2: rule__Model__PackageNameAssignment_0_1
            {
            pushFollow(FOLLOW_rule__Model__PackageNameAssignment_0_1_in_rule__Model__Group_0__1__Impl2089);
            rule__Model__PackageNameAssignment_0_1();

            state._fsp--;


            }

             after(grammarAccess.getModelAccess().getPackageNameAssignment_0_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__Group_0__1__Impl"


    // $ANTLR start "rule__Module__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1017:1: rule__Module__Group__0 : rule__Module__Group__0__Impl rule__Module__Group__1 ;
    public final void rule__Module__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1021:1: ( rule__Module__Group__0__Impl rule__Module__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1022:2: rule__Module__Group__0__Impl rule__Module__Group__1
            {
            pushFollow(FOLLOW_rule__Module__Group__0__Impl_in_rule__Module__Group__02123);
            rule__Module__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group__1_in_rule__Module__Group__02126);
            rule__Module__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__0"


    // $ANTLR start "rule__Module__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1029:1: rule__Module__Group__0__Impl : ( () ) ;
    public final void rule__Module__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1033:1: ( ( () ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1034:1: ( () )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1034:1: ( () )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1035:1: ()
            {
             before(grammarAccess.getModuleAccess().getModuleAction_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1036:1: ()
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1038:1: 
            {
            }

             after(grammarAccess.getModuleAccess().getModuleAction_0()); 

            }


            }

        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__0__Impl"


    // $ANTLR start "rule__Module__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1048:1: rule__Module__Group__1 : rule__Module__Group__1__Impl rule__Module__Group__2 ;
    public final void rule__Module__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1052:1: ( rule__Module__Group__1__Impl rule__Module__Group__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1053:2: rule__Module__Group__1__Impl rule__Module__Group__2
            {
            pushFollow(FOLLOW_rule__Module__Group__1__Impl_in_rule__Module__Group__12184);
            rule__Module__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group__2_in_rule__Module__Group__12187);
            rule__Module__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__1"


    // $ANTLR start "rule__Module__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1060:1: rule__Module__Group__1__Impl : ( 'module' ) ;
    public final void rule__Module__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1064:1: ( ( 'module' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1065:1: ( 'module' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1065:1: ( 'module' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1066:1: 'module'
            {
             before(grammarAccess.getModuleAccess().getModuleKeyword_1()); 
            match(input,14,FOLLOW_14_in_rule__Module__Group__1__Impl2215); 
             after(grammarAccess.getModuleAccess().getModuleKeyword_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__1__Impl"


    // $ANTLR start "rule__Module__Group__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1079:1: rule__Module__Group__2 : rule__Module__Group__2__Impl rule__Module__Group__3 ;
    public final void rule__Module__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1083:1: ( rule__Module__Group__2__Impl rule__Module__Group__3 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1084:2: rule__Module__Group__2__Impl rule__Module__Group__3
            {
            pushFollow(FOLLOW_rule__Module__Group__2__Impl_in_rule__Module__Group__22246);
            rule__Module__Group__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group__3_in_rule__Module__Group__22249);
            rule__Module__Group__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__2"


    // $ANTLR start "rule__Module__Group__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1091:1: rule__Module__Group__2__Impl : ( ( rule__Module__DefinitionAssignment_2 ) ) ;
    public final void rule__Module__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1095:1: ( ( ( rule__Module__DefinitionAssignment_2 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1096:1: ( ( rule__Module__DefinitionAssignment_2 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1096:1: ( ( rule__Module__DefinitionAssignment_2 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1097:1: ( rule__Module__DefinitionAssignment_2 )
            {
             before(grammarAccess.getModuleAccess().getDefinitionAssignment_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1098:1: ( rule__Module__DefinitionAssignment_2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1098:2: rule__Module__DefinitionAssignment_2
            {
            pushFollow(FOLLOW_rule__Module__DefinitionAssignment_2_in_rule__Module__Group__2__Impl2276);
            rule__Module__DefinitionAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getModuleAccess().getDefinitionAssignment_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__2__Impl"


    // $ANTLR start "rule__Module__Group__3"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1108:1: rule__Module__Group__3 : rule__Module__Group__3__Impl rule__Module__Group__4 ;
    public final void rule__Module__Group__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1112:1: ( rule__Module__Group__3__Impl rule__Module__Group__4 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1113:2: rule__Module__Group__3__Impl rule__Module__Group__4
            {
            pushFollow(FOLLOW_rule__Module__Group__3__Impl_in_rule__Module__Group__32306);
            rule__Module__Group__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group__4_in_rule__Module__Group__32309);
            rule__Module__Group__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__3"


    // $ANTLR start "rule__Module__Group__3__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1120:1: rule__Module__Group__3__Impl : ( ( rule__Module__Group_3__0 )? ) ;
    public final void rule__Module__Group__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1124:1: ( ( ( rule__Module__Group_3__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1125:1: ( ( rule__Module__Group_3__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1125:1: ( ( rule__Module__Group_3__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1126:1: ( rule__Module__Group_3__0 )?
            {
             before(grammarAccess.getModuleAccess().getGroup_3()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1127:1: ( rule__Module__Group_3__0 )?
            int alt8=2;
            int LA8_0 = input.LA(1);

            if ( (LA8_0==18) ) {
                alt8=1;
            }
            switch (alt8) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1127:2: rule__Module__Group_3__0
                    {
                    pushFollow(FOLLOW_rule__Module__Group_3__0_in_rule__Module__Group__3__Impl2336);
                    rule__Module__Group_3__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getModuleAccess().getGroup_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__3__Impl"


    // $ANTLR start "rule__Module__Group__4"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1137:1: rule__Module__Group__4 : rule__Module__Group__4__Impl rule__Module__Group__5 ;
    public final void rule__Module__Group__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1141:1: ( rule__Module__Group__4__Impl rule__Module__Group__5 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1142:2: rule__Module__Group__4__Impl rule__Module__Group__5
            {
            pushFollow(FOLLOW_rule__Module__Group__4__Impl_in_rule__Module__Group__42367);
            rule__Module__Group__4__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group__5_in_rule__Module__Group__42370);
            rule__Module__Group__5();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__4"


    // $ANTLR start "rule__Module__Group__4__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1149:1: rule__Module__Group__4__Impl : ( ( rule__Module__Group_4__0 )? ) ;
    public final void rule__Module__Group__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1153:1: ( ( ( rule__Module__Group_4__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1154:1: ( ( rule__Module__Group_4__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1154:1: ( ( rule__Module__Group_4__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1155:1: ( rule__Module__Group_4__0 )?
            {
             before(grammarAccess.getModuleAccess().getGroup_4()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1156:1: ( rule__Module__Group_4__0 )?
            int alt9=2;
            int LA9_0 = input.LA(1);

            if ( (LA9_0==19) ) {
                alt9=1;
            }
            switch (alt9) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1156:2: rule__Module__Group_4__0
                    {
                    pushFollow(FOLLOW_rule__Module__Group_4__0_in_rule__Module__Group__4__Impl2397);
                    rule__Module__Group_4__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getModuleAccess().getGroup_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__4__Impl"


    // $ANTLR start "rule__Module__Group__5"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1166:1: rule__Module__Group__5 : rule__Module__Group__5__Impl rule__Module__Group__6 ;
    public final void rule__Module__Group__5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1170:1: ( rule__Module__Group__5__Impl rule__Module__Group__6 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1171:2: rule__Module__Group__5__Impl rule__Module__Group__6
            {
            pushFollow(FOLLOW_rule__Module__Group__5__Impl_in_rule__Module__Group__52428);
            rule__Module__Group__5__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group__6_in_rule__Module__Group__52431);
            rule__Module__Group__6();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__5"


    // $ANTLR start "rule__Module__Group__5__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1178:1: rule__Module__Group__5__Impl : ( '=' ) ;
    public final void rule__Module__Group__5__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1182:1: ( ( '=' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1183:1: ( '=' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1183:1: ( '=' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1184:1: '='
            {
             before(grammarAccess.getModuleAccess().getEqualsSignKeyword_5()); 
            match(input,15,FOLLOW_15_in_rule__Module__Group__5__Impl2459); 
             after(grammarAccess.getModuleAccess().getEqualsSignKeyword_5()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__5__Impl"


    // $ANTLR start "rule__Module__Group__6"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1197:1: rule__Module__Group__6 : rule__Module__Group__6__Impl rule__Module__Group__7 ;
    public final void rule__Module__Group__6() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1201:1: ( rule__Module__Group__6__Impl rule__Module__Group__7 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1202:2: rule__Module__Group__6__Impl rule__Module__Group__7
            {
            pushFollow(FOLLOW_rule__Module__Group__6__Impl_in_rule__Module__Group__62490);
            rule__Module__Group__6__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group__7_in_rule__Module__Group__62493);
            rule__Module__Group__7();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__6"


    // $ANTLR start "rule__Module__Group__6__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1209:1: rule__Module__Group__6__Impl : ( '{' ) ;
    public final void rule__Module__Group__6__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1213:1: ( ( '{' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1214:1: ( '{' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1214:1: ( '{' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1215:1: '{'
            {
             before(grammarAccess.getModuleAccess().getLeftCurlyBracketKeyword_6()); 
            match(input,16,FOLLOW_16_in_rule__Module__Group__6__Impl2521); 
             after(grammarAccess.getModuleAccess().getLeftCurlyBracketKeyword_6()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__6__Impl"


    // $ANTLR start "rule__Module__Group__7"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1228:1: rule__Module__Group__7 : rule__Module__Group__7__Impl rule__Module__Group__8 ;
    public final void rule__Module__Group__7() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1232:1: ( rule__Module__Group__7__Impl rule__Module__Group__8 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1233:2: rule__Module__Group__7__Impl rule__Module__Group__8
            {
            pushFollow(FOLLOW_rule__Module__Group__7__Impl_in_rule__Module__Group__72552);
            rule__Module__Group__7__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group__8_in_rule__Module__Group__72555);
            rule__Module__Group__8();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__7"


    // $ANTLR start "rule__Module__Group__7__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1240:1: rule__Module__Group__7__Impl : ( ( rule__Module__ContainerAssignment_7 )* ) ;
    public final void rule__Module__Group__7__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1244:1: ( ( ( rule__Module__ContainerAssignment_7 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1245:1: ( ( rule__Module__ContainerAssignment_7 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1245:1: ( ( rule__Module__ContainerAssignment_7 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1246:1: ( rule__Module__ContainerAssignment_7 )*
            {
             before(grammarAccess.getModuleAccess().getContainerAssignment_7()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1247:1: ( rule__Module__ContainerAssignment_7 )*
            loop10:
            do {
                int alt10=2;
                int LA10_0 = input.LA(1);

                if ( (LA10_0==23) ) {
                    alt10=1;
                }


                switch (alt10) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1247:2: rule__Module__ContainerAssignment_7
            	    {
            	    pushFollow(FOLLOW_rule__Module__ContainerAssignment_7_in_rule__Module__Group__7__Impl2582);
            	    rule__Module__ContainerAssignment_7();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop10;
                }
            } while (true);

             after(grammarAccess.getModuleAccess().getContainerAssignment_7()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__7__Impl"


    // $ANTLR start "rule__Module__Group__8"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1257:1: rule__Module__Group__8 : rule__Module__Group__8__Impl ;
    public final void rule__Module__Group__8() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1261:1: ( rule__Module__Group__8__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1262:2: rule__Module__Group__8__Impl
            {
            pushFollow(FOLLOW_rule__Module__Group__8__Impl_in_rule__Module__Group__82613);
            rule__Module__Group__8__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__8"


    // $ANTLR start "rule__Module__Group__8__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1268:1: rule__Module__Group__8__Impl : ( '}' ) ;
    public final void rule__Module__Group__8__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1272:1: ( ( '}' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1273:1: ( '}' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1273:1: ( '}' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1274:1: '}'
            {
             before(grammarAccess.getModuleAccess().getRightCurlyBracketKeyword_8()); 
            match(input,17,FOLLOW_17_in_rule__Module__Group__8__Impl2641); 
             after(grammarAccess.getModuleAccess().getRightCurlyBracketKeyword_8()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group__8__Impl"


    // $ANTLR start "rule__Module__Group_3__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1305:1: rule__Module__Group_3__0 : rule__Module__Group_3__0__Impl rule__Module__Group_3__1 ;
    public final void rule__Module__Group_3__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1309:1: ( rule__Module__Group_3__0__Impl rule__Module__Group_3__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1310:2: rule__Module__Group_3__0__Impl rule__Module__Group_3__1
            {
            pushFollow(FOLLOW_rule__Module__Group_3__0__Impl_in_rule__Module__Group_3__02690);
            rule__Module__Group_3__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group_3__1_in_rule__Module__Group_3__02693);
            rule__Module__Group_3__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_3__0"


    // $ANTLR start "rule__Module__Group_3__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1317:1: rule__Module__Group_3__0__Impl : ( ':' ) ;
    public final void rule__Module__Group_3__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1321:1: ( ( ':' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1322:1: ( ':' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1322:1: ( ':' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1323:1: ':'
            {
             before(grammarAccess.getModuleAccess().getColonKeyword_3_0()); 
            match(input,18,FOLLOW_18_in_rule__Module__Group_3__0__Impl2721); 
             after(grammarAccess.getModuleAccess().getColonKeyword_3_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_3__0__Impl"


    // $ANTLR start "rule__Module__Group_3__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1336:1: rule__Module__Group_3__1 : rule__Module__Group_3__1__Impl ;
    public final void rule__Module__Group_3__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1340:1: ( rule__Module__Group_3__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1341:2: rule__Module__Group_3__1__Impl
            {
            pushFollow(FOLLOW_rule__Module__Group_3__1__Impl_in_rule__Module__Group_3__12752);
            rule__Module__Group_3__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_3__1"


    // $ANTLR start "rule__Module__Group_3__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1347:1: rule__Module__Group_3__1__Impl : ( ( rule__Module__ShortNameAssignment_3_1 ) ) ;
    public final void rule__Module__Group_3__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1351:1: ( ( ( rule__Module__ShortNameAssignment_3_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1352:1: ( ( rule__Module__ShortNameAssignment_3_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1352:1: ( ( rule__Module__ShortNameAssignment_3_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1353:1: ( rule__Module__ShortNameAssignment_3_1 )
            {
             before(grammarAccess.getModuleAccess().getShortNameAssignment_3_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1354:1: ( rule__Module__ShortNameAssignment_3_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1354:2: rule__Module__ShortNameAssignment_3_1
            {
            pushFollow(FOLLOW_rule__Module__ShortNameAssignment_3_1_in_rule__Module__Group_3__1__Impl2779);
            rule__Module__ShortNameAssignment_3_1();

            state._fsp--;


            }

             after(grammarAccess.getModuleAccess().getShortNameAssignment_3_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_3__1__Impl"


    // $ANTLR start "rule__Module__Group_4__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1368:1: rule__Module__Group_4__0 : rule__Module__Group_4__0__Impl rule__Module__Group_4__1 ;
    public final void rule__Module__Group_4__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1372:1: ( rule__Module__Group_4__0__Impl rule__Module__Group_4__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1373:2: rule__Module__Group_4__0__Impl rule__Module__Group_4__1
            {
            pushFollow(FOLLOW_rule__Module__Group_4__0__Impl_in_rule__Module__Group_4__02813);
            rule__Module__Group_4__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group_4__1_in_rule__Module__Group_4__02816);
            rule__Module__Group_4__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4__0"


    // $ANTLR start "rule__Module__Group_4__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1380:1: rule__Module__Group_4__0__Impl : ( '(' ) ;
    public final void rule__Module__Group_4__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1384:1: ( ( '(' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1385:1: ( '(' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1385:1: ( '(' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1386:1: '('
            {
             before(grammarAccess.getModuleAccess().getLeftParenthesisKeyword_4_0()); 
            match(input,19,FOLLOW_19_in_rule__Module__Group_4__0__Impl2844); 
             after(grammarAccess.getModuleAccess().getLeftParenthesisKeyword_4_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4__0__Impl"


    // $ANTLR start "rule__Module__Group_4__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1399:1: rule__Module__Group_4__1 : rule__Module__Group_4__1__Impl rule__Module__Group_4__2 ;
    public final void rule__Module__Group_4__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1403:1: ( rule__Module__Group_4__1__Impl rule__Module__Group_4__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1404:2: rule__Module__Group_4__1__Impl rule__Module__Group_4__2
            {
            pushFollow(FOLLOW_rule__Module__Group_4__1__Impl_in_rule__Module__Group_4__12875);
            rule__Module__Group_4__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group_4__2_in_rule__Module__Group_4__12878);
            rule__Module__Group_4__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4__1"


    // $ANTLR start "rule__Module__Group_4__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1411:1: rule__Module__Group_4__1__Impl : ( ( rule__Module__Group_4_1__0 )? ) ;
    public final void rule__Module__Group_4__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1415:1: ( ( ( rule__Module__Group_4_1__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1416:1: ( ( rule__Module__Group_4_1__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1416:1: ( ( rule__Module__Group_4_1__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1417:1: ( rule__Module__Group_4_1__0 )?
            {
             before(grammarAccess.getModuleAccess().getGroup_4_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1418:1: ( rule__Module__Group_4_1__0 )?
            int alt11=2;
            int LA11_0 = input.LA(1);

            if ( (LA11_0==21) ) {
                alt11=1;
            }
            switch (alt11) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1418:2: rule__Module__Group_4_1__0
                    {
                    pushFollow(FOLLOW_rule__Module__Group_4_1__0_in_rule__Module__Group_4__1__Impl2905);
                    rule__Module__Group_4_1__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getModuleAccess().getGroup_4_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4__1__Impl"


    // $ANTLR start "rule__Module__Group_4__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1428:1: rule__Module__Group_4__2 : rule__Module__Group_4__2__Impl ;
    public final void rule__Module__Group_4__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1432:1: ( rule__Module__Group_4__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1433:2: rule__Module__Group_4__2__Impl
            {
            pushFollow(FOLLOW_rule__Module__Group_4__2__Impl_in_rule__Module__Group_4__22936);
            rule__Module__Group_4__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4__2"


    // $ANTLR start "rule__Module__Group_4__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1439:1: rule__Module__Group_4__2__Impl : ( ')' ) ;
    public final void rule__Module__Group_4__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1443:1: ( ( ')' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1444:1: ( ')' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1444:1: ( ')' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1445:1: ')'
            {
             before(grammarAccess.getModuleAccess().getRightParenthesisKeyword_4_2()); 
            match(input,20,FOLLOW_20_in_rule__Module__Group_4__2__Impl2964); 
             after(grammarAccess.getModuleAccess().getRightParenthesisKeyword_4_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4__2__Impl"


    // $ANTLR start "rule__Module__Group_4_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1464:1: rule__Module__Group_4_1__0 : rule__Module__Group_4_1__0__Impl rule__Module__Group_4_1__1 ;
    public final void rule__Module__Group_4_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1468:1: ( rule__Module__Group_4_1__0__Impl rule__Module__Group_4_1__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1469:2: rule__Module__Group_4_1__0__Impl rule__Module__Group_4_1__1
            {
            pushFollow(FOLLOW_rule__Module__Group_4_1__0__Impl_in_rule__Module__Group_4_1__03001);
            rule__Module__Group_4_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group_4_1__1_in_rule__Module__Group_4_1__03004);
            rule__Module__Group_4_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1__0"


    // $ANTLR start "rule__Module__Group_4_1__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1476:1: rule__Module__Group_4_1__0__Impl : ( 'tags' ) ;
    public final void rule__Module__Group_4_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1480:1: ( ( 'tags' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1481:1: ( 'tags' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1481:1: ( 'tags' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1482:1: 'tags'
            {
             before(grammarAccess.getModuleAccess().getTagsKeyword_4_1_0()); 
            match(input,21,FOLLOW_21_in_rule__Module__Group_4_1__0__Impl3032); 
             after(grammarAccess.getModuleAccess().getTagsKeyword_4_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1__0__Impl"


    // $ANTLR start "rule__Module__Group_4_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1495:1: rule__Module__Group_4_1__1 : rule__Module__Group_4_1__1__Impl rule__Module__Group_4_1__2 ;
    public final void rule__Module__Group_4_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1499:1: ( rule__Module__Group_4_1__1__Impl rule__Module__Group_4_1__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1500:2: rule__Module__Group_4_1__1__Impl rule__Module__Group_4_1__2
            {
            pushFollow(FOLLOW_rule__Module__Group_4_1__1__Impl_in_rule__Module__Group_4_1__13063);
            rule__Module__Group_4_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group_4_1__2_in_rule__Module__Group_4_1__13066);
            rule__Module__Group_4_1__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1__1"


    // $ANTLR start "rule__Module__Group_4_1__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1507:1: rule__Module__Group_4_1__1__Impl : ( ( rule__Module__TagsAssignment_4_1_1 ) ) ;
    public final void rule__Module__Group_4_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1511:1: ( ( ( rule__Module__TagsAssignment_4_1_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1512:1: ( ( rule__Module__TagsAssignment_4_1_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1512:1: ( ( rule__Module__TagsAssignment_4_1_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1513:1: ( rule__Module__TagsAssignment_4_1_1 )
            {
             before(grammarAccess.getModuleAccess().getTagsAssignment_4_1_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1514:1: ( rule__Module__TagsAssignment_4_1_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1514:2: rule__Module__TagsAssignment_4_1_1
            {
            pushFollow(FOLLOW_rule__Module__TagsAssignment_4_1_1_in_rule__Module__Group_4_1__1__Impl3093);
            rule__Module__TagsAssignment_4_1_1();

            state._fsp--;


            }

             after(grammarAccess.getModuleAccess().getTagsAssignment_4_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1__1__Impl"


    // $ANTLR start "rule__Module__Group_4_1__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1524:1: rule__Module__Group_4_1__2 : rule__Module__Group_4_1__2__Impl ;
    public final void rule__Module__Group_4_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1528:1: ( rule__Module__Group_4_1__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1529:2: rule__Module__Group_4_1__2__Impl
            {
            pushFollow(FOLLOW_rule__Module__Group_4_1__2__Impl_in_rule__Module__Group_4_1__23123);
            rule__Module__Group_4_1__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1__2"


    // $ANTLR start "rule__Module__Group_4_1__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1535:1: rule__Module__Group_4_1__2__Impl : ( ( rule__Module__Group_4_1_2__0 )* ) ;
    public final void rule__Module__Group_4_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1539:1: ( ( ( rule__Module__Group_4_1_2__0 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1540:1: ( ( rule__Module__Group_4_1_2__0 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1540:1: ( ( rule__Module__Group_4_1_2__0 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1541:1: ( rule__Module__Group_4_1_2__0 )*
            {
             before(grammarAccess.getModuleAccess().getGroup_4_1_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1542:1: ( rule__Module__Group_4_1_2__0 )*
            loop12:
            do {
                int alt12=2;
                int LA12_0 = input.LA(1);

                if ( (LA12_0==22) ) {
                    alt12=1;
                }


                switch (alt12) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1542:2: rule__Module__Group_4_1_2__0
            	    {
            	    pushFollow(FOLLOW_rule__Module__Group_4_1_2__0_in_rule__Module__Group_4_1__2__Impl3150);
            	    rule__Module__Group_4_1_2__0();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop12;
                }
            } while (true);

             after(grammarAccess.getModuleAccess().getGroup_4_1_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1__2__Impl"


    // $ANTLR start "rule__Module__Group_4_1_2__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1558:1: rule__Module__Group_4_1_2__0 : rule__Module__Group_4_1_2__0__Impl rule__Module__Group_4_1_2__1 ;
    public final void rule__Module__Group_4_1_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1562:1: ( rule__Module__Group_4_1_2__0__Impl rule__Module__Group_4_1_2__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1563:2: rule__Module__Group_4_1_2__0__Impl rule__Module__Group_4_1_2__1
            {
            pushFollow(FOLLOW_rule__Module__Group_4_1_2__0__Impl_in_rule__Module__Group_4_1_2__03187);
            rule__Module__Group_4_1_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Module__Group_4_1_2__1_in_rule__Module__Group_4_1_2__03190);
            rule__Module__Group_4_1_2__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1_2__0"


    // $ANTLR start "rule__Module__Group_4_1_2__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1570:1: rule__Module__Group_4_1_2__0__Impl : ( ',' ) ;
    public final void rule__Module__Group_4_1_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1574:1: ( ( ',' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1575:1: ( ',' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1575:1: ( ',' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1576:1: ','
            {
             before(grammarAccess.getModuleAccess().getCommaKeyword_4_1_2_0()); 
            match(input,22,FOLLOW_22_in_rule__Module__Group_4_1_2__0__Impl3218); 
             after(grammarAccess.getModuleAccess().getCommaKeyword_4_1_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1_2__0__Impl"


    // $ANTLR start "rule__Module__Group_4_1_2__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1589:1: rule__Module__Group_4_1_2__1 : rule__Module__Group_4_1_2__1__Impl ;
    public final void rule__Module__Group_4_1_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1593:1: ( rule__Module__Group_4_1_2__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1594:2: rule__Module__Group_4_1_2__1__Impl
            {
            pushFollow(FOLLOW_rule__Module__Group_4_1_2__1__Impl_in_rule__Module__Group_4_1_2__13249);
            rule__Module__Group_4_1_2__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1_2__1"


    // $ANTLR start "rule__Module__Group_4_1_2__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1600:1: rule__Module__Group_4_1_2__1__Impl : ( ( rule__Module__TagsAssignment_4_1_2_1 ) ) ;
    public final void rule__Module__Group_4_1_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1604:1: ( ( ( rule__Module__TagsAssignment_4_1_2_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1605:1: ( ( rule__Module__TagsAssignment_4_1_2_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1605:1: ( ( rule__Module__TagsAssignment_4_1_2_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1606:1: ( rule__Module__TagsAssignment_4_1_2_1 )
            {
             before(grammarAccess.getModuleAccess().getTagsAssignment_4_1_2_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1607:1: ( rule__Module__TagsAssignment_4_1_2_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1607:2: rule__Module__TagsAssignment_4_1_2_1
            {
            pushFollow(FOLLOW_rule__Module__TagsAssignment_4_1_2_1_in_rule__Module__Group_4_1_2__1__Impl3276);
            rule__Module__TagsAssignment_4_1_2_1();

            state._fsp--;


            }

             after(grammarAccess.getModuleAccess().getTagsAssignment_4_1_2_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__Group_4_1_2__1__Impl"


    // $ANTLR start "rule__Container__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1621:1: rule__Container__Group__0 : rule__Container__Group__0__Impl rule__Container__Group__1 ;
    public final void rule__Container__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1625:1: ( rule__Container__Group__0__Impl rule__Container__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1626:2: rule__Container__Group__0__Impl rule__Container__Group__1
            {
            pushFollow(FOLLOW_rule__Container__Group__0__Impl_in_rule__Container__Group__03310);
            rule__Container__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group__1_in_rule__Container__Group__03313);
            rule__Container__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__0"


    // $ANTLR start "rule__Container__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1633:1: rule__Container__Group__0__Impl : ( () ) ;
    public final void rule__Container__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1637:1: ( ( () ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1638:1: ( () )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1638:1: ( () )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1639:1: ()
            {
             before(grammarAccess.getContainerAccess().getContainerAction_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1640:1: ()
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1642:1: 
            {
            }

             after(grammarAccess.getContainerAccess().getContainerAction_0()); 

            }


            }

        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__0__Impl"


    // $ANTLR start "rule__Container__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1652:1: rule__Container__Group__1 : rule__Container__Group__1__Impl rule__Container__Group__2 ;
    public final void rule__Container__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1656:1: ( rule__Container__Group__1__Impl rule__Container__Group__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1657:2: rule__Container__Group__1__Impl rule__Container__Group__2
            {
            pushFollow(FOLLOW_rule__Container__Group__1__Impl_in_rule__Container__Group__13371);
            rule__Container__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group__2_in_rule__Container__Group__13374);
            rule__Container__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__1"


    // $ANTLR start "rule__Container__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1664:1: rule__Container__Group__1__Impl : ( 'container' ) ;
    public final void rule__Container__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1668:1: ( ( 'container' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1669:1: ( 'container' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1669:1: ( 'container' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1670:1: 'container'
            {
             before(grammarAccess.getContainerAccess().getContainerKeyword_1()); 
            match(input,23,FOLLOW_23_in_rule__Container__Group__1__Impl3402); 
             after(grammarAccess.getContainerAccess().getContainerKeyword_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__1__Impl"


    // $ANTLR start "rule__Container__Group__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1683:1: rule__Container__Group__2 : rule__Container__Group__2__Impl rule__Container__Group__3 ;
    public final void rule__Container__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1687:1: ( rule__Container__Group__2__Impl rule__Container__Group__3 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1688:2: rule__Container__Group__2__Impl rule__Container__Group__3
            {
            pushFollow(FOLLOW_rule__Container__Group__2__Impl_in_rule__Container__Group__23433);
            rule__Container__Group__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group__3_in_rule__Container__Group__23436);
            rule__Container__Group__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__2"


    // $ANTLR start "rule__Container__Group__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1695:1: rule__Container__Group__2__Impl : ( ( rule__Container__DefinitionAssignment_2 ) ) ;
    public final void rule__Container__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1699:1: ( ( ( rule__Container__DefinitionAssignment_2 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1700:1: ( ( rule__Container__DefinitionAssignment_2 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1700:1: ( ( rule__Container__DefinitionAssignment_2 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1701:1: ( rule__Container__DefinitionAssignment_2 )
            {
             before(grammarAccess.getContainerAccess().getDefinitionAssignment_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1702:1: ( rule__Container__DefinitionAssignment_2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1702:2: rule__Container__DefinitionAssignment_2
            {
            pushFollow(FOLLOW_rule__Container__DefinitionAssignment_2_in_rule__Container__Group__2__Impl3463);
            rule__Container__DefinitionAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getContainerAccess().getDefinitionAssignment_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__2__Impl"


    // $ANTLR start "rule__Container__Group__3"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1712:1: rule__Container__Group__3 : rule__Container__Group__3__Impl rule__Container__Group__4 ;
    public final void rule__Container__Group__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1716:1: ( rule__Container__Group__3__Impl rule__Container__Group__4 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1717:2: rule__Container__Group__3__Impl rule__Container__Group__4
            {
            pushFollow(FOLLOW_rule__Container__Group__3__Impl_in_rule__Container__Group__33493);
            rule__Container__Group__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group__4_in_rule__Container__Group__33496);
            rule__Container__Group__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__3"


    // $ANTLR start "rule__Container__Group__3__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1724:1: rule__Container__Group__3__Impl : ( ( rule__Container__Group_3__0 )? ) ;
    public final void rule__Container__Group__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1728:1: ( ( ( rule__Container__Group_3__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1729:1: ( ( rule__Container__Group_3__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1729:1: ( ( rule__Container__Group_3__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1730:1: ( rule__Container__Group_3__0 )?
            {
             before(grammarAccess.getContainerAccess().getGroup_3()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1731:1: ( rule__Container__Group_3__0 )?
            int alt13=2;
            int LA13_0 = input.LA(1);

            if ( (LA13_0==18) ) {
                alt13=1;
            }
            switch (alt13) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1731:2: rule__Container__Group_3__0
                    {
                    pushFollow(FOLLOW_rule__Container__Group_3__0_in_rule__Container__Group__3__Impl3523);
                    rule__Container__Group_3__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getContainerAccess().getGroup_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__3__Impl"


    // $ANTLR start "rule__Container__Group__4"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1741:1: rule__Container__Group__4 : rule__Container__Group__4__Impl rule__Container__Group__5 ;
    public final void rule__Container__Group__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1745:1: ( rule__Container__Group__4__Impl rule__Container__Group__5 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1746:2: rule__Container__Group__4__Impl rule__Container__Group__5
            {
            pushFollow(FOLLOW_rule__Container__Group__4__Impl_in_rule__Container__Group__43554);
            rule__Container__Group__4__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group__5_in_rule__Container__Group__43557);
            rule__Container__Group__5();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__4"


    // $ANTLR start "rule__Container__Group__4__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1753:1: rule__Container__Group__4__Impl : ( ( rule__Container__Group_4__0 )? ) ;
    public final void rule__Container__Group__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1757:1: ( ( ( rule__Container__Group_4__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1758:1: ( ( rule__Container__Group_4__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1758:1: ( ( rule__Container__Group_4__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1759:1: ( rule__Container__Group_4__0 )?
            {
             before(grammarAccess.getContainerAccess().getGroup_4()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1760:1: ( rule__Container__Group_4__0 )?
            int alt14=2;
            int LA14_0 = input.LA(1);

            if ( (LA14_0==19) ) {
                alt14=1;
            }
            switch (alt14) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1760:2: rule__Container__Group_4__0
                    {
                    pushFollow(FOLLOW_rule__Container__Group_4__0_in_rule__Container__Group__4__Impl3584);
                    rule__Container__Group_4__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getContainerAccess().getGroup_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__4__Impl"


    // $ANTLR start "rule__Container__Group__5"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1770:1: rule__Container__Group__5 : rule__Container__Group__5__Impl rule__Container__Group__6 ;
    public final void rule__Container__Group__5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1774:1: ( rule__Container__Group__5__Impl rule__Container__Group__6 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1775:2: rule__Container__Group__5__Impl rule__Container__Group__6
            {
            pushFollow(FOLLOW_rule__Container__Group__5__Impl_in_rule__Container__Group__53615);
            rule__Container__Group__5__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group__6_in_rule__Container__Group__53618);
            rule__Container__Group__6();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__5"


    // $ANTLR start "rule__Container__Group__5__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1782:1: rule__Container__Group__5__Impl : ( '=' ) ;
    public final void rule__Container__Group__5__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1786:1: ( ( '=' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1787:1: ( '=' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1787:1: ( '=' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1788:1: '='
            {
             before(grammarAccess.getContainerAccess().getEqualsSignKeyword_5()); 
            match(input,15,FOLLOW_15_in_rule__Container__Group__5__Impl3646); 
             after(grammarAccess.getContainerAccess().getEqualsSignKeyword_5()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__5__Impl"


    // $ANTLR start "rule__Container__Group__6"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1801:1: rule__Container__Group__6 : rule__Container__Group__6__Impl rule__Container__Group__7 ;
    public final void rule__Container__Group__6() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1805:1: ( rule__Container__Group__6__Impl rule__Container__Group__7 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1806:2: rule__Container__Group__6__Impl rule__Container__Group__7
            {
            pushFollow(FOLLOW_rule__Container__Group__6__Impl_in_rule__Container__Group__63677);
            rule__Container__Group__6__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group__7_in_rule__Container__Group__63680);
            rule__Container__Group__7();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__6"


    // $ANTLR start "rule__Container__Group__6__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1813:1: rule__Container__Group__6__Impl : ( '{' ) ;
    public final void rule__Container__Group__6__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1817:1: ( ( '{' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1818:1: ( '{' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1818:1: ( '{' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1819:1: '{'
            {
             before(grammarAccess.getContainerAccess().getLeftCurlyBracketKeyword_6()); 
            match(input,16,FOLLOW_16_in_rule__Container__Group__6__Impl3708); 
             after(grammarAccess.getContainerAccess().getLeftCurlyBracketKeyword_6()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__6__Impl"


    // $ANTLR start "rule__Container__Group__7"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1832:1: rule__Container__Group__7 : rule__Container__Group__7__Impl rule__Container__Group__8 ;
    public final void rule__Container__Group__7() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1836:1: ( rule__Container__Group__7__Impl rule__Container__Group__8 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1837:2: rule__Container__Group__7__Impl rule__Container__Group__8
            {
            pushFollow(FOLLOW_rule__Container__Group__7__Impl_in_rule__Container__Group__73739);
            rule__Container__Group__7__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group__8_in_rule__Container__Group__73742);
            rule__Container__Group__8();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__7"


    // $ANTLR start "rule__Container__Group__7__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1844:1: rule__Container__Group__7__Impl : ( ( rule__Container__ElementsAssignment_7 )* ) ;
    public final void rule__Container__Group__7__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1848:1: ( ( ( rule__Container__ElementsAssignment_7 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1849:1: ( ( rule__Container__ElementsAssignment_7 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1849:1: ( ( rule__Container__ElementsAssignment_7 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1850:1: ( rule__Container__ElementsAssignment_7 )*
            {
             before(grammarAccess.getContainerAccess().getElementsAssignment_7()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1851:1: ( rule__Container__ElementsAssignment_7 )*
            loop15:
            do {
                int alt15=2;
                int LA15_0 = input.LA(1);

                if ( (LA15_0==23||(LA15_0>=25 && LA15_0<=27)) ) {
                    alt15=1;
                }


                switch (alt15) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1851:2: rule__Container__ElementsAssignment_7
            	    {
            	    pushFollow(FOLLOW_rule__Container__ElementsAssignment_7_in_rule__Container__Group__7__Impl3769);
            	    rule__Container__ElementsAssignment_7();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop15;
                }
            } while (true);

             after(grammarAccess.getContainerAccess().getElementsAssignment_7()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__7__Impl"


    // $ANTLR start "rule__Container__Group__8"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1861:1: rule__Container__Group__8 : rule__Container__Group__8__Impl ;
    public final void rule__Container__Group__8() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1865:1: ( rule__Container__Group__8__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1866:2: rule__Container__Group__8__Impl
            {
            pushFollow(FOLLOW_rule__Container__Group__8__Impl_in_rule__Container__Group__83800);
            rule__Container__Group__8__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__8"


    // $ANTLR start "rule__Container__Group__8__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1872:1: rule__Container__Group__8__Impl : ( '}' ) ;
    public final void rule__Container__Group__8__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1876:1: ( ( '}' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1877:1: ( '}' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1877:1: ( '}' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1878:1: '}'
            {
             before(grammarAccess.getContainerAccess().getRightCurlyBracketKeyword_8()); 
            match(input,17,FOLLOW_17_in_rule__Container__Group__8__Impl3828); 
             after(grammarAccess.getContainerAccess().getRightCurlyBracketKeyword_8()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group__8__Impl"


    // $ANTLR start "rule__Container__Group_3__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1909:1: rule__Container__Group_3__0 : rule__Container__Group_3__0__Impl rule__Container__Group_3__1 ;
    public final void rule__Container__Group_3__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1913:1: ( rule__Container__Group_3__0__Impl rule__Container__Group_3__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1914:2: rule__Container__Group_3__0__Impl rule__Container__Group_3__1
            {
            pushFollow(FOLLOW_rule__Container__Group_3__0__Impl_in_rule__Container__Group_3__03877);
            rule__Container__Group_3__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group_3__1_in_rule__Container__Group_3__03880);
            rule__Container__Group_3__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_3__0"


    // $ANTLR start "rule__Container__Group_3__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1921:1: rule__Container__Group_3__0__Impl : ( ':' ) ;
    public final void rule__Container__Group_3__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1925:1: ( ( ':' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1926:1: ( ':' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1926:1: ( ':' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1927:1: ':'
            {
             before(grammarAccess.getContainerAccess().getColonKeyword_3_0()); 
            match(input,18,FOLLOW_18_in_rule__Container__Group_3__0__Impl3908); 
             after(grammarAccess.getContainerAccess().getColonKeyword_3_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_3__0__Impl"


    // $ANTLR start "rule__Container__Group_3__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1940:1: rule__Container__Group_3__1 : rule__Container__Group_3__1__Impl ;
    public final void rule__Container__Group_3__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1944:1: ( rule__Container__Group_3__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1945:2: rule__Container__Group_3__1__Impl
            {
            pushFollow(FOLLOW_rule__Container__Group_3__1__Impl_in_rule__Container__Group_3__13939);
            rule__Container__Group_3__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_3__1"


    // $ANTLR start "rule__Container__Group_3__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1951:1: rule__Container__Group_3__1__Impl : ( ( rule__Container__ShortNameAssignment_3_1 ) ) ;
    public final void rule__Container__Group_3__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1955:1: ( ( ( rule__Container__ShortNameAssignment_3_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1956:1: ( ( rule__Container__ShortNameAssignment_3_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1956:1: ( ( rule__Container__ShortNameAssignment_3_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1957:1: ( rule__Container__ShortNameAssignment_3_1 )
            {
             before(grammarAccess.getContainerAccess().getShortNameAssignment_3_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1958:1: ( rule__Container__ShortNameAssignment_3_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1958:2: rule__Container__ShortNameAssignment_3_1
            {
            pushFollow(FOLLOW_rule__Container__ShortNameAssignment_3_1_in_rule__Container__Group_3__1__Impl3966);
            rule__Container__ShortNameAssignment_3_1();

            state._fsp--;


            }

             after(grammarAccess.getContainerAccess().getShortNameAssignment_3_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_3__1__Impl"


    // $ANTLR start "rule__Container__Group_4__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1972:1: rule__Container__Group_4__0 : rule__Container__Group_4__0__Impl rule__Container__Group_4__1 ;
    public final void rule__Container__Group_4__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1976:1: ( rule__Container__Group_4__0__Impl rule__Container__Group_4__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1977:2: rule__Container__Group_4__0__Impl rule__Container__Group_4__1
            {
            pushFollow(FOLLOW_rule__Container__Group_4__0__Impl_in_rule__Container__Group_4__04000);
            rule__Container__Group_4__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group_4__1_in_rule__Container__Group_4__04003);
            rule__Container__Group_4__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4__0"


    // $ANTLR start "rule__Container__Group_4__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1984:1: rule__Container__Group_4__0__Impl : ( '(' ) ;
    public final void rule__Container__Group_4__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1988:1: ( ( '(' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1989:1: ( '(' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1989:1: ( '(' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:1990:1: '('
            {
             before(grammarAccess.getContainerAccess().getLeftParenthesisKeyword_4_0()); 
            match(input,19,FOLLOW_19_in_rule__Container__Group_4__0__Impl4031); 
             after(grammarAccess.getContainerAccess().getLeftParenthesisKeyword_4_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4__0__Impl"


    // $ANTLR start "rule__Container__Group_4__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2003:1: rule__Container__Group_4__1 : rule__Container__Group_4__1__Impl rule__Container__Group_4__2 ;
    public final void rule__Container__Group_4__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2007:1: ( rule__Container__Group_4__1__Impl rule__Container__Group_4__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2008:2: rule__Container__Group_4__1__Impl rule__Container__Group_4__2
            {
            pushFollow(FOLLOW_rule__Container__Group_4__1__Impl_in_rule__Container__Group_4__14062);
            rule__Container__Group_4__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group_4__2_in_rule__Container__Group_4__14065);
            rule__Container__Group_4__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4__1"


    // $ANTLR start "rule__Container__Group_4__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2015:1: rule__Container__Group_4__1__Impl : ( ( rule__Container__UnorderedGroup_4_1 ) ) ;
    public final void rule__Container__Group_4__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2019:1: ( ( ( rule__Container__UnorderedGroup_4_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2020:1: ( ( rule__Container__UnorderedGroup_4_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2020:1: ( ( rule__Container__UnorderedGroup_4_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2021:1: ( rule__Container__UnorderedGroup_4_1 )
            {
             before(grammarAccess.getContainerAccess().getUnorderedGroup_4_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2022:1: ( rule__Container__UnorderedGroup_4_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2022:2: rule__Container__UnorderedGroup_4_1
            {
            pushFollow(FOLLOW_rule__Container__UnorderedGroup_4_1_in_rule__Container__Group_4__1__Impl4092);
            rule__Container__UnorderedGroup_4_1();

            state._fsp--;


            }

             after(grammarAccess.getContainerAccess().getUnorderedGroup_4_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4__1__Impl"


    // $ANTLR start "rule__Container__Group_4__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2032:1: rule__Container__Group_4__2 : rule__Container__Group_4__2__Impl ;
    public final void rule__Container__Group_4__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2036:1: ( rule__Container__Group_4__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2037:2: rule__Container__Group_4__2__Impl
            {
            pushFollow(FOLLOW_rule__Container__Group_4__2__Impl_in_rule__Container__Group_4__24122);
            rule__Container__Group_4__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4__2"


    // $ANTLR start "rule__Container__Group_4__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2043:1: rule__Container__Group_4__2__Impl : ( ')' ) ;
    public final void rule__Container__Group_4__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2047:1: ( ( ')' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2048:1: ( ')' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2048:1: ( ')' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2049:1: ')'
            {
             before(grammarAccess.getContainerAccess().getRightParenthesisKeyword_4_2()); 
            match(input,20,FOLLOW_20_in_rule__Container__Group_4__2__Impl4150); 
             after(grammarAccess.getContainerAccess().getRightParenthesisKeyword_4_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4__2__Impl"


    // $ANTLR start "rule__Container__Group_4_1_0__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2068:1: rule__Container__Group_4_1_0__0 : rule__Container__Group_4_1_0__0__Impl rule__Container__Group_4_1_0__1 ;
    public final void rule__Container__Group_4_1_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2072:1: ( rule__Container__Group_4_1_0__0__Impl rule__Container__Group_4_1_0__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2073:2: rule__Container__Group_4_1_0__0__Impl rule__Container__Group_4_1_0__1
            {
            pushFollow(FOLLOW_rule__Container__Group_4_1_0__0__Impl_in_rule__Container__Group_4_1_0__04187);
            rule__Container__Group_4_1_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group_4_1_0__1_in_rule__Container__Group_4_1_0__04190);
            rule__Container__Group_4_1_0__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_0__0"


    // $ANTLR start "rule__Container__Group_4_1_0__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2080:1: rule__Container__Group_4_1_0__0__Impl : ( 'index' ) ;
    public final void rule__Container__Group_4_1_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2084:1: ( ( 'index' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2085:1: ( 'index' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2085:1: ( 'index' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2086:1: 'index'
            {
             before(grammarAccess.getContainerAccess().getIndexKeyword_4_1_0_0()); 
            match(input,24,FOLLOW_24_in_rule__Container__Group_4_1_0__0__Impl4218); 
             after(grammarAccess.getContainerAccess().getIndexKeyword_4_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_0__0__Impl"


    // $ANTLR start "rule__Container__Group_4_1_0__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2099:1: rule__Container__Group_4_1_0__1 : rule__Container__Group_4_1_0__1__Impl ;
    public final void rule__Container__Group_4_1_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2103:1: ( rule__Container__Group_4_1_0__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2104:2: rule__Container__Group_4_1_0__1__Impl
            {
            pushFollow(FOLLOW_rule__Container__Group_4_1_0__1__Impl_in_rule__Container__Group_4_1_0__14249);
            rule__Container__Group_4_1_0__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_0__1"


    // $ANTLR start "rule__Container__Group_4_1_0__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2110:1: rule__Container__Group_4_1_0__1__Impl : ( ( rule__Container__IndexAssignment_4_1_0_1 ) ) ;
    public final void rule__Container__Group_4_1_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2114:1: ( ( ( rule__Container__IndexAssignment_4_1_0_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2115:1: ( ( rule__Container__IndexAssignment_4_1_0_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2115:1: ( ( rule__Container__IndexAssignment_4_1_0_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2116:1: ( rule__Container__IndexAssignment_4_1_0_1 )
            {
             before(grammarAccess.getContainerAccess().getIndexAssignment_4_1_0_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2117:1: ( rule__Container__IndexAssignment_4_1_0_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2117:2: rule__Container__IndexAssignment_4_1_0_1
            {
            pushFollow(FOLLOW_rule__Container__IndexAssignment_4_1_0_1_in_rule__Container__Group_4_1_0__1__Impl4276);
            rule__Container__IndexAssignment_4_1_0_1();

            state._fsp--;


            }

             after(grammarAccess.getContainerAccess().getIndexAssignment_4_1_0_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_0__1__Impl"


    // $ANTLR start "rule__Container__Group_4_1_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2131:1: rule__Container__Group_4_1_1__0 : rule__Container__Group_4_1_1__0__Impl rule__Container__Group_4_1_1__1 ;
    public final void rule__Container__Group_4_1_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2135:1: ( rule__Container__Group_4_1_1__0__Impl rule__Container__Group_4_1_1__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2136:2: rule__Container__Group_4_1_1__0__Impl rule__Container__Group_4_1_1__1
            {
            pushFollow(FOLLOW_rule__Container__Group_4_1_1__0__Impl_in_rule__Container__Group_4_1_1__04310);
            rule__Container__Group_4_1_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group_4_1_1__1_in_rule__Container__Group_4_1_1__04313);
            rule__Container__Group_4_1_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1__0"


    // $ANTLR start "rule__Container__Group_4_1_1__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2143:1: rule__Container__Group_4_1_1__0__Impl : ( 'tags' ) ;
    public final void rule__Container__Group_4_1_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2147:1: ( ( 'tags' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2148:1: ( 'tags' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2148:1: ( 'tags' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2149:1: 'tags'
            {
             before(grammarAccess.getContainerAccess().getTagsKeyword_4_1_1_0()); 
            match(input,21,FOLLOW_21_in_rule__Container__Group_4_1_1__0__Impl4341); 
             after(grammarAccess.getContainerAccess().getTagsKeyword_4_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1__0__Impl"


    // $ANTLR start "rule__Container__Group_4_1_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2162:1: rule__Container__Group_4_1_1__1 : rule__Container__Group_4_1_1__1__Impl rule__Container__Group_4_1_1__2 ;
    public final void rule__Container__Group_4_1_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2166:1: ( rule__Container__Group_4_1_1__1__Impl rule__Container__Group_4_1_1__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2167:2: rule__Container__Group_4_1_1__1__Impl rule__Container__Group_4_1_1__2
            {
            pushFollow(FOLLOW_rule__Container__Group_4_1_1__1__Impl_in_rule__Container__Group_4_1_1__14372);
            rule__Container__Group_4_1_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group_4_1_1__2_in_rule__Container__Group_4_1_1__14375);
            rule__Container__Group_4_1_1__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1__1"


    // $ANTLR start "rule__Container__Group_4_1_1__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2174:1: rule__Container__Group_4_1_1__1__Impl : ( ( rule__Container__TagsAssignment_4_1_1_1 ) ) ;
    public final void rule__Container__Group_4_1_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2178:1: ( ( ( rule__Container__TagsAssignment_4_1_1_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2179:1: ( ( rule__Container__TagsAssignment_4_1_1_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2179:1: ( ( rule__Container__TagsAssignment_4_1_1_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2180:1: ( rule__Container__TagsAssignment_4_1_1_1 )
            {
             before(grammarAccess.getContainerAccess().getTagsAssignment_4_1_1_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2181:1: ( rule__Container__TagsAssignment_4_1_1_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2181:2: rule__Container__TagsAssignment_4_1_1_1
            {
            pushFollow(FOLLOW_rule__Container__TagsAssignment_4_1_1_1_in_rule__Container__Group_4_1_1__1__Impl4402);
            rule__Container__TagsAssignment_4_1_1_1();

            state._fsp--;


            }

             after(grammarAccess.getContainerAccess().getTagsAssignment_4_1_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1__1__Impl"


    // $ANTLR start "rule__Container__Group_4_1_1__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2191:1: rule__Container__Group_4_1_1__2 : rule__Container__Group_4_1_1__2__Impl ;
    public final void rule__Container__Group_4_1_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2195:1: ( rule__Container__Group_4_1_1__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2196:2: rule__Container__Group_4_1_1__2__Impl
            {
            pushFollow(FOLLOW_rule__Container__Group_4_1_1__2__Impl_in_rule__Container__Group_4_1_1__24432);
            rule__Container__Group_4_1_1__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1__2"


    // $ANTLR start "rule__Container__Group_4_1_1__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2202:1: rule__Container__Group_4_1_1__2__Impl : ( ( rule__Container__Group_4_1_1_2__0 )* ) ;
    public final void rule__Container__Group_4_1_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2206:1: ( ( ( rule__Container__Group_4_1_1_2__0 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2207:1: ( ( rule__Container__Group_4_1_1_2__0 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2207:1: ( ( rule__Container__Group_4_1_1_2__0 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2208:1: ( rule__Container__Group_4_1_1_2__0 )*
            {
             before(grammarAccess.getContainerAccess().getGroup_4_1_1_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2209:1: ( rule__Container__Group_4_1_1_2__0 )*
            loop16:
            do {
                int alt16=2;
                int LA16_0 = input.LA(1);

                if ( (LA16_0==22) ) {
                    alt16=1;
                }


                switch (alt16) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2209:2: rule__Container__Group_4_1_1_2__0
            	    {
            	    pushFollow(FOLLOW_rule__Container__Group_4_1_1_2__0_in_rule__Container__Group_4_1_1__2__Impl4459);
            	    rule__Container__Group_4_1_1_2__0();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop16;
                }
            } while (true);

             after(grammarAccess.getContainerAccess().getGroup_4_1_1_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1__2__Impl"


    // $ANTLR start "rule__Container__Group_4_1_1_2__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2225:1: rule__Container__Group_4_1_1_2__0 : rule__Container__Group_4_1_1_2__0__Impl rule__Container__Group_4_1_1_2__1 ;
    public final void rule__Container__Group_4_1_1_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2229:1: ( rule__Container__Group_4_1_1_2__0__Impl rule__Container__Group_4_1_1_2__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2230:2: rule__Container__Group_4_1_1_2__0__Impl rule__Container__Group_4_1_1_2__1
            {
            pushFollow(FOLLOW_rule__Container__Group_4_1_1_2__0__Impl_in_rule__Container__Group_4_1_1_2__04496);
            rule__Container__Group_4_1_1_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Container__Group_4_1_1_2__1_in_rule__Container__Group_4_1_1_2__04499);
            rule__Container__Group_4_1_1_2__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1_2__0"


    // $ANTLR start "rule__Container__Group_4_1_1_2__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2237:1: rule__Container__Group_4_1_1_2__0__Impl : ( ',' ) ;
    public final void rule__Container__Group_4_1_1_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2241:1: ( ( ',' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2242:1: ( ',' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2242:1: ( ',' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2243:1: ','
            {
             before(grammarAccess.getContainerAccess().getCommaKeyword_4_1_1_2_0()); 
            match(input,22,FOLLOW_22_in_rule__Container__Group_4_1_1_2__0__Impl4527); 
             after(grammarAccess.getContainerAccess().getCommaKeyword_4_1_1_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1_2__0__Impl"


    // $ANTLR start "rule__Container__Group_4_1_1_2__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2256:1: rule__Container__Group_4_1_1_2__1 : rule__Container__Group_4_1_1_2__1__Impl ;
    public final void rule__Container__Group_4_1_1_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2260:1: ( rule__Container__Group_4_1_1_2__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2261:2: rule__Container__Group_4_1_1_2__1__Impl
            {
            pushFollow(FOLLOW_rule__Container__Group_4_1_1_2__1__Impl_in_rule__Container__Group_4_1_1_2__14558);
            rule__Container__Group_4_1_1_2__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1_2__1"


    // $ANTLR start "rule__Container__Group_4_1_1_2__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2267:1: rule__Container__Group_4_1_1_2__1__Impl : ( ( rule__Container__TagsAssignment_4_1_1_2_1 ) ) ;
    public final void rule__Container__Group_4_1_1_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2271:1: ( ( ( rule__Container__TagsAssignment_4_1_1_2_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2272:1: ( ( rule__Container__TagsAssignment_4_1_1_2_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2272:1: ( ( rule__Container__TagsAssignment_4_1_1_2_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2273:1: ( rule__Container__TagsAssignment_4_1_1_2_1 )
            {
             before(grammarAccess.getContainerAccess().getTagsAssignment_4_1_1_2_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2274:1: ( rule__Container__TagsAssignment_4_1_1_2_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2274:2: rule__Container__TagsAssignment_4_1_1_2_1
            {
            pushFollow(FOLLOW_rule__Container__TagsAssignment_4_1_1_2_1_in_rule__Container__Group_4_1_1_2__1__Impl4585);
            rule__Container__TagsAssignment_4_1_1_2_1();

            state._fsp--;


            }

             after(grammarAccess.getContainerAccess().getTagsAssignment_4_1_1_2_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__Group_4_1_1_2__1__Impl"


    // $ANTLR start "rule__Parameter__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2288:1: rule__Parameter__Group__0 : rule__Parameter__Group__0__Impl rule__Parameter__Group__1 ;
    public final void rule__Parameter__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2292:1: ( rule__Parameter__Group__0__Impl rule__Parameter__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2293:2: rule__Parameter__Group__0__Impl rule__Parameter__Group__1
            {
            pushFollow(FOLLOW_rule__Parameter__Group__0__Impl_in_rule__Parameter__Group__04619);
            rule__Parameter__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group__1_in_rule__Parameter__Group__04622);
            rule__Parameter__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__0"


    // $ANTLR start "rule__Parameter__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2300:1: rule__Parameter__Group__0__Impl : ( () ) ;
    public final void rule__Parameter__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2304:1: ( ( () ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2305:1: ( () )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2305:1: ( () )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2306:1: ()
            {
             before(grammarAccess.getParameterAccess().getParameterAction_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2307:1: ()
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2309:1: 
            {
            }

             after(grammarAccess.getParameterAccess().getParameterAction_0()); 

            }


            }

        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__0__Impl"


    // $ANTLR start "rule__Parameter__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2319:1: rule__Parameter__Group__1 : rule__Parameter__Group__1__Impl rule__Parameter__Group__2 ;
    public final void rule__Parameter__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2323:1: ( rule__Parameter__Group__1__Impl rule__Parameter__Group__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2324:2: rule__Parameter__Group__1__Impl rule__Parameter__Group__2
            {
            pushFollow(FOLLOW_rule__Parameter__Group__1__Impl_in_rule__Parameter__Group__14680);
            rule__Parameter__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group__2_in_rule__Parameter__Group__14683);
            rule__Parameter__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__1"


    // $ANTLR start "rule__Parameter__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2331:1: rule__Parameter__Group__1__Impl : ( 'param' ) ;
    public final void rule__Parameter__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2335:1: ( ( 'param' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2336:1: ( 'param' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2336:1: ( 'param' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2337:1: 'param'
            {
             before(grammarAccess.getParameterAccess().getParamKeyword_1()); 
            match(input,25,FOLLOW_25_in_rule__Parameter__Group__1__Impl4711); 
             after(grammarAccess.getParameterAccess().getParamKeyword_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__1__Impl"


    // $ANTLR start "rule__Parameter__Group__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2350:1: rule__Parameter__Group__2 : rule__Parameter__Group__2__Impl rule__Parameter__Group__3 ;
    public final void rule__Parameter__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2354:1: ( rule__Parameter__Group__2__Impl rule__Parameter__Group__3 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2355:2: rule__Parameter__Group__2__Impl rule__Parameter__Group__3
            {
            pushFollow(FOLLOW_rule__Parameter__Group__2__Impl_in_rule__Parameter__Group__24742);
            rule__Parameter__Group__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group__3_in_rule__Parameter__Group__24745);
            rule__Parameter__Group__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__2"


    // $ANTLR start "rule__Parameter__Group__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2362:1: rule__Parameter__Group__2__Impl : ( ( rule__Parameter__DefinitionAssignment_2 ) ) ;
    public final void rule__Parameter__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2366:1: ( ( ( rule__Parameter__DefinitionAssignment_2 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2367:1: ( ( rule__Parameter__DefinitionAssignment_2 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2367:1: ( ( rule__Parameter__DefinitionAssignment_2 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2368:1: ( rule__Parameter__DefinitionAssignment_2 )
            {
             before(grammarAccess.getParameterAccess().getDefinitionAssignment_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2369:1: ( rule__Parameter__DefinitionAssignment_2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2369:2: rule__Parameter__DefinitionAssignment_2
            {
            pushFollow(FOLLOW_rule__Parameter__DefinitionAssignment_2_in_rule__Parameter__Group__2__Impl4772);
            rule__Parameter__DefinitionAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getParameterAccess().getDefinitionAssignment_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__2__Impl"


    // $ANTLR start "rule__Parameter__Group__3"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2379:1: rule__Parameter__Group__3 : rule__Parameter__Group__3__Impl rule__Parameter__Group__4 ;
    public final void rule__Parameter__Group__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2383:1: ( rule__Parameter__Group__3__Impl rule__Parameter__Group__4 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2384:2: rule__Parameter__Group__3__Impl rule__Parameter__Group__4
            {
            pushFollow(FOLLOW_rule__Parameter__Group__3__Impl_in_rule__Parameter__Group__34802);
            rule__Parameter__Group__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group__4_in_rule__Parameter__Group__34805);
            rule__Parameter__Group__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__3"


    // $ANTLR start "rule__Parameter__Group__3__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2391:1: rule__Parameter__Group__3__Impl : ( '=' ) ;
    public final void rule__Parameter__Group__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2395:1: ( ( '=' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2396:1: ( '=' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2396:1: ( '=' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2397:1: '='
            {
             before(grammarAccess.getParameterAccess().getEqualsSignKeyword_3()); 
            match(input,15,FOLLOW_15_in_rule__Parameter__Group__3__Impl4833); 
             after(grammarAccess.getParameterAccess().getEqualsSignKeyword_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__3__Impl"


    // $ANTLR start "rule__Parameter__Group__4"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2410:1: rule__Parameter__Group__4 : rule__Parameter__Group__4__Impl rule__Parameter__Group__5 ;
    public final void rule__Parameter__Group__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2414:1: ( rule__Parameter__Group__4__Impl rule__Parameter__Group__5 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2415:2: rule__Parameter__Group__4__Impl rule__Parameter__Group__5
            {
            pushFollow(FOLLOW_rule__Parameter__Group__4__Impl_in_rule__Parameter__Group__44864);
            rule__Parameter__Group__4__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group__5_in_rule__Parameter__Group__44867);
            rule__Parameter__Group__5();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__4"


    // $ANTLR start "rule__Parameter__Group__4__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2422:1: rule__Parameter__Group__4__Impl : ( ( rule__Parameter__ValueAssignment_4 ) ) ;
    public final void rule__Parameter__Group__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2426:1: ( ( ( rule__Parameter__ValueAssignment_4 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2427:1: ( ( rule__Parameter__ValueAssignment_4 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2427:1: ( ( rule__Parameter__ValueAssignment_4 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2428:1: ( rule__Parameter__ValueAssignment_4 )
            {
             before(grammarAccess.getParameterAccess().getValueAssignment_4()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2429:1: ( rule__Parameter__ValueAssignment_4 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2429:2: rule__Parameter__ValueAssignment_4
            {
            pushFollow(FOLLOW_rule__Parameter__ValueAssignment_4_in_rule__Parameter__Group__4__Impl4894);
            rule__Parameter__ValueAssignment_4();

            state._fsp--;


            }

             after(grammarAccess.getParameterAccess().getValueAssignment_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__4__Impl"


    // $ANTLR start "rule__Parameter__Group__5"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2439:1: rule__Parameter__Group__5 : rule__Parameter__Group__5__Impl ;
    public final void rule__Parameter__Group__5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2443:1: ( rule__Parameter__Group__5__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2444:2: rule__Parameter__Group__5__Impl
            {
            pushFollow(FOLLOW_rule__Parameter__Group__5__Impl_in_rule__Parameter__Group__54924);
            rule__Parameter__Group__5__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__5"


    // $ANTLR start "rule__Parameter__Group__5__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2450:1: rule__Parameter__Group__5__Impl : ( ( rule__Parameter__Group_5__0 )? ) ;
    public final void rule__Parameter__Group__5__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2454:1: ( ( ( rule__Parameter__Group_5__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2455:1: ( ( rule__Parameter__Group_5__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2455:1: ( ( rule__Parameter__Group_5__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2456:1: ( rule__Parameter__Group_5__0 )?
            {
             before(grammarAccess.getParameterAccess().getGroup_5()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2457:1: ( rule__Parameter__Group_5__0 )?
            int alt17=2;
            int LA17_0 = input.LA(1);

            if ( (LA17_0==19) ) {
                alt17=1;
            }
            switch (alt17) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2457:2: rule__Parameter__Group_5__0
                    {
                    pushFollow(FOLLOW_rule__Parameter__Group_5__0_in_rule__Parameter__Group__5__Impl4951);
                    rule__Parameter__Group_5__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getParameterAccess().getGroup_5()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group__5__Impl"


    // $ANTLR start "rule__Parameter__Group_5__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2479:1: rule__Parameter__Group_5__0 : rule__Parameter__Group_5__0__Impl rule__Parameter__Group_5__1 ;
    public final void rule__Parameter__Group_5__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2483:1: ( rule__Parameter__Group_5__0__Impl rule__Parameter__Group_5__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2484:2: rule__Parameter__Group_5__0__Impl rule__Parameter__Group_5__1
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5__0__Impl_in_rule__Parameter__Group_5__04994);
            rule__Parameter__Group_5__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group_5__1_in_rule__Parameter__Group_5__04997);
            rule__Parameter__Group_5__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5__0"


    // $ANTLR start "rule__Parameter__Group_5__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2491:1: rule__Parameter__Group_5__0__Impl : ( '(' ) ;
    public final void rule__Parameter__Group_5__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2495:1: ( ( '(' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2496:1: ( '(' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2496:1: ( '(' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2497:1: '('
            {
             before(grammarAccess.getParameterAccess().getLeftParenthesisKeyword_5_0()); 
            match(input,19,FOLLOW_19_in_rule__Parameter__Group_5__0__Impl5025); 
             after(grammarAccess.getParameterAccess().getLeftParenthesisKeyword_5_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5__0__Impl"


    // $ANTLR start "rule__Parameter__Group_5__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2510:1: rule__Parameter__Group_5__1 : rule__Parameter__Group_5__1__Impl rule__Parameter__Group_5__2 ;
    public final void rule__Parameter__Group_5__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2514:1: ( rule__Parameter__Group_5__1__Impl rule__Parameter__Group_5__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2515:2: rule__Parameter__Group_5__1__Impl rule__Parameter__Group_5__2
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5__1__Impl_in_rule__Parameter__Group_5__15056);
            rule__Parameter__Group_5__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group_5__2_in_rule__Parameter__Group_5__15059);
            rule__Parameter__Group_5__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5__1"


    // $ANTLR start "rule__Parameter__Group_5__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2522:1: rule__Parameter__Group_5__1__Impl : ( ( rule__Parameter__UnorderedGroup_5_1 ) ) ;
    public final void rule__Parameter__Group_5__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2526:1: ( ( ( rule__Parameter__UnorderedGroup_5_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2527:1: ( ( rule__Parameter__UnorderedGroup_5_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2527:1: ( ( rule__Parameter__UnorderedGroup_5_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2528:1: ( rule__Parameter__UnorderedGroup_5_1 )
            {
             before(grammarAccess.getParameterAccess().getUnorderedGroup_5_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2529:1: ( rule__Parameter__UnorderedGroup_5_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2529:2: rule__Parameter__UnorderedGroup_5_1
            {
            pushFollow(FOLLOW_rule__Parameter__UnorderedGroup_5_1_in_rule__Parameter__Group_5__1__Impl5086);
            rule__Parameter__UnorderedGroup_5_1();

            state._fsp--;


            }

             after(grammarAccess.getParameterAccess().getUnorderedGroup_5_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5__1__Impl"


    // $ANTLR start "rule__Parameter__Group_5__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2539:1: rule__Parameter__Group_5__2 : rule__Parameter__Group_5__2__Impl ;
    public final void rule__Parameter__Group_5__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2543:1: ( rule__Parameter__Group_5__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2544:2: rule__Parameter__Group_5__2__Impl
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5__2__Impl_in_rule__Parameter__Group_5__25116);
            rule__Parameter__Group_5__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5__2"


    // $ANTLR start "rule__Parameter__Group_5__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2550:1: rule__Parameter__Group_5__2__Impl : ( ')' ) ;
    public final void rule__Parameter__Group_5__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2554:1: ( ( ')' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2555:1: ( ')' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2555:1: ( ')' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2556:1: ')'
            {
             before(grammarAccess.getParameterAccess().getRightParenthesisKeyword_5_2()); 
            match(input,20,FOLLOW_20_in_rule__Parameter__Group_5__2__Impl5144); 
             after(grammarAccess.getParameterAccess().getRightParenthesisKeyword_5_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5__2__Impl"


    // $ANTLR start "rule__Parameter__Group_5_1_0__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2575:1: rule__Parameter__Group_5_1_0__0 : rule__Parameter__Group_5_1_0__0__Impl rule__Parameter__Group_5_1_0__1 ;
    public final void rule__Parameter__Group_5_1_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2579:1: ( rule__Parameter__Group_5_1_0__0__Impl rule__Parameter__Group_5_1_0__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2580:2: rule__Parameter__Group_5_1_0__0__Impl rule__Parameter__Group_5_1_0__1
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5_1_0__0__Impl_in_rule__Parameter__Group_5_1_0__05181);
            rule__Parameter__Group_5_1_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group_5_1_0__1_in_rule__Parameter__Group_5_1_0__05184);
            rule__Parameter__Group_5_1_0__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_0__0"


    // $ANTLR start "rule__Parameter__Group_5_1_0__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2587:1: rule__Parameter__Group_5_1_0__0__Impl : ( 'index' ) ;
    public final void rule__Parameter__Group_5_1_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2591:1: ( ( 'index' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2592:1: ( 'index' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2592:1: ( 'index' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2593:1: 'index'
            {
             before(grammarAccess.getParameterAccess().getIndexKeyword_5_1_0_0()); 
            match(input,24,FOLLOW_24_in_rule__Parameter__Group_5_1_0__0__Impl5212); 
             after(grammarAccess.getParameterAccess().getIndexKeyword_5_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_0__0__Impl"


    // $ANTLR start "rule__Parameter__Group_5_1_0__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2606:1: rule__Parameter__Group_5_1_0__1 : rule__Parameter__Group_5_1_0__1__Impl ;
    public final void rule__Parameter__Group_5_1_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2610:1: ( rule__Parameter__Group_5_1_0__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2611:2: rule__Parameter__Group_5_1_0__1__Impl
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5_1_0__1__Impl_in_rule__Parameter__Group_5_1_0__15243);
            rule__Parameter__Group_5_1_0__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_0__1"


    // $ANTLR start "rule__Parameter__Group_5_1_0__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2617:1: rule__Parameter__Group_5_1_0__1__Impl : ( ( rule__Parameter__IndexAssignment_5_1_0_1 ) ) ;
    public final void rule__Parameter__Group_5_1_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2621:1: ( ( ( rule__Parameter__IndexAssignment_5_1_0_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2622:1: ( ( rule__Parameter__IndexAssignment_5_1_0_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2622:1: ( ( rule__Parameter__IndexAssignment_5_1_0_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2623:1: ( rule__Parameter__IndexAssignment_5_1_0_1 )
            {
             before(grammarAccess.getParameterAccess().getIndexAssignment_5_1_0_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2624:1: ( rule__Parameter__IndexAssignment_5_1_0_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2624:2: rule__Parameter__IndexAssignment_5_1_0_1
            {
            pushFollow(FOLLOW_rule__Parameter__IndexAssignment_5_1_0_1_in_rule__Parameter__Group_5_1_0__1__Impl5270);
            rule__Parameter__IndexAssignment_5_1_0_1();

            state._fsp--;


            }

             after(grammarAccess.getParameterAccess().getIndexAssignment_5_1_0_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_0__1__Impl"


    // $ANTLR start "rule__Parameter__Group_5_1_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2638:1: rule__Parameter__Group_5_1_1__0 : rule__Parameter__Group_5_1_1__0__Impl rule__Parameter__Group_5_1_1__1 ;
    public final void rule__Parameter__Group_5_1_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2642:1: ( rule__Parameter__Group_5_1_1__0__Impl rule__Parameter__Group_5_1_1__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2643:2: rule__Parameter__Group_5_1_1__0__Impl rule__Parameter__Group_5_1_1__1
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5_1_1__0__Impl_in_rule__Parameter__Group_5_1_1__05304);
            rule__Parameter__Group_5_1_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group_5_1_1__1_in_rule__Parameter__Group_5_1_1__05307);
            rule__Parameter__Group_5_1_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1__0"


    // $ANTLR start "rule__Parameter__Group_5_1_1__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2650:1: rule__Parameter__Group_5_1_1__0__Impl : ( 'tags' ) ;
    public final void rule__Parameter__Group_5_1_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2654:1: ( ( 'tags' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2655:1: ( 'tags' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2655:1: ( 'tags' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2656:1: 'tags'
            {
             before(grammarAccess.getParameterAccess().getTagsKeyword_5_1_1_0()); 
            match(input,21,FOLLOW_21_in_rule__Parameter__Group_5_1_1__0__Impl5335); 
             after(grammarAccess.getParameterAccess().getTagsKeyword_5_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1__0__Impl"


    // $ANTLR start "rule__Parameter__Group_5_1_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2669:1: rule__Parameter__Group_5_1_1__1 : rule__Parameter__Group_5_1_1__1__Impl rule__Parameter__Group_5_1_1__2 ;
    public final void rule__Parameter__Group_5_1_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2673:1: ( rule__Parameter__Group_5_1_1__1__Impl rule__Parameter__Group_5_1_1__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2674:2: rule__Parameter__Group_5_1_1__1__Impl rule__Parameter__Group_5_1_1__2
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5_1_1__1__Impl_in_rule__Parameter__Group_5_1_1__15366);
            rule__Parameter__Group_5_1_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group_5_1_1__2_in_rule__Parameter__Group_5_1_1__15369);
            rule__Parameter__Group_5_1_1__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1__1"


    // $ANTLR start "rule__Parameter__Group_5_1_1__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2681:1: rule__Parameter__Group_5_1_1__1__Impl : ( ( rule__Parameter__TagsAssignment_5_1_1_1 ) ) ;
    public final void rule__Parameter__Group_5_1_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2685:1: ( ( ( rule__Parameter__TagsAssignment_5_1_1_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2686:1: ( ( rule__Parameter__TagsAssignment_5_1_1_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2686:1: ( ( rule__Parameter__TagsAssignment_5_1_1_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2687:1: ( rule__Parameter__TagsAssignment_5_1_1_1 )
            {
             before(grammarAccess.getParameterAccess().getTagsAssignment_5_1_1_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2688:1: ( rule__Parameter__TagsAssignment_5_1_1_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2688:2: rule__Parameter__TagsAssignment_5_1_1_1
            {
            pushFollow(FOLLOW_rule__Parameter__TagsAssignment_5_1_1_1_in_rule__Parameter__Group_5_1_1__1__Impl5396);
            rule__Parameter__TagsAssignment_5_1_1_1();

            state._fsp--;


            }

             after(grammarAccess.getParameterAccess().getTagsAssignment_5_1_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1__1__Impl"


    // $ANTLR start "rule__Parameter__Group_5_1_1__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2698:1: rule__Parameter__Group_5_1_1__2 : rule__Parameter__Group_5_1_1__2__Impl ;
    public final void rule__Parameter__Group_5_1_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2702:1: ( rule__Parameter__Group_5_1_1__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2703:2: rule__Parameter__Group_5_1_1__2__Impl
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5_1_1__2__Impl_in_rule__Parameter__Group_5_1_1__25426);
            rule__Parameter__Group_5_1_1__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1__2"


    // $ANTLR start "rule__Parameter__Group_5_1_1__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2709:1: rule__Parameter__Group_5_1_1__2__Impl : ( ( rule__Parameter__Group_5_1_1_2__0 )* ) ;
    public final void rule__Parameter__Group_5_1_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2713:1: ( ( ( rule__Parameter__Group_5_1_1_2__0 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2714:1: ( ( rule__Parameter__Group_5_1_1_2__0 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2714:1: ( ( rule__Parameter__Group_5_1_1_2__0 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2715:1: ( rule__Parameter__Group_5_1_1_2__0 )*
            {
             before(grammarAccess.getParameterAccess().getGroup_5_1_1_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2716:1: ( rule__Parameter__Group_5_1_1_2__0 )*
            loop18:
            do {
                int alt18=2;
                int LA18_0 = input.LA(1);

                if ( (LA18_0==22) ) {
                    alt18=1;
                }


                switch (alt18) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2716:2: rule__Parameter__Group_5_1_1_2__0
            	    {
            	    pushFollow(FOLLOW_rule__Parameter__Group_5_1_1_2__0_in_rule__Parameter__Group_5_1_1__2__Impl5453);
            	    rule__Parameter__Group_5_1_1_2__0();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop18;
                }
            } while (true);

             after(grammarAccess.getParameterAccess().getGroup_5_1_1_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1__2__Impl"


    // $ANTLR start "rule__Parameter__Group_5_1_1_2__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2732:1: rule__Parameter__Group_5_1_1_2__0 : rule__Parameter__Group_5_1_1_2__0__Impl rule__Parameter__Group_5_1_1_2__1 ;
    public final void rule__Parameter__Group_5_1_1_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2736:1: ( rule__Parameter__Group_5_1_1_2__0__Impl rule__Parameter__Group_5_1_1_2__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2737:2: rule__Parameter__Group_5_1_1_2__0__Impl rule__Parameter__Group_5_1_1_2__1
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5_1_1_2__0__Impl_in_rule__Parameter__Group_5_1_1_2__05490);
            rule__Parameter__Group_5_1_1_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Parameter__Group_5_1_1_2__1_in_rule__Parameter__Group_5_1_1_2__05493);
            rule__Parameter__Group_5_1_1_2__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1_2__0"


    // $ANTLR start "rule__Parameter__Group_5_1_1_2__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2744:1: rule__Parameter__Group_5_1_1_2__0__Impl : ( ',' ) ;
    public final void rule__Parameter__Group_5_1_1_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2748:1: ( ( ',' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2749:1: ( ',' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2749:1: ( ',' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2750:1: ','
            {
             before(grammarAccess.getParameterAccess().getCommaKeyword_5_1_1_2_0()); 
            match(input,22,FOLLOW_22_in_rule__Parameter__Group_5_1_1_2__0__Impl5521); 
             after(grammarAccess.getParameterAccess().getCommaKeyword_5_1_1_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1_2__0__Impl"


    // $ANTLR start "rule__Parameter__Group_5_1_1_2__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2763:1: rule__Parameter__Group_5_1_1_2__1 : rule__Parameter__Group_5_1_1_2__1__Impl ;
    public final void rule__Parameter__Group_5_1_1_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2767:1: ( rule__Parameter__Group_5_1_1_2__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2768:2: rule__Parameter__Group_5_1_1_2__1__Impl
            {
            pushFollow(FOLLOW_rule__Parameter__Group_5_1_1_2__1__Impl_in_rule__Parameter__Group_5_1_1_2__15552);
            rule__Parameter__Group_5_1_1_2__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1_2__1"


    // $ANTLR start "rule__Parameter__Group_5_1_1_2__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2774:1: rule__Parameter__Group_5_1_1_2__1__Impl : ( ( rule__Parameter__TagsAssignment_5_1_1_2_1 ) ) ;
    public final void rule__Parameter__Group_5_1_1_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2778:1: ( ( ( rule__Parameter__TagsAssignment_5_1_1_2_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2779:1: ( ( rule__Parameter__TagsAssignment_5_1_1_2_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2779:1: ( ( rule__Parameter__TagsAssignment_5_1_1_2_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2780:1: ( rule__Parameter__TagsAssignment_5_1_1_2_1 )
            {
             before(grammarAccess.getParameterAccess().getTagsAssignment_5_1_1_2_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2781:1: ( rule__Parameter__TagsAssignment_5_1_1_2_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2781:2: rule__Parameter__TagsAssignment_5_1_1_2_1
            {
            pushFollow(FOLLOW_rule__Parameter__TagsAssignment_5_1_1_2_1_in_rule__Parameter__Group_5_1_1_2__1__Impl5579);
            rule__Parameter__TagsAssignment_5_1_1_2_1();

            state._fsp--;


            }

             after(grammarAccess.getParameterAccess().getTagsAssignment_5_1_1_2_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__Group_5_1_1_2__1__Impl"


    // $ANTLR start "rule__Reference__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2795:1: rule__Reference__Group__0 : rule__Reference__Group__0__Impl rule__Reference__Group__1 ;
    public final void rule__Reference__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2799:1: ( rule__Reference__Group__0__Impl rule__Reference__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2800:2: rule__Reference__Group__0__Impl rule__Reference__Group__1
            {
            pushFollow(FOLLOW_rule__Reference__Group__0__Impl_in_rule__Reference__Group__05613);
            rule__Reference__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group__1_in_rule__Reference__Group__05616);
            rule__Reference__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__0"


    // $ANTLR start "rule__Reference__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2807:1: rule__Reference__Group__0__Impl : ( () ) ;
    public final void rule__Reference__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2811:1: ( ( () ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2812:1: ( () )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2812:1: ( () )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2813:1: ()
            {
             before(grammarAccess.getReferenceAccess().getReferenceAction_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2814:1: ()
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2816:1: 
            {
            }

             after(grammarAccess.getReferenceAccess().getReferenceAction_0()); 

            }


            }

        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__0__Impl"


    // $ANTLR start "rule__Reference__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2826:1: rule__Reference__Group__1 : rule__Reference__Group__1__Impl rule__Reference__Group__2 ;
    public final void rule__Reference__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2830:1: ( rule__Reference__Group__1__Impl rule__Reference__Group__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2831:2: rule__Reference__Group__1__Impl rule__Reference__Group__2
            {
            pushFollow(FOLLOW_rule__Reference__Group__1__Impl_in_rule__Reference__Group__15674);
            rule__Reference__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group__2_in_rule__Reference__Group__15677);
            rule__Reference__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__1"


    // $ANTLR start "rule__Reference__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2838:1: rule__Reference__Group__1__Impl : ( 'ref' ) ;
    public final void rule__Reference__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2842:1: ( ( 'ref' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2843:1: ( 'ref' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2843:1: ( 'ref' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2844:1: 'ref'
            {
             before(grammarAccess.getReferenceAccess().getRefKeyword_1()); 
            match(input,26,FOLLOW_26_in_rule__Reference__Group__1__Impl5705); 
             after(grammarAccess.getReferenceAccess().getRefKeyword_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__1__Impl"


    // $ANTLR start "rule__Reference__Group__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2857:1: rule__Reference__Group__2 : rule__Reference__Group__2__Impl rule__Reference__Group__3 ;
    public final void rule__Reference__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2861:1: ( rule__Reference__Group__2__Impl rule__Reference__Group__3 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2862:2: rule__Reference__Group__2__Impl rule__Reference__Group__3
            {
            pushFollow(FOLLOW_rule__Reference__Group__2__Impl_in_rule__Reference__Group__25736);
            rule__Reference__Group__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group__3_in_rule__Reference__Group__25739);
            rule__Reference__Group__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__2"


    // $ANTLR start "rule__Reference__Group__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2869:1: rule__Reference__Group__2__Impl : ( ( rule__Reference__DefinitionAssignment_2 ) ) ;
    public final void rule__Reference__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2873:1: ( ( ( rule__Reference__DefinitionAssignment_2 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2874:1: ( ( rule__Reference__DefinitionAssignment_2 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2874:1: ( ( rule__Reference__DefinitionAssignment_2 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2875:1: ( rule__Reference__DefinitionAssignment_2 )
            {
             before(grammarAccess.getReferenceAccess().getDefinitionAssignment_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2876:1: ( rule__Reference__DefinitionAssignment_2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2876:2: rule__Reference__DefinitionAssignment_2
            {
            pushFollow(FOLLOW_rule__Reference__DefinitionAssignment_2_in_rule__Reference__Group__2__Impl5766);
            rule__Reference__DefinitionAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getReferenceAccess().getDefinitionAssignment_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__2__Impl"


    // $ANTLR start "rule__Reference__Group__3"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2886:1: rule__Reference__Group__3 : rule__Reference__Group__3__Impl rule__Reference__Group__4 ;
    public final void rule__Reference__Group__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2890:1: ( rule__Reference__Group__3__Impl rule__Reference__Group__4 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2891:2: rule__Reference__Group__3__Impl rule__Reference__Group__4
            {
            pushFollow(FOLLOW_rule__Reference__Group__3__Impl_in_rule__Reference__Group__35796);
            rule__Reference__Group__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group__4_in_rule__Reference__Group__35799);
            rule__Reference__Group__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__3"


    // $ANTLR start "rule__Reference__Group__3__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2898:1: rule__Reference__Group__3__Impl : ( '=' ) ;
    public final void rule__Reference__Group__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2902:1: ( ( '=' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2903:1: ( '=' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2903:1: ( '=' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2904:1: '='
            {
             before(grammarAccess.getReferenceAccess().getEqualsSignKeyword_3()); 
            match(input,15,FOLLOW_15_in_rule__Reference__Group__3__Impl5827); 
             after(grammarAccess.getReferenceAccess().getEqualsSignKeyword_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__3__Impl"


    // $ANTLR start "rule__Reference__Group__4"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2917:1: rule__Reference__Group__4 : rule__Reference__Group__4__Impl rule__Reference__Group__5 ;
    public final void rule__Reference__Group__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2921:1: ( rule__Reference__Group__4__Impl rule__Reference__Group__5 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2922:2: rule__Reference__Group__4__Impl rule__Reference__Group__5
            {
            pushFollow(FOLLOW_rule__Reference__Group__4__Impl_in_rule__Reference__Group__45858);
            rule__Reference__Group__4__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group__5_in_rule__Reference__Group__45861);
            rule__Reference__Group__5();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__4"


    // $ANTLR start "rule__Reference__Group__4__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2929:1: rule__Reference__Group__4__Impl : ( ( rule__Reference__ValueAssignment_4 ) ) ;
    public final void rule__Reference__Group__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2933:1: ( ( ( rule__Reference__ValueAssignment_4 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2934:1: ( ( rule__Reference__ValueAssignment_4 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2934:1: ( ( rule__Reference__ValueAssignment_4 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2935:1: ( rule__Reference__ValueAssignment_4 )
            {
             before(grammarAccess.getReferenceAccess().getValueAssignment_4()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2936:1: ( rule__Reference__ValueAssignment_4 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2936:2: rule__Reference__ValueAssignment_4
            {
            pushFollow(FOLLOW_rule__Reference__ValueAssignment_4_in_rule__Reference__Group__4__Impl5888);
            rule__Reference__ValueAssignment_4();

            state._fsp--;


            }

             after(grammarAccess.getReferenceAccess().getValueAssignment_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__4__Impl"


    // $ANTLR start "rule__Reference__Group__5"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2946:1: rule__Reference__Group__5 : rule__Reference__Group__5__Impl ;
    public final void rule__Reference__Group__5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2950:1: ( rule__Reference__Group__5__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2951:2: rule__Reference__Group__5__Impl
            {
            pushFollow(FOLLOW_rule__Reference__Group__5__Impl_in_rule__Reference__Group__55918);
            rule__Reference__Group__5__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__5"


    // $ANTLR start "rule__Reference__Group__5__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2957:1: rule__Reference__Group__5__Impl : ( ( rule__Reference__Group_5__0 )? ) ;
    public final void rule__Reference__Group__5__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2961:1: ( ( ( rule__Reference__Group_5__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2962:1: ( ( rule__Reference__Group_5__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2962:1: ( ( rule__Reference__Group_5__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2963:1: ( rule__Reference__Group_5__0 )?
            {
             before(grammarAccess.getReferenceAccess().getGroup_5()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2964:1: ( rule__Reference__Group_5__0 )?
            int alt19=2;
            int LA19_0 = input.LA(1);

            if ( (LA19_0==19) ) {
                alt19=1;
            }
            switch (alt19) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2964:2: rule__Reference__Group_5__0
                    {
                    pushFollow(FOLLOW_rule__Reference__Group_5__0_in_rule__Reference__Group__5__Impl5945);
                    rule__Reference__Group_5__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getReferenceAccess().getGroup_5()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group__5__Impl"


    // $ANTLR start "rule__Reference__Group_5__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2986:1: rule__Reference__Group_5__0 : rule__Reference__Group_5__0__Impl rule__Reference__Group_5__1 ;
    public final void rule__Reference__Group_5__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2990:1: ( rule__Reference__Group_5__0__Impl rule__Reference__Group_5__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2991:2: rule__Reference__Group_5__0__Impl rule__Reference__Group_5__1
            {
            pushFollow(FOLLOW_rule__Reference__Group_5__0__Impl_in_rule__Reference__Group_5__05988);
            rule__Reference__Group_5__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group_5__1_in_rule__Reference__Group_5__05991);
            rule__Reference__Group_5__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5__0"


    // $ANTLR start "rule__Reference__Group_5__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:2998:1: rule__Reference__Group_5__0__Impl : ( '(' ) ;
    public final void rule__Reference__Group_5__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3002:1: ( ( '(' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3003:1: ( '(' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3003:1: ( '(' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3004:1: '('
            {
             before(grammarAccess.getReferenceAccess().getLeftParenthesisKeyword_5_0()); 
            match(input,19,FOLLOW_19_in_rule__Reference__Group_5__0__Impl6019); 
             after(grammarAccess.getReferenceAccess().getLeftParenthesisKeyword_5_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5__0__Impl"


    // $ANTLR start "rule__Reference__Group_5__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3017:1: rule__Reference__Group_5__1 : rule__Reference__Group_5__1__Impl rule__Reference__Group_5__2 ;
    public final void rule__Reference__Group_5__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3021:1: ( rule__Reference__Group_5__1__Impl rule__Reference__Group_5__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3022:2: rule__Reference__Group_5__1__Impl rule__Reference__Group_5__2
            {
            pushFollow(FOLLOW_rule__Reference__Group_5__1__Impl_in_rule__Reference__Group_5__16050);
            rule__Reference__Group_5__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group_5__2_in_rule__Reference__Group_5__16053);
            rule__Reference__Group_5__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5__1"


    // $ANTLR start "rule__Reference__Group_5__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3029:1: rule__Reference__Group_5__1__Impl : ( ( rule__Reference__UnorderedGroup_5_1 ) ) ;
    public final void rule__Reference__Group_5__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3033:1: ( ( ( rule__Reference__UnorderedGroup_5_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3034:1: ( ( rule__Reference__UnorderedGroup_5_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3034:1: ( ( rule__Reference__UnorderedGroup_5_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3035:1: ( rule__Reference__UnorderedGroup_5_1 )
            {
             before(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3036:1: ( rule__Reference__UnorderedGroup_5_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3036:2: rule__Reference__UnorderedGroup_5_1
            {
            pushFollow(FOLLOW_rule__Reference__UnorderedGroup_5_1_in_rule__Reference__Group_5__1__Impl6080);
            rule__Reference__UnorderedGroup_5_1();

            state._fsp--;


            }

             after(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5__1__Impl"


    // $ANTLR start "rule__Reference__Group_5__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3046:1: rule__Reference__Group_5__2 : rule__Reference__Group_5__2__Impl ;
    public final void rule__Reference__Group_5__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3050:1: ( rule__Reference__Group_5__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3051:2: rule__Reference__Group_5__2__Impl
            {
            pushFollow(FOLLOW_rule__Reference__Group_5__2__Impl_in_rule__Reference__Group_5__26110);
            rule__Reference__Group_5__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5__2"


    // $ANTLR start "rule__Reference__Group_5__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3057:1: rule__Reference__Group_5__2__Impl : ( ')' ) ;
    public final void rule__Reference__Group_5__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3061:1: ( ( ')' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3062:1: ( ')' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3062:1: ( ')' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3063:1: ')'
            {
             before(grammarAccess.getReferenceAccess().getRightParenthesisKeyword_5_2()); 
            match(input,20,FOLLOW_20_in_rule__Reference__Group_5__2__Impl6138); 
             after(grammarAccess.getReferenceAccess().getRightParenthesisKeyword_5_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5__2__Impl"


    // $ANTLR start "rule__Reference__Group_5_1_0__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3082:1: rule__Reference__Group_5_1_0__0 : rule__Reference__Group_5_1_0__0__Impl rule__Reference__Group_5_1_0__1 ;
    public final void rule__Reference__Group_5_1_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3086:1: ( rule__Reference__Group_5_1_0__0__Impl rule__Reference__Group_5_1_0__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3087:2: rule__Reference__Group_5_1_0__0__Impl rule__Reference__Group_5_1_0__1
            {
            pushFollow(FOLLOW_rule__Reference__Group_5_1_0__0__Impl_in_rule__Reference__Group_5_1_0__06175);
            rule__Reference__Group_5_1_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group_5_1_0__1_in_rule__Reference__Group_5_1_0__06178);
            rule__Reference__Group_5_1_0__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_0__0"


    // $ANTLR start "rule__Reference__Group_5_1_0__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3094:1: rule__Reference__Group_5_1_0__0__Impl : ( 'index' ) ;
    public final void rule__Reference__Group_5_1_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3098:1: ( ( 'index' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3099:1: ( 'index' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3099:1: ( 'index' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3100:1: 'index'
            {
             before(grammarAccess.getReferenceAccess().getIndexKeyword_5_1_0_0()); 
            match(input,24,FOLLOW_24_in_rule__Reference__Group_5_1_0__0__Impl6206); 
             after(grammarAccess.getReferenceAccess().getIndexKeyword_5_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_0__0__Impl"


    // $ANTLR start "rule__Reference__Group_5_1_0__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3113:1: rule__Reference__Group_5_1_0__1 : rule__Reference__Group_5_1_0__1__Impl ;
    public final void rule__Reference__Group_5_1_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3117:1: ( rule__Reference__Group_5_1_0__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3118:2: rule__Reference__Group_5_1_0__1__Impl
            {
            pushFollow(FOLLOW_rule__Reference__Group_5_1_0__1__Impl_in_rule__Reference__Group_5_1_0__16237);
            rule__Reference__Group_5_1_0__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_0__1"


    // $ANTLR start "rule__Reference__Group_5_1_0__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3124:1: rule__Reference__Group_5_1_0__1__Impl : ( ( rule__Reference__IndexAssignment_5_1_0_1 ) ) ;
    public final void rule__Reference__Group_5_1_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3128:1: ( ( ( rule__Reference__IndexAssignment_5_1_0_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3129:1: ( ( rule__Reference__IndexAssignment_5_1_0_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3129:1: ( ( rule__Reference__IndexAssignment_5_1_0_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3130:1: ( rule__Reference__IndexAssignment_5_1_0_1 )
            {
             before(grammarAccess.getReferenceAccess().getIndexAssignment_5_1_0_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3131:1: ( rule__Reference__IndexAssignment_5_1_0_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3131:2: rule__Reference__IndexAssignment_5_1_0_1
            {
            pushFollow(FOLLOW_rule__Reference__IndexAssignment_5_1_0_1_in_rule__Reference__Group_5_1_0__1__Impl6264);
            rule__Reference__IndexAssignment_5_1_0_1();

            state._fsp--;


            }

             after(grammarAccess.getReferenceAccess().getIndexAssignment_5_1_0_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_0__1__Impl"


    // $ANTLR start "rule__Reference__Group_5_1_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3145:1: rule__Reference__Group_5_1_1__0 : rule__Reference__Group_5_1_1__0__Impl rule__Reference__Group_5_1_1__1 ;
    public final void rule__Reference__Group_5_1_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3149:1: ( rule__Reference__Group_5_1_1__0__Impl rule__Reference__Group_5_1_1__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3150:2: rule__Reference__Group_5_1_1__0__Impl rule__Reference__Group_5_1_1__1
            {
            pushFollow(FOLLOW_rule__Reference__Group_5_1_1__0__Impl_in_rule__Reference__Group_5_1_1__06298);
            rule__Reference__Group_5_1_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group_5_1_1__1_in_rule__Reference__Group_5_1_1__06301);
            rule__Reference__Group_5_1_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1__0"


    // $ANTLR start "rule__Reference__Group_5_1_1__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3157:1: rule__Reference__Group_5_1_1__0__Impl : ( 'tags' ) ;
    public final void rule__Reference__Group_5_1_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3161:1: ( ( 'tags' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3162:1: ( 'tags' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3162:1: ( 'tags' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3163:1: 'tags'
            {
             before(grammarAccess.getReferenceAccess().getTagsKeyword_5_1_1_0()); 
            match(input,21,FOLLOW_21_in_rule__Reference__Group_5_1_1__0__Impl6329); 
             after(grammarAccess.getReferenceAccess().getTagsKeyword_5_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1__0__Impl"


    // $ANTLR start "rule__Reference__Group_5_1_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3176:1: rule__Reference__Group_5_1_1__1 : rule__Reference__Group_5_1_1__1__Impl rule__Reference__Group_5_1_1__2 ;
    public final void rule__Reference__Group_5_1_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3180:1: ( rule__Reference__Group_5_1_1__1__Impl rule__Reference__Group_5_1_1__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3181:2: rule__Reference__Group_5_1_1__1__Impl rule__Reference__Group_5_1_1__2
            {
            pushFollow(FOLLOW_rule__Reference__Group_5_1_1__1__Impl_in_rule__Reference__Group_5_1_1__16360);
            rule__Reference__Group_5_1_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group_5_1_1__2_in_rule__Reference__Group_5_1_1__16363);
            rule__Reference__Group_5_1_1__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1__1"


    // $ANTLR start "rule__Reference__Group_5_1_1__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3188:1: rule__Reference__Group_5_1_1__1__Impl : ( ( rule__Reference__TagsAssignment_5_1_1_1 ) ) ;
    public final void rule__Reference__Group_5_1_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3192:1: ( ( ( rule__Reference__TagsAssignment_5_1_1_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3193:1: ( ( rule__Reference__TagsAssignment_5_1_1_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3193:1: ( ( rule__Reference__TagsAssignment_5_1_1_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3194:1: ( rule__Reference__TagsAssignment_5_1_1_1 )
            {
             before(grammarAccess.getReferenceAccess().getTagsAssignment_5_1_1_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3195:1: ( rule__Reference__TagsAssignment_5_1_1_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3195:2: rule__Reference__TagsAssignment_5_1_1_1
            {
            pushFollow(FOLLOW_rule__Reference__TagsAssignment_5_1_1_1_in_rule__Reference__Group_5_1_1__1__Impl6390);
            rule__Reference__TagsAssignment_5_1_1_1();

            state._fsp--;


            }

             after(grammarAccess.getReferenceAccess().getTagsAssignment_5_1_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1__1__Impl"


    // $ANTLR start "rule__Reference__Group_5_1_1__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3205:1: rule__Reference__Group_5_1_1__2 : rule__Reference__Group_5_1_1__2__Impl ;
    public final void rule__Reference__Group_5_1_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3209:1: ( rule__Reference__Group_5_1_1__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3210:2: rule__Reference__Group_5_1_1__2__Impl
            {
            pushFollow(FOLLOW_rule__Reference__Group_5_1_1__2__Impl_in_rule__Reference__Group_5_1_1__26420);
            rule__Reference__Group_5_1_1__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1__2"


    // $ANTLR start "rule__Reference__Group_5_1_1__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3216:1: rule__Reference__Group_5_1_1__2__Impl : ( ( rule__Reference__Group_5_1_1_2__0 )* ) ;
    public final void rule__Reference__Group_5_1_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3220:1: ( ( ( rule__Reference__Group_5_1_1_2__0 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3221:1: ( ( rule__Reference__Group_5_1_1_2__0 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3221:1: ( ( rule__Reference__Group_5_1_1_2__0 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3222:1: ( rule__Reference__Group_5_1_1_2__0 )*
            {
             before(grammarAccess.getReferenceAccess().getGroup_5_1_1_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3223:1: ( rule__Reference__Group_5_1_1_2__0 )*
            loop20:
            do {
                int alt20=2;
                int LA20_0 = input.LA(1);

                if ( (LA20_0==22) ) {
                    alt20=1;
                }


                switch (alt20) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3223:2: rule__Reference__Group_5_1_1_2__0
            	    {
            	    pushFollow(FOLLOW_rule__Reference__Group_5_1_1_2__0_in_rule__Reference__Group_5_1_1__2__Impl6447);
            	    rule__Reference__Group_5_1_1_2__0();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop20;
                }
            } while (true);

             after(grammarAccess.getReferenceAccess().getGroup_5_1_1_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1__2__Impl"


    // $ANTLR start "rule__Reference__Group_5_1_1_2__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3239:1: rule__Reference__Group_5_1_1_2__0 : rule__Reference__Group_5_1_1_2__0__Impl rule__Reference__Group_5_1_1_2__1 ;
    public final void rule__Reference__Group_5_1_1_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3243:1: ( rule__Reference__Group_5_1_1_2__0__Impl rule__Reference__Group_5_1_1_2__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3244:2: rule__Reference__Group_5_1_1_2__0__Impl rule__Reference__Group_5_1_1_2__1
            {
            pushFollow(FOLLOW_rule__Reference__Group_5_1_1_2__0__Impl_in_rule__Reference__Group_5_1_1_2__06484);
            rule__Reference__Group_5_1_1_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Reference__Group_5_1_1_2__1_in_rule__Reference__Group_5_1_1_2__06487);
            rule__Reference__Group_5_1_1_2__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1_2__0"


    // $ANTLR start "rule__Reference__Group_5_1_1_2__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3251:1: rule__Reference__Group_5_1_1_2__0__Impl : ( ',' ) ;
    public final void rule__Reference__Group_5_1_1_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3255:1: ( ( ',' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3256:1: ( ',' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3256:1: ( ',' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3257:1: ','
            {
             before(grammarAccess.getReferenceAccess().getCommaKeyword_5_1_1_2_0()); 
            match(input,22,FOLLOW_22_in_rule__Reference__Group_5_1_1_2__0__Impl6515); 
             after(grammarAccess.getReferenceAccess().getCommaKeyword_5_1_1_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1_2__0__Impl"


    // $ANTLR start "rule__Reference__Group_5_1_1_2__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3270:1: rule__Reference__Group_5_1_1_2__1 : rule__Reference__Group_5_1_1_2__1__Impl ;
    public final void rule__Reference__Group_5_1_1_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3274:1: ( rule__Reference__Group_5_1_1_2__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3275:2: rule__Reference__Group_5_1_1_2__1__Impl
            {
            pushFollow(FOLLOW_rule__Reference__Group_5_1_1_2__1__Impl_in_rule__Reference__Group_5_1_1_2__16546);
            rule__Reference__Group_5_1_1_2__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1_2__1"


    // $ANTLR start "rule__Reference__Group_5_1_1_2__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3281:1: rule__Reference__Group_5_1_1_2__1__Impl : ( ( rule__Reference__TagsAssignment_5_1_1_2_1 ) ) ;
    public final void rule__Reference__Group_5_1_1_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3285:1: ( ( ( rule__Reference__TagsAssignment_5_1_1_2_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3286:1: ( ( rule__Reference__TagsAssignment_5_1_1_2_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3286:1: ( ( rule__Reference__TagsAssignment_5_1_1_2_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3287:1: ( rule__Reference__TagsAssignment_5_1_1_2_1 )
            {
             before(grammarAccess.getReferenceAccess().getTagsAssignment_5_1_1_2_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3288:1: ( rule__Reference__TagsAssignment_5_1_1_2_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3288:2: rule__Reference__TagsAssignment_5_1_1_2_1
            {
            pushFollow(FOLLOW_rule__Reference__TagsAssignment_5_1_1_2_1_in_rule__Reference__Group_5_1_1_2__1__Impl6573);
            rule__Reference__TagsAssignment_5_1_1_2_1();

            state._fsp--;


            }

             after(grammarAccess.getReferenceAccess().getTagsAssignment_5_1_1_2_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__Group_5_1_1_2__1__Impl"


    // $ANTLR start "rule__InstanceReference__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3302:1: rule__InstanceReference__Group__0 : rule__InstanceReference__Group__0__Impl rule__InstanceReference__Group__1 ;
    public final void rule__InstanceReference__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3306:1: ( rule__InstanceReference__Group__0__Impl rule__InstanceReference__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3307:2: rule__InstanceReference__Group__0__Impl rule__InstanceReference__Group__1
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group__0__Impl_in_rule__InstanceReference__Group__06607);
            rule__InstanceReference__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group__1_in_rule__InstanceReference__Group__06610);
            rule__InstanceReference__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__0"


    // $ANTLR start "rule__InstanceReference__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3314:1: rule__InstanceReference__Group__0__Impl : ( () ) ;
    public final void rule__InstanceReference__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3318:1: ( ( () ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3319:1: ( () )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3319:1: ( () )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3320:1: ()
            {
             before(grammarAccess.getInstanceReferenceAccess().getInstanceReferenceAction_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3321:1: ()
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3323:1: 
            {
            }

             after(grammarAccess.getInstanceReferenceAccess().getInstanceReferenceAction_0()); 

            }


            }

        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__0__Impl"


    // $ANTLR start "rule__InstanceReference__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3333:1: rule__InstanceReference__Group__1 : rule__InstanceReference__Group__1__Impl rule__InstanceReference__Group__2 ;
    public final void rule__InstanceReference__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3337:1: ( rule__InstanceReference__Group__1__Impl rule__InstanceReference__Group__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3338:2: rule__InstanceReference__Group__1__Impl rule__InstanceReference__Group__2
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group__1__Impl_in_rule__InstanceReference__Group__16668);
            rule__InstanceReference__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group__2_in_rule__InstanceReference__Group__16671);
            rule__InstanceReference__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__1"


    // $ANTLR start "rule__InstanceReference__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3345:1: rule__InstanceReference__Group__1__Impl : ( 'iref' ) ;
    public final void rule__InstanceReference__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3349:1: ( ( 'iref' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3350:1: ( 'iref' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3350:1: ( 'iref' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3351:1: 'iref'
            {
             before(grammarAccess.getInstanceReferenceAccess().getIrefKeyword_1()); 
            match(input,27,FOLLOW_27_in_rule__InstanceReference__Group__1__Impl6699); 
             after(grammarAccess.getInstanceReferenceAccess().getIrefKeyword_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__1__Impl"


    // $ANTLR start "rule__InstanceReference__Group__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3364:1: rule__InstanceReference__Group__2 : rule__InstanceReference__Group__2__Impl rule__InstanceReference__Group__3 ;
    public final void rule__InstanceReference__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3368:1: ( rule__InstanceReference__Group__2__Impl rule__InstanceReference__Group__3 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3369:2: rule__InstanceReference__Group__2__Impl rule__InstanceReference__Group__3
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group__2__Impl_in_rule__InstanceReference__Group__26730);
            rule__InstanceReference__Group__2__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group__3_in_rule__InstanceReference__Group__26733);
            rule__InstanceReference__Group__3();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__2"


    // $ANTLR start "rule__InstanceReference__Group__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3376:1: rule__InstanceReference__Group__2__Impl : ( ( rule__InstanceReference__DefinitionAssignment_2 ) ) ;
    public final void rule__InstanceReference__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3380:1: ( ( ( rule__InstanceReference__DefinitionAssignment_2 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3381:1: ( ( rule__InstanceReference__DefinitionAssignment_2 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3381:1: ( ( rule__InstanceReference__DefinitionAssignment_2 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3382:1: ( rule__InstanceReference__DefinitionAssignment_2 )
            {
             before(grammarAccess.getInstanceReferenceAccess().getDefinitionAssignment_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3383:1: ( rule__InstanceReference__DefinitionAssignment_2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3383:2: rule__InstanceReference__DefinitionAssignment_2
            {
            pushFollow(FOLLOW_rule__InstanceReference__DefinitionAssignment_2_in_rule__InstanceReference__Group__2__Impl6760);
            rule__InstanceReference__DefinitionAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceAccess().getDefinitionAssignment_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__2__Impl"


    // $ANTLR start "rule__InstanceReference__Group__3"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3393:1: rule__InstanceReference__Group__3 : rule__InstanceReference__Group__3__Impl rule__InstanceReference__Group__4 ;
    public final void rule__InstanceReference__Group__3() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3397:1: ( rule__InstanceReference__Group__3__Impl rule__InstanceReference__Group__4 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3398:2: rule__InstanceReference__Group__3__Impl rule__InstanceReference__Group__4
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group__3__Impl_in_rule__InstanceReference__Group__36790);
            rule__InstanceReference__Group__3__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group__4_in_rule__InstanceReference__Group__36793);
            rule__InstanceReference__Group__4();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__3"


    // $ANTLR start "rule__InstanceReference__Group__3__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3405:1: rule__InstanceReference__Group__3__Impl : ( '=' ) ;
    public final void rule__InstanceReference__Group__3__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3409:1: ( ( '=' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3410:1: ( '=' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3410:1: ( '=' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3411:1: '='
            {
             before(grammarAccess.getInstanceReferenceAccess().getEqualsSignKeyword_3()); 
            match(input,15,FOLLOW_15_in_rule__InstanceReference__Group__3__Impl6821); 
             after(grammarAccess.getInstanceReferenceAccess().getEqualsSignKeyword_3()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__3__Impl"


    // $ANTLR start "rule__InstanceReference__Group__4"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3424:1: rule__InstanceReference__Group__4 : rule__InstanceReference__Group__4__Impl rule__InstanceReference__Group__5 ;
    public final void rule__InstanceReference__Group__4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3428:1: ( rule__InstanceReference__Group__4__Impl rule__InstanceReference__Group__5 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3429:2: rule__InstanceReference__Group__4__Impl rule__InstanceReference__Group__5
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group__4__Impl_in_rule__InstanceReference__Group__46852);
            rule__InstanceReference__Group__4__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group__5_in_rule__InstanceReference__Group__46855);
            rule__InstanceReference__Group__5();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__4"


    // $ANTLR start "rule__InstanceReference__Group__4__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3436:1: rule__InstanceReference__Group__4__Impl : ( ( rule__InstanceReference__ValueAssignment_4 ) ) ;
    public final void rule__InstanceReference__Group__4__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3440:1: ( ( ( rule__InstanceReference__ValueAssignment_4 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3441:1: ( ( rule__InstanceReference__ValueAssignment_4 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3441:1: ( ( rule__InstanceReference__ValueAssignment_4 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3442:1: ( rule__InstanceReference__ValueAssignment_4 )
            {
             before(grammarAccess.getInstanceReferenceAccess().getValueAssignment_4()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3443:1: ( rule__InstanceReference__ValueAssignment_4 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3443:2: rule__InstanceReference__ValueAssignment_4
            {
            pushFollow(FOLLOW_rule__InstanceReference__ValueAssignment_4_in_rule__InstanceReference__Group__4__Impl6882);
            rule__InstanceReference__ValueAssignment_4();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceAccess().getValueAssignment_4()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__4__Impl"


    // $ANTLR start "rule__InstanceReference__Group__5"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3453:1: rule__InstanceReference__Group__5 : rule__InstanceReference__Group__5__Impl ;
    public final void rule__InstanceReference__Group__5() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3457:1: ( rule__InstanceReference__Group__5__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3458:2: rule__InstanceReference__Group__5__Impl
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group__5__Impl_in_rule__InstanceReference__Group__56912);
            rule__InstanceReference__Group__5__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__5"


    // $ANTLR start "rule__InstanceReference__Group__5__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3464:1: rule__InstanceReference__Group__5__Impl : ( ( rule__InstanceReference__Group_5__0 )? ) ;
    public final void rule__InstanceReference__Group__5__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3468:1: ( ( ( rule__InstanceReference__Group_5__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3469:1: ( ( rule__InstanceReference__Group_5__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3469:1: ( ( rule__InstanceReference__Group_5__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3470:1: ( rule__InstanceReference__Group_5__0 )?
            {
             before(grammarAccess.getInstanceReferenceAccess().getGroup_5()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3471:1: ( rule__InstanceReference__Group_5__0 )?
            int alt21=2;
            int LA21_0 = input.LA(1);

            if ( (LA21_0==19) ) {
                alt21=1;
            }
            switch (alt21) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3471:2: rule__InstanceReference__Group_5__0
                    {
                    pushFollow(FOLLOW_rule__InstanceReference__Group_5__0_in_rule__InstanceReference__Group__5__Impl6939);
                    rule__InstanceReference__Group_5__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getInstanceReferenceAccess().getGroup_5()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group__5__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3493:1: rule__InstanceReference__Group_5__0 : rule__InstanceReference__Group_5__0__Impl rule__InstanceReference__Group_5__1 ;
    public final void rule__InstanceReference__Group_5__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3497:1: ( rule__InstanceReference__Group_5__0__Impl rule__InstanceReference__Group_5__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3498:2: rule__InstanceReference__Group_5__0__Impl rule__InstanceReference__Group_5__1
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5__0__Impl_in_rule__InstanceReference__Group_5__06982);
            rule__InstanceReference__Group_5__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group_5__1_in_rule__InstanceReference__Group_5__06985);
            rule__InstanceReference__Group_5__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5__0"


    // $ANTLR start "rule__InstanceReference__Group_5__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3505:1: rule__InstanceReference__Group_5__0__Impl : ( '(' ) ;
    public final void rule__InstanceReference__Group_5__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3509:1: ( ( '(' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3510:1: ( '(' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3510:1: ( '(' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3511:1: '('
            {
             before(grammarAccess.getInstanceReferenceAccess().getLeftParenthesisKeyword_5_0()); 
            match(input,19,FOLLOW_19_in_rule__InstanceReference__Group_5__0__Impl7013); 
             after(grammarAccess.getInstanceReferenceAccess().getLeftParenthesisKeyword_5_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5__0__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3524:1: rule__InstanceReference__Group_5__1 : rule__InstanceReference__Group_5__1__Impl rule__InstanceReference__Group_5__2 ;
    public final void rule__InstanceReference__Group_5__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3528:1: ( rule__InstanceReference__Group_5__1__Impl rule__InstanceReference__Group_5__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3529:2: rule__InstanceReference__Group_5__1__Impl rule__InstanceReference__Group_5__2
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5__1__Impl_in_rule__InstanceReference__Group_5__17044);
            rule__InstanceReference__Group_5__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group_5__2_in_rule__InstanceReference__Group_5__17047);
            rule__InstanceReference__Group_5__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5__1"


    // $ANTLR start "rule__InstanceReference__Group_5__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3536:1: rule__InstanceReference__Group_5__1__Impl : ( ( rule__InstanceReference__UnorderedGroup_5_1 ) ) ;
    public final void rule__InstanceReference__Group_5__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3540:1: ( ( ( rule__InstanceReference__UnorderedGroup_5_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3541:1: ( ( rule__InstanceReference__UnorderedGroup_5_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3541:1: ( ( rule__InstanceReference__UnorderedGroup_5_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3542:1: ( rule__InstanceReference__UnorderedGroup_5_1 )
            {
             before(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3543:1: ( rule__InstanceReference__UnorderedGroup_5_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3543:2: rule__InstanceReference__UnorderedGroup_5_1
            {
            pushFollow(FOLLOW_rule__InstanceReference__UnorderedGroup_5_1_in_rule__InstanceReference__Group_5__1__Impl7074);
            rule__InstanceReference__UnorderedGroup_5_1();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5__1__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3553:1: rule__InstanceReference__Group_5__2 : rule__InstanceReference__Group_5__2__Impl ;
    public final void rule__InstanceReference__Group_5__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3557:1: ( rule__InstanceReference__Group_5__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3558:2: rule__InstanceReference__Group_5__2__Impl
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5__2__Impl_in_rule__InstanceReference__Group_5__27104);
            rule__InstanceReference__Group_5__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5__2"


    // $ANTLR start "rule__InstanceReference__Group_5__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3564:1: rule__InstanceReference__Group_5__2__Impl : ( ')' ) ;
    public final void rule__InstanceReference__Group_5__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3568:1: ( ( ')' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3569:1: ( ')' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3569:1: ( ')' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3570:1: ')'
            {
             before(grammarAccess.getInstanceReferenceAccess().getRightParenthesisKeyword_5_2()); 
            match(input,20,FOLLOW_20_in_rule__InstanceReference__Group_5__2__Impl7132); 
             after(grammarAccess.getInstanceReferenceAccess().getRightParenthesisKeyword_5_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5__2__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5_1_0__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3589:1: rule__InstanceReference__Group_5_1_0__0 : rule__InstanceReference__Group_5_1_0__0__Impl rule__InstanceReference__Group_5_1_0__1 ;
    public final void rule__InstanceReference__Group_5_1_0__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3593:1: ( rule__InstanceReference__Group_5_1_0__0__Impl rule__InstanceReference__Group_5_1_0__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3594:2: rule__InstanceReference__Group_5_1_0__0__Impl rule__InstanceReference__Group_5_1_0__1
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_0__0__Impl_in_rule__InstanceReference__Group_5_1_0__07169);
            rule__InstanceReference__Group_5_1_0__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_0__1_in_rule__InstanceReference__Group_5_1_0__07172);
            rule__InstanceReference__Group_5_1_0__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_0__0"


    // $ANTLR start "rule__InstanceReference__Group_5_1_0__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3601:1: rule__InstanceReference__Group_5_1_0__0__Impl : ( 'index' ) ;
    public final void rule__InstanceReference__Group_5_1_0__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3605:1: ( ( 'index' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3606:1: ( 'index' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3606:1: ( 'index' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3607:1: 'index'
            {
             before(grammarAccess.getInstanceReferenceAccess().getIndexKeyword_5_1_0_0()); 
            match(input,24,FOLLOW_24_in_rule__InstanceReference__Group_5_1_0__0__Impl7200); 
             after(grammarAccess.getInstanceReferenceAccess().getIndexKeyword_5_1_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_0__0__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5_1_0__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3620:1: rule__InstanceReference__Group_5_1_0__1 : rule__InstanceReference__Group_5_1_0__1__Impl ;
    public final void rule__InstanceReference__Group_5_1_0__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3624:1: ( rule__InstanceReference__Group_5_1_0__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3625:2: rule__InstanceReference__Group_5_1_0__1__Impl
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_0__1__Impl_in_rule__InstanceReference__Group_5_1_0__17231);
            rule__InstanceReference__Group_5_1_0__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_0__1"


    // $ANTLR start "rule__InstanceReference__Group_5_1_0__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3631:1: rule__InstanceReference__Group_5_1_0__1__Impl : ( ( rule__InstanceReference__IndexAssignment_5_1_0_1 ) ) ;
    public final void rule__InstanceReference__Group_5_1_0__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3635:1: ( ( ( rule__InstanceReference__IndexAssignment_5_1_0_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3636:1: ( ( rule__InstanceReference__IndexAssignment_5_1_0_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3636:1: ( ( rule__InstanceReference__IndexAssignment_5_1_0_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3637:1: ( rule__InstanceReference__IndexAssignment_5_1_0_1 )
            {
             before(grammarAccess.getInstanceReferenceAccess().getIndexAssignment_5_1_0_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3638:1: ( rule__InstanceReference__IndexAssignment_5_1_0_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3638:2: rule__InstanceReference__IndexAssignment_5_1_0_1
            {
            pushFollow(FOLLOW_rule__InstanceReference__IndexAssignment_5_1_0_1_in_rule__InstanceReference__Group_5_1_0__1__Impl7258);
            rule__InstanceReference__IndexAssignment_5_1_0_1();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceAccess().getIndexAssignment_5_1_0_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_0__1__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3652:1: rule__InstanceReference__Group_5_1_1__0 : rule__InstanceReference__Group_5_1_1__0__Impl rule__InstanceReference__Group_5_1_1__1 ;
    public final void rule__InstanceReference__Group_5_1_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3656:1: ( rule__InstanceReference__Group_5_1_1__0__Impl rule__InstanceReference__Group_5_1_1__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3657:2: rule__InstanceReference__Group_5_1_1__0__Impl rule__InstanceReference__Group_5_1_1__1
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1__0__Impl_in_rule__InstanceReference__Group_5_1_1__07292);
            rule__InstanceReference__Group_5_1_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1__1_in_rule__InstanceReference__Group_5_1_1__07295);
            rule__InstanceReference__Group_5_1_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1__0"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3664:1: rule__InstanceReference__Group_5_1_1__0__Impl : ( 'tags' ) ;
    public final void rule__InstanceReference__Group_5_1_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3668:1: ( ( 'tags' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3669:1: ( 'tags' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3669:1: ( 'tags' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3670:1: 'tags'
            {
             before(grammarAccess.getInstanceReferenceAccess().getTagsKeyword_5_1_1_0()); 
            match(input,21,FOLLOW_21_in_rule__InstanceReference__Group_5_1_1__0__Impl7323); 
             after(grammarAccess.getInstanceReferenceAccess().getTagsKeyword_5_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1__0__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3683:1: rule__InstanceReference__Group_5_1_1__1 : rule__InstanceReference__Group_5_1_1__1__Impl rule__InstanceReference__Group_5_1_1__2 ;
    public final void rule__InstanceReference__Group_5_1_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3687:1: ( rule__InstanceReference__Group_5_1_1__1__Impl rule__InstanceReference__Group_5_1_1__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3688:2: rule__InstanceReference__Group_5_1_1__1__Impl rule__InstanceReference__Group_5_1_1__2
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1__1__Impl_in_rule__InstanceReference__Group_5_1_1__17354);
            rule__InstanceReference__Group_5_1_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1__2_in_rule__InstanceReference__Group_5_1_1__17357);
            rule__InstanceReference__Group_5_1_1__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1__1"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3695:1: rule__InstanceReference__Group_5_1_1__1__Impl : ( ( rule__InstanceReference__TagsAssignment_5_1_1_1 ) ) ;
    public final void rule__InstanceReference__Group_5_1_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3699:1: ( ( ( rule__InstanceReference__TagsAssignment_5_1_1_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3700:1: ( ( rule__InstanceReference__TagsAssignment_5_1_1_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3700:1: ( ( rule__InstanceReference__TagsAssignment_5_1_1_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3701:1: ( rule__InstanceReference__TagsAssignment_5_1_1_1 )
            {
             before(grammarAccess.getInstanceReferenceAccess().getTagsAssignment_5_1_1_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3702:1: ( rule__InstanceReference__TagsAssignment_5_1_1_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3702:2: rule__InstanceReference__TagsAssignment_5_1_1_1
            {
            pushFollow(FOLLOW_rule__InstanceReference__TagsAssignment_5_1_1_1_in_rule__InstanceReference__Group_5_1_1__1__Impl7384);
            rule__InstanceReference__TagsAssignment_5_1_1_1();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceAccess().getTagsAssignment_5_1_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1__1__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3712:1: rule__InstanceReference__Group_5_1_1__2 : rule__InstanceReference__Group_5_1_1__2__Impl ;
    public final void rule__InstanceReference__Group_5_1_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3716:1: ( rule__InstanceReference__Group_5_1_1__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3717:2: rule__InstanceReference__Group_5_1_1__2__Impl
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1__2__Impl_in_rule__InstanceReference__Group_5_1_1__27414);
            rule__InstanceReference__Group_5_1_1__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1__2"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3723:1: rule__InstanceReference__Group_5_1_1__2__Impl : ( ( rule__InstanceReference__Group_5_1_1_2__0 )* ) ;
    public final void rule__InstanceReference__Group_5_1_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3727:1: ( ( ( rule__InstanceReference__Group_5_1_1_2__0 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3728:1: ( ( rule__InstanceReference__Group_5_1_1_2__0 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3728:1: ( ( rule__InstanceReference__Group_5_1_1_2__0 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3729:1: ( rule__InstanceReference__Group_5_1_1_2__0 )*
            {
             before(grammarAccess.getInstanceReferenceAccess().getGroup_5_1_1_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3730:1: ( rule__InstanceReference__Group_5_1_1_2__0 )*
            loop22:
            do {
                int alt22=2;
                int LA22_0 = input.LA(1);

                if ( (LA22_0==22) ) {
                    alt22=1;
                }


                switch (alt22) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3730:2: rule__InstanceReference__Group_5_1_1_2__0
            	    {
            	    pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1_2__0_in_rule__InstanceReference__Group_5_1_1__2__Impl7441);
            	    rule__InstanceReference__Group_5_1_1_2__0();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop22;
                }
            } while (true);

             after(grammarAccess.getInstanceReferenceAccess().getGroup_5_1_1_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1__2__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1_2__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3746:1: rule__InstanceReference__Group_5_1_1_2__0 : rule__InstanceReference__Group_5_1_1_2__0__Impl rule__InstanceReference__Group_5_1_1_2__1 ;
    public final void rule__InstanceReference__Group_5_1_1_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3750:1: ( rule__InstanceReference__Group_5_1_1_2__0__Impl rule__InstanceReference__Group_5_1_1_2__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3751:2: rule__InstanceReference__Group_5_1_1_2__0__Impl rule__InstanceReference__Group_5_1_1_2__1
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1_2__0__Impl_in_rule__InstanceReference__Group_5_1_1_2__07478);
            rule__InstanceReference__Group_5_1_1_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1_2__1_in_rule__InstanceReference__Group_5_1_1_2__07481);
            rule__InstanceReference__Group_5_1_1_2__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1_2__0"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1_2__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3758:1: rule__InstanceReference__Group_5_1_1_2__0__Impl : ( ',' ) ;
    public final void rule__InstanceReference__Group_5_1_1_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3762:1: ( ( ',' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3763:1: ( ',' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3763:1: ( ',' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3764:1: ','
            {
             before(grammarAccess.getInstanceReferenceAccess().getCommaKeyword_5_1_1_2_0()); 
            match(input,22,FOLLOW_22_in_rule__InstanceReference__Group_5_1_1_2__0__Impl7509); 
             after(grammarAccess.getInstanceReferenceAccess().getCommaKeyword_5_1_1_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1_2__0__Impl"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1_2__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3777:1: rule__InstanceReference__Group_5_1_1_2__1 : rule__InstanceReference__Group_5_1_1_2__1__Impl ;
    public final void rule__InstanceReference__Group_5_1_1_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3781:1: ( rule__InstanceReference__Group_5_1_1_2__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3782:2: rule__InstanceReference__Group_5_1_1_2__1__Impl
            {
            pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1_2__1__Impl_in_rule__InstanceReference__Group_5_1_1_2__17540);
            rule__InstanceReference__Group_5_1_1_2__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1_2__1"


    // $ANTLR start "rule__InstanceReference__Group_5_1_1_2__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3788:1: rule__InstanceReference__Group_5_1_1_2__1__Impl : ( ( rule__InstanceReference__TagsAssignment_5_1_1_2_1 ) ) ;
    public final void rule__InstanceReference__Group_5_1_1_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3792:1: ( ( ( rule__InstanceReference__TagsAssignment_5_1_1_2_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3793:1: ( ( rule__InstanceReference__TagsAssignment_5_1_1_2_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3793:1: ( ( rule__InstanceReference__TagsAssignment_5_1_1_2_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3794:1: ( rule__InstanceReference__TagsAssignment_5_1_1_2_1 )
            {
             before(grammarAccess.getInstanceReferenceAccess().getTagsAssignment_5_1_1_2_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3795:1: ( rule__InstanceReference__TagsAssignment_5_1_1_2_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3795:2: rule__InstanceReference__TagsAssignment_5_1_1_2_1
            {
            pushFollow(FOLLOW_rule__InstanceReference__TagsAssignment_5_1_1_2_1_in_rule__InstanceReference__Group_5_1_1_2__1__Impl7567);
            rule__InstanceReference__TagsAssignment_5_1_1_2_1();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceAccess().getTagsAssignment_5_1_1_2_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__Group_5_1_1_2__1__Impl"


    // $ANTLR start "rule__InstanceReferenceValue__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3809:1: rule__InstanceReferenceValue__Group__0 : rule__InstanceReferenceValue__Group__0__Impl rule__InstanceReferenceValue__Group__1 ;
    public final void rule__InstanceReferenceValue__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3813:1: ( rule__InstanceReferenceValue__Group__0__Impl rule__InstanceReferenceValue__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3814:2: rule__InstanceReferenceValue__Group__0__Impl rule__InstanceReferenceValue__Group__1
            {
            pushFollow(FOLLOW_rule__InstanceReferenceValue__Group__0__Impl_in_rule__InstanceReferenceValue__Group__07601);
            rule__InstanceReferenceValue__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReferenceValue__Group__1_in_rule__InstanceReferenceValue__Group__07604);
            rule__InstanceReferenceValue__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReferenceValue__Group__0"


    // $ANTLR start "rule__InstanceReferenceValue__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3821:1: rule__InstanceReferenceValue__Group__0__Impl : ( ( rule__InstanceReferenceValue__ContextsAssignment_0 ) ) ;
    public final void rule__InstanceReferenceValue__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3825:1: ( ( ( rule__InstanceReferenceValue__ContextsAssignment_0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3826:1: ( ( rule__InstanceReferenceValue__ContextsAssignment_0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3826:1: ( ( rule__InstanceReferenceValue__ContextsAssignment_0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3827:1: ( rule__InstanceReferenceValue__ContextsAssignment_0 )
            {
             before(grammarAccess.getInstanceReferenceValueAccess().getContextsAssignment_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3828:1: ( rule__InstanceReferenceValue__ContextsAssignment_0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3828:2: rule__InstanceReferenceValue__ContextsAssignment_0
            {
            pushFollow(FOLLOW_rule__InstanceReferenceValue__ContextsAssignment_0_in_rule__InstanceReferenceValue__Group__0__Impl7631);
            rule__InstanceReferenceValue__ContextsAssignment_0();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceValueAccess().getContextsAssignment_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReferenceValue__Group__0__Impl"


    // $ANTLR start "rule__InstanceReferenceValue__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3838:1: rule__InstanceReferenceValue__Group__1 : rule__InstanceReferenceValue__Group__1__Impl rule__InstanceReferenceValue__Group__2 ;
    public final void rule__InstanceReferenceValue__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3842:1: ( rule__InstanceReferenceValue__Group__1__Impl rule__InstanceReferenceValue__Group__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3843:2: rule__InstanceReferenceValue__Group__1__Impl rule__InstanceReferenceValue__Group__2
            {
            pushFollow(FOLLOW_rule__InstanceReferenceValue__Group__1__Impl_in_rule__InstanceReferenceValue__Group__17661);
            rule__InstanceReferenceValue__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__InstanceReferenceValue__Group__2_in_rule__InstanceReferenceValue__Group__17664);
            rule__InstanceReferenceValue__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReferenceValue__Group__1"


    // $ANTLR start "rule__InstanceReferenceValue__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3850:1: rule__InstanceReferenceValue__Group__1__Impl : ( '->' ) ;
    public final void rule__InstanceReferenceValue__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3854:1: ( ( '->' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3855:1: ( '->' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3855:1: ( '->' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3856:1: '->'
            {
             before(grammarAccess.getInstanceReferenceValueAccess().getHyphenMinusGreaterThanSignKeyword_1()); 
            match(input,28,FOLLOW_28_in_rule__InstanceReferenceValue__Group__1__Impl7692); 
             after(grammarAccess.getInstanceReferenceValueAccess().getHyphenMinusGreaterThanSignKeyword_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReferenceValue__Group__1__Impl"


    // $ANTLR start "rule__InstanceReferenceValue__Group__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3869:1: rule__InstanceReferenceValue__Group__2 : rule__InstanceReferenceValue__Group__2__Impl ;
    public final void rule__InstanceReferenceValue__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3873:1: ( rule__InstanceReferenceValue__Group__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3874:2: rule__InstanceReferenceValue__Group__2__Impl
            {
            pushFollow(FOLLOW_rule__InstanceReferenceValue__Group__2__Impl_in_rule__InstanceReferenceValue__Group__27723);
            rule__InstanceReferenceValue__Group__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReferenceValue__Group__2"


    // $ANTLR start "rule__InstanceReferenceValue__Group__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3880:1: rule__InstanceReferenceValue__Group__2__Impl : ( ( rule__InstanceReferenceValue__TargetAssignment_2 ) ) ;
    public final void rule__InstanceReferenceValue__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3884:1: ( ( ( rule__InstanceReferenceValue__TargetAssignment_2 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3885:1: ( ( rule__InstanceReferenceValue__TargetAssignment_2 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3885:1: ( ( rule__InstanceReferenceValue__TargetAssignment_2 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3886:1: ( rule__InstanceReferenceValue__TargetAssignment_2 )
            {
             before(grammarAccess.getInstanceReferenceValueAccess().getTargetAssignment_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3887:1: ( rule__InstanceReferenceValue__TargetAssignment_2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3887:2: rule__InstanceReferenceValue__TargetAssignment_2
            {
            pushFollow(FOLLOW_rule__InstanceReferenceValue__TargetAssignment_2_in_rule__InstanceReferenceValue__Group__2__Impl7750);
            rule__InstanceReferenceValue__TargetAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getInstanceReferenceValueAccess().getTargetAssignment_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReferenceValue__Group__2__Impl"


    // $ANTLR start "rule__ContextChain__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3903:1: rule__ContextChain__Group__0 : rule__ContextChain__Group__0__Impl rule__ContextChain__Group__1 ;
    public final void rule__ContextChain__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3907:1: ( rule__ContextChain__Group__0__Impl rule__ContextChain__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3908:2: rule__ContextChain__Group__0__Impl rule__ContextChain__Group__1
            {
            pushFollow(FOLLOW_rule__ContextChain__Group__0__Impl_in_rule__ContextChain__Group__07786);
            rule__ContextChain__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__ContextChain__Group__1_in_rule__ContextChain__Group__07789);
            rule__ContextChain__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group__0"


    // $ANTLR start "rule__ContextChain__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3915:1: rule__ContextChain__Group__0__Impl : ( ruleContext ) ;
    public final void rule__ContextChain__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3919:1: ( ( ruleContext ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3920:1: ( ruleContext )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3920:1: ( ruleContext )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3921:1: ruleContext
            {
             before(grammarAccess.getContextChainAccess().getContextParserRuleCall_0()); 
            pushFollow(FOLLOW_ruleContext_in_rule__ContextChain__Group__0__Impl7816);
            ruleContext();

            state._fsp--;

             after(grammarAccess.getContextChainAccess().getContextParserRuleCall_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group__0__Impl"


    // $ANTLR start "rule__ContextChain__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3932:1: rule__ContextChain__Group__1 : rule__ContextChain__Group__1__Impl ;
    public final void rule__ContextChain__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3936:1: ( rule__ContextChain__Group__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3937:2: rule__ContextChain__Group__1__Impl
            {
            pushFollow(FOLLOW_rule__ContextChain__Group__1__Impl_in_rule__ContextChain__Group__17845);
            rule__ContextChain__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group__1"


    // $ANTLR start "rule__ContextChain__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3943:1: rule__ContextChain__Group__1__Impl : ( ( rule__ContextChain__Group_1__0 )* ) ;
    public final void rule__ContextChain__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3947:1: ( ( ( rule__ContextChain__Group_1__0 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3948:1: ( ( rule__ContextChain__Group_1__0 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3948:1: ( ( rule__ContextChain__Group_1__0 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3949:1: ( rule__ContextChain__Group_1__0 )*
            {
             before(grammarAccess.getContextChainAccess().getGroup_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3950:1: ( rule__ContextChain__Group_1__0 )*
            loop23:
            do {
                int alt23=2;
                int LA23_0 = input.LA(1);

                if ( (LA23_0==22) ) {
                    alt23=1;
                }


                switch (alt23) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3950:2: rule__ContextChain__Group_1__0
            	    {
            	    pushFollow(FOLLOW_rule__ContextChain__Group_1__0_in_rule__ContextChain__Group__1__Impl7872);
            	    rule__ContextChain__Group_1__0();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop23;
                }
            } while (true);

             after(grammarAccess.getContextChainAccess().getGroup_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group__1__Impl"


    // $ANTLR start "rule__ContextChain__Group_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3964:1: rule__ContextChain__Group_1__0 : rule__ContextChain__Group_1__0__Impl rule__ContextChain__Group_1__1 ;
    public final void rule__ContextChain__Group_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3968:1: ( rule__ContextChain__Group_1__0__Impl rule__ContextChain__Group_1__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3969:2: rule__ContextChain__Group_1__0__Impl rule__ContextChain__Group_1__1
            {
            pushFollow(FOLLOW_rule__ContextChain__Group_1__0__Impl_in_rule__ContextChain__Group_1__07907);
            rule__ContextChain__Group_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__ContextChain__Group_1__1_in_rule__ContextChain__Group_1__07910);
            rule__ContextChain__Group_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group_1__0"


    // $ANTLR start "rule__ContextChain__Group_1__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3976:1: rule__ContextChain__Group_1__0__Impl : ( () ) ;
    public final void rule__ContextChain__Group_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3980:1: ( ( () ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3981:1: ( () )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3981:1: ( () )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3982:1: ()
            {
             before(grammarAccess.getContextChainAccess().getContextChainPrevAction_1_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3983:1: ()
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3985:1: 
            {
            }

             after(grammarAccess.getContextChainAccess().getContextChainPrevAction_1_0()); 

            }


            }

        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group_1__0__Impl"


    // $ANTLR start "rule__ContextChain__Group_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3995:1: rule__ContextChain__Group_1__1 : rule__ContextChain__Group_1__1__Impl rule__ContextChain__Group_1__2 ;
    public final void rule__ContextChain__Group_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:3999:1: ( rule__ContextChain__Group_1__1__Impl rule__ContextChain__Group_1__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4000:2: rule__ContextChain__Group_1__1__Impl rule__ContextChain__Group_1__2
            {
            pushFollow(FOLLOW_rule__ContextChain__Group_1__1__Impl_in_rule__ContextChain__Group_1__17968);
            rule__ContextChain__Group_1__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__ContextChain__Group_1__2_in_rule__ContextChain__Group_1__17971);
            rule__ContextChain__Group_1__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group_1__1"


    // $ANTLR start "rule__ContextChain__Group_1__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4007:1: rule__ContextChain__Group_1__1__Impl : ( ',' ) ;
    public final void rule__ContextChain__Group_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4011:1: ( ( ',' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4012:1: ( ',' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4012:1: ( ',' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4013:1: ','
            {
             before(grammarAccess.getContextChainAccess().getCommaKeyword_1_1()); 
            match(input,22,FOLLOW_22_in_rule__ContextChain__Group_1__1__Impl7999); 
             after(grammarAccess.getContextChainAccess().getCommaKeyword_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group_1__1__Impl"


    // $ANTLR start "rule__ContextChain__Group_1__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4026:1: rule__ContextChain__Group_1__2 : rule__ContextChain__Group_1__2__Impl ;
    public final void rule__ContextChain__Group_1__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4030:1: ( rule__ContextChain__Group_1__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4031:2: rule__ContextChain__Group_1__2__Impl
            {
            pushFollow(FOLLOW_rule__ContextChain__Group_1__2__Impl_in_rule__ContextChain__Group_1__28030);
            rule__ContextChain__Group_1__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group_1__2"


    // $ANTLR start "rule__ContextChain__Group_1__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4037:1: rule__ContextChain__Group_1__2__Impl : ( ( rule__ContextChain__ObjectAssignment_1_2 ) ) ;
    public final void rule__ContextChain__Group_1__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4041:1: ( ( ( rule__ContextChain__ObjectAssignment_1_2 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4042:1: ( ( rule__ContextChain__ObjectAssignment_1_2 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4042:1: ( ( rule__ContextChain__ObjectAssignment_1_2 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4043:1: ( rule__ContextChain__ObjectAssignment_1_2 )
            {
             before(grammarAccess.getContextChainAccess().getObjectAssignment_1_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4044:1: ( rule__ContextChain__ObjectAssignment_1_2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4044:2: rule__ContextChain__ObjectAssignment_1_2
            {
            pushFollow(FOLLOW_rule__ContextChain__ObjectAssignment_1_2_in_rule__ContextChain__Group_1__2__Impl8057);
            rule__ContextChain__ObjectAssignment_1_2();

            state._fsp--;


            }

             after(grammarAccess.getContextChainAccess().getObjectAssignment_1_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__Group_1__2__Impl"


    // $ANTLR start "rule__Context__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4060:1: rule__Context__Group__0 : rule__Context__Group__0__Impl rule__Context__Group__1 ;
    public final void rule__Context__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4064:1: ( rule__Context__Group__0__Impl rule__Context__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4065:2: rule__Context__Group__0__Impl rule__Context__Group__1
            {
            pushFollow(FOLLOW_rule__Context__Group__0__Impl_in_rule__Context__Group__08093);
            rule__Context__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Context__Group__1_in_rule__Context__Group__08096);
            rule__Context__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Context__Group__0"


    // $ANTLR start "rule__Context__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4072:1: rule__Context__Group__0__Impl : ( () ) ;
    public final void rule__Context__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4076:1: ( ( () ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4077:1: ( () )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4077:1: ( () )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4078:1: ()
            {
             before(grammarAccess.getContextAccess().getContextAction_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4079:1: ()
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4081:1: 
            {
            }

             after(grammarAccess.getContextAccess().getContextAction_0()); 

            }


            }

        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Context__Group__0__Impl"


    // $ANTLR start "rule__Context__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4091:1: rule__Context__Group__1 : rule__Context__Group__1__Impl ;
    public final void rule__Context__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4095:1: ( rule__Context__Group__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4096:2: rule__Context__Group__1__Impl
            {
            pushFollow(FOLLOW_rule__Context__Group__1__Impl_in_rule__Context__Group__18154);
            rule__Context__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Context__Group__1"


    // $ANTLR start "rule__Context__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4102:1: rule__Context__Group__1__Impl : ( ( rule__Context__StartAssignment_1 ) ) ;
    public final void rule__Context__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4106:1: ( ( ( rule__Context__StartAssignment_1 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4107:1: ( ( rule__Context__StartAssignment_1 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4107:1: ( ( rule__Context__StartAssignment_1 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4108:1: ( rule__Context__StartAssignment_1 )
            {
             before(grammarAccess.getContextAccess().getStartAssignment_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4109:1: ( rule__Context__StartAssignment_1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4109:2: rule__Context__StartAssignment_1
            {
            pushFollow(FOLLOW_rule__Context__StartAssignment_1_in_rule__Context__Group__1__Impl8181);
            rule__Context__StartAssignment_1();

            state._fsp--;


            }

             after(grammarAccess.getContextAccess().getStartAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Context__Group__1__Impl"


    // $ANTLR start "rule__EID__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4123:1: rule__EID__Group__0 : rule__EID__Group__0__Impl rule__EID__Group__1 ;
    public final void rule__EID__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4127:1: ( rule__EID__Group__0__Impl rule__EID__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4128:2: rule__EID__Group__0__Impl rule__EID__Group__1
            {
            pushFollow(FOLLOW_rule__EID__Group__0__Impl_in_rule__EID__Group__08215);
            rule__EID__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__EID__Group__1_in_rule__EID__Group__08218);
            rule__EID__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__EID__Group__0"


    // $ANTLR start "rule__EID__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4135:1: rule__EID__Group__0__Impl : ( '.' ) ;
    public final void rule__EID__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4139:1: ( ( '.' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4140:1: ( '.' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4140:1: ( '.' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4141:1: '.'
            {
             before(grammarAccess.getEIDAccess().getFullStopKeyword_0()); 
            match(input,29,FOLLOW_29_in_rule__EID__Group__0__Impl8246); 
             after(grammarAccess.getEIDAccess().getFullStopKeyword_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__EID__Group__0__Impl"


    // $ANTLR start "rule__EID__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4154:1: rule__EID__Group__1 : rule__EID__Group__1__Impl ;
    public final void rule__EID__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4158:1: ( rule__EID__Group__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4159:2: rule__EID__Group__1__Impl
            {
            pushFollow(FOLLOW_rule__EID__Group__1__Impl_in_rule__EID__Group__18277);
            rule__EID__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__EID__Group__1"


    // $ANTLR start "rule__EID__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4165:1: rule__EID__Group__1__Impl : ( RULE_ID ) ;
    public final void rule__EID__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4169:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4170:1: ( RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4170:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4171:1: RULE_ID
            {
             before(grammarAccess.getEIDAccess().getIDTerminalRuleCall_1()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__EID__Group__1__Impl8304); 
             after(grammarAccess.getEIDAccess().getIDTerminalRuleCall_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__EID__Group__1__Impl"


    // $ANTLR start "rule__Tag__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4186:1: rule__Tag__Group__0 : rule__Tag__Group__0__Impl rule__Tag__Group__1 ;
    public final void rule__Tag__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4190:1: ( rule__Tag__Group__0__Impl rule__Tag__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4191:2: rule__Tag__Group__0__Impl rule__Tag__Group__1
            {
            pushFollow(FOLLOW_rule__Tag__Group__0__Impl_in_rule__Tag__Group__08337);
            rule__Tag__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Tag__Group__1_in_rule__Tag__Group__08340);
            rule__Tag__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Tag__Group__0"


    // $ANTLR start "rule__Tag__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4198:1: rule__Tag__Group__0__Impl : ( ( rule__Tag__KeyAssignment_0 ) ) ;
    public final void rule__Tag__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4202:1: ( ( ( rule__Tag__KeyAssignment_0 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4203:1: ( ( rule__Tag__KeyAssignment_0 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4203:1: ( ( rule__Tag__KeyAssignment_0 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4204:1: ( rule__Tag__KeyAssignment_0 )
            {
             before(grammarAccess.getTagAccess().getKeyAssignment_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4205:1: ( rule__Tag__KeyAssignment_0 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4205:2: rule__Tag__KeyAssignment_0
            {
            pushFollow(FOLLOW_rule__Tag__KeyAssignment_0_in_rule__Tag__Group__0__Impl8367);
            rule__Tag__KeyAssignment_0();

            state._fsp--;


            }

             after(grammarAccess.getTagAccess().getKeyAssignment_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Tag__Group__0__Impl"


    // $ANTLR start "rule__Tag__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4215:1: rule__Tag__Group__1 : rule__Tag__Group__1__Impl rule__Tag__Group__2 ;
    public final void rule__Tag__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4219:1: ( rule__Tag__Group__1__Impl rule__Tag__Group__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4220:2: rule__Tag__Group__1__Impl rule__Tag__Group__2
            {
            pushFollow(FOLLOW_rule__Tag__Group__1__Impl_in_rule__Tag__Group__18397);
            rule__Tag__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__Tag__Group__2_in_rule__Tag__Group__18400);
            rule__Tag__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Tag__Group__1"


    // $ANTLR start "rule__Tag__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4227:1: rule__Tag__Group__1__Impl : ( '->' ) ;
    public final void rule__Tag__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4231:1: ( ( '->' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4232:1: ( '->' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4232:1: ( '->' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4233:1: '->'
            {
             before(grammarAccess.getTagAccess().getHyphenMinusGreaterThanSignKeyword_1()); 
            match(input,28,FOLLOW_28_in_rule__Tag__Group__1__Impl8428); 
             after(grammarAccess.getTagAccess().getHyphenMinusGreaterThanSignKeyword_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Tag__Group__1__Impl"


    // $ANTLR start "rule__Tag__Group__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4246:1: rule__Tag__Group__2 : rule__Tag__Group__2__Impl ;
    public final void rule__Tag__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4250:1: ( rule__Tag__Group__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4251:2: rule__Tag__Group__2__Impl
            {
            pushFollow(FOLLOW_rule__Tag__Group__2__Impl_in_rule__Tag__Group__28459);
            rule__Tag__Group__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Tag__Group__2"


    // $ANTLR start "rule__Tag__Group__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4257:1: rule__Tag__Group__2__Impl : ( ( rule__Tag__ValueAssignment_2 ) ) ;
    public final void rule__Tag__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4261:1: ( ( ( rule__Tag__ValueAssignment_2 ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4262:1: ( ( rule__Tag__ValueAssignment_2 ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4262:1: ( ( rule__Tag__ValueAssignment_2 ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4263:1: ( rule__Tag__ValueAssignment_2 )
            {
             before(grammarAccess.getTagAccess().getValueAssignment_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4264:1: ( rule__Tag__ValueAssignment_2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4264:2: rule__Tag__ValueAssignment_2
            {
            pushFollow(FOLLOW_rule__Tag__ValueAssignment_2_in_rule__Tag__Group__2__Impl8486);
            rule__Tag__ValueAssignment_2();

            state._fsp--;


            }

             after(grammarAccess.getTagAccess().getValueAssignment_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Tag__Group__2__Impl"


    // $ANTLR start "rule__NUMERIC__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4280:1: rule__NUMERIC__Group__0 : rule__NUMERIC__Group__0__Impl rule__NUMERIC__Group__1 ;
    public final void rule__NUMERIC__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4284:1: ( rule__NUMERIC__Group__0__Impl rule__NUMERIC__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4285:2: rule__NUMERIC__Group__0__Impl rule__NUMERIC__Group__1
            {
            pushFollow(FOLLOW_rule__NUMERIC__Group__0__Impl_in_rule__NUMERIC__Group__08522);
            rule__NUMERIC__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__NUMERIC__Group__1_in_rule__NUMERIC__Group__08525);
            rule__NUMERIC__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group__0"


    // $ANTLR start "rule__NUMERIC__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4292:1: rule__NUMERIC__Group__0__Impl : ( ( '-' )? ) ;
    public final void rule__NUMERIC__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4296:1: ( ( ( '-' )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4297:1: ( ( '-' )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4297:1: ( ( '-' )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4298:1: ( '-' )?
            {
             before(grammarAccess.getNUMERICAccess().getHyphenMinusKeyword_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4299:1: ( '-' )?
            int alt24=2;
            int LA24_0 = input.LA(1);

            if ( (LA24_0==30) ) {
                alt24=1;
            }
            switch (alt24) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4300:2: '-'
                    {
                    match(input,30,FOLLOW_30_in_rule__NUMERIC__Group__0__Impl8554); 

                    }
                    break;

            }

             after(grammarAccess.getNUMERICAccess().getHyphenMinusKeyword_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group__0__Impl"


    // $ANTLR start "rule__NUMERIC__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4311:1: rule__NUMERIC__Group__1 : rule__NUMERIC__Group__1__Impl rule__NUMERIC__Group__2 ;
    public final void rule__NUMERIC__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4315:1: ( rule__NUMERIC__Group__1__Impl rule__NUMERIC__Group__2 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4316:2: rule__NUMERIC__Group__1__Impl rule__NUMERIC__Group__2
            {
            pushFollow(FOLLOW_rule__NUMERIC__Group__1__Impl_in_rule__NUMERIC__Group__18587);
            rule__NUMERIC__Group__1__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__NUMERIC__Group__2_in_rule__NUMERIC__Group__18590);
            rule__NUMERIC__Group__2();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group__1"


    // $ANTLR start "rule__NUMERIC__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4323:1: rule__NUMERIC__Group__1__Impl : ( RULE_INT ) ;
    public final void rule__NUMERIC__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4327:1: ( ( RULE_INT ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4328:1: ( RULE_INT )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4328:1: ( RULE_INT )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4329:1: RULE_INT
            {
             before(grammarAccess.getNUMERICAccess().getINTTerminalRuleCall_1()); 
            match(input,RULE_INT,FOLLOW_RULE_INT_in_rule__NUMERIC__Group__1__Impl8617); 
             after(grammarAccess.getNUMERICAccess().getINTTerminalRuleCall_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group__1__Impl"


    // $ANTLR start "rule__NUMERIC__Group__2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4340:1: rule__NUMERIC__Group__2 : rule__NUMERIC__Group__2__Impl ;
    public final void rule__NUMERIC__Group__2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4344:1: ( rule__NUMERIC__Group__2__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4345:2: rule__NUMERIC__Group__2__Impl
            {
            pushFollow(FOLLOW_rule__NUMERIC__Group__2__Impl_in_rule__NUMERIC__Group__28646);
            rule__NUMERIC__Group__2__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group__2"


    // $ANTLR start "rule__NUMERIC__Group__2__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4351:1: rule__NUMERIC__Group__2__Impl : ( ( rule__NUMERIC__Group_2__0 )? ) ;
    public final void rule__NUMERIC__Group__2__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4355:1: ( ( ( rule__NUMERIC__Group_2__0 )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4356:1: ( ( rule__NUMERIC__Group_2__0 )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4356:1: ( ( rule__NUMERIC__Group_2__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4357:1: ( rule__NUMERIC__Group_2__0 )?
            {
             before(grammarAccess.getNUMERICAccess().getGroup_2()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4358:1: ( rule__NUMERIC__Group_2__0 )?
            int alt25=2;
            int LA25_0 = input.LA(1);

            if ( (LA25_0==29) ) {
                alt25=1;
            }
            switch (alt25) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4358:2: rule__NUMERIC__Group_2__0
                    {
                    pushFollow(FOLLOW_rule__NUMERIC__Group_2__0_in_rule__NUMERIC__Group__2__Impl8673);
                    rule__NUMERIC__Group_2__0();

                    state._fsp--;


                    }
                    break;

            }

             after(grammarAccess.getNUMERICAccess().getGroup_2()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group__2__Impl"


    // $ANTLR start "rule__NUMERIC__Group_2__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4374:1: rule__NUMERIC__Group_2__0 : rule__NUMERIC__Group_2__0__Impl rule__NUMERIC__Group_2__1 ;
    public final void rule__NUMERIC__Group_2__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4378:1: ( rule__NUMERIC__Group_2__0__Impl rule__NUMERIC__Group_2__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4379:2: rule__NUMERIC__Group_2__0__Impl rule__NUMERIC__Group_2__1
            {
            pushFollow(FOLLOW_rule__NUMERIC__Group_2__0__Impl_in_rule__NUMERIC__Group_2__08710);
            rule__NUMERIC__Group_2__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__NUMERIC__Group_2__1_in_rule__NUMERIC__Group_2__08713);
            rule__NUMERIC__Group_2__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group_2__0"


    // $ANTLR start "rule__NUMERIC__Group_2__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4386:1: rule__NUMERIC__Group_2__0__Impl : ( '.' ) ;
    public final void rule__NUMERIC__Group_2__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4390:1: ( ( '.' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4391:1: ( '.' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4391:1: ( '.' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4392:1: '.'
            {
             before(grammarAccess.getNUMERICAccess().getFullStopKeyword_2_0()); 
            match(input,29,FOLLOW_29_in_rule__NUMERIC__Group_2__0__Impl8741); 
             after(grammarAccess.getNUMERICAccess().getFullStopKeyword_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group_2__0__Impl"


    // $ANTLR start "rule__NUMERIC__Group_2__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4405:1: rule__NUMERIC__Group_2__1 : rule__NUMERIC__Group_2__1__Impl ;
    public final void rule__NUMERIC__Group_2__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4409:1: ( rule__NUMERIC__Group_2__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4410:2: rule__NUMERIC__Group_2__1__Impl
            {
            pushFollow(FOLLOW_rule__NUMERIC__Group_2__1__Impl_in_rule__NUMERIC__Group_2__18772);
            rule__NUMERIC__Group_2__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group_2__1"


    // $ANTLR start "rule__NUMERIC__Group_2__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4416:1: rule__NUMERIC__Group_2__1__Impl : ( RULE_INT ) ;
    public final void rule__NUMERIC__Group_2__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4420:1: ( ( RULE_INT ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4421:1: ( RULE_INT )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4421:1: ( RULE_INT )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4422:1: RULE_INT
            {
             before(grammarAccess.getNUMERICAccess().getINTTerminalRuleCall_2_1()); 
            match(input,RULE_INT,FOLLOW_RULE_INT_in_rule__NUMERIC__Group_2__1__Impl8799); 
             after(grammarAccess.getNUMERICAccess().getINTTerminalRuleCall_2_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NUMERIC__Group_2__1__Impl"


    // $ANTLR start "rule__FQN__Group__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4437:1: rule__FQN__Group__0 : rule__FQN__Group__0__Impl rule__FQN__Group__1 ;
    public final void rule__FQN__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4441:1: ( rule__FQN__Group__0__Impl rule__FQN__Group__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4442:2: rule__FQN__Group__0__Impl rule__FQN__Group__1
            {
            pushFollow(FOLLOW_rule__FQN__Group__0__Impl_in_rule__FQN__Group__08832);
            rule__FQN__Group__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__FQN__Group__1_in_rule__FQN__Group__08835);
            rule__FQN__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__FQN__Group__0"


    // $ANTLR start "rule__FQN__Group__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4449:1: rule__FQN__Group__0__Impl : ( RULE_ID ) ;
    public final void rule__FQN__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4453:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4454:1: ( RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4454:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4455:1: RULE_ID
            {
             before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__FQN__Group__0__Impl8862); 
             after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__FQN__Group__0__Impl"


    // $ANTLR start "rule__FQN__Group__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4466:1: rule__FQN__Group__1 : rule__FQN__Group__1__Impl ;
    public final void rule__FQN__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4470:1: ( rule__FQN__Group__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4471:2: rule__FQN__Group__1__Impl
            {
            pushFollow(FOLLOW_rule__FQN__Group__1__Impl_in_rule__FQN__Group__18891);
            rule__FQN__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__FQN__Group__1"


    // $ANTLR start "rule__FQN__Group__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4477:1: rule__FQN__Group__1__Impl : ( ( rule__FQN__Group_1__0 )* ) ;
    public final void rule__FQN__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4481:1: ( ( ( rule__FQN__Group_1__0 )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4482:1: ( ( rule__FQN__Group_1__0 )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4482:1: ( ( rule__FQN__Group_1__0 )* )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4483:1: ( rule__FQN__Group_1__0 )*
            {
             before(grammarAccess.getFQNAccess().getGroup_1()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4484:1: ( rule__FQN__Group_1__0 )*
            loop26:
            do {
                int alt26=2;
                int LA26_0 = input.LA(1);

                if ( (LA26_0==31) ) {
                    alt26=1;
                }


                switch (alt26) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4484:2: rule__FQN__Group_1__0
            	    {
            	    pushFollow(FOLLOW_rule__FQN__Group_1__0_in_rule__FQN__Group__1__Impl8918);
            	    rule__FQN__Group_1__0();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop26;
                }
            } while (true);

             after(grammarAccess.getFQNAccess().getGroup_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__FQN__Group__1__Impl"


    // $ANTLR start "rule__FQN__Group_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4498:1: rule__FQN__Group_1__0 : rule__FQN__Group_1__0__Impl rule__FQN__Group_1__1 ;
    public final void rule__FQN__Group_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4502:1: ( rule__FQN__Group_1__0__Impl rule__FQN__Group_1__1 )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4503:2: rule__FQN__Group_1__0__Impl rule__FQN__Group_1__1
            {
            pushFollow(FOLLOW_rule__FQN__Group_1__0__Impl_in_rule__FQN__Group_1__08953);
            rule__FQN__Group_1__0__Impl();

            state._fsp--;

            pushFollow(FOLLOW_rule__FQN__Group_1__1_in_rule__FQN__Group_1__08956);
            rule__FQN__Group_1__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__FQN__Group_1__0"


    // $ANTLR start "rule__FQN__Group_1__0__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4510:1: rule__FQN__Group_1__0__Impl : ( '/' ) ;
    public final void rule__FQN__Group_1__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4514:1: ( ( '/' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4515:1: ( '/' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4515:1: ( '/' )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4516:1: '/'
            {
             before(grammarAccess.getFQNAccess().getSolidusKeyword_1_0()); 
            match(input,31,FOLLOW_31_in_rule__FQN__Group_1__0__Impl8984); 
             after(grammarAccess.getFQNAccess().getSolidusKeyword_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__FQN__Group_1__0__Impl"


    // $ANTLR start "rule__FQN__Group_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4529:1: rule__FQN__Group_1__1 : rule__FQN__Group_1__1__Impl ;
    public final void rule__FQN__Group_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4533:1: ( rule__FQN__Group_1__1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4534:2: rule__FQN__Group_1__1__Impl
            {
            pushFollow(FOLLOW_rule__FQN__Group_1__1__Impl_in_rule__FQN__Group_1__19015);
            rule__FQN__Group_1__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__FQN__Group_1__1"


    // $ANTLR start "rule__FQN__Group_1__1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4540:1: rule__FQN__Group_1__1__Impl : ( RULE_ID ) ;
    public final void rule__FQN__Group_1__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4544:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4545:1: ( RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4545:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4546:1: RULE_ID
            {
             before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__FQN__Group_1__1__Impl9042); 
             after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__FQN__Group_1__1__Impl"


    // $ANTLR start "rule__Container__UnorderedGroup_4_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4562:1: rule__Container__UnorderedGroup_4_1 : ( rule__Container__UnorderedGroup_4_1__0 )? ;
    public final void rule__Container__UnorderedGroup_4_1() throws RecognitionException {

            	int stackSize = keepStackSize();
        		getUnorderedGroupHelper().enter(grammarAccess.getContainerAccess().getUnorderedGroup_4_1());
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4567:1: ( ( rule__Container__UnorderedGroup_4_1__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4568:2: ( rule__Container__UnorderedGroup_4_1__0 )?
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4568:2: ( rule__Container__UnorderedGroup_4_1__0 )?
            int alt27=2;
            int LA27_0 = input.LA(1);

            if ( LA27_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0) ) {
                alt27=1;
            }
            else if ( LA27_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1) ) {
                alt27=1;
            }
            switch (alt27) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4568:2: rule__Container__UnorderedGroup_4_1__0
                    {
                    pushFollow(FOLLOW_rule__Container__UnorderedGroup_4_1__0_in_rule__Container__UnorderedGroup_4_19076);
                    rule__Container__UnorderedGroup_4_1__0();

                    state._fsp--;


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	getUnorderedGroupHelper().leave(grammarAccess.getContainerAccess().getUnorderedGroup_4_1());
            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__UnorderedGroup_4_1"


    // $ANTLR start "rule__Container__UnorderedGroup_4_1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4578:1: rule__Container__UnorderedGroup_4_1__Impl : ( ({...}? => ( ( ( rule__Container__Group_4_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Container__Group_4_1_1__0 ) ) ) ) ) ;
    public final void rule__Container__UnorderedGroup_4_1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
        		boolean selected = false;
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4583:1: ( ( ({...}? => ( ( ( rule__Container__Group_4_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Container__Group_4_1_1__0 ) ) ) ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4584:3: ( ({...}? => ( ( ( rule__Container__Group_4_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Container__Group_4_1_1__0 ) ) ) ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4584:3: ( ({...}? => ( ( ( rule__Container__Group_4_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Container__Group_4_1_1__0 ) ) ) ) )
            int alt28=2;
            int LA28_0 = input.LA(1);

            if ( LA28_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0) ) {
                alt28=1;
            }
            else if ( LA28_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1) ) {
                alt28=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 28, 0, input);

                throw nvae;
            }
            switch (alt28) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4586:4: ({...}? => ( ( ( rule__Container__Group_4_1_0__0 ) ) ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4586:4: ({...}? => ( ( ( rule__Container__Group_4_1_0__0 ) ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4587:5: {...}? => ( ( ( rule__Container__Group_4_1_0__0 ) ) )
                    {
                    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0) ) {
                        throw new FailedPredicateException(input, "rule__Container__UnorderedGroup_4_1__Impl", "getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0)");
                    }
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4587:108: ( ( ( rule__Container__Group_4_1_0__0 ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4588:6: ( ( rule__Container__Group_4_1_0__0 ) )
                    {
                     
                    	 				  getUnorderedGroupHelper().select(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0);
                    	 				

                    	 				  selected = true;
                    	 				
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4594:6: ( ( rule__Container__Group_4_1_0__0 ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4596:7: ( rule__Container__Group_4_1_0__0 )
                    {
                     before(grammarAccess.getContainerAccess().getGroup_4_1_0()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4597:7: ( rule__Container__Group_4_1_0__0 )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4597:8: rule__Container__Group_4_1_0__0
                    {
                    pushFollow(FOLLOW_rule__Container__Group_4_1_0__0_in_rule__Container__UnorderedGroup_4_1__Impl9163);
                    rule__Container__Group_4_1_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getContainerAccess().getGroup_4_1_0()); 

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4603:4: ({...}? => ( ( ( rule__Container__Group_4_1_1__0 ) ) ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4603:4: ({...}? => ( ( ( rule__Container__Group_4_1_1__0 ) ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4604:5: {...}? => ( ( ( rule__Container__Group_4_1_1__0 ) ) )
                    {
                    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1) ) {
                        throw new FailedPredicateException(input, "rule__Container__UnorderedGroup_4_1__Impl", "getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1)");
                    }
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4604:108: ( ( ( rule__Container__Group_4_1_1__0 ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4605:6: ( ( rule__Container__Group_4_1_1__0 ) )
                    {
                     
                    	 				  getUnorderedGroupHelper().select(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1);
                    	 				

                    	 				  selected = true;
                    	 				
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4611:6: ( ( rule__Container__Group_4_1_1__0 ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4613:7: ( rule__Container__Group_4_1_1__0 )
                    {
                     before(grammarAccess.getContainerAccess().getGroup_4_1_1()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4614:7: ( rule__Container__Group_4_1_1__0 )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4614:8: rule__Container__Group_4_1_1__0
                    {
                    pushFollow(FOLLOW_rule__Container__Group_4_1_1__0_in_rule__Container__UnorderedGroup_4_1__Impl9254);
                    rule__Container__Group_4_1_1__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getContainerAccess().getGroup_4_1_1()); 

                    }


                    }


                    }


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	if (selected)
            		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getContainerAccess().getUnorderedGroup_4_1());
            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__UnorderedGroup_4_1__Impl"


    // $ANTLR start "rule__Container__UnorderedGroup_4_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4629:1: rule__Container__UnorderedGroup_4_1__0 : rule__Container__UnorderedGroup_4_1__Impl ( rule__Container__UnorderedGroup_4_1__1 )? ;
    public final void rule__Container__UnorderedGroup_4_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4633:1: ( rule__Container__UnorderedGroup_4_1__Impl ( rule__Container__UnorderedGroup_4_1__1 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4634:2: rule__Container__UnorderedGroup_4_1__Impl ( rule__Container__UnorderedGroup_4_1__1 )?
            {
            pushFollow(FOLLOW_rule__Container__UnorderedGroup_4_1__Impl_in_rule__Container__UnorderedGroup_4_1__09313);
            rule__Container__UnorderedGroup_4_1__Impl();

            state._fsp--;

            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4635:2: ( rule__Container__UnorderedGroup_4_1__1 )?
            int alt29=2;
            int LA29_0 = input.LA(1);

            if ( LA29_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0) ) {
                alt29=1;
            }
            else if ( LA29_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1) ) {
                alt29=1;
            }
            switch (alt29) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4635:2: rule__Container__UnorderedGroup_4_1__1
                    {
                    pushFollow(FOLLOW_rule__Container__UnorderedGroup_4_1__1_in_rule__Container__UnorderedGroup_4_1__09316);
                    rule__Container__UnorderedGroup_4_1__1();

                    state._fsp--;


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__UnorderedGroup_4_1__0"


    // $ANTLR start "rule__Container__UnorderedGroup_4_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4642:1: rule__Container__UnorderedGroup_4_1__1 : rule__Container__UnorderedGroup_4_1__Impl ;
    public final void rule__Container__UnorderedGroup_4_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4646:1: ( rule__Container__UnorderedGroup_4_1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4647:2: rule__Container__UnorderedGroup_4_1__Impl
            {
            pushFollow(FOLLOW_rule__Container__UnorderedGroup_4_1__Impl_in_rule__Container__UnorderedGroup_4_1__19341);
            rule__Container__UnorderedGroup_4_1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__UnorderedGroup_4_1__1"


    // $ANTLR start "rule__Parameter__UnorderedGroup_5_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4658:1: rule__Parameter__UnorderedGroup_5_1 : ( rule__Parameter__UnorderedGroup_5_1__0 )? ;
    public final void rule__Parameter__UnorderedGroup_5_1() throws RecognitionException {

            	int stackSize = keepStackSize();
        		getUnorderedGroupHelper().enter(grammarAccess.getParameterAccess().getUnorderedGroup_5_1());
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4663:1: ( ( rule__Parameter__UnorderedGroup_5_1__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4664:2: ( rule__Parameter__UnorderedGroup_5_1__0 )?
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4664:2: ( rule__Parameter__UnorderedGroup_5_1__0 )?
            int alt30=2;
            int LA30_0 = input.LA(1);

            if ( LA30_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0) ) {
                alt30=1;
            }
            else if ( LA30_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1) ) {
                alt30=1;
            }
            switch (alt30) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4664:2: rule__Parameter__UnorderedGroup_5_1__0
                    {
                    pushFollow(FOLLOW_rule__Parameter__UnorderedGroup_5_1__0_in_rule__Parameter__UnorderedGroup_5_19369);
                    rule__Parameter__UnorderedGroup_5_1__0();

                    state._fsp--;


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	getUnorderedGroupHelper().leave(grammarAccess.getParameterAccess().getUnorderedGroup_5_1());
            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__UnorderedGroup_5_1"


    // $ANTLR start "rule__Parameter__UnorderedGroup_5_1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4674:1: rule__Parameter__UnorderedGroup_5_1__Impl : ( ({...}? => ( ( ( rule__Parameter__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Parameter__Group_5_1_1__0 ) ) ) ) ) ;
    public final void rule__Parameter__UnorderedGroup_5_1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
        		boolean selected = false;
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4679:1: ( ( ({...}? => ( ( ( rule__Parameter__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Parameter__Group_5_1_1__0 ) ) ) ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4680:3: ( ({...}? => ( ( ( rule__Parameter__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Parameter__Group_5_1_1__0 ) ) ) ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4680:3: ( ({...}? => ( ( ( rule__Parameter__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Parameter__Group_5_1_1__0 ) ) ) ) )
            int alt31=2;
            int LA31_0 = input.LA(1);

            if ( LA31_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0) ) {
                alt31=1;
            }
            else if ( LA31_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1) ) {
                alt31=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 31, 0, input);

                throw nvae;
            }
            switch (alt31) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4682:4: ({...}? => ( ( ( rule__Parameter__Group_5_1_0__0 ) ) ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4682:4: ({...}? => ( ( ( rule__Parameter__Group_5_1_0__0 ) ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4683:5: {...}? => ( ( ( rule__Parameter__Group_5_1_0__0 ) ) )
                    {
                    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0) ) {
                        throw new FailedPredicateException(input, "rule__Parameter__UnorderedGroup_5_1__Impl", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0)");
                    }
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4683:108: ( ( ( rule__Parameter__Group_5_1_0__0 ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4684:6: ( ( rule__Parameter__Group_5_1_0__0 ) )
                    {
                     
                    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0);
                    	 				

                    	 				  selected = true;
                    	 				
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4690:6: ( ( rule__Parameter__Group_5_1_0__0 ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4692:7: ( rule__Parameter__Group_5_1_0__0 )
                    {
                     before(grammarAccess.getParameterAccess().getGroup_5_1_0()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4693:7: ( rule__Parameter__Group_5_1_0__0 )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4693:8: rule__Parameter__Group_5_1_0__0
                    {
                    pushFollow(FOLLOW_rule__Parameter__Group_5_1_0__0_in_rule__Parameter__UnorderedGroup_5_1__Impl9456);
                    rule__Parameter__Group_5_1_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getParameterAccess().getGroup_5_1_0()); 

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4699:4: ({...}? => ( ( ( rule__Parameter__Group_5_1_1__0 ) ) ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4699:4: ({...}? => ( ( ( rule__Parameter__Group_5_1_1__0 ) ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4700:5: {...}? => ( ( ( rule__Parameter__Group_5_1_1__0 ) ) )
                    {
                    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1) ) {
                        throw new FailedPredicateException(input, "rule__Parameter__UnorderedGroup_5_1__Impl", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1)");
                    }
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4700:108: ( ( ( rule__Parameter__Group_5_1_1__0 ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4701:6: ( ( rule__Parameter__Group_5_1_1__0 ) )
                    {
                     
                    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1);
                    	 				

                    	 				  selected = true;
                    	 				
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4707:6: ( ( rule__Parameter__Group_5_1_1__0 ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4709:7: ( rule__Parameter__Group_5_1_1__0 )
                    {
                     before(grammarAccess.getParameterAccess().getGroup_5_1_1()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4710:7: ( rule__Parameter__Group_5_1_1__0 )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4710:8: rule__Parameter__Group_5_1_1__0
                    {
                    pushFollow(FOLLOW_rule__Parameter__Group_5_1_1__0_in_rule__Parameter__UnorderedGroup_5_1__Impl9547);
                    rule__Parameter__Group_5_1_1__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getParameterAccess().getGroup_5_1_1()); 

                    }


                    }


                    }


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	if (selected)
            		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterAccess().getUnorderedGroup_5_1());
            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__UnorderedGroup_5_1__Impl"


    // $ANTLR start "rule__Parameter__UnorderedGroup_5_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4725:1: rule__Parameter__UnorderedGroup_5_1__0 : rule__Parameter__UnorderedGroup_5_1__Impl ( rule__Parameter__UnorderedGroup_5_1__1 )? ;
    public final void rule__Parameter__UnorderedGroup_5_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4729:1: ( rule__Parameter__UnorderedGroup_5_1__Impl ( rule__Parameter__UnorderedGroup_5_1__1 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4730:2: rule__Parameter__UnorderedGroup_5_1__Impl ( rule__Parameter__UnorderedGroup_5_1__1 )?
            {
            pushFollow(FOLLOW_rule__Parameter__UnorderedGroup_5_1__Impl_in_rule__Parameter__UnorderedGroup_5_1__09606);
            rule__Parameter__UnorderedGroup_5_1__Impl();

            state._fsp--;

            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4731:2: ( rule__Parameter__UnorderedGroup_5_1__1 )?
            int alt32=2;
            int LA32_0 = input.LA(1);

            if ( LA32_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0) ) {
                alt32=1;
            }
            else if ( LA32_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1) ) {
                alt32=1;
            }
            switch (alt32) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4731:2: rule__Parameter__UnorderedGroup_5_1__1
                    {
                    pushFollow(FOLLOW_rule__Parameter__UnorderedGroup_5_1__1_in_rule__Parameter__UnorderedGroup_5_1__09609);
                    rule__Parameter__UnorderedGroup_5_1__1();

                    state._fsp--;


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__UnorderedGroup_5_1__0"


    // $ANTLR start "rule__Parameter__UnorderedGroup_5_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4738:1: rule__Parameter__UnorderedGroup_5_1__1 : rule__Parameter__UnorderedGroup_5_1__Impl ;
    public final void rule__Parameter__UnorderedGroup_5_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4742:1: ( rule__Parameter__UnorderedGroup_5_1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4743:2: rule__Parameter__UnorderedGroup_5_1__Impl
            {
            pushFollow(FOLLOW_rule__Parameter__UnorderedGroup_5_1__Impl_in_rule__Parameter__UnorderedGroup_5_1__19634);
            rule__Parameter__UnorderedGroup_5_1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__UnorderedGroup_5_1__1"


    // $ANTLR start "rule__Reference__UnorderedGroup_5_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4754:1: rule__Reference__UnorderedGroup_5_1 : ( rule__Reference__UnorderedGroup_5_1__0 )? ;
    public final void rule__Reference__UnorderedGroup_5_1() throws RecognitionException {

            	int stackSize = keepStackSize();
        		getUnorderedGroupHelper().enter(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1());
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4759:1: ( ( rule__Reference__UnorderedGroup_5_1__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4760:2: ( rule__Reference__UnorderedGroup_5_1__0 )?
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4760:2: ( rule__Reference__UnorderedGroup_5_1__0 )?
            int alt33=2;
            int LA33_0 = input.LA(1);

            if ( LA33_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                alt33=1;
            }
            else if ( LA33_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                alt33=1;
            }
            switch (alt33) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4760:2: rule__Reference__UnorderedGroup_5_1__0
                    {
                    pushFollow(FOLLOW_rule__Reference__UnorderedGroup_5_1__0_in_rule__Reference__UnorderedGroup_5_19662);
                    rule__Reference__UnorderedGroup_5_1__0();

                    state._fsp--;


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	getUnorderedGroupHelper().leave(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1());
            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__UnorderedGroup_5_1"


    // $ANTLR start "rule__Reference__UnorderedGroup_5_1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4770:1: rule__Reference__UnorderedGroup_5_1__Impl : ( ({...}? => ( ( ( rule__Reference__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Reference__Group_5_1_1__0 ) ) ) ) ) ;
    public final void rule__Reference__UnorderedGroup_5_1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
        		boolean selected = false;
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4775:1: ( ( ({...}? => ( ( ( rule__Reference__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Reference__Group_5_1_1__0 ) ) ) ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4776:3: ( ({...}? => ( ( ( rule__Reference__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Reference__Group_5_1_1__0 ) ) ) ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4776:3: ( ({...}? => ( ( ( rule__Reference__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__Reference__Group_5_1_1__0 ) ) ) ) )
            int alt34=2;
            int LA34_0 = input.LA(1);

            if ( LA34_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                alt34=1;
            }
            else if ( LA34_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                alt34=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 34, 0, input);

                throw nvae;
            }
            switch (alt34) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4778:4: ({...}? => ( ( ( rule__Reference__Group_5_1_0__0 ) ) ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4778:4: ({...}? => ( ( ( rule__Reference__Group_5_1_0__0 ) ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4779:5: {...}? => ( ( ( rule__Reference__Group_5_1_0__0 ) ) )
                    {
                    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                        throw new FailedPredicateException(input, "rule__Reference__UnorderedGroup_5_1__Impl", "getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0)");
                    }
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4779:108: ( ( ( rule__Reference__Group_5_1_0__0 ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4780:6: ( ( rule__Reference__Group_5_1_0__0 ) )
                    {
                     
                    	 				  getUnorderedGroupHelper().select(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0);
                    	 				

                    	 				  selected = true;
                    	 				
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4786:6: ( ( rule__Reference__Group_5_1_0__0 ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4788:7: ( rule__Reference__Group_5_1_0__0 )
                    {
                     before(grammarAccess.getReferenceAccess().getGroup_5_1_0()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4789:7: ( rule__Reference__Group_5_1_0__0 )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4789:8: rule__Reference__Group_5_1_0__0
                    {
                    pushFollow(FOLLOW_rule__Reference__Group_5_1_0__0_in_rule__Reference__UnorderedGroup_5_1__Impl9749);
                    rule__Reference__Group_5_1_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getReferenceAccess().getGroup_5_1_0()); 

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4795:4: ({...}? => ( ( ( rule__Reference__Group_5_1_1__0 ) ) ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4795:4: ({...}? => ( ( ( rule__Reference__Group_5_1_1__0 ) ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4796:5: {...}? => ( ( ( rule__Reference__Group_5_1_1__0 ) ) )
                    {
                    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                        throw new FailedPredicateException(input, "rule__Reference__UnorderedGroup_5_1__Impl", "getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1)");
                    }
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4796:108: ( ( ( rule__Reference__Group_5_1_1__0 ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4797:6: ( ( rule__Reference__Group_5_1_1__0 ) )
                    {
                     
                    	 				  getUnorderedGroupHelper().select(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1);
                    	 				

                    	 				  selected = true;
                    	 				
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4803:6: ( ( rule__Reference__Group_5_1_1__0 ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4805:7: ( rule__Reference__Group_5_1_1__0 )
                    {
                     before(grammarAccess.getReferenceAccess().getGroup_5_1_1()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4806:7: ( rule__Reference__Group_5_1_1__0 )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4806:8: rule__Reference__Group_5_1_1__0
                    {
                    pushFollow(FOLLOW_rule__Reference__Group_5_1_1__0_in_rule__Reference__UnorderedGroup_5_1__Impl9840);
                    rule__Reference__Group_5_1_1__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getReferenceAccess().getGroup_5_1_1()); 

                    }


                    }


                    }


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	if (selected)
            		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1());
            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__UnorderedGroup_5_1__Impl"


    // $ANTLR start "rule__Reference__UnorderedGroup_5_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4821:1: rule__Reference__UnorderedGroup_5_1__0 : rule__Reference__UnorderedGroup_5_1__Impl ( rule__Reference__UnorderedGroup_5_1__1 )? ;
    public final void rule__Reference__UnorderedGroup_5_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4825:1: ( rule__Reference__UnorderedGroup_5_1__Impl ( rule__Reference__UnorderedGroup_5_1__1 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4826:2: rule__Reference__UnorderedGroup_5_1__Impl ( rule__Reference__UnorderedGroup_5_1__1 )?
            {
            pushFollow(FOLLOW_rule__Reference__UnorderedGroup_5_1__Impl_in_rule__Reference__UnorderedGroup_5_1__09899);
            rule__Reference__UnorderedGroup_5_1__Impl();

            state._fsp--;

            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4827:2: ( rule__Reference__UnorderedGroup_5_1__1 )?
            int alt35=2;
            int LA35_0 = input.LA(1);

            if ( LA35_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                alt35=1;
            }
            else if ( LA35_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                alt35=1;
            }
            switch (alt35) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4827:2: rule__Reference__UnorderedGroup_5_1__1
                    {
                    pushFollow(FOLLOW_rule__Reference__UnorderedGroup_5_1__1_in_rule__Reference__UnorderedGroup_5_1__09902);
                    rule__Reference__UnorderedGroup_5_1__1();

                    state._fsp--;


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__UnorderedGroup_5_1__0"


    // $ANTLR start "rule__Reference__UnorderedGroup_5_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4834:1: rule__Reference__UnorderedGroup_5_1__1 : rule__Reference__UnorderedGroup_5_1__Impl ;
    public final void rule__Reference__UnorderedGroup_5_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4838:1: ( rule__Reference__UnorderedGroup_5_1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4839:2: rule__Reference__UnorderedGroup_5_1__Impl
            {
            pushFollow(FOLLOW_rule__Reference__UnorderedGroup_5_1__Impl_in_rule__Reference__UnorderedGroup_5_1__19927);
            rule__Reference__UnorderedGroup_5_1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__UnorderedGroup_5_1__1"


    // $ANTLR start "rule__InstanceReference__UnorderedGroup_5_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4850:1: rule__InstanceReference__UnorderedGroup_5_1 : ( rule__InstanceReference__UnorderedGroup_5_1__0 )? ;
    public final void rule__InstanceReference__UnorderedGroup_5_1() throws RecognitionException {

            	int stackSize = keepStackSize();
        		getUnorderedGroupHelper().enter(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1());
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4855:1: ( ( rule__InstanceReference__UnorderedGroup_5_1__0 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4856:2: ( rule__InstanceReference__UnorderedGroup_5_1__0 )?
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4856:2: ( rule__InstanceReference__UnorderedGroup_5_1__0 )?
            int alt36=2;
            int LA36_0 = input.LA(1);

            if ( LA36_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                alt36=1;
            }
            else if ( LA36_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                alt36=1;
            }
            switch (alt36) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4856:2: rule__InstanceReference__UnorderedGroup_5_1__0
                    {
                    pushFollow(FOLLOW_rule__InstanceReference__UnorderedGroup_5_1__0_in_rule__InstanceReference__UnorderedGroup_5_19955);
                    rule__InstanceReference__UnorderedGroup_5_1__0();

                    state._fsp--;


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	getUnorderedGroupHelper().leave(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1());
            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__UnorderedGroup_5_1"


    // $ANTLR start "rule__InstanceReference__UnorderedGroup_5_1__Impl"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4866:1: rule__InstanceReference__UnorderedGroup_5_1__Impl : ( ({...}? => ( ( ( rule__InstanceReference__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__InstanceReference__Group_5_1_1__0 ) ) ) ) ) ;
    public final void rule__InstanceReference__UnorderedGroup_5_1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
        		boolean selected = false;
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4871:1: ( ( ({...}? => ( ( ( rule__InstanceReference__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__InstanceReference__Group_5_1_1__0 ) ) ) ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4872:3: ( ({...}? => ( ( ( rule__InstanceReference__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__InstanceReference__Group_5_1_1__0 ) ) ) ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4872:3: ( ({...}? => ( ( ( rule__InstanceReference__Group_5_1_0__0 ) ) ) ) | ({...}? => ( ( ( rule__InstanceReference__Group_5_1_1__0 ) ) ) ) )
            int alt37=2;
            int LA37_0 = input.LA(1);

            if ( LA37_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                alt37=1;
            }
            else if ( LA37_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                alt37=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 37, 0, input);

                throw nvae;
            }
            switch (alt37) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4874:4: ({...}? => ( ( ( rule__InstanceReference__Group_5_1_0__0 ) ) ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4874:4: ({...}? => ( ( ( rule__InstanceReference__Group_5_1_0__0 ) ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4875:5: {...}? => ( ( ( rule__InstanceReference__Group_5_1_0__0 ) ) )
                    {
                    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                        throw new FailedPredicateException(input, "rule__InstanceReference__UnorderedGroup_5_1__Impl", "getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0)");
                    }
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4875:116: ( ( ( rule__InstanceReference__Group_5_1_0__0 ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4876:6: ( ( rule__InstanceReference__Group_5_1_0__0 ) )
                    {
                     
                    	 				  getUnorderedGroupHelper().select(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0);
                    	 				

                    	 				  selected = true;
                    	 				
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4882:6: ( ( rule__InstanceReference__Group_5_1_0__0 ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4884:7: ( rule__InstanceReference__Group_5_1_0__0 )
                    {
                     before(grammarAccess.getInstanceReferenceAccess().getGroup_5_1_0()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4885:7: ( rule__InstanceReference__Group_5_1_0__0 )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4885:8: rule__InstanceReference__Group_5_1_0__0
                    {
                    pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_0__0_in_rule__InstanceReference__UnorderedGroup_5_1__Impl10042);
                    rule__InstanceReference__Group_5_1_0__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getInstanceReferenceAccess().getGroup_5_1_0()); 

                    }


                    }


                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4891:4: ({...}? => ( ( ( rule__InstanceReference__Group_5_1_1__0 ) ) ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4891:4: ({...}? => ( ( ( rule__InstanceReference__Group_5_1_1__0 ) ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4892:5: {...}? => ( ( ( rule__InstanceReference__Group_5_1_1__0 ) ) )
                    {
                    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                        throw new FailedPredicateException(input, "rule__InstanceReference__UnorderedGroup_5_1__Impl", "getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1)");
                    }
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4892:116: ( ( ( rule__InstanceReference__Group_5_1_1__0 ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4893:6: ( ( rule__InstanceReference__Group_5_1_1__0 ) )
                    {
                     
                    	 				  getUnorderedGroupHelper().select(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1);
                    	 				

                    	 				  selected = true;
                    	 				
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4899:6: ( ( rule__InstanceReference__Group_5_1_1__0 ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4901:7: ( rule__InstanceReference__Group_5_1_1__0 )
                    {
                     before(grammarAccess.getInstanceReferenceAccess().getGroup_5_1_1()); 
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4902:7: ( rule__InstanceReference__Group_5_1_1__0 )
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4902:8: rule__InstanceReference__Group_5_1_1__0
                    {
                    pushFollow(FOLLOW_rule__InstanceReference__Group_5_1_1__0_in_rule__InstanceReference__UnorderedGroup_5_1__Impl10133);
                    rule__InstanceReference__Group_5_1_1__0();

                    state._fsp--;


                    }

                     after(grammarAccess.getInstanceReferenceAccess().getGroup_5_1_1()); 

                    }


                    }


                    }


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	if (selected)
            		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1());
            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__UnorderedGroup_5_1__Impl"


    // $ANTLR start "rule__InstanceReference__UnorderedGroup_5_1__0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4917:1: rule__InstanceReference__UnorderedGroup_5_1__0 : rule__InstanceReference__UnorderedGroup_5_1__Impl ( rule__InstanceReference__UnorderedGroup_5_1__1 )? ;
    public final void rule__InstanceReference__UnorderedGroup_5_1__0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4921:1: ( rule__InstanceReference__UnorderedGroup_5_1__Impl ( rule__InstanceReference__UnorderedGroup_5_1__1 )? )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4922:2: rule__InstanceReference__UnorderedGroup_5_1__Impl ( rule__InstanceReference__UnorderedGroup_5_1__1 )?
            {
            pushFollow(FOLLOW_rule__InstanceReference__UnorderedGroup_5_1__Impl_in_rule__InstanceReference__UnorderedGroup_5_1__010192);
            rule__InstanceReference__UnorderedGroup_5_1__Impl();

            state._fsp--;

            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4923:2: ( rule__InstanceReference__UnorderedGroup_5_1__1 )?
            int alt38=2;
            int LA38_0 = input.LA(1);

            if ( LA38_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                alt38=1;
            }
            else if ( LA38_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                alt38=1;
            }
            switch (alt38) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4923:2: rule__InstanceReference__UnorderedGroup_5_1__1
                    {
                    pushFollow(FOLLOW_rule__InstanceReference__UnorderedGroup_5_1__1_in_rule__InstanceReference__UnorderedGroup_5_1__010195);
                    rule__InstanceReference__UnorderedGroup_5_1__1();

                    state._fsp--;


                    }
                    break;

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__UnorderedGroup_5_1__0"


    // $ANTLR start "rule__InstanceReference__UnorderedGroup_5_1__1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4930:1: rule__InstanceReference__UnorderedGroup_5_1__1 : rule__InstanceReference__UnorderedGroup_5_1__Impl ;
    public final void rule__InstanceReference__UnorderedGroup_5_1__1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4934:1: ( rule__InstanceReference__UnorderedGroup_5_1__Impl )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4935:2: rule__InstanceReference__UnorderedGroup_5_1__Impl
            {
            pushFollow(FOLLOW_rule__InstanceReference__UnorderedGroup_5_1__Impl_in_rule__InstanceReference__UnorderedGroup_5_1__110220);
            rule__InstanceReference__UnorderedGroup_5_1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__UnorderedGroup_5_1__1"


    // $ANTLR start "rule__Model__PackageNameAssignment_0_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4946:1: rule__Model__PackageNameAssignment_0_1 : ( RULE_ID ) ;
    public final void rule__Model__PackageNameAssignment_0_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4950:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4951:1: ( RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4951:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4952:1: RULE_ID
            {
             before(grammarAccess.getModelAccess().getPackageNameIDTerminalRuleCall_0_1_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__Model__PackageNameAssignment_0_110252); 
             after(grammarAccess.getModelAccess().getPackageNameIDTerminalRuleCall_0_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__PackageNameAssignment_0_1"


    // $ANTLR start "rule__Model__ModulesAssignment_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4961:1: rule__Model__ModulesAssignment_1 : ( ruleModule ) ;
    public final void rule__Model__ModulesAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4965:1: ( ( ruleModule ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4966:1: ( ruleModule )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4966:1: ( ruleModule )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4967:1: ruleModule
            {
             before(grammarAccess.getModelAccess().getModulesModuleParserRuleCall_1_0()); 
            pushFollow(FOLLOW_ruleModule_in_rule__Model__ModulesAssignment_110283);
            ruleModule();

            state._fsp--;

             after(grammarAccess.getModelAccess().getModulesModuleParserRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Model__ModulesAssignment_1"


    // $ANTLR start "rule__Module__DefinitionAssignment_2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4976:1: rule__Module__DefinitionAssignment_2 : ( ( RULE_ID ) ) ;
    public final void rule__Module__DefinitionAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4980:1: ( ( ( RULE_ID ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4981:1: ( ( RULE_ID ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4981:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4982:1: ( RULE_ID )
            {
             before(grammarAccess.getModuleAccess().getDefinitionEcucModuleDefCrossReference_2_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4983:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4984:1: RULE_ID
            {
             before(grammarAccess.getModuleAccess().getDefinitionEcucModuleDefIDTerminalRuleCall_2_0_1()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__Module__DefinitionAssignment_210318); 
             after(grammarAccess.getModuleAccess().getDefinitionEcucModuleDefIDTerminalRuleCall_2_0_1()); 

            }

             after(grammarAccess.getModuleAccess().getDefinitionEcucModuleDefCrossReference_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__DefinitionAssignment_2"


    // $ANTLR start "rule__Module__ShortNameAssignment_3_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4995:1: rule__Module__ShortNameAssignment_3_1 : ( RULE_ID ) ;
    public final void rule__Module__ShortNameAssignment_3_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:4999:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5000:1: ( RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5000:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5001:1: RULE_ID
            {
             before(grammarAccess.getModuleAccess().getShortNameIDTerminalRuleCall_3_1_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__Module__ShortNameAssignment_3_110353); 
             after(grammarAccess.getModuleAccess().getShortNameIDTerminalRuleCall_3_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__ShortNameAssignment_3_1"


    // $ANTLR start "rule__Module__TagsAssignment_4_1_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5010:1: rule__Module__TagsAssignment_4_1_1 : ( ruleTag ) ;
    public final void rule__Module__TagsAssignment_4_1_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5014:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5015:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5015:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5016:1: ruleTag
            {
             before(grammarAccess.getModuleAccess().getTagsTagParserRuleCall_4_1_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__Module__TagsAssignment_4_1_110384);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getModuleAccess().getTagsTagParserRuleCall_4_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__TagsAssignment_4_1_1"


    // $ANTLR start "rule__Module__TagsAssignment_4_1_2_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5025:1: rule__Module__TagsAssignment_4_1_2_1 : ( ruleTag ) ;
    public final void rule__Module__TagsAssignment_4_1_2_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5029:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5030:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5030:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5031:1: ruleTag
            {
             before(grammarAccess.getModuleAccess().getTagsTagParserRuleCall_4_1_2_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__Module__TagsAssignment_4_1_2_110415);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getModuleAccess().getTagsTagParserRuleCall_4_1_2_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__TagsAssignment_4_1_2_1"


    // $ANTLR start "rule__Module__ContainerAssignment_7"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5040:1: rule__Module__ContainerAssignment_7 : ( ruleContainer ) ;
    public final void rule__Module__ContainerAssignment_7() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5044:1: ( ( ruleContainer ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5045:1: ( ruleContainer )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5045:1: ( ruleContainer )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5046:1: ruleContainer
            {
             before(grammarAccess.getModuleAccess().getContainerContainerParserRuleCall_7_0()); 
            pushFollow(FOLLOW_ruleContainer_in_rule__Module__ContainerAssignment_710446);
            ruleContainer();

            state._fsp--;

             after(grammarAccess.getModuleAccess().getContainerContainerParserRuleCall_7_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Module__ContainerAssignment_7"


    // $ANTLR start "rule__Container__DefinitionAssignment_2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5055:1: rule__Container__DefinitionAssignment_2 : ( ( RULE_ID ) ) ;
    public final void rule__Container__DefinitionAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5059:1: ( ( ( RULE_ID ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5060:1: ( ( RULE_ID ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5060:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5061:1: ( RULE_ID )
            {
             before(grammarAccess.getContainerAccess().getDefinitionEcucContainerDefCrossReference_2_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5062:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5063:1: RULE_ID
            {
             before(grammarAccess.getContainerAccess().getDefinitionEcucContainerDefIDTerminalRuleCall_2_0_1()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__Container__DefinitionAssignment_210481); 
             after(grammarAccess.getContainerAccess().getDefinitionEcucContainerDefIDTerminalRuleCall_2_0_1()); 

            }

             after(grammarAccess.getContainerAccess().getDefinitionEcucContainerDefCrossReference_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__DefinitionAssignment_2"


    // $ANTLR start "rule__Container__ShortNameAssignment_3_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5074:1: rule__Container__ShortNameAssignment_3_1 : ( RULE_ID ) ;
    public final void rule__Container__ShortNameAssignment_3_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5078:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5079:1: ( RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5079:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5080:1: RULE_ID
            {
             before(grammarAccess.getContainerAccess().getShortNameIDTerminalRuleCall_3_1_0()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__Container__ShortNameAssignment_3_110516); 
             after(grammarAccess.getContainerAccess().getShortNameIDTerminalRuleCall_3_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__ShortNameAssignment_3_1"


    // $ANTLR start "rule__Container__IndexAssignment_4_1_0_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5089:1: rule__Container__IndexAssignment_4_1_0_1 : ( RULE_INT ) ;
    public final void rule__Container__IndexAssignment_4_1_0_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5093:1: ( ( RULE_INT ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5094:1: ( RULE_INT )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5094:1: ( RULE_INT )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5095:1: RULE_INT
            {
             before(grammarAccess.getContainerAccess().getIndexINTTerminalRuleCall_4_1_0_1_0()); 
            match(input,RULE_INT,FOLLOW_RULE_INT_in_rule__Container__IndexAssignment_4_1_0_110547); 
             after(grammarAccess.getContainerAccess().getIndexINTTerminalRuleCall_4_1_0_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__IndexAssignment_4_1_0_1"


    // $ANTLR start "rule__Container__TagsAssignment_4_1_1_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5104:1: rule__Container__TagsAssignment_4_1_1_1 : ( ruleTag ) ;
    public final void rule__Container__TagsAssignment_4_1_1_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5108:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5109:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5109:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5110:1: ruleTag
            {
             before(grammarAccess.getContainerAccess().getTagsTagParserRuleCall_4_1_1_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__Container__TagsAssignment_4_1_1_110578);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getContainerAccess().getTagsTagParserRuleCall_4_1_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__TagsAssignment_4_1_1_1"


    // $ANTLR start "rule__Container__TagsAssignment_4_1_1_2_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5119:1: rule__Container__TagsAssignment_4_1_1_2_1 : ( ruleTag ) ;
    public final void rule__Container__TagsAssignment_4_1_1_2_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5123:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5124:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5124:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5125:1: ruleTag
            {
             before(grammarAccess.getContainerAccess().getTagsTagParserRuleCall_4_1_1_2_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__Container__TagsAssignment_4_1_1_2_110609);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getContainerAccess().getTagsTagParserRuleCall_4_1_1_2_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__TagsAssignment_4_1_1_2_1"


    // $ANTLR start "rule__Container__ElementsAssignment_7"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5134:1: rule__Container__ElementsAssignment_7 : ( ruleContainedElement ) ;
    public final void rule__Container__ElementsAssignment_7() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5138:1: ( ( ruleContainedElement ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5139:1: ( ruleContainedElement )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5139:1: ( ruleContainedElement )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5140:1: ruleContainedElement
            {
             before(grammarAccess.getContainerAccess().getElementsContainedElementParserRuleCall_7_0()); 
            pushFollow(FOLLOW_ruleContainedElement_in_rule__Container__ElementsAssignment_710640);
            ruleContainedElement();

            state._fsp--;

             after(grammarAccess.getContainerAccess().getElementsContainedElementParserRuleCall_7_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Container__ElementsAssignment_7"


    // $ANTLR start "rule__Parameter__DefinitionAssignment_2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5149:1: rule__Parameter__DefinitionAssignment_2 : ( ( RULE_ID ) ) ;
    public final void rule__Parameter__DefinitionAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5153:1: ( ( ( RULE_ID ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5154:1: ( ( RULE_ID ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5154:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5155:1: ( RULE_ID )
            {
             before(grammarAccess.getParameterAccess().getDefinitionEcucParameterDefCrossReference_2_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5156:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5157:1: RULE_ID
            {
             before(grammarAccess.getParameterAccess().getDefinitionEcucParameterDefIDTerminalRuleCall_2_0_1()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__Parameter__DefinitionAssignment_210675); 
             after(grammarAccess.getParameterAccess().getDefinitionEcucParameterDefIDTerminalRuleCall_2_0_1()); 

            }

             after(grammarAccess.getParameterAccess().getDefinitionEcucParameterDefCrossReference_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__DefinitionAssignment_2"


    // $ANTLR start "rule__Parameter__ValueAssignment_4"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5168:1: rule__Parameter__ValueAssignment_4 : ( ruleSimpleValue ) ;
    public final void rule__Parameter__ValueAssignment_4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5172:1: ( ( ruleSimpleValue ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5173:1: ( ruleSimpleValue )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5173:1: ( ruleSimpleValue )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5174:1: ruleSimpleValue
            {
             before(grammarAccess.getParameterAccess().getValueSimpleValueParserRuleCall_4_0()); 
            pushFollow(FOLLOW_ruleSimpleValue_in_rule__Parameter__ValueAssignment_410710);
            ruleSimpleValue();

            state._fsp--;

             after(grammarAccess.getParameterAccess().getValueSimpleValueParserRuleCall_4_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__ValueAssignment_4"


    // $ANTLR start "rule__Parameter__IndexAssignment_5_1_0_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5183:1: rule__Parameter__IndexAssignment_5_1_0_1 : ( RULE_INT ) ;
    public final void rule__Parameter__IndexAssignment_5_1_0_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5187:1: ( ( RULE_INT ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5188:1: ( RULE_INT )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5188:1: ( RULE_INT )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5189:1: RULE_INT
            {
             before(grammarAccess.getParameterAccess().getIndexINTTerminalRuleCall_5_1_0_1_0()); 
            match(input,RULE_INT,FOLLOW_RULE_INT_in_rule__Parameter__IndexAssignment_5_1_0_110741); 
             after(grammarAccess.getParameterAccess().getIndexINTTerminalRuleCall_5_1_0_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__IndexAssignment_5_1_0_1"


    // $ANTLR start "rule__Parameter__TagsAssignment_5_1_1_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5198:1: rule__Parameter__TagsAssignment_5_1_1_1 : ( ruleTag ) ;
    public final void rule__Parameter__TagsAssignment_5_1_1_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5202:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5203:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5203:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5204:1: ruleTag
            {
             before(grammarAccess.getParameterAccess().getTagsTagParserRuleCall_5_1_1_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__Parameter__TagsAssignment_5_1_1_110772);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getParameterAccess().getTagsTagParserRuleCall_5_1_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__TagsAssignment_5_1_1_1"


    // $ANTLR start "rule__Parameter__TagsAssignment_5_1_1_2_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5213:1: rule__Parameter__TagsAssignment_5_1_1_2_1 : ( ruleTag ) ;
    public final void rule__Parameter__TagsAssignment_5_1_1_2_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5217:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5218:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5218:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5219:1: ruleTag
            {
             before(grammarAccess.getParameterAccess().getTagsTagParserRuleCall_5_1_1_2_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__Parameter__TagsAssignment_5_1_1_2_110803);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getParameterAccess().getTagsTagParserRuleCall_5_1_1_2_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Parameter__TagsAssignment_5_1_1_2_1"


    // $ANTLR start "rule__Reference__DefinitionAssignment_2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5228:1: rule__Reference__DefinitionAssignment_2 : ( ( RULE_ID ) ) ;
    public final void rule__Reference__DefinitionAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5232:1: ( ( ( RULE_ID ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5233:1: ( ( RULE_ID ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5233:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5234:1: ( RULE_ID )
            {
             before(grammarAccess.getReferenceAccess().getDefinitionEcucAbstractReferenceDefCrossReference_2_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5235:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5236:1: RULE_ID
            {
             before(grammarAccess.getReferenceAccess().getDefinitionEcucAbstractReferenceDefIDTerminalRuleCall_2_0_1()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__Reference__DefinitionAssignment_210838); 
             after(grammarAccess.getReferenceAccess().getDefinitionEcucAbstractReferenceDefIDTerminalRuleCall_2_0_1()); 

            }

             after(grammarAccess.getReferenceAccess().getDefinitionEcucAbstractReferenceDefCrossReference_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__DefinitionAssignment_2"


    // $ANTLR start "rule__Reference__ValueAssignment_4"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5247:1: rule__Reference__ValueAssignment_4 : ( ruleReferenceValue ) ;
    public final void rule__Reference__ValueAssignment_4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5251:1: ( ( ruleReferenceValue ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5252:1: ( ruleReferenceValue )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5252:1: ( ruleReferenceValue )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5253:1: ruleReferenceValue
            {
             before(grammarAccess.getReferenceAccess().getValueReferenceValueParserRuleCall_4_0()); 
            pushFollow(FOLLOW_ruleReferenceValue_in_rule__Reference__ValueAssignment_410873);
            ruleReferenceValue();

            state._fsp--;

             after(grammarAccess.getReferenceAccess().getValueReferenceValueParserRuleCall_4_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__ValueAssignment_4"


    // $ANTLR start "rule__Reference__IndexAssignment_5_1_0_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5262:1: rule__Reference__IndexAssignment_5_1_0_1 : ( RULE_INT ) ;
    public final void rule__Reference__IndexAssignment_5_1_0_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5266:1: ( ( RULE_INT ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5267:1: ( RULE_INT )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5267:1: ( RULE_INT )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5268:1: RULE_INT
            {
             before(grammarAccess.getReferenceAccess().getIndexINTTerminalRuleCall_5_1_0_1_0()); 
            match(input,RULE_INT,FOLLOW_RULE_INT_in_rule__Reference__IndexAssignment_5_1_0_110904); 
             after(grammarAccess.getReferenceAccess().getIndexINTTerminalRuleCall_5_1_0_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__IndexAssignment_5_1_0_1"


    // $ANTLR start "rule__Reference__TagsAssignment_5_1_1_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5277:1: rule__Reference__TagsAssignment_5_1_1_1 : ( ruleTag ) ;
    public final void rule__Reference__TagsAssignment_5_1_1_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5281:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5282:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5282:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5283:1: ruleTag
            {
             before(grammarAccess.getReferenceAccess().getTagsTagParserRuleCall_5_1_1_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__Reference__TagsAssignment_5_1_1_110935);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getReferenceAccess().getTagsTagParserRuleCall_5_1_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__TagsAssignment_5_1_1_1"


    // $ANTLR start "rule__Reference__TagsAssignment_5_1_1_2_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5292:1: rule__Reference__TagsAssignment_5_1_1_2_1 : ( ruleTag ) ;
    public final void rule__Reference__TagsAssignment_5_1_1_2_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5296:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5297:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5297:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5298:1: ruleTag
            {
             before(grammarAccess.getReferenceAccess().getTagsTagParserRuleCall_5_1_1_2_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__Reference__TagsAssignment_5_1_1_2_110966);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getReferenceAccess().getTagsTagParserRuleCall_5_1_1_2_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Reference__TagsAssignment_5_1_1_2_1"


    // $ANTLR start "rule__InstanceReference__DefinitionAssignment_2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5307:1: rule__InstanceReference__DefinitionAssignment_2 : ( ( RULE_ID ) ) ;
    public final void rule__InstanceReference__DefinitionAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5311:1: ( ( ( RULE_ID ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5312:1: ( ( RULE_ID ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5312:1: ( ( RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5313:1: ( RULE_ID )
            {
             before(grammarAccess.getInstanceReferenceAccess().getDefinitionEcucAbstractReferenceDefCrossReference_2_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5314:1: ( RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5315:1: RULE_ID
            {
             before(grammarAccess.getInstanceReferenceAccess().getDefinitionEcucAbstractReferenceDefIDTerminalRuleCall_2_0_1()); 
            match(input,RULE_ID,FOLLOW_RULE_ID_in_rule__InstanceReference__DefinitionAssignment_211001); 
             after(grammarAccess.getInstanceReferenceAccess().getDefinitionEcucAbstractReferenceDefIDTerminalRuleCall_2_0_1()); 

            }

             after(grammarAccess.getInstanceReferenceAccess().getDefinitionEcucAbstractReferenceDefCrossReference_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__DefinitionAssignment_2"


    // $ANTLR start "rule__InstanceReference__ValueAssignment_4"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5326:1: rule__InstanceReference__ValueAssignment_4 : ( ruleInstanceReferenceValue ) ;
    public final void rule__InstanceReference__ValueAssignment_4() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5330:1: ( ( ruleInstanceReferenceValue ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5331:1: ( ruleInstanceReferenceValue )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5331:1: ( ruleInstanceReferenceValue )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5332:1: ruleInstanceReferenceValue
            {
             before(grammarAccess.getInstanceReferenceAccess().getValueInstanceReferenceValueParserRuleCall_4_0()); 
            pushFollow(FOLLOW_ruleInstanceReferenceValue_in_rule__InstanceReference__ValueAssignment_411036);
            ruleInstanceReferenceValue();

            state._fsp--;

             after(grammarAccess.getInstanceReferenceAccess().getValueInstanceReferenceValueParserRuleCall_4_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__ValueAssignment_4"


    // $ANTLR start "rule__InstanceReference__IndexAssignment_5_1_0_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5341:1: rule__InstanceReference__IndexAssignment_5_1_0_1 : ( RULE_INT ) ;
    public final void rule__InstanceReference__IndexAssignment_5_1_0_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5345:1: ( ( RULE_INT ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5346:1: ( RULE_INT )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5346:1: ( RULE_INT )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5347:1: RULE_INT
            {
             before(grammarAccess.getInstanceReferenceAccess().getIndexINTTerminalRuleCall_5_1_0_1_0()); 
            match(input,RULE_INT,FOLLOW_RULE_INT_in_rule__InstanceReference__IndexAssignment_5_1_0_111067); 
             after(grammarAccess.getInstanceReferenceAccess().getIndexINTTerminalRuleCall_5_1_0_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__IndexAssignment_5_1_0_1"


    // $ANTLR start "rule__InstanceReference__TagsAssignment_5_1_1_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5356:1: rule__InstanceReference__TagsAssignment_5_1_1_1 : ( ruleTag ) ;
    public final void rule__InstanceReference__TagsAssignment_5_1_1_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5360:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5361:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5361:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5362:1: ruleTag
            {
             before(grammarAccess.getInstanceReferenceAccess().getTagsTagParserRuleCall_5_1_1_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__InstanceReference__TagsAssignment_5_1_1_111098);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getInstanceReferenceAccess().getTagsTagParserRuleCall_5_1_1_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__TagsAssignment_5_1_1_1"


    // $ANTLR start "rule__InstanceReference__TagsAssignment_5_1_1_2_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5371:1: rule__InstanceReference__TagsAssignment_5_1_1_2_1 : ( ruleTag ) ;
    public final void rule__InstanceReference__TagsAssignment_5_1_1_2_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5375:1: ( ( ruleTag ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5376:1: ( ruleTag )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5376:1: ( ruleTag )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5377:1: ruleTag
            {
             before(grammarAccess.getInstanceReferenceAccess().getTagsTagParserRuleCall_5_1_1_2_1_0()); 
            pushFollow(FOLLOW_ruleTag_in_rule__InstanceReference__TagsAssignment_5_1_1_2_111129);
            ruleTag();

            state._fsp--;

             after(grammarAccess.getInstanceReferenceAccess().getTagsTagParserRuleCall_5_1_1_2_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReference__TagsAssignment_5_1_1_2_1"


    // $ANTLR start "rule__ReferenceValue__ContainerAssignment"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5386:1: rule__ReferenceValue__ContainerAssignment : ( ( ruleFQN ) ) ;
    public final void rule__ReferenceValue__ContainerAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5390:1: ( ( ( ruleFQN ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5391:1: ( ( ruleFQN ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5391:1: ( ( ruleFQN ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5392:1: ( ruleFQN )
            {
             before(grammarAccess.getReferenceValueAccess().getContainerEObjectCrossReference_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5393:1: ( ruleFQN )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5394:1: ruleFQN
            {
             before(grammarAccess.getReferenceValueAccess().getContainerEObjectFQNParserRuleCall_0_1()); 
            pushFollow(FOLLOW_ruleFQN_in_rule__ReferenceValue__ContainerAssignment11164);
            ruleFQN();

            state._fsp--;

             after(grammarAccess.getReferenceValueAccess().getContainerEObjectFQNParserRuleCall_0_1()); 

            }

             after(grammarAccess.getReferenceValueAccess().getContainerEObjectCrossReference_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ReferenceValue__ContainerAssignment"


    // $ANTLR start "rule__InstanceReferenceValue__ContextsAssignment_0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5405:1: rule__InstanceReferenceValue__ContextsAssignment_0 : ( ruleContextChain ) ;
    public final void rule__InstanceReferenceValue__ContextsAssignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5409:1: ( ( ruleContextChain ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5410:1: ( ruleContextChain )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5410:1: ( ruleContextChain )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5411:1: ruleContextChain
            {
             before(grammarAccess.getInstanceReferenceValueAccess().getContextsContextChainParserRuleCall_0_0()); 
            pushFollow(FOLLOW_ruleContextChain_in_rule__InstanceReferenceValue__ContextsAssignment_011199);
            ruleContextChain();

            state._fsp--;

             after(grammarAccess.getInstanceReferenceValueAccess().getContextsContextChainParserRuleCall_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReferenceValue__ContextsAssignment_0"


    // $ANTLR start "rule__InstanceReferenceValue__TargetAssignment_2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5420:1: rule__InstanceReferenceValue__TargetAssignment_2 : ( ( ruleFQN ) ) ;
    public final void rule__InstanceReferenceValue__TargetAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5424:1: ( ( ( ruleFQN ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5425:1: ( ( ruleFQN ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5425:1: ( ( ruleFQN ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5426:1: ( ruleFQN )
            {
             before(grammarAccess.getInstanceReferenceValueAccess().getTargetEObjectCrossReference_2_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5427:1: ( ruleFQN )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5428:1: ruleFQN
            {
             before(grammarAccess.getInstanceReferenceValueAccess().getTargetEObjectFQNParserRuleCall_2_0_1()); 
            pushFollow(FOLLOW_ruleFQN_in_rule__InstanceReferenceValue__TargetAssignment_211234);
            ruleFQN();

            state._fsp--;

             after(grammarAccess.getInstanceReferenceValueAccess().getTargetEObjectFQNParserRuleCall_2_0_1()); 

            }

             after(grammarAccess.getInstanceReferenceValueAccess().getTargetEObjectCrossReference_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__InstanceReferenceValue__TargetAssignment_2"


    // $ANTLR start "rule__ContextChain__ObjectAssignment_1_2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5439:1: rule__ContextChain__ObjectAssignment_1_2 : ( ( ruleFQN ) ) ;
    public final void rule__ContextChain__ObjectAssignment_1_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5443:1: ( ( ( ruleFQN ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5444:1: ( ( ruleFQN ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5444:1: ( ( ruleFQN ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5445:1: ( ruleFQN )
            {
             before(grammarAccess.getContextChainAccess().getObjectEObjectCrossReference_1_2_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5446:1: ( ruleFQN )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5447:1: ruleFQN
            {
             before(grammarAccess.getContextChainAccess().getObjectEObjectFQNParserRuleCall_1_2_0_1()); 
            pushFollow(FOLLOW_ruleFQN_in_rule__ContextChain__ObjectAssignment_1_211273);
            ruleFQN();

            state._fsp--;

             after(grammarAccess.getContextChainAccess().getObjectEObjectFQNParserRuleCall_1_2_0_1()); 

            }

             after(grammarAccess.getContextChainAccess().getObjectEObjectCrossReference_1_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__ContextChain__ObjectAssignment_1_2"


    // $ANTLR start "rule__Context__StartAssignment_1"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5458:1: rule__Context__StartAssignment_1 : ( ( ruleFQN ) ) ;
    public final void rule__Context__StartAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5462:1: ( ( ( ruleFQN ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5463:1: ( ( ruleFQN ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5463:1: ( ( ruleFQN ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5464:1: ( ruleFQN )
            {
             before(grammarAccess.getContextAccess().getStartEObjectCrossReference_1_0()); 
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5465:1: ( ruleFQN )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5466:1: ruleFQN
            {
             before(grammarAccess.getContextAccess().getStartEObjectFQNParserRuleCall_1_0_1()); 
            pushFollow(FOLLOW_ruleFQN_in_rule__Context__StartAssignment_111312);
            ruleFQN();

            state._fsp--;

             after(grammarAccess.getContextAccess().getStartEObjectFQNParserRuleCall_1_0_1()); 

            }

             after(grammarAccess.getContextAccess().getStartEObjectCrossReference_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Context__StartAssignment_1"


    // $ANTLR start "rule__StringValue__ValueAssignment"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5477:1: rule__StringValue__ValueAssignment : ( RULE_STRING ) ;
    public final void rule__StringValue__ValueAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5481:1: ( ( RULE_STRING ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5482:1: ( RULE_STRING )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5482:1: ( RULE_STRING )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5483:1: RULE_STRING
            {
             before(grammarAccess.getStringValueAccess().getValueSTRINGTerminalRuleCall_0()); 
            match(input,RULE_STRING,FOLLOW_RULE_STRING_in_rule__StringValue__ValueAssignment11347); 
             after(grammarAccess.getStringValueAccess().getValueSTRINGTerminalRuleCall_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__StringValue__ValueAssignment"


    // $ANTLR start "rule__EnumValue__LiteralAssignment"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5492:1: rule__EnumValue__LiteralAssignment : ( ruleEID ) ;
    public final void rule__EnumValue__LiteralAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5496:1: ( ( ruleEID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5497:1: ( ruleEID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5497:1: ( ruleEID )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5498:1: ruleEID
            {
             before(grammarAccess.getEnumValueAccess().getLiteralEIDParserRuleCall_0()); 
            pushFollow(FOLLOW_ruleEID_in_rule__EnumValue__LiteralAssignment11378);
            ruleEID();

            state._fsp--;

             after(grammarAccess.getEnumValueAccess().getLiteralEIDParserRuleCall_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__EnumValue__LiteralAssignment"


    // $ANTLR start "rule__BooleanValue__ValueAssignment"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5507:1: rule__BooleanValue__ValueAssignment : ( ruleBooleanLiteral ) ;
    public final void rule__BooleanValue__ValueAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5511:1: ( ( ruleBooleanLiteral ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5512:1: ( ruleBooleanLiteral )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5512:1: ( ruleBooleanLiteral )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5513:1: ruleBooleanLiteral
            {
             before(grammarAccess.getBooleanValueAccess().getValueBooleanLiteralEnumRuleCall_0()); 
            pushFollow(FOLLOW_ruleBooleanLiteral_in_rule__BooleanValue__ValueAssignment11409);
            ruleBooleanLiteral();

            state._fsp--;

             after(grammarAccess.getBooleanValueAccess().getValueBooleanLiteralEnumRuleCall_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__BooleanValue__ValueAssignment"


    // $ANTLR start "rule__NumericValue__ValueAssignment"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5522:1: rule__NumericValue__ValueAssignment : ( ruleNUMERIC ) ;
    public final void rule__NumericValue__ValueAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5526:1: ( ( ruleNUMERIC ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5527:1: ( ruleNUMERIC )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5527:1: ( ruleNUMERIC )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5528:1: ruleNUMERIC
            {
             before(grammarAccess.getNumericValueAccess().getValueNUMERICParserRuleCall_0()); 
            pushFollow(FOLLOW_ruleNUMERIC_in_rule__NumericValue__ValueAssignment11440);
            ruleNUMERIC();

            state._fsp--;

             after(grammarAccess.getNumericValueAccess().getValueNUMERICParserRuleCall_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__NumericValue__ValueAssignment"


    // $ANTLR start "rule__Tag__KeyAssignment_0"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5537:1: rule__Tag__KeyAssignment_0 : ( ruleKEY ) ;
    public final void rule__Tag__KeyAssignment_0() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5541:1: ( ( ruleKEY ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5542:1: ( ruleKEY )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5542:1: ( ruleKEY )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5543:1: ruleKEY
            {
             before(grammarAccess.getTagAccess().getKeyKEYParserRuleCall_0_0()); 
            pushFollow(FOLLOW_ruleKEY_in_rule__Tag__KeyAssignment_011471);
            ruleKEY();

            state._fsp--;

             after(grammarAccess.getTagAccess().getKeyKEYParserRuleCall_0_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Tag__KeyAssignment_0"


    // $ANTLR start "rule__Tag__ValueAssignment_2"
    // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5552:1: rule__Tag__ValueAssignment_2 : ( ruleVALUE ) ;
    public final void rule__Tag__ValueAssignment_2() throws RecognitionException {

        		int stackSize = keepStackSize();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5556:1: ( ( ruleVALUE ) )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5557:1: ( ruleVALUE )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5557:1: ( ruleVALUE )
            // ../org.artop.ecuc.autosar4x.dsl.values.ui/src-gen/org/artop/ecuc/autosar4x/dsl/values/ui/contentassist/antlr/internal/InternalEcucValuesDsl.g:5558:1: ruleVALUE
            {
             before(grammarAccess.getTagAccess().getValueVALUEParserRuleCall_2_0()); 
            pushFollow(FOLLOW_ruleVALUE_in_rule__Tag__ValueAssignment_211502);
            ruleVALUE();

            state._fsp--;

             after(grammarAccess.getTagAccess().getValueVALUEParserRuleCall_2_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Tag__ValueAssignment_2"

    // Delegated rules


 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel61 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel68 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__Group__0_in_ruleModel94 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleModule_in_entryRuleModule121 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModule128 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group__0_in_ruleModule154 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainedElement_in_entryRuleContainedElement181 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleContainedElement188 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ContainedElement__Alternatives_in_ruleContainedElement214 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainer_in_entryRuleContainer241 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleContainer248 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group__0_in_ruleContainer274 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleParameter_in_entryRuleParameter301 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleParameter308 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group__0_in_ruleParameter334 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleReference_in_entryRuleReference361 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleReference368 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group__0_in_ruleReference394 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleInstanceReference_in_entryRuleInstanceReference421 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleInstanceReference428 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__0_in_ruleInstanceReference454 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleReferenceValue_in_entryRuleReferenceValue481 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleReferenceValue488 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ReferenceValue__ContainerAssignment_in_ruleReferenceValue514 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleInstanceReferenceValue_in_entryRuleInstanceReferenceValue541 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleInstanceReferenceValue548 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReferenceValue__Group__0_in_ruleInstanceReferenceValue574 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContextChain_in_entryRuleContextChain601 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleContextChain608 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ContextChain__Group__0_in_ruleContextChain634 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContext_in_entryRuleContext661 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleContext668 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Context__Group__0_in_ruleContext694 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleSimpleValue_in_entryRuleSimpleValue721 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleSimpleValue728 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__SimpleValue__Alternatives_in_ruleSimpleValue754 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleStringValue_in_entryRuleStringValue781 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleStringValue788 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__StringValue__ValueAssignment_in_ruleStringValue814 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEnumValue_in_entryRuleEnumValue841 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEnumValue848 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EnumValue__LiteralAssignment_in_ruleEnumValue874 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEID_in_entryRuleEID906 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEID913 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EID__Group__0_in_ruleEID943 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanValue_in_entryRuleBooleanValue970 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleBooleanValue977 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanValue__ValueAssignment_in_ruleBooleanValue1003 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNumericValue_in_entryRuleNumericValue1030 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleNumericValue1037 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__NumericValue__ValueAssignment_in_ruleNumericValue1063 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_entryRuleTag1090 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleTag1097 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Tag__Group__0_in_ruleTag1123 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleVALUE_in_entryRuleVALUE1150 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleVALUE1157 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__VALUE__Alternatives_in_ruleVALUE1183 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleKEY_in_entryRuleKEY1210 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleKEY1217 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__KEY__Alternatives_in_ruleKEY1243 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMERIC_in_entryRuleNUMERIC1270 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleNUMERIC1277 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group__0_in_ruleNUMERIC1303 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleFQN_in_entryRuleFQN1335 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleFQN1342 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__FQN__Group__0_in_ruleFQN1372 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__BooleanLiteral__Alternatives_in_ruleBooleanLiteral1409 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainer_in_rule__ContainedElement__Alternatives1444 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleParameter_in_rule__ContainedElement__Alternatives1461 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleReference_in_rule__ContainedElement__Alternatives1478 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleInstanceReference_in_rule__ContainedElement__Alternatives1495 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleStringValue_in_rule__SimpleValue__Alternatives1527 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNumericValue_in_rule__SimpleValue__Alternatives1544 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanValue_in_rule__SimpleValue__Alternatives1561 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEnumValue_in_rule__SimpleValue__Alternatives1578 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_STRING_in_rule__VALUE__Alternatives1610 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__VALUE__Alternatives1627 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMERIC_in_rule__VALUE__Alternatives1644 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_11_in_rule__VALUE__Alternatives1662 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_12_in_rule__VALUE__Alternatives1682 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_STRING_in_rule__KEY__Alternatives1716 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__KEY__Alternatives1733 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMERIC_in_rule__KEY__Alternatives1750 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_11_in_rule__KEY__Alternatives1768 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_12_in_rule__KEY__Alternatives1788 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_11_in_rule__BooleanLiteral__Alternatives1823 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_12_in_rule__BooleanLiteral__Alternatives1844 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__Group__0__Impl_in_rule__Model__Group__01877 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_rule__Model__Group__1_in_rule__Model__Group__01880 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__Group_0__0_in_rule__Model__Group__0__Impl1907 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__Group__1__Impl_in_rule__Model__Group__11938 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__ModulesAssignment_1_in_rule__Model__Group__1__Impl1965 = new BitSet(new long[]{0x0000000000004002L});
    public static final BitSet FOLLOW_rule__Model__Group_0__0__Impl_in_rule__Model__Group_0__02000 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__Model__Group_0__1_in_rule__Model__Group_0__02003 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_13_in_rule__Model__Group_0__0__Impl2031 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__Group_0__1__Impl_in_rule__Model__Group_0__12062 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Model__PackageNameAssignment_0_1_in_rule__Model__Group_0__1__Impl2089 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group__0__Impl_in_rule__Module__Group__02123 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_rule__Module__Group__1_in_rule__Module__Group__02126 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group__1__Impl_in_rule__Module__Group__12184 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__Module__Group__2_in_rule__Module__Group__12187 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_14_in_rule__Module__Group__1__Impl2215 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group__2__Impl_in_rule__Module__Group__22246 = new BitSet(new long[]{0x00000000000C8000L});
    public static final BitSet FOLLOW_rule__Module__Group__3_in_rule__Module__Group__22249 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__DefinitionAssignment_2_in_rule__Module__Group__2__Impl2276 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group__3__Impl_in_rule__Module__Group__32306 = new BitSet(new long[]{0x00000000000C8000L});
    public static final BitSet FOLLOW_rule__Module__Group__4_in_rule__Module__Group__32309 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_3__0_in_rule__Module__Group__3__Impl2336 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group__4__Impl_in_rule__Module__Group__42367 = new BitSet(new long[]{0x00000000000C8000L});
    public static final BitSet FOLLOW_rule__Module__Group__5_in_rule__Module__Group__42370 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4__0_in_rule__Module__Group__4__Impl2397 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group__5__Impl_in_rule__Module__Group__52428 = new BitSet(new long[]{0x0000000000010000L});
    public static final BitSet FOLLOW_rule__Module__Group__6_in_rule__Module__Group__52431 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_15_in_rule__Module__Group__5__Impl2459 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group__6__Impl_in_rule__Module__Group__62490 = new BitSet(new long[]{0x0000000000820000L});
    public static final BitSet FOLLOW_rule__Module__Group__7_in_rule__Module__Group__62493 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_16_in_rule__Module__Group__6__Impl2521 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group__7__Impl_in_rule__Module__Group__72552 = new BitSet(new long[]{0x0000000000820000L});
    public static final BitSet FOLLOW_rule__Module__Group__8_in_rule__Module__Group__72555 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__ContainerAssignment_7_in_rule__Module__Group__7__Impl2582 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_rule__Module__Group__8__Impl_in_rule__Module__Group__82613 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_17_in_rule__Module__Group__8__Impl2641 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_3__0__Impl_in_rule__Module__Group_3__02690 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__Module__Group_3__1_in_rule__Module__Group_3__02693 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_18_in_rule__Module__Group_3__0__Impl2721 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_3__1__Impl_in_rule__Module__Group_3__12752 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__ShortNameAssignment_3_1_in_rule__Module__Group_3__1__Impl2779 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4__0__Impl_in_rule__Module__Group_4__02813 = new BitSet(new long[]{0x0000000000300000L});
    public static final BitSet FOLLOW_rule__Module__Group_4__1_in_rule__Module__Group_4__02816 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_19_in_rule__Module__Group_4__0__Impl2844 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4__1__Impl_in_rule__Module__Group_4__12875 = new BitSet(new long[]{0x0000000000300000L});
    public static final BitSet FOLLOW_rule__Module__Group_4__2_in_rule__Module__Group_4__12878 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1__0_in_rule__Module__Group_4__1__Impl2905 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4__2__Impl_in_rule__Module__Group_4__22936 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_rule__Module__Group_4__2__Impl2964 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1__0__Impl_in_rule__Module__Group_4_1__03001 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1__1_in_rule__Module__Group_4_1__03004 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_rule__Module__Group_4_1__0__Impl3032 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1__1__Impl_in_rule__Module__Group_4_1__13063 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1__2_in_rule__Module__Group_4_1__13066 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__TagsAssignment_4_1_1_in_rule__Module__Group_4_1__1__Impl3093 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1__2__Impl_in_rule__Module__Group_4_1__23123 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1_2__0_in_rule__Module__Group_4_1__2__Impl3150 = new BitSet(new long[]{0x0000000000400002L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1_2__0__Impl_in_rule__Module__Group_4_1_2__03187 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1_2__1_in_rule__Module__Group_4_1_2__03190 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_rule__Module__Group_4_1_2__0__Impl3218 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__Group_4_1_2__1__Impl_in_rule__Module__Group_4_1_2__13249 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Module__TagsAssignment_4_1_2_1_in_rule__Module__Group_4_1_2__1__Impl3276 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group__0__Impl_in_rule__Container__Group__03310 = new BitSet(new long[]{0x0000000000800000L});
    public static final BitSet FOLLOW_rule__Container__Group__1_in_rule__Container__Group__03313 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group__1__Impl_in_rule__Container__Group__13371 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__Container__Group__2_in_rule__Container__Group__13374 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_23_in_rule__Container__Group__1__Impl3402 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group__2__Impl_in_rule__Container__Group__23433 = new BitSet(new long[]{0x00000000000C8000L});
    public static final BitSet FOLLOW_rule__Container__Group__3_in_rule__Container__Group__23436 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__DefinitionAssignment_2_in_rule__Container__Group__2__Impl3463 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group__3__Impl_in_rule__Container__Group__33493 = new BitSet(new long[]{0x00000000000C8000L});
    public static final BitSet FOLLOW_rule__Container__Group__4_in_rule__Container__Group__33496 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_3__0_in_rule__Container__Group__3__Impl3523 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group__4__Impl_in_rule__Container__Group__43554 = new BitSet(new long[]{0x00000000000C8000L});
    public static final BitSet FOLLOW_rule__Container__Group__5_in_rule__Container__Group__43557 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4__0_in_rule__Container__Group__4__Impl3584 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group__5__Impl_in_rule__Container__Group__53615 = new BitSet(new long[]{0x0000000000010000L});
    public static final BitSet FOLLOW_rule__Container__Group__6_in_rule__Container__Group__53618 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_15_in_rule__Container__Group__5__Impl3646 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group__6__Impl_in_rule__Container__Group__63677 = new BitSet(new long[]{0x000000000E820000L});
    public static final BitSet FOLLOW_rule__Container__Group__7_in_rule__Container__Group__63680 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_16_in_rule__Container__Group__6__Impl3708 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group__7__Impl_in_rule__Container__Group__73739 = new BitSet(new long[]{0x000000000E820000L});
    public static final BitSet FOLLOW_rule__Container__Group__8_in_rule__Container__Group__73742 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__ElementsAssignment_7_in_rule__Container__Group__7__Impl3769 = new BitSet(new long[]{0x000000000E800002L});
    public static final BitSet FOLLOW_rule__Container__Group__8__Impl_in_rule__Container__Group__83800 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_17_in_rule__Container__Group__8__Impl3828 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_3__0__Impl_in_rule__Container__Group_3__03877 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__Container__Group_3__1_in_rule__Container__Group_3__03880 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_18_in_rule__Container__Group_3__0__Impl3908 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_3__1__Impl_in_rule__Container__Group_3__13939 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__ShortNameAssignment_3_1_in_rule__Container__Group_3__1__Impl3966 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4__0__Impl_in_rule__Container__Group_4__04000 = new BitSet(new long[]{0x0000000001200000L});
    public static final BitSet FOLLOW_rule__Container__Group_4__1_in_rule__Container__Group_4__04003 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_19_in_rule__Container__Group_4__0__Impl4031 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4__1__Impl_in_rule__Container__Group_4__14062 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_rule__Container__Group_4__2_in_rule__Container__Group_4__14065 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__UnorderedGroup_4_1_in_rule__Container__Group_4__1__Impl4092 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4__2__Impl_in_rule__Container__Group_4__24122 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_rule__Container__Group_4__2__Impl4150 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_0__0__Impl_in_rule__Container__Group_4_1_0__04187 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_0__1_in_rule__Container__Group_4_1_0__04190 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_rule__Container__Group_4_1_0__0__Impl4218 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_0__1__Impl_in_rule__Container__Group_4_1_0__14249 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__IndexAssignment_4_1_0_1_in_rule__Container__Group_4_1_0__1__Impl4276 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1__0__Impl_in_rule__Container__Group_4_1_1__04310 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1__1_in_rule__Container__Group_4_1_1__04313 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_rule__Container__Group_4_1_1__0__Impl4341 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1__1__Impl_in_rule__Container__Group_4_1_1__14372 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1__2_in_rule__Container__Group_4_1_1__14375 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__TagsAssignment_4_1_1_1_in_rule__Container__Group_4_1_1__1__Impl4402 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1__2__Impl_in_rule__Container__Group_4_1_1__24432 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1_2__0_in_rule__Container__Group_4_1_1__2__Impl4459 = new BitSet(new long[]{0x0000000000400002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1_2__0__Impl_in_rule__Container__Group_4_1_1_2__04496 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1_2__1_in_rule__Container__Group_4_1_1_2__04499 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_rule__Container__Group_4_1_1_2__0__Impl4527 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1_2__1__Impl_in_rule__Container__Group_4_1_1_2__14558 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__TagsAssignment_4_1_1_2_1_in_rule__Container__Group_4_1_1_2__1__Impl4585 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group__0__Impl_in_rule__Parameter__Group__04619 = new BitSet(new long[]{0x0000000002000000L});
    public static final BitSet FOLLOW_rule__Parameter__Group__1_in_rule__Parameter__Group__04622 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group__1__Impl_in_rule__Parameter__Group__14680 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__Parameter__Group__2_in_rule__Parameter__Group__14683 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_25_in_rule__Parameter__Group__1__Impl4711 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group__2__Impl_in_rule__Parameter__Group__24742 = new BitSet(new long[]{0x0000000000008000L});
    public static final BitSet FOLLOW_rule__Parameter__Group__3_in_rule__Parameter__Group__24745 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__DefinitionAssignment_2_in_rule__Parameter__Group__2__Impl4772 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group__3__Impl_in_rule__Parameter__Group__34802 = new BitSet(new long[]{0x0000000060001850L});
    public static final BitSet FOLLOW_rule__Parameter__Group__4_in_rule__Parameter__Group__34805 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_15_in_rule__Parameter__Group__3__Impl4833 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group__4__Impl_in_rule__Parameter__Group__44864 = new BitSet(new long[]{0x0000000000080000L});
    public static final BitSet FOLLOW_rule__Parameter__Group__5_in_rule__Parameter__Group__44867 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__ValueAssignment_4_in_rule__Parameter__Group__4__Impl4894 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group__5__Impl_in_rule__Parameter__Group__54924 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5__0_in_rule__Parameter__Group__5__Impl4951 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5__0__Impl_in_rule__Parameter__Group_5__04994 = new BitSet(new long[]{0x0000000001200000L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5__1_in_rule__Parameter__Group_5__04997 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_19_in_rule__Parameter__Group_5__0__Impl5025 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5__1__Impl_in_rule__Parameter__Group_5__15056 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5__2_in_rule__Parameter__Group_5__15059 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__UnorderedGroup_5_1_in_rule__Parameter__Group_5__1__Impl5086 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5__2__Impl_in_rule__Parameter__Group_5__25116 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_rule__Parameter__Group_5__2__Impl5144 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_0__0__Impl_in_rule__Parameter__Group_5_1_0__05181 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_0__1_in_rule__Parameter__Group_5_1_0__05184 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_rule__Parameter__Group_5_1_0__0__Impl5212 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_0__1__Impl_in_rule__Parameter__Group_5_1_0__15243 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__IndexAssignment_5_1_0_1_in_rule__Parameter__Group_5_1_0__1__Impl5270 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1__0__Impl_in_rule__Parameter__Group_5_1_1__05304 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1__1_in_rule__Parameter__Group_5_1_1__05307 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_rule__Parameter__Group_5_1_1__0__Impl5335 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1__1__Impl_in_rule__Parameter__Group_5_1_1__15366 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1__2_in_rule__Parameter__Group_5_1_1__15369 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__TagsAssignment_5_1_1_1_in_rule__Parameter__Group_5_1_1__1__Impl5396 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1__2__Impl_in_rule__Parameter__Group_5_1_1__25426 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1_2__0_in_rule__Parameter__Group_5_1_1__2__Impl5453 = new BitSet(new long[]{0x0000000000400002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1_2__0__Impl_in_rule__Parameter__Group_5_1_1_2__05490 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1_2__1_in_rule__Parameter__Group_5_1_1_2__05493 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_rule__Parameter__Group_5_1_1_2__0__Impl5521 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1_2__1__Impl_in_rule__Parameter__Group_5_1_1_2__15552 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__TagsAssignment_5_1_1_2_1_in_rule__Parameter__Group_5_1_1_2__1__Impl5579 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group__0__Impl_in_rule__Reference__Group__05613 = new BitSet(new long[]{0x0000000004000000L});
    public static final BitSet FOLLOW_rule__Reference__Group__1_in_rule__Reference__Group__05616 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group__1__Impl_in_rule__Reference__Group__15674 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__Reference__Group__2_in_rule__Reference__Group__15677 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_26_in_rule__Reference__Group__1__Impl5705 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group__2__Impl_in_rule__Reference__Group__25736 = new BitSet(new long[]{0x0000000000008000L});
    public static final BitSet FOLLOW_rule__Reference__Group__3_in_rule__Reference__Group__25739 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__DefinitionAssignment_2_in_rule__Reference__Group__2__Impl5766 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group__3__Impl_in_rule__Reference__Group__35796 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__Reference__Group__4_in_rule__Reference__Group__35799 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_15_in_rule__Reference__Group__3__Impl5827 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group__4__Impl_in_rule__Reference__Group__45858 = new BitSet(new long[]{0x0000000000080000L});
    public static final BitSet FOLLOW_rule__Reference__Group__5_in_rule__Reference__Group__45861 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__ValueAssignment_4_in_rule__Reference__Group__4__Impl5888 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group__5__Impl_in_rule__Reference__Group__55918 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5__0_in_rule__Reference__Group__5__Impl5945 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5__0__Impl_in_rule__Reference__Group_5__05988 = new BitSet(new long[]{0x0000000001200000L});
    public static final BitSet FOLLOW_rule__Reference__Group_5__1_in_rule__Reference__Group_5__05991 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_19_in_rule__Reference__Group_5__0__Impl6019 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5__1__Impl_in_rule__Reference__Group_5__16050 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_rule__Reference__Group_5__2_in_rule__Reference__Group_5__16053 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__UnorderedGroup_5_1_in_rule__Reference__Group_5__1__Impl6080 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5__2__Impl_in_rule__Reference__Group_5__26110 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_rule__Reference__Group_5__2__Impl6138 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_0__0__Impl_in_rule__Reference__Group_5_1_0__06175 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_0__1_in_rule__Reference__Group_5_1_0__06178 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_rule__Reference__Group_5_1_0__0__Impl6206 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_0__1__Impl_in_rule__Reference__Group_5_1_0__16237 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__IndexAssignment_5_1_0_1_in_rule__Reference__Group_5_1_0__1__Impl6264 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1__0__Impl_in_rule__Reference__Group_5_1_1__06298 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1__1_in_rule__Reference__Group_5_1_1__06301 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_rule__Reference__Group_5_1_1__0__Impl6329 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1__1__Impl_in_rule__Reference__Group_5_1_1__16360 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1__2_in_rule__Reference__Group_5_1_1__16363 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__TagsAssignment_5_1_1_1_in_rule__Reference__Group_5_1_1__1__Impl6390 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1__2__Impl_in_rule__Reference__Group_5_1_1__26420 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1_2__0_in_rule__Reference__Group_5_1_1__2__Impl6447 = new BitSet(new long[]{0x0000000000400002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1_2__0__Impl_in_rule__Reference__Group_5_1_1_2__06484 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1_2__1_in_rule__Reference__Group_5_1_1_2__06487 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_rule__Reference__Group_5_1_1_2__0__Impl6515 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1_2__1__Impl_in_rule__Reference__Group_5_1_1_2__16546 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__TagsAssignment_5_1_1_2_1_in_rule__Reference__Group_5_1_1_2__1__Impl6573 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__0__Impl_in_rule__InstanceReference__Group__06607 = new BitSet(new long[]{0x000000000E800000L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__1_in_rule__InstanceReference__Group__06610 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__1__Impl_in_rule__InstanceReference__Group__16668 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__2_in_rule__InstanceReference__Group__16671 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_27_in_rule__InstanceReference__Group__1__Impl6699 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__2__Impl_in_rule__InstanceReference__Group__26730 = new BitSet(new long[]{0x0000000000008000L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__3_in_rule__InstanceReference__Group__26733 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__DefinitionAssignment_2_in_rule__InstanceReference__Group__2__Impl6760 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__3__Impl_in_rule__InstanceReference__Group__36790 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__4_in_rule__InstanceReference__Group__36793 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_15_in_rule__InstanceReference__Group__3__Impl6821 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__4__Impl_in_rule__InstanceReference__Group__46852 = new BitSet(new long[]{0x0000000000080000L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__5_in_rule__InstanceReference__Group__46855 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__ValueAssignment_4_in_rule__InstanceReference__Group__4__Impl6882 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group__5__Impl_in_rule__InstanceReference__Group__56912 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5__0_in_rule__InstanceReference__Group__5__Impl6939 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5__0__Impl_in_rule__InstanceReference__Group_5__06982 = new BitSet(new long[]{0x0000000001200000L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5__1_in_rule__InstanceReference__Group_5__06985 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_19_in_rule__InstanceReference__Group_5__0__Impl7013 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5__1__Impl_in_rule__InstanceReference__Group_5__17044 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5__2_in_rule__InstanceReference__Group_5__17047 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__UnorderedGroup_5_1_in_rule__InstanceReference__Group_5__1__Impl7074 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5__2__Impl_in_rule__InstanceReference__Group_5__27104 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_rule__InstanceReference__Group_5__2__Impl7132 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_0__0__Impl_in_rule__InstanceReference__Group_5_1_0__07169 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_0__1_in_rule__InstanceReference__Group_5_1_0__07172 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_rule__InstanceReference__Group_5_1_0__0__Impl7200 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_0__1__Impl_in_rule__InstanceReference__Group_5_1_0__17231 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__IndexAssignment_5_1_0_1_in_rule__InstanceReference__Group_5_1_0__1__Impl7258 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1__0__Impl_in_rule__InstanceReference__Group_5_1_1__07292 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1__1_in_rule__InstanceReference__Group_5_1_1__07295 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_rule__InstanceReference__Group_5_1_1__0__Impl7323 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1__1__Impl_in_rule__InstanceReference__Group_5_1_1__17354 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1__2_in_rule__InstanceReference__Group_5_1_1__17357 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__TagsAssignment_5_1_1_1_in_rule__InstanceReference__Group_5_1_1__1__Impl7384 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1__2__Impl_in_rule__InstanceReference__Group_5_1_1__27414 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1_2__0_in_rule__InstanceReference__Group_5_1_1__2__Impl7441 = new BitSet(new long[]{0x0000000000400002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1_2__0__Impl_in_rule__InstanceReference__Group_5_1_1_2__07478 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1_2__1_in_rule__InstanceReference__Group_5_1_1_2__07481 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_rule__InstanceReference__Group_5_1_1_2__0__Impl7509 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1_2__1__Impl_in_rule__InstanceReference__Group_5_1_1_2__17540 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__TagsAssignment_5_1_1_2_1_in_rule__InstanceReference__Group_5_1_1_2__1__Impl7567 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReferenceValue__Group__0__Impl_in_rule__InstanceReferenceValue__Group__07601 = new BitSet(new long[]{0x0000000010000000L});
    public static final BitSet FOLLOW_rule__InstanceReferenceValue__Group__1_in_rule__InstanceReferenceValue__Group__07604 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReferenceValue__ContextsAssignment_0_in_rule__InstanceReferenceValue__Group__0__Impl7631 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReferenceValue__Group__1__Impl_in_rule__InstanceReferenceValue__Group__17661 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__InstanceReferenceValue__Group__2_in_rule__InstanceReferenceValue__Group__17664 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_28_in_rule__InstanceReferenceValue__Group__1__Impl7692 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReferenceValue__Group__2__Impl_in_rule__InstanceReferenceValue__Group__27723 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReferenceValue__TargetAssignment_2_in_rule__InstanceReferenceValue__Group__2__Impl7750 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ContextChain__Group__0__Impl_in_rule__ContextChain__Group__07786 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_rule__ContextChain__Group__1_in_rule__ContextChain__Group__07789 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContext_in_rule__ContextChain__Group__0__Impl7816 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ContextChain__Group__1__Impl_in_rule__ContextChain__Group__17845 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ContextChain__Group_1__0_in_rule__ContextChain__Group__1__Impl7872 = new BitSet(new long[]{0x0000000000400002L});
    public static final BitSet FOLLOW_rule__ContextChain__Group_1__0__Impl_in_rule__ContextChain__Group_1__07907 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_rule__ContextChain__Group_1__1_in_rule__ContextChain__Group_1__07910 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ContextChain__Group_1__1__Impl_in_rule__ContextChain__Group_1__17968 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__ContextChain__Group_1__2_in_rule__ContextChain__Group_1__17971 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_rule__ContextChain__Group_1__1__Impl7999 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ContextChain__Group_1__2__Impl_in_rule__ContextChain__Group_1__28030 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__ContextChain__ObjectAssignment_1_2_in_rule__ContextChain__Group_1__2__Impl8057 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Context__Group__0__Impl_in_rule__Context__Group__08093 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__Context__Group__1_in_rule__Context__Group__08096 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Context__Group__1__Impl_in_rule__Context__Group__18154 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Context__StartAssignment_1_in_rule__Context__Group__1__Impl8181 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EID__Group__0__Impl_in_rule__EID__Group__08215 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__EID__Group__1_in_rule__EID__Group__08218 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_29_in_rule__EID__Group__0__Impl8246 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__EID__Group__1__Impl_in_rule__EID__Group__18277 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__EID__Group__1__Impl8304 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Tag__Group__0__Impl_in_rule__Tag__Group__08337 = new BitSet(new long[]{0x0000000010000000L});
    public static final BitSet FOLLOW_rule__Tag__Group__1_in_rule__Tag__Group__08340 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Tag__KeyAssignment_0_in_rule__Tag__Group__0__Impl8367 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Tag__Group__1__Impl_in_rule__Tag__Group__18397 = new BitSet(new long[]{0x0000000040001870L});
    public static final BitSet FOLLOW_rule__Tag__Group__2_in_rule__Tag__Group__18400 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_28_in_rule__Tag__Group__1__Impl8428 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Tag__Group__2__Impl_in_rule__Tag__Group__28459 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Tag__ValueAssignment_2_in_rule__Tag__Group__2__Impl8486 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group__0__Impl_in_rule__NUMERIC__Group__08522 = new BitSet(new long[]{0x0000000040000040L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group__1_in_rule__NUMERIC__Group__08525 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_30_in_rule__NUMERIC__Group__0__Impl8554 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group__1__Impl_in_rule__NUMERIC__Group__18587 = new BitSet(new long[]{0x0000000020000000L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group__2_in_rule__NUMERIC__Group__18590 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_rule__NUMERIC__Group__1__Impl8617 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group__2__Impl_in_rule__NUMERIC__Group__28646 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group_2__0_in_rule__NUMERIC__Group__2__Impl8673 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group_2__0__Impl_in_rule__NUMERIC__Group_2__08710 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group_2__1_in_rule__NUMERIC__Group_2__08713 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_29_in_rule__NUMERIC__Group_2__0__Impl8741 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__NUMERIC__Group_2__1__Impl_in_rule__NUMERIC__Group_2__18772 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_rule__NUMERIC__Group_2__1__Impl8799 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__FQN__Group__0__Impl_in_rule__FQN__Group__08832 = new BitSet(new long[]{0x0000000080000000L});
    public static final BitSet FOLLOW_rule__FQN__Group__1_in_rule__FQN__Group__08835 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__FQN__Group__0__Impl8862 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__FQN__Group__1__Impl_in_rule__FQN__Group__18891 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__FQN__Group_1__0_in_rule__FQN__Group__1__Impl8918 = new BitSet(new long[]{0x0000000080000002L});
    public static final BitSet FOLLOW_rule__FQN__Group_1__0__Impl_in_rule__FQN__Group_1__08953 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_rule__FQN__Group_1__1_in_rule__FQN__Group_1__08956 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_31_in_rule__FQN__Group_1__0__Impl8984 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__FQN__Group_1__1__Impl_in_rule__FQN__Group_1__19015 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__FQN__Group_1__1__Impl9042 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__UnorderedGroup_4_1__0_in_rule__Container__UnorderedGroup_4_19076 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_0__0_in_rule__Container__UnorderedGroup_4_1__Impl9163 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__Group_4_1_1__0_in_rule__Container__UnorderedGroup_4_1__Impl9254 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__UnorderedGroup_4_1__Impl_in_rule__Container__UnorderedGroup_4_1__09313 = new BitSet(new long[]{0x0000000001200002L});
    public static final BitSet FOLLOW_rule__Container__UnorderedGroup_4_1__1_in_rule__Container__UnorderedGroup_4_1__09316 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Container__UnorderedGroup_4_1__Impl_in_rule__Container__UnorderedGroup_4_1__19341 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__UnorderedGroup_5_1__0_in_rule__Parameter__UnorderedGroup_5_19369 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_0__0_in_rule__Parameter__UnorderedGroup_5_1__Impl9456 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__Group_5_1_1__0_in_rule__Parameter__UnorderedGroup_5_1__Impl9547 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__UnorderedGroup_5_1__Impl_in_rule__Parameter__UnorderedGroup_5_1__09606 = new BitSet(new long[]{0x0000000001200002L});
    public static final BitSet FOLLOW_rule__Parameter__UnorderedGroup_5_1__1_in_rule__Parameter__UnorderedGroup_5_1__09609 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Parameter__UnorderedGroup_5_1__Impl_in_rule__Parameter__UnorderedGroup_5_1__19634 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__UnorderedGroup_5_1__0_in_rule__Reference__UnorderedGroup_5_19662 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_0__0_in_rule__Reference__UnorderedGroup_5_1__Impl9749 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__Group_5_1_1__0_in_rule__Reference__UnorderedGroup_5_1__Impl9840 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__UnorderedGroup_5_1__Impl_in_rule__Reference__UnorderedGroup_5_1__09899 = new BitSet(new long[]{0x0000000001200002L});
    public static final BitSet FOLLOW_rule__Reference__UnorderedGroup_5_1__1_in_rule__Reference__UnorderedGroup_5_1__09902 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__Reference__UnorderedGroup_5_1__Impl_in_rule__Reference__UnorderedGroup_5_1__19927 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__UnorderedGroup_5_1__0_in_rule__InstanceReference__UnorderedGroup_5_19955 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_0__0_in_rule__InstanceReference__UnorderedGroup_5_1__Impl10042 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__Group_5_1_1__0_in_rule__InstanceReference__UnorderedGroup_5_1__Impl10133 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__UnorderedGroup_5_1__Impl_in_rule__InstanceReference__UnorderedGroup_5_1__010192 = new BitSet(new long[]{0x0000000001200002L});
    public static final BitSet FOLLOW_rule__InstanceReference__UnorderedGroup_5_1__1_in_rule__InstanceReference__UnorderedGroup_5_1__010195 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rule__InstanceReference__UnorderedGroup_5_1__Impl_in_rule__InstanceReference__UnorderedGroup_5_1__110220 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__Model__PackageNameAssignment_0_110252 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleModule_in_rule__Model__ModulesAssignment_110283 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__Module__DefinitionAssignment_210318 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__Module__ShortNameAssignment_3_110353 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__Module__TagsAssignment_4_1_110384 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__Module__TagsAssignment_4_1_2_110415 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainer_in_rule__Module__ContainerAssignment_710446 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__Container__DefinitionAssignment_210481 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__Container__ShortNameAssignment_3_110516 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_rule__Container__IndexAssignment_4_1_0_110547 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__Container__TagsAssignment_4_1_1_110578 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__Container__TagsAssignment_4_1_1_2_110609 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainedElement_in_rule__Container__ElementsAssignment_710640 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__Parameter__DefinitionAssignment_210675 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleSimpleValue_in_rule__Parameter__ValueAssignment_410710 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_rule__Parameter__IndexAssignment_5_1_0_110741 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__Parameter__TagsAssignment_5_1_1_110772 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__Parameter__TagsAssignment_5_1_1_2_110803 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__Reference__DefinitionAssignment_210838 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleReferenceValue_in_rule__Reference__ValueAssignment_410873 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_rule__Reference__IndexAssignment_5_1_0_110904 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__Reference__TagsAssignment_5_1_1_110935 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__Reference__TagsAssignment_5_1_1_2_110966 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_rule__InstanceReference__DefinitionAssignment_211001 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleInstanceReferenceValue_in_rule__InstanceReference__ValueAssignment_411036 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_rule__InstanceReference__IndexAssignment_5_1_0_111067 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__InstanceReference__TagsAssignment_5_1_1_111098 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_rule__InstanceReference__TagsAssignment_5_1_1_2_111129 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleFQN_in_rule__ReferenceValue__ContainerAssignment11164 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContextChain_in_rule__InstanceReferenceValue__ContextsAssignment_011199 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleFQN_in_rule__InstanceReferenceValue__TargetAssignment_211234 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleFQN_in_rule__ContextChain__ObjectAssignment_1_211273 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleFQN_in_rule__Context__StartAssignment_111312 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_STRING_in_rule__StringValue__ValueAssignment11347 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEID_in_rule__EnumValue__LiteralAssignment11378 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanLiteral_in_rule__BooleanValue__ValueAssignment11409 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMERIC_in_rule__NumericValue__ValueAssignment11440 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleKEY_in_rule__Tag__KeyAssignment_011471 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleVALUE_in_rule__Tag__ValueAssignment_211502 = new BitSet(new long[]{0x0000000000000002L});

}
