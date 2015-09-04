package org.artop.ecuc.autosar4x.dsl.values.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.artop.ecuc.autosar4x.dsl.values.services.EcucValuesDslGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalEcucValuesDslParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'package'", "'module'", "':'", "'('", "'tags'", "','", "')'", "'='", "'{'", "'}'", "'container'", "'index'", "'param'", "'ref'", "'iref'", "'->'", "'.'", "'true'", "'false'", "'-'", "'/'"
    };
    public static final int RULE_STRING=6;
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
    public static final int RULE_ID=4;
    public static final int RULE_WS=9;
    public static final int RULE_ANY_OTHER=10;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int RULE_INT=5;
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
    public String getGrammarFileName() { return "../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g"; }



     	private EcucValuesDslGrammarAccess grammarAccess;
     	
        public InternalEcucValuesDslParser(TokenStream input, EcucValuesDslGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }
        
        @Override
        protected String getFirstRuleName() {
        	return "Model";	
       	}
       	
       	@Override
       	protected EcucValuesDslGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}



    // $ANTLR start "entryRuleModel"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:68:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:69:2: (iv_ruleModel= ruleModel EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:70:2: iv_ruleModel= ruleModel EOF
            {
             newCompositeNode(grammarAccess.getModelRule()); 
            pushFollow(FOLLOW_ruleModel_in_entryRuleModel75);
            iv_ruleModel=ruleModel();

            state._fsp--;

             current =iv_ruleModel; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleModel85); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleModel"


    // $ANTLR start "ruleModel"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:77:1: ruleModel returns [EObject current=null] : ( (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModule ) )* ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_packageName_1_0=null;
        EObject lv_modules_2_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:80:28: ( ( (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModule ) )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:81:1: ( (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModule ) )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:81:1: ( (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModule ) )* )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:81:2: (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModule ) )*
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:81:2: (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )?
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==11) ) {
                alt1=1;
            }
            switch (alt1) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:81:4: otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) )
                    {
                    otherlv_0=(Token)match(input,11,FOLLOW_11_in_ruleModel123); 

                        	newLeafNode(otherlv_0, grammarAccess.getModelAccess().getPackageKeyword_0_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:85:1: ( (lv_packageName_1_0= RULE_ID ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:86:1: (lv_packageName_1_0= RULE_ID )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:86:1: (lv_packageName_1_0= RULE_ID )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:87:3: lv_packageName_1_0= RULE_ID
                    {
                    lv_packageName_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleModel140); 

                    			newLeafNode(lv_packageName_1_0, grammarAccess.getModelAccess().getPackageNameIDTerminalRuleCall_0_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getModelRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"packageName",
                            		lv_packageName_1_0, 
                            		"ID");
                    	    

                    }


                    }


                    }
                    break;

            }

            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:103:4: ( (lv_modules_2_0= ruleModule ) )*
            loop2:
            do {
                int alt2=2;
                int LA2_0 = input.LA(1);

                if ( (LA2_0==12) ) {
                    alt2=1;
                }


                switch (alt2) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:104:1: (lv_modules_2_0= ruleModule )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:104:1: (lv_modules_2_0= ruleModule )
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:105:3: lv_modules_2_0= ruleModule
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getModelAccess().getModulesModuleParserRuleCall_1_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleModule_in_ruleModel168);
            	    lv_modules_2_0=ruleModule();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getModelRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"modules",
            	            		lv_modules_2_0, 
            	            		"Module");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }
            	    break;

            	default :
            	    break loop2;
                }
            } while (true);


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleModel"


    // $ANTLR start "entryRuleModule"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:129:1: entryRuleModule returns [EObject current=null] : iv_ruleModule= ruleModule EOF ;
    public final EObject entryRuleModule() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModule = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:130:2: (iv_ruleModule= ruleModule EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:131:2: iv_ruleModule= ruleModule EOF
            {
             newCompositeNode(grammarAccess.getModuleRule()); 
            pushFollow(FOLLOW_ruleModule_in_entryRuleModule205);
            iv_ruleModule=ruleModule();

            state._fsp--;

             current =iv_ruleModule; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleModule215); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleModule"


    // $ANTLR start "ruleModule"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:138:1: ruleModule returns [EObject current=null] : ( () otherlv_1= 'module' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )? otherlv_10= ')' )? otherlv_11= '=' otherlv_12= '{' ( (lv_container_13_0= ruleContainer ) )* otherlv_14= '}' ) ;
    public final EObject ruleModule() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        Token otherlv_2=null;
        Token otherlv_3=null;
        Token lv_shortName_4_0=null;
        Token otherlv_5=null;
        Token otherlv_6=null;
        Token otherlv_8=null;
        Token otherlv_10=null;
        Token otherlv_11=null;
        Token otherlv_12=null;
        Token otherlv_14=null;
        EObject lv_tags_7_0 = null;

        EObject lv_tags_9_0 = null;

        EObject lv_container_13_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:141:28: ( ( () otherlv_1= 'module' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )? otherlv_10= ')' )? otherlv_11= '=' otherlv_12= '{' ( (lv_container_13_0= ruleContainer ) )* otherlv_14= '}' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:142:1: ( () otherlv_1= 'module' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )? otherlv_10= ')' )? otherlv_11= '=' otherlv_12= '{' ( (lv_container_13_0= ruleContainer ) )* otherlv_14= '}' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:142:1: ( () otherlv_1= 'module' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )? otherlv_10= ')' )? otherlv_11= '=' otherlv_12= '{' ( (lv_container_13_0= ruleContainer ) )* otherlv_14= '}' )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:142:2: () otherlv_1= 'module' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )? otherlv_10= ')' )? otherlv_11= '=' otherlv_12= '{' ( (lv_container_13_0= ruleContainer ) )* otherlv_14= '}'
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:142:2: ()
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:143:5: 
            {

                    current = forceCreateModelElement(
                        grammarAccess.getModuleAccess().getModuleAction_0(),
                        current);
                

            }

            otherlv_1=(Token)match(input,12,FOLLOW_12_in_ruleModule261); 

                	newLeafNode(otherlv_1, grammarAccess.getModuleAccess().getModuleKeyword_1());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:152:1: ( (otherlv_2= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:153:1: (otherlv_2= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:153:1: (otherlv_2= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:154:3: otherlv_2= RULE_ID
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getModuleRule());
            	        }
                    
            otherlv_2=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleModule281); 

            		newLeafNode(otherlv_2, grammarAccess.getModuleAccess().getDefinitionEcucModuleDefCrossReference_2_0()); 
            	

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:165:2: (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )?
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0==13) ) {
                alt3=1;
            }
            switch (alt3) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:165:4: otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) )
                    {
                    otherlv_3=(Token)match(input,13,FOLLOW_13_in_ruleModule294); 

                        	newLeafNode(otherlv_3, grammarAccess.getModuleAccess().getColonKeyword_3_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:169:1: ( (lv_shortName_4_0= RULE_ID ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:170:1: (lv_shortName_4_0= RULE_ID )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:170:1: (lv_shortName_4_0= RULE_ID )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:171:3: lv_shortName_4_0= RULE_ID
                    {
                    lv_shortName_4_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleModule311); 

                    			newLeafNode(lv_shortName_4_0, grammarAccess.getModuleAccess().getShortNameIDTerminalRuleCall_3_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getModuleRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"shortName",
                            		lv_shortName_4_0, 
                            		"ID");
                    	    

                    }


                    }


                    }
                    break;

            }

            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:187:4: (otherlv_5= '(' (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )? otherlv_10= ')' )?
            int alt6=2;
            int LA6_0 = input.LA(1);

            if ( (LA6_0==14) ) {
                alt6=1;
            }
            switch (alt6) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:187:6: otherlv_5= '(' (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )? otherlv_10= ')'
                    {
                    otherlv_5=(Token)match(input,14,FOLLOW_14_in_ruleModule331); 

                        	newLeafNode(otherlv_5, grammarAccess.getModuleAccess().getLeftParenthesisKeyword_4_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:191:1: (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )?
                    int alt5=2;
                    int LA5_0 = input.LA(1);

                    if ( (LA5_0==15) ) {
                        alt5=1;
                    }
                    switch (alt5) {
                        case 1 :
                            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:191:3: otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )*
                            {
                            otherlv_6=(Token)match(input,15,FOLLOW_15_in_ruleModule344); 

                                	newLeafNode(otherlv_6, grammarAccess.getModuleAccess().getTagsKeyword_4_1_0());
                                
                            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:195:1: ( (lv_tags_7_0= ruleTag ) )
                            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:196:1: (lv_tags_7_0= ruleTag )
                            {
                            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:196:1: (lv_tags_7_0= ruleTag )
                            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:197:3: lv_tags_7_0= ruleTag
                            {
                             
                            	        newCompositeNode(grammarAccess.getModuleAccess().getTagsTagParserRuleCall_4_1_1_0()); 
                            	    
                            pushFollow(FOLLOW_ruleTag_in_ruleModule365);
                            lv_tags_7_0=ruleTag();

                            state._fsp--;


                            	        if (current==null) {
                            	            current = createModelElementForParent(grammarAccess.getModuleRule());
                            	        }
                                   		add(
                                   			current, 
                                   			"tags",
                                    		lv_tags_7_0, 
                                    		"Tag");
                            	        afterParserOrEnumRuleCall();
                            	    

                            }


                            }

                            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:213:2: (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )*
                            loop4:
                            do {
                                int alt4=2;
                                int LA4_0 = input.LA(1);

                                if ( (LA4_0==16) ) {
                                    alt4=1;
                                }


                                switch (alt4) {
                            	case 1 :
                            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:213:4: otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) )
                            	    {
                            	    otherlv_8=(Token)match(input,16,FOLLOW_16_in_ruleModule378); 

                            	        	newLeafNode(otherlv_8, grammarAccess.getModuleAccess().getCommaKeyword_4_1_2_0());
                            	        
                            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:217:1: ( (lv_tags_9_0= ruleTag ) )
                            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:218:1: (lv_tags_9_0= ruleTag )
                            	    {
                            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:218:1: (lv_tags_9_0= ruleTag )
                            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:219:3: lv_tags_9_0= ruleTag
                            	    {
                            	     
                            	    	        newCompositeNode(grammarAccess.getModuleAccess().getTagsTagParserRuleCall_4_1_2_1_0()); 
                            	    	    
                            	    pushFollow(FOLLOW_ruleTag_in_ruleModule399);
                            	    lv_tags_9_0=ruleTag();

                            	    state._fsp--;


                            	    	        if (current==null) {
                            	    	            current = createModelElementForParent(grammarAccess.getModuleRule());
                            	    	        }
                            	           		add(
                            	           			current, 
                            	           			"tags",
                            	            		lv_tags_9_0, 
                            	            		"Tag");
                            	    	        afterParserOrEnumRuleCall();
                            	    	    

                            	    }


                            	    }


                            	    }
                            	    break;

                            	default :
                            	    break loop4;
                                }
                            } while (true);


                            }
                            break;

                    }

                    otherlv_10=(Token)match(input,17,FOLLOW_17_in_ruleModule415); 

                        	newLeafNode(otherlv_10, grammarAccess.getModuleAccess().getRightParenthesisKeyword_4_2());
                        

                    }
                    break;

            }

            otherlv_11=(Token)match(input,18,FOLLOW_18_in_ruleModule429); 

                	newLeafNode(otherlv_11, grammarAccess.getModuleAccess().getEqualsSignKeyword_5());
                
            otherlv_12=(Token)match(input,19,FOLLOW_19_in_ruleModule441); 

                	newLeafNode(otherlv_12, grammarAccess.getModuleAccess().getLeftCurlyBracketKeyword_6());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:247:1: ( (lv_container_13_0= ruleContainer ) )*
            loop7:
            do {
                int alt7=2;
                int LA7_0 = input.LA(1);

                if ( (LA7_0==21) ) {
                    alt7=1;
                }


                switch (alt7) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:248:1: (lv_container_13_0= ruleContainer )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:248:1: (lv_container_13_0= ruleContainer )
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:249:3: lv_container_13_0= ruleContainer
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getModuleAccess().getContainerContainerParserRuleCall_7_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleContainer_in_ruleModule462);
            	    lv_container_13_0=ruleContainer();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getModuleRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"container",
            	            		lv_container_13_0, 
            	            		"Container");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }
            	    break;

            	default :
            	    break loop7;
                }
            } while (true);

            otherlv_14=(Token)match(input,20,FOLLOW_20_in_ruleModule475); 

                	newLeafNode(otherlv_14, grammarAccess.getModuleAccess().getRightCurlyBracketKeyword_8());
                

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleModule"


    // $ANTLR start "entryRuleContainedElement"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:277:1: entryRuleContainedElement returns [EObject current=null] : iv_ruleContainedElement= ruleContainedElement EOF ;
    public final EObject entryRuleContainedElement() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleContainedElement = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:278:2: (iv_ruleContainedElement= ruleContainedElement EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:279:2: iv_ruleContainedElement= ruleContainedElement EOF
            {
             newCompositeNode(grammarAccess.getContainedElementRule()); 
            pushFollow(FOLLOW_ruleContainedElement_in_entryRuleContainedElement511);
            iv_ruleContainedElement=ruleContainedElement();

            state._fsp--;

             current =iv_ruleContainedElement; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleContainedElement521); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleContainedElement"


    // $ANTLR start "ruleContainedElement"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:286:1: ruleContainedElement returns [EObject current=null] : (this_Container_0= ruleContainer | this_Parameter_1= ruleParameter | this_Reference_2= ruleReference | this_InstanceReference_3= ruleInstanceReference ) ;
    public final EObject ruleContainedElement() throws RecognitionException {
        EObject current = null;

        EObject this_Container_0 = null;

        EObject this_Parameter_1 = null;

        EObject this_Reference_2 = null;

        EObject this_InstanceReference_3 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:289:28: ( (this_Container_0= ruleContainer | this_Parameter_1= ruleParameter | this_Reference_2= ruleReference | this_InstanceReference_3= ruleInstanceReference ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:290:1: (this_Container_0= ruleContainer | this_Parameter_1= ruleParameter | this_Reference_2= ruleReference | this_InstanceReference_3= ruleInstanceReference )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:290:1: (this_Container_0= ruleContainer | this_Parameter_1= ruleParameter | this_Reference_2= ruleReference | this_InstanceReference_3= ruleInstanceReference )
            int alt8=4;
            switch ( input.LA(1) ) {
            case 21:
                {
                alt8=1;
                }
                break;
            case 23:
                {
                alt8=2;
                }
                break;
            case 24:
                {
                alt8=3;
                }
                break;
            case 25:
                {
                alt8=4;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 8, 0, input);

                throw nvae;
            }

            switch (alt8) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:291:5: this_Container_0= ruleContainer
                    {
                     
                            newCompositeNode(grammarAccess.getContainedElementAccess().getContainerParserRuleCall_0()); 
                        
                    pushFollow(FOLLOW_ruleContainer_in_ruleContainedElement568);
                    this_Container_0=ruleContainer();

                    state._fsp--;

                     
                            current = this_Container_0; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:301:5: this_Parameter_1= ruleParameter
                    {
                     
                            newCompositeNode(grammarAccess.getContainedElementAccess().getParameterParserRuleCall_1()); 
                        
                    pushFollow(FOLLOW_ruleParameter_in_ruleContainedElement595);
                    this_Parameter_1=ruleParameter();

                    state._fsp--;

                     
                            current = this_Parameter_1; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:311:5: this_Reference_2= ruleReference
                    {
                     
                            newCompositeNode(grammarAccess.getContainedElementAccess().getReferenceParserRuleCall_2()); 
                        
                    pushFollow(FOLLOW_ruleReference_in_ruleContainedElement622);
                    this_Reference_2=ruleReference();

                    state._fsp--;

                     
                            current = this_Reference_2; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:321:5: this_InstanceReference_3= ruleInstanceReference
                    {
                     
                            newCompositeNode(grammarAccess.getContainedElementAccess().getInstanceReferenceParserRuleCall_3()); 
                        
                    pushFollow(FOLLOW_ruleInstanceReference_in_ruleContainedElement649);
                    this_InstanceReference_3=ruleInstanceReference();

                    state._fsp--;

                     
                            current = this_InstanceReference_3; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleContainedElement"


    // $ANTLR start "entryRuleContainer"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:337:1: entryRuleContainer returns [EObject current=null] : iv_ruleContainer= ruleContainer EOF ;
    public final EObject entryRuleContainer() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleContainer = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:338:2: (iv_ruleContainer= ruleContainer EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:339:2: iv_ruleContainer= ruleContainer EOF
            {
             newCompositeNode(grammarAccess.getContainerRule()); 
            pushFollow(FOLLOW_ruleContainer_in_entryRuleContainer684);
            iv_ruleContainer=ruleContainer();

            state._fsp--;

             current =iv_ruleContainer; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleContainer694); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleContainer"


    // $ANTLR start "ruleContainer"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:346:1: ruleContainer returns [EObject current=null] : ( () otherlv_1= 'container' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? otherlv_14= '=' otherlv_15= '{' ( (lv_elements_16_0= ruleContainedElement ) )* otherlv_17= '}' ) ;
    public final EObject ruleContainer() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        Token otherlv_2=null;
        Token otherlv_3=null;
        Token lv_shortName_4_0=null;
        Token otherlv_5=null;
        Token otherlv_7=null;
        Token lv_index_8_0=null;
        Token otherlv_9=null;
        Token otherlv_11=null;
        Token otherlv_13=null;
        Token otherlv_14=null;
        Token otherlv_15=null;
        Token otherlv_17=null;
        EObject lv_tags_10_0 = null;

        EObject lv_tags_12_0 = null;

        EObject lv_elements_16_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:349:28: ( ( () otherlv_1= 'container' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? otherlv_14= '=' otherlv_15= '{' ( (lv_elements_16_0= ruleContainedElement ) )* otherlv_17= '}' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:350:1: ( () otherlv_1= 'container' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? otherlv_14= '=' otherlv_15= '{' ( (lv_elements_16_0= ruleContainedElement ) )* otherlv_17= '}' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:350:1: ( () otherlv_1= 'container' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? otherlv_14= '=' otherlv_15= '{' ( (lv_elements_16_0= ruleContainedElement ) )* otherlv_17= '}' )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:350:2: () otherlv_1= 'container' ( (otherlv_2= RULE_ID ) ) (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )? (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? otherlv_14= '=' otherlv_15= '{' ( (lv_elements_16_0= ruleContainedElement ) )* otherlv_17= '}'
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:350:2: ()
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:351:5: 
            {

                    current = forceCreateModelElement(
                        grammarAccess.getContainerAccess().getContainerAction_0(),
                        current);
                

            }

            otherlv_1=(Token)match(input,21,FOLLOW_21_in_ruleContainer740); 

                	newLeafNode(otherlv_1, grammarAccess.getContainerAccess().getContainerKeyword_1());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:360:1: ( (otherlv_2= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:361:1: (otherlv_2= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:361:1: (otherlv_2= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:362:3: otherlv_2= RULE_ID
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getContainerRule());
            	        }
                    
            otherlv_2=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleContainer760); 

            		newLeafNode(otherlv_2, grammarAccess.getContainerAccess().getDefinitionEcucContainerDefCrossReference_2_0()); 
            	

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:373:2: (otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) ) )?
            int alt9=2;
            int LA9_0 = input.LA(1);

            if ( (LA9_0==13) ) {
                alt9=1;
            }
            switch (alt9) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:373:4: otherlv_3= ':' ( (lv_shortName_4_0= RULE_ID ) )
                    {
                    otherlv_3=(Token)match(input,13,FOLLOW_13_in_ruleContainer773); 

                        	newLeafNode(otherlv_3, grammarAccess.getContainerAccess().getColonKeyword_3_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:377:1: ( (lv_shortName_4_0= RULE_ID ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:378:1: (lv_shortName_4_0= RULE_ID )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:378:1: (lv_shortName_4_0= RULE_ID )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:379:3: lv_shortName_4_0= RULE_ID
                    {
                    lv_shortName_4_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleContainer790); 

                    			newLeafNode(lv_shortName_4_0, grammarAccess.getContainerAccess().getShortNameIDTerminalRuleCall_3_1_0()); 
                    		

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getContainerRule());
                    	        }
                           		setWithLastConsumed(
                           			current, 
                           			"shortName",
                            		lv_shortName_4_0, 
                            		"ID");
                    	    

                    }


                    }


                    }
                    break;

            }

            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:395:4: (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )?
            int alt12=2;
            int LA12_0 = input.LA(1);

            if ( (LA12_0==14) ) {
                alt12=1;
            }
            switch (alt12) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:395:6: otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')'
                    {
                    otherlv_5=(Token)match(input,14,FOLLOW_14_in_ruleContainer810); 

                        	newLeafNode(otherlv_5, grammarAccess.getContainerAccess().getLeftParenthesisKeyword_4_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:399:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:401:1: ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:401:1: ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:402:2: ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getContainerAccess().getUnorderedGroup_4_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:405:2: ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:406:3: ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:406:3: ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )*
                    loop11:
                    do {
                        int alt11=3;
                        int LA11_0 = input.LA(1);

                        if ( LA11_0 ==22 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0) ) {
                            alt11=1;
                        }
                        else if ( LA11_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1) ) {
                            alt11=2;
                        }


                        switch (alt11) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:408:4: ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:408:4: ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:409:5: {...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleContainer", "getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:409:108: ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:410:6: ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:413:6: ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:413:7: {...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleContainer", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:413:16: (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:413:18: otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) )
                    	    {
                    	    otherlv_7=(Token)match(input,22,FOLLOW_22_in_ruleContainer868); 

                    	        	newLeafNode(otherlv_7, grammarAccess.getContainerAccess().getIndexKeyword_4_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:417:1: ( (lv_index_8_0= RULE_INT ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:418:1: (lv_index_8_0= RULE_INT )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:418:1: (lv_index_8_0= RULE_INT )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:419:3: lv_index_8_0= RULE_INT
                    	    {
                    	    lv_index_8_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleContainer885); 

                    	    			newLeafNode(lv_index_8_0, grammarAccess.getContainerAccess().getIndexINTTerminalRuleCall_4_1_0_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getContainerRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"index",
                    	            		lv_index_8_0, 
                    	            		"INT");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getContainerAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:442:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:442:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:443:5: {...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleContainer", "getUnorderedGroupHelper().canSelect(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:443:108: ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:444:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getContainerAccess().getUnorderedGroup_4_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:447:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:447:7: {...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleContainer", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:447:16: (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:447:18: otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_9=(Token)match(input,15,FOLLOW_15_in_ruleContainer958); 

                    	        	newLeafNode(otherlv_9, grammarAccess.getContainerAccess().getTagsKeyword_4_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:451:1: ( (lv_tags_10_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:452:1: (lv_tags_10_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:452:1: (lv_tags_10_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:453:3: lv_tags_10_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getContainerAccess().getTagsTagParserRuleCall_4_1_1_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleContainer979);
                    	    lv_tags_10_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getContainerRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_10_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:469:2: (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    loop10:
                    	    do {
                    	        int alt10=2;
                    	        int LA10_0 = input.LA(1);

                    	        if ( (LA10_0==16) ) {
                    	            alt10=1;
                    	        }


                    	        switch (alt10) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:469:4: otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_11=(Token)match(input,16,FOLLOW_16_in_ruleContainer992); 

                    	    	        	newLeafNode(otherlv_11, grammarAccess.getContainerAccess().getCommaKeyword_4_1_1_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:473:1: ( (lv_tags_12_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:474:1: (lv_tags_12_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:474:1: (lv_tags_12_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:475:3: lv_tags_12_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getContainerAccess().getTagsTagParserRuleCall_4_1_1_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleContainer1013);
                    	    	    lv_tags_12_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getContainerRule());
                    	    	    	        }
                    	    	           		add(
                    	    	           			current, 
                    	    	           			"tags",
                    	    	            		lv_tags_12_0, 
                    	    	            		"Tag");
                    	    	    	        afterParserOrEnumRuleCall();
                    	    	    	    

                    	    	    }


                    	    	    }


                    	    	    }
                    	    	    break;

                    	    	default :
                    	    	    break loop10;
                    	        }
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getContainerAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop11;
                        }
                    } while (true);


                    }


                    }

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getContainerAccess().getUnorderedGroup_4_1());
                    	

                    }

                    otherlv_13=(Token)match(input,17,FOLLOW_17_in_ruleContainer1068); 

                        	newLeafNode(otherlv_13, grammarAccess.getContainerAccess().getRightParenthesisKeyword_4_2());
                        

                    }
                    break;

            }

            otherlv_14=(Token)match(input,18,FOLLOW_18_in_ruleContainer1082); 

                	newLeafNode(otherlv_14, grammarAccess.getContainerAccess().getEqualsSignKeyword_5());
                
            otherlv_15=(Token)match(input,19,FOLLOW_19_in_ruleContainer1094); 

                	newLeafNode(otherlv_15, grammarAccess.getContainerAccess().getLeftCurlyBracketKeyword_6());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:517:1: ( (lv_elements_16_0= ruleContainedElement ) )*
            loop13:
            do {
                int alt13=2;
                int LA13_0 = input.LA(1);

                if ( (LA13_0==21||(LA13_0>=23 && LA13_0<=25)) ) {
                    alt13=1;
                }


                switch (alt13) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:518:1: (lv_elements_16_0= ruleContainedElement )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:518:1: (lv_elements_16_0= ruleContainedElement )
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:519:3: lv_elements_16_0= ruleContainedElement
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getContainerAccess().getElementsContainedElementParserRuleCall_7_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleContainedElement_in_ruleContainer1115);
            	    lv_elements_16_0=ruleContainedElement();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getContainerRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"elements",
            	            		lv_elements_16_0, 
            	            		"ContainedElement");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }
            	    break;

            	default :
            	    break loop13;
                }
            } while (true);

            otherlv_17=(Token)match(input,20,FOLLOW_20_in_ruleContainer1128); 

                	newLeafNode(otherlv_17, grammarAccess.getContainerAccess().getRightCurlyBracketKeyword_8());
                

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleContainer"


    // $ANTLR start "entryRuleParameter"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:547:1: entryRuleParameter returns [EObject current=null] : iv_ruleParameter= ruleParameter EOF ;
    public final EObject entryRuleParameter() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleParameter = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:548:2: (iv_ruleParameter= ruleParameter EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:549:2: iv_ruleParameter= ruleParameter EOF
            {
             newCompositeNode(grammarAccess.getParameterRule()); 
            pushFollow(FOLLOW_ruleParameter_in_entryRuleParameter1164);
            iv_ruleParameter=ruleParameter();

            state._fsp--;

             current =iv_ruleParameter; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleParameter1174); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleParameter"


    // $ANTLR start "ruleParameter"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:556:1: ruleParameter returns [EObject current=null] : ( () otherlv_1= 'param' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleSimpleValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? ) ;
    public final EObject ruleParameter() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        Token otherlv_2=null;
        Token otherlv_3=null;
        Token otherlv_5=null;
        Token otherlv_7=null;
        Token lv_index_8_0=null;
        Token otherlv_9=null;
        Token otherlv_11=null;
        Token otherlv_13=null;
        EObject lv_value_4_0 = null;

        EObject lv_tags_10_0 = null;

        EObject lv_tags_12_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:559:28: ( ( () otherlv_1= 'param' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleSimpleValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:560:1: ( () otherlv_1= 'param' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleSimpleValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:560:1: ( () otherlv_1= 'param' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleSimpleValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:560:2: () otherlv_1= 'param' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleSimpleValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )?
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:560:2: ()
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:561:5: 
            {

                    current = forceCreateModelElement(
                        grammarAccess.getParameterAccess().getParameterAction_0(),
                        current);
                

            }

            otherlv_1=(Token)match(input,23,FOLLOW_23_in_ruleParameter1220); 

                	newLeafNode(otherlv_1, grammarAccess.getParameterAccess().getParamKeyword_1());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:570:1: ( (otherlv_2= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:571:1: (otherlv_2= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:571:1: (otherlv_2= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:572:3: otherlv_2= RULE_ID
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getParameterRule());
            	        }
                    
            otherlv_2=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleParameter1240); 

            		newLeafNode(otherlv_2, grammarAccess.getParameterAccess().getDefinitionEcucParameterDefCrossReference_2_0()); 
            	

            }


            }

            otherlv_3=(Token)match(input,18,FOLLOW_18_in_ruleParameter1252); 

                	newLeafNode(otherlv_3, grammarAccess.getParameterAccess().getEqualsSignKeyword_3());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:587:1: ( (lv_value_4_0= ruleSimpleValue ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:588:1: (lv_value_4_0= ruleSimpleValue )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:588:1: (lv_value_4_0= ruleSimpleValue )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:589:3: lv_value_4_0= ruleSimpleValue
            {
             
            	        newCompositeNode(grammarAccess.getParameterAccess().getValueSimpleValueParserRuleCall_4_0()); 
            	    
            pushFollow(FOLLOW_ruleSimpleValue_in_ruleParameter1273);
            lv_value_4_0=ruleSimpleValue();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getParameterRule());
            	        }
                   		set(
                   			current, 
                   			"value",
                    		lv_value_4_0, 
                    		"SimpleValue");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:605:2: (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )?
            int alt16=2;
            int LA16_0 = input.LA(1);

            if ( (LA16_0==14) ) {
                alt16=1;
            }
            switch (alt16) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:605:4: otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')'
                    {
                    otherlv_5=(Token)match(input,14,FOLLOW_14_in_ruleParameter1286); 

                        	newLeafNode(otherlv_5, grammarAccess.getParameterAccess().getLeftParenthesisKeyword_5_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:609:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:611:1: ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:611:1: ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:612:2: ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getParameterAccess().getUnorderedGroup_5_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:615:2: ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:616:3: ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:616:3: ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )*
                    loop15:
                    do {
                        int alt15=3;
                        int LA15_0 = input.LA(1);

                        if ( LA15_0 ==22 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0) ) {
                            alt15=1;
                        }
                        else if ( LA15_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1) ) {
                            alt15=2;
                        }


                        switch (alt15) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:618:4: ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:618:4: ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:619:5: {...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleParameter", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:619:108: ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:620:6: ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:623:6: ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:623:7: {...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameter", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:623:16: (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:623:18: otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) )
                    	    {
                    	    otherlv_7=(Token)match(input,22,FOLLOW_22_in_ruleParameter1344); 

                    	        	newLeafNode(otherlv_7, grammarAccess.getParameterAccess().getIndexKeyword_5_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:627:1: ( (lv_index_8_0= RULE_INT ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:628:1: (lv_index_8_0= RULE_INT )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:628:1: (lv_index_8_0= RULE_INT )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:629:3: lv_index_8_0= RULE_INT
                    	    {
                    	    lv_index_8_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleParameter1361); 

                    	    			newLeafNode(lv_index_8_0, grammarAccess.getParameterAccess().getIndexINTTerminalRuleCall_5_1_0_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getParameterRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"index",
                    	            		lv_index_8_0, 
                    	            		"INT");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:652:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:652:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:653:5: {...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleParameter", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:653:108: ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:654:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterAccess().getUnorderedGroup_5_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:657:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:657:7: {...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameter", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:657:16: (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:657:18: otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_9=(Token)match(input,15,FOLLOW_15_in_ruleParameter1434); 

                    	        	newLeafNode(otherlv_9, grammarAccess.getParameterAccess().getTagsKeyword_5_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:661:1: ( (lv_tags_10_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:662:1: (lv_tags_10_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:662:1: (lv_tags_10_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:663:3: lv_tags_10_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getParameterAccess().getTagsTagParserRuleCall_5_1_1_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleParameter1455);
                    	    lv_tags_10_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getParameterRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_10_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:679:2: (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    loop14:
                    	    do {
                    	        int alt14=2;
                    	        int LA14_0 = input.LA(1);

                    	        if ( (LA14_0==16) ) {
                    	            alt14=1;
                    	        }


                    	        switch (alt14) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:679:4: otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_11=(Token)match(input,16,FOLLOW_16_in_ruleParameter1468); 

                    	    	        	newLeafNode(otherlv_11, grammarAccess.getParameterAccess().getCommaKeyword_5_1_1_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:683:1: ( (lv_tags_12_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:684:1: (lv_tags_12_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:684:1: (lv_tags_12_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:685:3: lv_tags_12_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getParameterAccess().getTagsTagParserRuleCall_5_1_1_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleParameter1489);
                    	    	    lv_tags_12_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getParameterRule());
                    	    	    	        }
                    	    	           		add(
                    	    	           			current, 
                    	    	           			"tags",
                    	    	            		lv_tags_12_0, 
                    	    	            		"Tag");
                    	    	    	        afterParserOrEnumRuleCall();
                    	    	    	    

                    	    	    }


                    	    	    }


                    	    	    }
                    	    	    break;

                    	    	default :
                    	    	    break loop14;
                    	        }
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop15;
                        }
                    } while (true);


                    }


                    }

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getParameterAccess().getUnorderedGroup_5_1());
                    	

                    }

                    otherlv_13=(Token)match(input,17,FOLLOW_17_in_ruleParameter1544); 

                        	newLeafNode(otherlv_13, grammarAccess.getParameterAccess().getRightParenthesisKeyword_5_2());
                        

                    }
                    break;

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleParameter"


    // $ANTLR start "entryRuleReference"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:727:1: entryRuleReference returns [EObject current=null] : iv_ruleReference= ruleReference EOF ;
    public final EObject entryRuleReference() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleReference = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:728:2: (iv_ruleReference= ruleReference EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:729:2: iv_ruleReference= ruleReference EOF
            {
             newCompositeNode(grammarAccess.getReferenceRule()); 
            pushFollow(FOLLOW_ruleReference_in_entryRuleReference1582);
            iv_ruleReference=ruleReference();

            state._fsp--;

             current =iv_ruleReference; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleReference1592); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleReference"


    // $ANTLR start "ruleReference"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:736:1: ruleReference returns [EObject current=null] : ( () otherlv_1= 'ref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? ) ;
    public final EObject ruleReference() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        Token otherlv_2=null;
        Token otherlv_3=null;
        Token otherlv_5=null;
        Token otherlv_7=null;
        Token lv_index_8_0=null;
        Token otherlv_9=null;
        Token otherlv_11=null;
        Token otherlv_13=null;
        EObject lv_value_4_0 = null;

        EObject lv_tags_10_0 = null;

        EObject lv_tags_12_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:739:28: ( ( () otherlv_1= 'ref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:740:1: ( () otherlv_1= 'ref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:740:1: ( () otherlv_1= 'ref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:740:2: () otherlv_1= 'ref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )?
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:740:2: ()
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:741:5: 
            {

                    current = forceCreateModelElement(
                        grammarAccess.getReferenceAccess().getReferenceAction_0(),
                        current);
                

            }

            otherlv_1=(Token)match(input,24,FOLLOW_24_in_ruleReference1638); 

                	newLeafNode(otherlv_1, grammarAccess.getReferenceAccess().getRefKeyword_1());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:750:1: ( (otherlv_2= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:751:1: (otherlv_2= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:751:1: (otherlv_2= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:752:3: otherlv_2= RULE_ID
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getReferenceRule());
            	        }
                    
            otherlv_2=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleReference1658); 

            		newLeafNode(otherlv_2, grammarAccess.getReferenceAccess().getDefinitionEcucAbstractReferenceDefCrossReference_2_0()); 
            	

            }


            }

            otherlv_3=(Token)match(input,18,FOLLOW_18_in_ruleReference1670); 

                	newLeafNode(otherlv_3, grammarAccess.getReferenceAccess().getEqualsSignKeyword_3());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:767:1: ( (lv_value_4_0= ruleReferenceValue ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:768:1: (lv_value_4_0= ruleReferenceValue )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:768:1: (lv_value_4_0= ruleReferenceValue )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:769:3: lv_value_4_0= ruleReferenceValue
            {
             
            	        newCompositeNode(grammarAccess.getReferenceAccess().getValueReferenceValueParserRuleCall_4_0()); 
            	    
            pushFollow(FOLLOW_ruleReferenceValue_in_ruleReference1691);
            lv_value_4_0=ruleReferenceValue();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getReferenceRule());
            	        }
                   		set(
                   			current, 
                   			"value",
                    		lv_value_4_0, 
                    		"ReferenceValue");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:785:2: (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )?
            int alt19=2;
            int LA19_0 = input.LA(1);

            if ( (LA19_0==14) ) {
                alt19=1;
            }
            switch (alt19) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:785:4: otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')'
                    {
                    otherlv_5=(Token)match(input,14,FOLLOW_14_in_ruleReference1704); 

                        	newLeafNode(otherlv_5, grammarAccess.getReferenceAccess().getLeftParenthesisKeyword_5_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:789:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:791:1: ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:791:1: ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:792:2: ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:795:2: ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:796:3: ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:796:3: ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )*
                    loop18:
                    do {
                        int alt18=3;
                        int LA18_0 = input.LA(1);

                        if ( LA18_0 ==22 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                            alt18=1;
                        }
                        else if ( LA18_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                            alt18=2;
                        }


                        switch (alt18) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:798:4: ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:798:4: ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:799:5: {...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleReference", "getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:799:108: ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:800:6: ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:803:6: ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:803:7: {...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleReference", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:803:16: (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:803:18: otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) )
                    	    {
                    	    otherlv_7=(Token)match(input,22,FOLLOW_22_in_ruleReference1762); 

                    	        	newLeafNode(otherlv_7, grammarAccess.getReferenceAccess().getIndexKeyword_5_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:807:1: ( (lv_index_8_0= RULE_INT ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:808:1: (lv_index_8_0= RULE_INT )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:808:1: (lv_index_8_0= RULE_INT )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:809:3: lv_index_8_0= RULE_INT
                    	    {
                    	    lv_index_8_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleReference1779); 

                    	    			newLeafNode(lv_index_8_0, grammarAccess.getReferenceAccess().getIndexINTTerminalRuleCall_5_1_0_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getReferenceRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"index",
                    	            		lv_index_8_0, 
                    	            		"INT");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:832:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:832:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:833:5: {...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleReference", "getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:833:108: ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:834:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:837:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:837:7: {...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleReference", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:837:16: (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:837:18: otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_9=(Token)match(input,15,FOLLOW_15_in_ruleReference1852); 

                    	        	newLeafNode(otherlv_9, grammarAccess.getReferenceAccess().getTagsKeyword_5_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:841:1: ( (lv_tags_10_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:842:1: (lv_tags_10_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:842:1: (lv_tags_10_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:843:3: lv_tags_10_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getReferenceAccess().getTagsTagParserRuleCall_5_1_1_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleReference1873);
                    	    lv_tags_10_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getReferenceRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_10_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:859:2: (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    loop17:
                    	    do {
                    	        int alt17=2;
                    	        int LA17_0 = input.LA(1);

                    	        if ( (LA17_0==16) ) {
                    	            alt17=1;
                    	        }


                    	        switch (alt17) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:859:4: otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_11=(Token)match(input,16,FOLLOW_16_in_ruleReference1886); 

                    	    	        	newLeafNode(otherlv_11, grammarAccess.getReferenceAccess().getCommaKeyword_5_1_1_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:863:1: ( (lv_tags_12_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:864:1: (lv_tags_12_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:864:1: (lv_tags_12_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:865:3: lv_tags_12_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getReferenceAccess().getTagsTagParserRuleCall_5_1_1_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleReference1907);
                    	    	    lv_tags_12_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getReferenceRule());
                    	    	    	        }
                    	    	           		add(
                    	    	           			current, 
                    	    	           			"tags",
                    	    	            		lv_tags_12_0, 
                    	    	            		"Tag");
                    	    	    	        afterParserOrEnumRuleCall();
                    	    	    	    

                    	    	    }


                    	    	    }


                    	    	    }
                    	    	    break;

                    	    	default :
                    	    	    break loop17;
                    	        }
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop18;
                        }
                    } while (true);


                    }


                    }

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getReferenceAccess().getUnorderedGroup_5_1());
                    	

                    }

                    otherlv_13=(Token)match(input,17,FOLLOW_17_in_ruleReference1962); 

                        	newLeafNode(otherlv_13, grammarAccess.getReferenceAccess().getRightParenthesisKeyword_5_2());
                        

                    }
                    break;

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleReference"


    // $ANTLR start "entryRuleInstanceReference"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:907:1: entryRuleInstanceReference returns [EObject current=null] : iv_ruleInstanceReference= ruleInstanceReference EOF ;
    public final EObject entryRuleInstanceReference() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleInstanceReference = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:908:2: (iv_ruleInstanceReference= ruleInstanceReference EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:909:2: iv_ruleInstanceReference= ruleInstanceReference EOF
            {
             newCompositeNode(grammarAccess.getInstanceReferenceRule()); 
            pushFollow(FOLLOW_ruleInstanceReference_in_entryRuleInstanceReference2000);
            iv_ruleInstanceReference=ruleInstanceReference();

            state._fsp--;

             current =iv_ruleInstanceReference; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleInstanceReference2010); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleInstanceReference"


    // $ANTLR start "ruleInstanceReference"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:916:1: ruleInstanceReference returns [EObject current=null] : ( () otherlv_1= 'iref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleInstanceReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? ) ;
    public final EObject ruleInstanceReference() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        Token otherlv_2=null;
        Token otherlv_3=null;
        Token otherlv_5=null;
        Token otherlv_7=null;
        Token lv_index_8_0=null;
        Token otherlv_9=null;
        Token otherlv_11=null;
        Token otherlv_13=null;
        EObject lv_value_4_0 = null;

        EObject lv_tags_10_0 = null;

        EObject lv_tags_12_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:919:28: ( ( () otherlv_1= 'iref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleInstanceReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:920:1: ( () otherlv_1= 'iref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleInstanceReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:920:1: ( () otherlv_1= 'iref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleInstanceReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )? )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:920:2: () otherlv_1= 'iref' ( (otherlv_2= RULE_ID ) ) otherlv_3= '=' ( (lv_value_4_0= ruleInstanceReferenceValue ) ) (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )?
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:920:2: ()
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:921:5: 
            {

                    current = forceCreateModelElement(
                        grammarAccess.getInstanceReferenceAccess().getInstanceReferenceAction_0(),
                        current);
                

            }

            otherlv_1=(Token)match(input,25,FOLLOW_25_in_ruleInstanceReference2056); 

                	newLeafNode(otherlv_1, grammarAccess.getInstanceReferenceAccess().getIrefKeyword_1());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:930:1: ( (otherlv_2= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:931:1: (otherlv_2= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:931:1: (otherlv_2= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:932:3: otherlv_2= RULE_ID
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getInstanceReferenceRule());
            	        }
                    
            otherlv_2=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleInstanceReference2076); 

            		newLeafNode(otherlv_2, grammarAccess.getInstanceReferenceAccess().getDefinitionEcucAbstractReferenceDefCrossReference_2_0()); 
            	

            }


            }

            otherlv_3=(Token)match(input,18,FOLLOW_18_in_ruleInstanceReference2088); 

                	newLeafNode(otherlv_3, grammarAccess.getInstanceReferenceAccess().getEqualsSignKeyword_3());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:947:1: ( (lv_value_4_0= ruleInstanceReferenceValue ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:948:1: (lv_value_4_0= ruleInstanceReferenceValue )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:948:1: (lv_value_4_0= ruleInstanceReferenceValue )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:949:3: lv_value_4_0= ruleInstanceReferenceValue
            {
             
            	        newCompositeNode(grammarAccess.getInstanceReferenceAccess().getValueInstanceReferenceValueParserRuleCall_4_0()); 
            	    
            pushFollow(FOLLOW_ruleInstanceReferenceValue_in_ruleInstanceReference2109);
            lv_value_4_0=ruleInstanceReferenceValue();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getInstanceReferenceRule());
            	        }
                   		set(
                   			current, 
                   			"value",
                    		lv_value_4_0, 
                    		"InstanceReferenceValue");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:965:2: (otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')' )?
            int alt22=2;
            int LA22_0 = input.LA(1);

            if ( (LA22_0==14) ) {
                alt22=1;
            }
            switch (alt22) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:965:4: otherlv_5= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_13= ')'
                    {
                    otherlv_5=(Token)match(input,14,FOLLOW_14_in_ruleInstanceReference2122); 

                        	newLeafNode(otherlv_5, grammarAccess.getInstanceReferenceAccess().getLeftParenthesisKeyword_5_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:969:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:971:1: ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:971:1: ( ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:972:2: ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:975:2: ( ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:976:3: ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:976:3: ( ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) )*
                    loop21:
                    do {
                        int alt21=3;
                        int LA21_0 = input.LA(1);

                        if ( LA21_0 ==22 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                            alt21=1;
                        }
                        else if ( LA21_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                            alt21=2;
                        }


                        switch (alt21) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:978:4: ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:978:4: ({...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:979:5: {...}? => ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReference", "getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:979:116: ( ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:980:6: ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:983:6: ({...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:983:7: {...}? => (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReference", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:983:16: (otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:983:18: otherlv_7= 'index' ( (lv_index_8_0= RULE_INT ) )
                    	    {
                    	    otherlv_7=(Token)match(input,22,FOLLOW_22_in_ruleInstanceReference2180); 

                    	        	newLeafNode(otherlv_7, grammarAccess.getInstanceReferenceAccess().getIndexKeyword_5_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:987:1: ( (lv_index_8_0= RULE_INT ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:988:1: (lv_index_8_0= RULE_INT )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:988:1: (lv_index_8_0= RULE_INT )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:989:3: lv_index_8_0= RULE_INT
                    	    {
                    	    lv_index_8_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleInstanceReference2197); 

                    	    			newLeafNode(lv_index_8_0, grammarAccess.getInstanceReferenceAccess().getIndexINTTerminalRuleCall_5_1_0_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getInstanceReferenceRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"index",
                    	            		lv_index_8_0, 
                    	            		"INT");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1012:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1012:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1013:5: {...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReference", "getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1013:116: ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1014:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1017:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1017:7: {...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReference", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1017:16: (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1017:18: otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_9=(Token)match(input,15,FOLLOW_15_in_ruleInstanceReference2270); 

                    	        	newLeafNode(otherlv_9, grammarAccess.getInstanceReferenceAccess().getTagsKeyword_5_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1021:1: ( (lv_tags_10_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1022:1: (lv_tags_10_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1022:1: (lv_tags_10_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1023:3: lv_tags_10_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getInstanceReferenceAccess().getTagsTagParserRuleCall_5_1_1_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleInstanceReference2291);
                    	    lv_tags_10_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getInstanceReferenceRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_10_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1039:2: (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    loop20:
                    	    do {
                    	        int alt20=2;
                    	        int LA20_0 = input.LA(1);

                    	        if ( (LA20_0==16) ) {
                    	            alt20=1;
                    	        }


                    	        switch (alt20) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1039:4: otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_11=(Token)match(input,16,FOLLOW_16_in_ruleInstanceReference2304); 

                    	    	        	newLeafNode(otherlv_11, grammarAccess.getInstanceReferenceAccess().getCommaKeyword_5_1_1_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1043:1: ( (lv_tags_12_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1044:1: (lv_tags_12_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1044:1: (lv_tags_12_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1045:3: lv_tags_12_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getInstanceReferenceAccess().getTagsTagParserRuleCall_5_1_1_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleInstanceReference2325);
                    	    	    lv_tags_12_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getInstanceReferenceRule());
                    	    	    	        }
                    	    	           		add(
                    	    	           			current, 
                    	    	           			"tags",
                    	    	            		lv_tags_12_0, 
                    	    	            		"Tag");
                    	    	    	        afterParserOrEnumRuleCall();
                    	    	    	    

                    	    	    }


                    	    	    }


                    	    	    }
                    	    	    break;

                    	    	default :
                    	    	    break loop20;
                    	        }
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop21;
                        }
                    } while (true);


                    }


                    }

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getInstanceReferenceAccess().getUnorderedGroup_5_1());
                    	

                    }

                    otherlv_13=(Token)match(input,17,FOLLOW_17_in_ruleInstanceReference2380); 

                        	newLeafNode(otherlv_13, grammarAccess.getInstanceReferenceAccess().getRightParenthesisKeyword_5_2());
                        

                    }
                    break;

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleInstanceReference"


    // $ANTLR start "entryRuleReferenceValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1087:1: entryRuleReferenceValue returns [EObject current=null] : iv_ruleReferenceValue= ruleReferenceValue EOF ;
    public final EObject entryRuleReferenceValue() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleReferenceValue = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1088:2: (iv_ruleReferenceValue= ruleReferenceValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1089:2: iv_ruleReferenceValue= ruleReferenceValue EOF
            {
             newCompositeNode(grammarAccess.getReferenceValueRule()); 
            pushFollow(FOLLOW_ruleReferenceValue_in_entryRuleReferenceValue2418);
            iv_ruleReferenceValue=ruleReferenceValue();

            state._fsp--;

             current =iv_ruleReferenceValue; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleReferenceValue2428); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleReferenceValue"


    // $ANTLR start "ruleReferenceValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1096:1: ruleReferenceValue returns [EObject current=null] : ( ( ruleFQN ) ) ;
    public final EObject ruleReferenceValue() throws RecognitionException {
        EObject current = null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1099:28: ( ( ( ruleFQN ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1100:1: ( ( ruleFQN ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1100:1: ( ( ruleFQN ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1101:1: ( ruleFQN )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1101:1: ( ruleFQN )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1102:3: ruleFQN
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getReferenceValueRule());
            	        }
                    
             
            	        newCompositeNode(grammarAccess.getReferenceValueAccess().getContainerEObjectCrossReference_0()); 
            	    
            pushFollow(FOLLOW_ruleFQN_in_ruleReferenceValue2475);
            ruleFQN();

            state._fsp--;

             
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleReferenceValue"


    // $ANTLR start "entryRuleInstanceReferenceValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1123:1: entryRuleInstanceReferenceValue returns [EObject current=null] : iv_ruleInstanceReferenceValue= ruleInstanceReferenceValue EOF ;
    public final EObject entryRuleInstanceReferenceValue() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleInstanceReferenceValue = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1124:2: (iv_ruleInstanceReferenceValue= ruleInstanceReferenceValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1125:2: iv_ruleInstanceReferenceValue= ruleInstanceReferenceValue EOF
            {
             newCompositeNode(grammarAccess.getInstanceReferenceValueRule()); 
            pushFollow(FOLLOW_ruleInstanceReferenceValue_in_entryRuleInstanceReferenceValue2510);
            iv_ruleInstanceReferenceValue=ruleInstanceReferenceValue();

            state._fsp--;

             current =iv_ruleInstanceReferenceValue; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleInstanceReferenceValue2520); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleInstanceReferenceValue"


    // $ANTLR start "ruleInstanceReferenceValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1132:1: ruleInstanceReferenceValue returns [EObject current=null] : ( ( (lv_contexts_0_0= ruleContextChain ) ) otherlv_1= '->' ( ( ruleFQN ) ) ) ;
    public final EObject ruleInstanceReferenceValue() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        EObject lv_contexts_0_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1135:28: ( ( ( (lv_contexts_0_0= ruleContextChain ) ) otherlv_1= '->' ( ( ruleFQN ) ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1136:1: ( ( (lv_contexts_0_0= ruleContextChain ) ) otherlv_1= '->' ( ( ruleFQN ) ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1136:1: ( ( (lv_contexts_0_0= ruleContextChain ) ) otherlv_1= '->' ( ( ruleFQN ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1136:2: ( (lv_contexts_0_0= ruleContextChain ) ) otherlv_1= '->' ( ( ruleFQN ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1136:2: ( (lv_contexts_0_0= ruleContextChain ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1137:1: (lv_contexts_0_0= ruleContextChain )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1137:1: (lv_contexts_0_0= ruleContextChain )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1138:3: lv_contexts_0_0= ruleContextChain
            {
             
            	        newCompositeNode(grammarAccess.getInstanceReferenceValueAccess().getContextsContextChainParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_ruleContextChain_in_ruleInstanceReferenceValue2566);
            lv_contexts_0_0=ruleContextChain();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getInstanceReferenceValueRule());
            	        }
                   		set(
                   			current, 
                   			"contexts",
                    		lv_contexts_0_0, 
                    		"ContextChain");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            otherlv_1=(Token)match(input,26,FOLLOW_26_in_ruleInstanceReferenceValue2578); 

                	newLeafNode(otherlv_1, grammarAccess.getInstanceReferenceValueAccess().getHyphenMinusGreaterThanSignKeyword_1());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1158:1: ( ( ruleFQN ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1159:1: ( ruleFQN )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1159:1: ( ruleFQN )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1160:3: ruleFQN
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getInstanceReferenceValueRule());
            	        }
                    
             
            	        newCompositeNode(grammarAccess.getInstanceReferenceValueAccess().getTargetEObjectCrossReference_2_0()); 
            	    
            pushFollow(FOLLOW_ruleFQN_in_ruleInstanceReferenceValue2601);
            ruleFQN();

            state._fsp--;

             
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleInstanceReferenceValue"


    // $ANTLR start "entryRuleContextChain"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1181:1: entryRuleContextChain returns [EObject current=null] : iv_ruleContextChain= ruleContextChain EOF ;
    public final EObject entryRuleContextChain() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleContextChain = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1182:2: (iv_ruleContextChain= ruleContextChain EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1183:2: iv_ruleContextChain= ruleContextChain EOF
            {
             newCompositeNode(grammarAccess.getContextChainRule()); 
            pushFollow(FOLLOW_ruleContextChain_in_entryRuleContextChain2637);
            iv_ruleContextChain=ruleContextChain();

            state._fsp--;

             current =iv_ruleContextChain; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleContextChain2647); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleContextChain"


    // $ANTLR start "ruleContextChain"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1190:1: ruleContextChain returns [EObject current=null] : (this_Context_0= ruleContext ( () otherlv_2= ',' ( ( ruleFQN ) ) )* ) ;
    public final EObject ruleContextChain() throws RecognitionException {
        EObject current = null;

        Token otherlv_2=null;
        EObject this_Context_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1193:28: ( (this_Context_0= ruleContext ( () otherlv_2= ',' ( ( ruleFQN ) ) )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1194:1: (this_Context_0= ruleContext ( () otherlv_2= ',' ( ( ruleFQN ) ) )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1194:1: (this_Context_0= ruleContext ( () otherlv_2= ',' ( ( ruleFQN ) ) )* )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1195:5: this_Context_0= ruleContext ( () otherlv_2= ',' ( ( ruleFQN ) ) )*
            {
             
                    newCompositeNode(grammarAccess.getContextChainAccess().getContextParserRuleCall_0()); 
                
            pushFollow(FOLLOW_ruleContext_in_ruleContextChain2694);
            this_Context_0=ruleContext();

            state._fsp--;

             
                    current = this_Context_0; 
                    afterParserOrEnumRuleCall();
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1203:1: ( () otherlv_2= ',' ( ( ruleFQN ) ) )*
            loop23:
            do {
                int alt23=2;
                int LA23_0 = input.LA(1);

                if ( (LA23_0==16) ) {
                    alt23=1;
                }


                switch (alt23) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1203:2: () otherlv_2= ',' ( ( ruleFQN ) )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1203:2: ()
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1204:5: 
            	    {

            	            current = forceCreateModelElementAndSet(
            	                grammarAccess.getContextChainAccess().getContextChainPrevAction_1_0(),
            	                current);
            	        

            	    }

            	    otherlv_2=(Token)match(input,16,FOLLOW_16_in_ruleContextChain2715); 

            	        	newLeafNode(otherlv_2, grammarAccess.getContextChainAccess().getCommaKeyword_1_1());
            	        
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1213:1: ( ( ruleFQN ) )
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1214:1: ( ruleFQN )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1214:1: ( ruleFQN )
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1215:3: ruleFQN
            	    {

            	    			if (current==null) {
            	    	            current = createModelElement(grammarAccess.getContextChainRule());
            	    	        }
            	            
            	     
            	    	        newCompositeNode(grammarAccess.getContextChainAccess().getObjectEObjectCrossReference_1_2_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleFQN_in_ruleContextChain2738);
            	    ruleFQN();

            	    state._fsp--;

            	     
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }


            	    }
            	    break;

            	default :
            	    break loop23;
                }
            } while (true);


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleContextChain"


    // $ANTLR start "entryRuleContext"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1236:1: entryRuleContext returns [EObject current=null] : iv_ruleContext= ruleContext EOF ;
    public final EObject entryRuleContext() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleContext = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1237:2: (iv_ruleContext= ruleContext EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1238:2: iv_ruleContext= ruleContext EOF
            {
             newCompositeNode(grammarAccess.getContextRule()); 
            pushFollow(FOLLOW_ruleContext_in_entryRuleContext2776);
            iv_ruleContext=ruleContext();

            state._fsp--;

             current =iv_ruleContext; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleContext2786); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleContext"


    // $ANTLR start "ruleContext"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1245:1: ruleContext returns [EObject current=null] : ( () ( ( ruleFQN ) ) ) ;
    public final EObject ruleContext() throws RecognitionException {
        EObject current = null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1248:28: ( ( () ( ( ruleFQN ) ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1249:1: ( () ( ( ruleFQN ) ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1249:1: ( () ( ( ruleFQN ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1249:2: () ( ( ruleFQN ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1249:2: ()
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1250:5: 
            {

                    current = forceCreateModelElement(
                        grammarAccess.getContextAccess().getContextAction_0(),
                        current);
                

            }

            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1255:2: ( ( ruleFQN ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1256:1: ( ruleFQN )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1256:1: ( ruleFQN )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1257:3: ruleFQN
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getContextRule());
            	        }
                    
             
            	        newCompositeNode(grammarAccess.getContextAccess().getStartEObjectCrossReference_1_0()); 
            	    
            pushFollow(FOLLOW_ruleFQN_in_ruleContext2843);
            ruleFQN();

            state._fsp--;

             
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleContext"


    // $ANTLR start "entryRuleSimpleValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1278:1: entryRuleSimpleValue returns [EObject current=null] : iv_ruleSimpleValue= ruleSimpleValue EOF ;
    public final EObject entryRuleSimpleValue() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleSimpleValue = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1279:2: (iv_ruleSimpleValue= ruleSimpleValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1280:2: iv_ruleSimpleValue= ruleSimpleValue EOF
            {
             newCompositeNode(grammarAccess.getSimpleValueRule()); 
            pushFollow(FOLLOW_ruleSimpleValue_in_entryRuleSimpleValue2879);
            iv_ruleSimpleValue=ruleSimpleValue();

            state._fsp--;

             current =iv_ruleSimpleValue; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleSimpleValue2889); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleSimpleValue"


    // $ANTLR start "ruleSimpleValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1287:1: ruleSimpleValue returns [EObject current=null] : (this_StringValue_0= ruleStringValue | this_NumericValue_1= ruleNumericValue | this_BooleanValue_2= ruleBooleanValue | this_EnumValue_3= ruleEnumValue ) ;
    public final EObject ruleSimpleValue() throws RecognitionException {
        EObject current = null;

        EObject this_StringValue_0 = null;

        EObject this_NumericValue_1 = null;

        EObject this_BooleanValue_2 = null;

        EObject this_EnumValue_3 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1290:28: ( (this_StringValue_0= ruleStringValue | this_NumericValue_1= ruleNumericValue | this_BooleanValue_2= ruleBooleanValue | this_EnumValue_3= ruleEnumValue ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1291:1: (this_StringValue_0= ruleStringValue | this_NumericValue_1= ruleNumericValue | this_BooleanValue_2= ruleBooleanValue | this_EnumValue_3= ruleEnumValue )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1291:1: (this_StringValue_0= ruleStringValue | this_NumericValue_1= ruleNumericValue | this_BooleanValue_2= ruleBooleanValue | this_EnumValue_3= ruleEnumValue )
            int alt24=4;
            switch ( input.LA(1) ) {
            case RULE_STRING:
                {
                alt24=1;
                }
                break;
            case RULE_INT:
            case 30:
                {
                alt24=2;
                }
                break;
            case 28:
            case 29:
                {
                alt24=3;
                }
                break;
            case 27:
                {
                alt24=4;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 24, 0, input);

                throw nvae;
            }

            switch (alt24) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1292:5: this_StringValue_0= ruleStringValue
                    {
                     
                            newCompositeNode(grammarAccess.getSimpleValueAccess().getStringValueParserRuleCall_0()); 
                        
                    pushFollow(FOLLOW_ruleStringValue_in_ruleSimpleValue2936);
                    this_StringValue_0=ruleStringValue();

                    state._fsp--;

                     
                            current = this_StringValue_0; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1302:5: this_NumericValue_1= ruleNumericValue
                    {
                     
                            newCompositeNode(grammarAccess.getSimpleValueAccess().getNumericValueParserRuleCall_1()); 
                        
                    pushFollow(FOLLOW_ruleNumericValue_in_ruleSimpleValue2963);
                    this_NumericValue_1=ruleNumericValue();

                    state._fsp--;

                     
                            current = this_NumericValue_1; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1312:5: this_BooleanValue_2= ruleBooleanValue
                    {
                     
                            newCompositeNode(grammarAccess.getSimpleValueAccess().getBooleanValueParserRuleCall_2()); 
                        
                    pushFollow(FOLLOW_ruleBooleanValue_in_ruleSimpleValue2990);
                    this_BooleanValue_2=ruleBooleanValue();

                    state._fsp--;

                     
                            current = this_BooleanValue_2; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1322:5: this_EnumValue_3= ruleEnumValue
                    {
                     
                            newCompositeNode(grammarAccess.getSimpleValueAccess().getEnumValueParserRuleCall_3()); 
                        
                    pushFollow(FOLLOW_ruleEnumValue_in_ruleSimpleValue3017);
                    this_EnumValue_3=ruleEnumValue();

                    state._fsp--;

                     
                            current = this_EnumValue_3; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleSimpleValue"


    // $ANTLR start "entryRuleStringValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1338:1: entryRuleStringValue returns [EObject current=null] : iv_ruleStringValue= ruleStringValue EOF ;
    public final EObject entryRuleStringValue() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleStringValue = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1339:2: (iv_ruleStringValue= ruleStringValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1340:2: iv_ruleStringValue= ruleStringValue EOF
            {
             newCompositeNode(grammarAccess.getStringValueRule()); 
            pushFollow(FOLLOW_ruleStringValue_in_entryRuleStringValue3052);
            iv_ruleStringValue=ruleStringValue();

            state._fsp--;

             current =iv_ruleStringValue; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleStringValue3062); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleStringValue"


    // $ANTLR start "ruleStringValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1347:1: ruleStringValue returns [EObject current=null] : ( (lv_value_0_0= RULE_STRING ) ) ;
    public final EObject ruleStringValue() throws RecognitionException {
        EObject current = null;

        Token lv_value_0_0=null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1350:28: ( ( (lv_value_0_0= RULE_STRING ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1351:1: ( (lv_value_0_0= RULE_STRING ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1351:1: ( (lv_value_0_0= RULE_STRING ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1352:1: (lv_value_0_0= RULE_STRING )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1352:1: (lv_value_0_0= RULE_STRING )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1353:3: lv_value_0_0= RULE_STRING
            {
            lv_value_0_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleStringValue3103); 

            			newLeafNode(lv_value_0_0, grammarAccess.getStringValueAccess().getValueSTRINGTerminalRuleCall_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getStringValueRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"value",
                    		lv_value_0_0, 
                    		"STRING");
            	    

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleStringValue"


    // $ANTLR start "entryRuleEnumValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1377:1: entryRuleEnumValue returns [EObject current=null] : iv_ruleEnumValue= ruleEnumValue EOF ;
    public final EObject entryRuleEnumValue() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEnumValue = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1378:2: (iv_ruleEnumValue= ruleEnumValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1379:2: iv_ruleEnumValue= ruleEnumValue EOF
            {
             newCompositeNode(grammarAccess.getEnumValueRule()); 
            pushFollow(FOLLOW_ruleEnumValue_in_entryRuleEnumValue3143);
            iv_ruleEnumValue=ruleEnumValue();

            state._fsp--;

             current =iv_ruleEnumValue; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEnumValue3153); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleEnumValue"


    // $ANTLR start "ruleEnumValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1386:1: ruleEnumValue returns [EObject current=null] : ( (lv_literal_0_0= ruleEID ) ) ;
    public final EObject ruleEnumValue() throws RecognitionException {
        EObject current = null;

        AntlrDatatypeRuleToken lv_literal_0_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1389:28: ( ( (lv_literal_0_0= ruleEID ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1390:1: ( (lv_literal_0_0= ruleEID ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1390:1: ( (lv_literal_0_0= ruleEID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1391:1: (lv_literal_0_0= ruleEID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1391:1: (lv_literal_0_0= ruleEID )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1392:3: lv_literal_0_0= ruleEID
            {
             
            	        newCompositeNode(grammarAccess.getEnumValueAccess().getLiteralEIDParserRuleCall_0()); 
            	    
            pushFollow(FOLLOW_ruleEID_in_ruleEnumValue3198);
            lv_literal_0_0=ruleEID();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getEnumValueRule());
            	        }
                   		set(
                   			current, 
                   			"literal",
                    		lv_literal_0_0, 
                    		"EID");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleEnumValue"


    // $ANTLR start "entryRuleEID"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1416:1: entryRuleEID returns [String current=null] : iv_ruleEID= ruleEID EOF ;
    public final String entryRuleEID() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleEID = null;


         
        		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
        	
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1420:2: (iv_ruleEID= ruleEID EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1421:2: iv_ruleEID= ruleEID EOF
            {
             newCompositeNode(grammarAccess.getEIDRule()); 
            pushFollow(FOLLOW_ruleEID_in_entryRuleEID3240);
            iv_ruleEID=ruleEID();

            state._fsp--;

             current =iv_ruleEID.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEID3251); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {

            	myHiddenTokenState.restore();

        }
        return current;
    }
    // $ANTLR end "entryRuleEID"


    // $ANTLR start "ruleEID"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1431:1: ruleEID returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (kw= '.' this_ID_1= RULE_ID ) ;
    public final AntlrDatatypeRuleToken ruleEID() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;
        Token this_ID_1=null;

         enterRule(); 
        		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1435:28: ( (kw= '.' this_ID_1= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1436:1: (kw= '.' this_ID_1= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1436:1: (kw= '.' this_ID_1= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1437:2: kw= '.' this_ID_1= RULE_ID
            {
            kw=(Token)match(input,27,FOLLOW_27_in_ruleEID3293); 

                    current.merge(kw);
                    newLeafNode(kw, grammarAccess.getEIDAccess().getFullStopKeyword_0()); 
                
            this_ID_1=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleEID3308); 

            		current.merge(this_ID_1);
                
             
                newLeafNode(this_ID_1, grammarAccess.getEIDAccess().getIDTerminalRuleCall_1()); 
                

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {

            	myHiddenTokenState.restore();

        }
        return current;
    }
    // $ANTLR end "ruleEID"


    // $ANTLR start "entryRuleBooleanValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1460:1: entryRuleBooleanValue returns [EObject current=null] : iv_ruleBooleanValue= ruleBooleanValue EOF ;
    public final EObject entryRuleBooleanValue() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleBooleanValue = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1461:2: (iv_ruleBooleanValue= ruleBooleanValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1462:2: iv_ruleBooleanValue= ruleBooleanValue EOF
            {
             newCompositeNode(grammarAccess.getBooleanValueRule()); 
            pushFollow(FOLLOW_ruleBooleanValue_in_entryRuleBooleanValue3357);
            iv_ruleBooleanValue=ruleBooleanValue();

            state._fsp--;

             current =iv_ruleBooleanValue; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleBooleanValue3367); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleBooleanValue"


    // $ANTLR start "ruleBooleanValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1469:1: ruleBooleanValue returns [EObject current=null] : ( (lv_value_0_0= ruleBooleanLiteral ) ) ;
    public final EObject ruleBooleanValue() throws RecognitionException {
        EObject current = null;

        Enumerator lv_value_0_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1472:28: ( ( (lv_value_0_0= ruleBooleanLiteral ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1473:1: ( (lv_value_0_0= ruleBooleanLiteral ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1473:1: ( (lv_value_0_0= ruleBooleanLiteral ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1474:1: (lv_value_0_0= ruleBooleanLiteral )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1474:1: (lv_value_0_0= ruleBooleanLiteral )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1475:3: lv_value_0_0= ruleBooleanLiteral
            {
             
            	        newCompositeNode(grammarAccess.getBooleanValueAccess().getValueBooleanLiteralEnumRuleCall_0()); 
            	    
            pushFollow(FOLLOW_ruleBooleanLiteral_in_ruleBooleanValue3412);
            lv_value_0_0=ruleBooleanLiteral();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getBooleanValueRule());
            	        }
                   		set(
                   			current, 
                   			"value",
                    		lv_value_0_0, 
                    		"BooleanLiteral");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleBooleanValue"


    // $ANTLR start "entryRuleNumericValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1499:1: entryRuleNumericValue returns [EObject current=null] : iv_ruleNumericValue= ruleNumericValue EOF ;
    public final EObject entryRuleNumericValue() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleNumericValue = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1500:2: (iv_ruleNumericValue= ruleNumericValue EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1501:2: iv_ruleNumericValue= ruleNumericValue EOF
            {
             newCompositeNode(grammarAccess.getNumericValueRule()); 
            pushFollow(FOLLOW_ruleNumericValue_in_entryRuleNumericValue3447);
            iv_ruleNumericValue=ruleNumericValue();

            state._fsp--;

             current =iv_ruleNumericValue; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleNumericValue3457); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleNumericValue"


    // $ANTLR start "ruleNumericValue"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1508:1: ruleNumericValue returns [EObject current=null] : ( (lv_value_0_0= ruleNUMERIC ) ) ;
    public final EObject ruleNumericValue() throws RecognitionException {
        EObject current = null;

        AntlrDatatypeRuleToken lv_value_0_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1511:28: ( ( (lv_value_0_0= ruleNUMERIC ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1512:1: ( (lv_value_0_0= ruleNUMERIC ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1512:1: ( (lv_value_0_0= ruleNUMERIC ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1513:1: (lv_value_0_0= ruleNUMERIC )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1513:1: (lv_value_0_0= ruleNUMERIC )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1514:3: lv_value_0_0= ruleNUMERIC
            {
             
            	        newCompositeNode(grammarAccess.getNumericValueAccess().getValueNUMERICParserRuleCall_0()); 
            	    
            pushFollow(FOLLOW_ruleNUMERIC_in_ruleNumericValue3502);
            lv_value_0_0=ruleNUMERIC();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getNumericValueRule());
            	        }
                   		set(
                   			current, 
                   			"value",
                    		lv_value_0_0, 
                    		"NUMERIC");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleNumericValue"


    // $ANTLR start "entryRuleTag"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1538:1: entryRuleTag returns [EObject current=null] : iv_ruleTag= ruleTag EOF ;
    public final EObject entryRuleTag() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTag = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1539:2: (iv_ruleTag= ruleTag EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1540:2: iv_ruleTag= ruleTag EOF
            {
             newCompositeNode(grammarAccess.getTagRule()); 
            pushFollow(FOLLOW_ruleTag_in_entryRuleTag3537);
            iv_ruleTag=ruleTag();

            state._fsp--;

             current =iv_ruleTag; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleTag3547); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleTag"


    // $ANTLR start "ruleTag"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1547:1: ruleTag returns [EObject current=null] : ( ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) ) ) ;
    public final EObject ruleTag() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        AntlrDatatypeRuleToken lv_key_0_0 = null;

        AntlrDatatypeRuleToken lv_value_2_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1550:28: ( ( ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1551:1: ( ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1551:1: ( ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1551:2: ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1551:2: ( (lv_key_0_0= ruleKEY ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1552:1: (lv_key_0_0= ruleKEY )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1552:1: (lv_key_0_0= ruleKEY )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1553:3: lv_key_0_0= ruleKEY
            {
             
            	        newCompositeNode(grammarAccess.getTagAccess().getKeyKEYParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_ruleKEY_in_ruleTag3593);
            lv_key_0_0=ruleKEY();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getTagRule());
            	        }
                   		set(
                   			current, 
                   			"key",
                    		lv_key_0_0, 
                    		"KEY");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            otherlv_1=(Token)match(input,26,FOLLOW_26_in_ruleTag3605); 

                	newLeafNode(otherlv_1, grammarAccess.getTagAccess().getHyphenMinusGreaterThanSignKeyword_1());
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1573:1: ( (lv_value_2_0= ruleVALUE ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1574:1: (lv_value_2_0= ruleVALUE )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1574:1: (lv_value_2_0= ruleVALUE )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1575:3: lv_value_2_0= ruleVALUE
            {
             
            	        newCompositeNode(grammarAccess.getTagAccess().getValueVALUEParserRuleCall_2_0()); 
            	    
            pushFollow(FOLLOW_ruleVALUE_in_ruleTag3626);
            lv_value_2_0=ruleVALUE();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getTagRule());
            	        }
                   		set(
                   			current, 
                   			"value",
                    		lv_value_2_0, 
                    		"VALUE");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleTag"


    // $ANTLR start "entryRuleVALUE"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1599:1: entryRuleVALUE returns [String current=null] : iv_ruleVALUE= ruleVALUE EOF ;
    public final String entryRuleVALUE() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleVALUE = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1600:2: (iv_ruleVALUE= ruleVALUE EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1601:2: iv_ruleVALUE= ruleVALUE EOF
            {
             newCompositeNode(grammarAccess.getVALUERule()); 
            pushFollow(FOLLOW_ruleVALUE_in_entryRuleVALUE3663);
            iv_ruleVALUE=ruleVALUE();

            state._fsp--;

             current =iv_ruleVALUE.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleVALUE3674); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleVALUE"


    // $ANTLR start "ruleVALUE"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1608:1: ruleVALUE returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMERIC_2= ruleNUMERIC | kw= 'true' | kw= 'false' ) ;
    public final AntlrDatatypeRuleToken ruleVALUE() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_STRING_0=null;
        Token this_ID_1=null;
        Token kw=null;
        AntlrDatatypeRuleToken this_NUMERIC_2 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1611:28: ( (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMERIC_2= ruleNUMERIC | kw= 'true' | kw= 'false' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1612:1: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMERIC_2= ruleNUMERIC | kw= 'true' | kw= 'false' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1612:1: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMERIC_2= ruleNUMERIC | kw= 'true' | kw= 'false' )
            int alt25=5;
            switch ( input.LA(1) ) {
            case RULE_STRING:
                {
                alt25=1;
                }
                break;
            case RULE_ID:
                {
                alt25=2;
                }
                break;
            case RULE_INT:
            case 30:
                {
                alt25=3;
                }
                break;
            case 28:
                {
                alt25=4;
                }
                break;
            case 29:
                {
                alt25=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 25, 0, input);

                throw nvae;
            }

            switch (alt25) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1612:6: this_STRING_0= RULE_STRING
                    {
                    this_STRING_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleVALUE3714); 

                    		current.merge(this_STRING_0);
                        
                     
                        newLeafNode(this_STRING_0, grammarAccess.getVALUEAccess().getSTRINGTerminalRuleCall_0()); 
                        

                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1620:10: this_ID_1= RULE_ID
                    {
                    this_ID_1=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleVALUE3740); 

                    		current.merge(this_ID_1);
                        
                     
                        newLeafNode(this_ID_1, grammarAccess.getVALUEAccess().getIDTerminalRuleCall_1()); 
                        

                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1629:5: this_NUMERIC_2= ruleNUMERIC
                    {
                     
                            newCompositeNode(grammarAccess.getVALUEAccess().getNUMERICParserRuleCall_2()); 
                        
                    pushFollow(FOLLOW_ruleNUMERIC_in_ruleVALUE3773);
                    this_NUMERIC_2=ruleNUMERIC();

                    state._fsp--;


                    		current.merge(this_NUMERIC_2);
                        
                     
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1641:2: kw= 'true'
                    {
                    kw=(Token)match(input,28,FOLLOW_28_in_ruleVALUE3797); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getVALUEAccess().getTrueKeyword_3()); 
                        

                    }
                    break;
                case 5 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1648:2: kw= 'false'
                    {
                    kw=(Token)match(input,29,FOLLOW_29_in_ruleVALUE3816); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getVALUEAccess().getFalseKeyword_4()); 
                        

                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleVALUE"


    // $ANTLR start "entryRuleKEY"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1661:1: entryRuleKEY returns [String current=null] : iv_ruleKEY= ruleKEY EOF ;
    public final String entryRuleKEY() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleKEY = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1662:2: (iv_ruleKEY= ruleKEY EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1663:2: iv_ruleKEY= ruleKEY EOF
            {
             newCompositeNode(grammarAccess.getKEYRule()); 
            pushFollow(FOLLOW_ruleKEY_in_entryRuleKEY3857);
            iv_ruleKEY=ruleKEY();

            state._fsp--;

             current =iv_ruleKEY.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleKEY3868); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleKEY"


    // $ANTLR start "ruleKEY"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1670:1: ruleKEY returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMERIC_2= ruleNUMERIC | kw= 'true' | kw= 'false' ) ;
    public final AntlrDatatypeRuleToken ruleKEY() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_STRING_0=null;
        Token this_ID_1=null;
        Token kw=null;
        AntlrDatatypeRuleToken this_NUMERIC_2 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1673:28: ( (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMERIC_2= ruleNUMERIC | kw= 'true' | kw= 'false' ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1674:1: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMERIC_2= ruleNUMERIC | kw= 'true' | kw= 'false' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1674:1: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMERIC_2= ruleNUMERIC | kw= 'true' | kw= 'false' )
            int alt26=5;
            switch ( input.LA(1) ) {
            case RULE_STRING:
                {
                alt26=1;
                }
                break;
            case RULE_ID:
                {
                alt26=2;
                }
                break;
            case RULE_INT:
            case 30:
                {
                alt26=3;
                }
                break;
            case 28:
                {
                alt26=4;
                }
                break;
            case 29:
                {
                alt26=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 26, 0, input);

                throw nvae;
            }

            switch (alt26) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1674:6: this_STRING_0= RULE_STRING
                    {
                    this_STRING_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleKEY3908); 

                    		current.merge(this_STRING_0);
                        
                     
                        newLeafNode(this_STRING_0, grammarAccess.getKEYAccess().getSTRINGTerminalRuleCall_0()); 
                        

                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1682:10: this_ID_1= RULE_ID
                    {
                    this_ID_1=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleKEY3934); 

                    		current.merge(this_ID_1);
                        
                     
                        newLeafNode(this_ID_1, grammarAccess.getKEYAccess().getIDTerminalRuleCall_1()); 
                        

                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1691:5: this_NUMERIC_2= ruleNUMERIC
                    {
                     
                            newCompositeNode(grammarAccess.getKEYAccess().getNUMERICParserRuleCall_2()); 
                        
                    pushFollow(FOLLOW_ruleNUMERIC_in_ruleKEY3967);
                    this_NUMERIC_2=ruleNUMERIC();

                    state._fsp--;


                    		current.merge(this_NUMERIC_2);
                        
                     
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1703:2: kw= 'true'
                    {
                    kw=(Token)match(input,28,FOLLOW_28_in_ruleKEY3991); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getKEYAccess().getTrueKeyword_3()); 
                        

                    }
                    break;
                case 5 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1710:2: kw= 'false'
                    {
                    kw=(Token)match(input,29,FOLLOW_29_in_ruleKEY4010); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getKEYAccess().getFalseKeyword_4()); 
                        

                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleKEY"


    // $ANTLR start "entryRuleNUMERIC"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1723:1: entryRuleNUMERIC returns [String current=null] : iv_ruleNUMERIC= ruleNUMERIC EOF ;
    public final String entryRuleNUMERIC() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleNUMERIC = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1724:2: (iv_ruleNUMERIC= ruleNUMERIC EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1725:2: iv_ruleNUMERIC= ruleNUMERIC EOF
            {
             newCompositeNode(grammarAccess.getNUMERICRule()); 
            pushFollow(FOLLOW_ruleNUMERIC_in_entryRuleNUMERIC4051);
            iv_ruleNUMERIC=ruleNUMERIC();

            state._fsp--;

             current =iv_ruleNUMERIC.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleNUMERIC4062); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleNUMERIC"


    // $ANTLR start "ruleNUMERIC"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1732:1: ruleNUMERIC returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : ( (kw= '-' )? this_INT_1= RULE_INT (kw= '.' this_INT_3= RULE_INT )? ) ;
    public final AntlrDatatypeRuleToken ruleNUMERIC() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;
        Token this_INT_1=null;
        Token this_INT_3=null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1735:28: ( ( (kw= '-' )? this_INT_1= RULE_INT (kw= '.' this_INT_3= RULE_INT )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1736:1: ( (kw= '-' )? this_INT_1= RULE_INT (kw= '.' this_INT_3= RULE_INT )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1736:1: ( (kw= '-' )? this_INT_1= RULE_INT (kw= '.' this_INT_3= RULE_INT )? )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1736:2: (kw= '-' )? this_INT_1= RULE_INT (kw= '.' this_INT_3= RULE_INT )?
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1736:2: (kw= '-' )?
            int alt27=2;
            int LA27_0 = input.LA(1);

            if ( (LA27_0==30) ) {
                alt27=1;
            }
            switch (alt27) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1737:2: kw= '-'
                    {
                    kw=(Token)match(input,30,FOLLOW_30_in_ruleNUMERIC4101); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getNUMERICAccess().getHyphenMinusKeyword_0()); 
                        

                    }
                    break;

            }

            this_INT_1=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleNUMERIC4118); 

            		current.merge(this_INT_1);
                
             
                newLeafNode(this_INT_1, grammarAccess.getNUMERICAccess().getINTTerminalRuleCall_1()); 
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1749:1: (kw= '.' this_INT_3= RULE_INT )?
            int alt28=2;
            int LA28_0 = input.LA(1);

            if ( (LA28_0==27) ) {
                alt28=1;
            }
            switch (alt28) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1750:2: kw= '.' this_INT_3= RULE_INT
                    {
                    kw=(Token)match(input,27,FOLLOW_27_in_ruleNUMERIC4137); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getNUMERICAccess().getFullStopKeyword_2_0()); 
                        
                    this_INT_3=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleNUMERIC4152); 

                    		current.merge(this_INT_3);
                        
                     
                        newLeafNode(this_INT_3, grammarAccess.getNUMERICAccess().getINTTerminalRuleCall_2_1()); 
                        

                    }
                    break;

            }


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleNUMERIC"


    // $ANTLR start "entryRuleFQN"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1770:1: entryRuleFQN returns [String current=null] : iv_ruleFQN= ruleFQN EOF ;
    public final String entryRuleFQN() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleFQN = null;


         
        		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
        	
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1774:2: (iv_ruleFQN= ruleFQN EOF )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1775:2: iv_ruleFQN= ruleFQN EOF
            {
             newCompositeNode(grammarAccess.getFQNRule()); 
            pushFollow(FOLLOW_ruleFQN_in_entryRuleFQN4206);
            iv_ruleFQN=ruleFQN();

            state._fsp--;

             current =iv_ruleFQN.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleFQN4217); 

            }

        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {

            	myHiddenTokenState.restore();

        }
        return current;
    }
    // $ANTLR end "entryRuleFQN"


    // $ANTLR start "ruleFQN"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1785:1: ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )* ) ;
    public final AntlrDatatypeRuleToken ruleFQN() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_ID_0=null;
        Token kw=null;
        Token this_ID_2=null;

         enterRule(); 
        		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1789:28: ( (this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1790:1: (this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1790:1: (this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )* )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1790:6: this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )*
            {
            this_ID_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleFQN4261); 

            		current.merge(this_ID_0);
                
             
                newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); 
                
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1797:1: (kw= '/' this_ID_2= RULE_ID )*
            loop29:
            do {
                int alt29=2;
                int LA29_0 = input.LA(1);

                if ( (LA29_0==31) ) {
                    alt29=1;
                }


                switch (alt29) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1798:2: kw= '/' this_ID_2= RULE_ID
            	    {
            	    kw=(Token)match(input,31,FOLLOW_31_in_ruleFQN4280); 

            	            current.merge(kw);
            	            newLeafNode(kw, grammarAccess.getFQNAccess().getSolidusKeyword_1_0()); 
            	        
            	    this_ID_2=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleFQN4295); 

            	    		current.merge(this_ID_2);
            	        
            	     
            	        newLeafNode(this_ID_2, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); 
            	        

            	    }
            	    break;

            	default :
            	    break loop29;
                }
            } while (true);


            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {

            	myHiddenTokenState.restore();

        }
        return current;
    }
    // $ANTLR end "ruleFQN"


    // $ANTLR start "ruleBooleanLiteral"
    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1821:1: ruleBooleanLiteral returns [Enumerator current=null] : ( (enumLiteral_0= 'true' ) | (enumLiteral_1= 'false' ) ) ;
    public final Enumerator ruleBooleanLiteral() throws RecognitionException {
        Enumerator current = null;

        Token enumLiteral_0=null;
        Token enumLiteral_1=null;

         enterRule(); 
        try {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1823:28: ( ( (enumLiteral_0= 'true' ) | (enumLiteral_1= 'false' ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1824:1: ( (enumLiteral_0= 'true' ) | (enumLiteral_1= 'false' ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1824:1: ( (enumLiteral_0= 'true' ) | (enumLiteral_1= 'false' ) )
            int alt30=2;
            int LA30_0 = input.LA(1);

            if ( (LA30_0==28) ) {
                alt30=1;
            }
            else if ( (LA30_0==29) ) {
                alt30=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 30, 0, input);

                throw nvae;
            }
            switch (alt30) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1824:2: (enumLiteral_0= 'true' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1824:2: (enumLiteral_0= 'true' )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1824:4: enumLiteral_0= 'true'
                    {
                    enumLiteral_0=(Token)match(input,28,FOLLOW_28_in_ruleBooleanLiteral4360); 

                            current = grammarAccess.getBooleanLiteralAccess().getTrueEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_0, grammarAccess.getBooleanLiteralAccess().getTrueEnumLiteralDeclaration_0()); 
                        

                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1830:6: (enumLiteral_1= 'false' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1830:6: (enumLiteral_1= 'false' )
                    // ../org.artop.ecuc.autosar4x.dsl.values/src-gen/org/artop/ecuc/autosar4x/dsl/values/parser/antlr/internal/InternalEcucValuesDsl.g:1830:8: enumLiteral_1= 'false'
                    {
                    enumLiteral_1=(Token)match(input,29,FOLLOW_29_in_ruleBooleanLiteral4377); 

                            current = grammarAccess.getBooleanLiteralAccess().getFalseEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_1, grammarAccess.getBooleanLiteralAccess().getFalseEnumLiteralDeclaration_1()); 
                        

                    }


                    }
                    break;

            }


            }

             leaveRule(); 
        }
         
            catch (RecognitionException re) { 
                recover(input,re); 
                appendSkippedTokens();
            } 
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleBooleanLiteral"

    // Delegated rules


 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel75 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel85 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_11_in_ruleModel123 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleModel140 = new BitSet(new long[]{0x0000000000001002L});
    public static final BitSet FOLLOW_ruleModule_in_ruleModel168 = new BitSet(new long[]{0x0000000000001002L});
    public static final BitSet FOLLOW_ruleModule_in_entryRuleModule205 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModule215 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_12_in_ruleModule261 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleModule281 = new BitSet(new long[]{0x0000000000046000L});
    public static final BitSet FOLLOW_13_in_ruleModule294 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleModule311 = new BitSet(new long[]{0x0000000000044000L});
    public static final BitSet FOLLOW_14_in_ruleModule331 = new BitSet(new long[]{0x0000000000028000L});
    public static final BitSet FOLLOW_15_in_ruleModule344 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleModule365 = new BitSet(new long[]{0x0000000000030000L});
    public static final BitSet FOLLOW_16_in_ruleModule378 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleModule399 = new BitSet(new long[]{0x0000000000030000L});
    public static final BitSet FOLLOW_17_in_ruleModule415 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_ruleModule429 = new BitSet(new long[]{0x0000000000080000L});
    public static final BitSet FOLLOW_19_in_ruleModule441 = new BitSet(new long[]{0x0000000000300000L});
    public static final BitSet FOLLOW_ruleContainer_in_ruleModule462 = new BitSet(new long[]{0x0000000000300000L});
    public static final BitSet FOLLOW_20_in_ruleModule475 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainedElement_in_entryRuleContainedElement511 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleContainedElement521 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainer_in_ruleContainedElement568 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleParameter_in_ruleContainedElement595 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleReference_in_ruleContainedElement622 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleInstanceReference_in_ruleContainedElement649 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainer_in_entryRuleContainer684 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleContainer694 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_ruleContainer740 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleContainer760 = new BitSet(new long[]{0x0000000000046000L});
    public static final BitSet FOLLOW_13_in_ruleContainer773 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleContainer790 = new BitSet(new long[]{0x0000000000044000L});
    public static final BitSet FOLLOW_14_in_ruleContainer810 = new BitSet(new long[]{0x0000000000428000L});
    public static final BitSet FOLLOW_22_in_ruleContainer868 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleContainer885 = new BitSet(new long[]{0x0000000000428000L});
    public static final BitSet FOLLOW_15_in_ruleContainer958 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleContainer979 = new BitSet(new long[]{0x0000000000438000L});
    public static final BitSet FOLLOW_16_in_ruleContainer992 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleContainer1013 = new BitSet(new long[]{0x0000000000438000L});
    public static final BitSet FOLLOW_17_in_ruleContainer1068 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_ruleContainer1082 = new BitSet(new long[]{0x0000000000080000L});
    public static final BitSet FOLLOW_19_in_ruleContainer1094 = new BitSet(new long[]{0x0000000003B00000L});
    public static final BitSet FOLLOW_ruleContainedElement_in_ruleContainer1115 = new BitSet(new long[]{0x0000000003B00000L});
    public static final BitSet FOLLOW_20_in_ruleContainer1128 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleParameter_in_entryRuleParameter1164 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleParameter1174 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_23_in_ruleParameter1220 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleParameter1240 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_ruleParameter1252 = new BitSet(new long[]{0x0000000078000060L});
    public static final BitSet FOLLOW_ruleSimpleValue_in_ruleParameter1273 = new BitSet(new long[]{0x0000000000004002L});
    public static final BitSet FOLLOW_14_in_ruleParameter1286 = new BitSet(new long[]{0x0000000000428000L});
    public static final BitSet FOLLOW_22_in_ruleParameter1344 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleParameter1361 = new BitSet(new long[]{0x0000000000428000L});
    public static final BitSet FOLLOW_15_in_ruleParameter1434 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleParameter1455 = new BitSet(new long[]{0x0000000000438000L});
    public static final BitSet FOLLOW_16_in_ruleParameter1468 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleParameter1489 = new BitSet(new long[]{0x0000000000438000L});
    public static final BitSet FOLLOW_17_in_ruleParameter1544 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleReference_in_entryRuleReference1582 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleReference1592 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_ruleReference1638 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleReference1658 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_ruleReference1670 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleReferenceValue_in_ruleReference1691 = new BitSet(new long[]{0x0000000000004002L});
    public static final BitSet FOLLOW_14_in_ruleReference1704 = new BitSet(new long[]{0x0000000000428000L});
    public static final BitSet FOLLOW_22_in_ruleReference1762 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleReference1779 = new BitSet(new long[]{0x0000000000428000L});
    public static final BitSet FOLLOW_15_in_ruleReference1852 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleReference1873 = new BitSet(new long[]{0x0000000000438000L});
    public static final BitSet FOLLOW_16_in_ruleReference1886 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleReference1907 = new BitSet(new long[]{0x0000000000438000L});
    public static final BitSet FOLLOW_17_in_ruleReference1962 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleInstanceReference_in_entryRuleInstanceReference2000 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleInstanceReference2010 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_25_in_ruleInstanceReference2056 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleInstanceReference2076 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_ruleInstanceReference2088 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleInstanceReferenceValue_in_ruleInstanceReference2109 = new BitSet(new long[]{0x0000000000004002L});
    public static final BitSet FOLLOW_14_in_ruleInstanceReference2122 = new BitSet(new long[]{0x0000000000428000L});
    public static final BitSet FOLLOW_22_in_ruleInstanceReference2180 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleInstanceReference2197 = new BitSet(new long[]{0x0000000000428000L});
    public static final BitSet FOLLOW_15_in_ruleInstanceReference2270 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleInstanceReference2291 = new BitSet(new long[]{0x0000000000438000L});
    public static final BitSet FOLLOW_16_in_ruleInstanceReference2304 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleInstanceReference2325 = new BitSet(new long[]{0x0000000000438000L});
    public static final BitSet FOLLOW_17_in_ruleInstanceReference2380 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleReferenceValue_in_entryRuleReferenceValue2418 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleReferenceValue2428 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleFQN_in_ruleReferenceValue2475 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleInstanceReferenceValue_in_entryRuleInstanceReferenceValue2510 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleInstanceReferenceValue2520 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContextChain_in_ruleInstanceReferenceValue2566 = new BitSet(new long[]{0x0000000004000000L});
    public static final BitSet FOLLOW_26_in_ruleInstanceReferenceValue2578 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleFQN_in_ruleInstanceReferenceValue2601 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContextChain_in_entryRuleContextChain2637 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleContextChain2647 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContext_in_ruleContextChain2694 = new BitSet(new long[]{0x0000000000010002L});
    public static final BitSet FOLLOW_16_in_ruleContextChain2715 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleFQN_in_ruleContextChain2738 = new BitSet(new long[]{0x0000000000010002L});
    public static final BitSet FOLLOW_ruleContext_in_entryRuleContext2776 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleContext2786 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleFQN_in_ruleContext2843 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleSimpleValue_in_entryRuleSimpleValue2879 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleSimpleValue2889 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleStringValue_in_ruleSimpleValue2936 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNumericValue_in_ruleSimpleValue2963 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanValue_in_ruleSimpleValue2990 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEnumValue_in_ruleSimpleValue3017 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleStringValue_in_entryRuleStringValue3052 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleStringValue3062 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleStringValue3103 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEnumValue_in_entryRuleEnumValue3143 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEnumValue3153 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEID_in_ruleEnumValue3198 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEID_in_entryRuleEID3240 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEID3251 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_27_in_ruleEID3293 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleEID3308 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanValue_in_entryRuleBooleanValue3357 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleBooleanValue3367 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleBooleanLiteral_in_ruleBooleanValue3412 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNumericValue_in_entryRuleNumericValue3447 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleNumericValue3457 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMERIC_in_ruleNumericValue3502 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_entryRuleTag3537 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleTag3547 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleKEY_in_ruleTag3593 = new BitSet(new long[]{0x0000000004000000L});
    public static final BitSet FOLLOW_26_in_ruleTag3605 = new BitSet(new long[]{0x0000000070000070L});
    public static final BitSet FOLLOW_ruleVALUE_in_ruleTag3626 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleVALUE_in_entryRuleVALUE3663 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleVALUE3674 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleVALUE3714 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleVALUE3740 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMERIC_in_ruleVALUE3773 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_28_in_ruleVALUE3797 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_29_in_ruleVALUE3816 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleKEY_in_entryRuleKEY3857 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleKEY3868 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleKEY3908 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleKEY3934 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMERIC_in_ruleKEY3967 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_28_in_ruleKEY3991 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_29_in_ruleKEY4010 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMERIC_in_entryRuleNUMERIC4051 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleNUMERIC4062 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_30_in_ruleNUMERIC4101 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleNUMERIC4118 = new BitSet(new long[]{0x0000000008000002L});
    public static final BitSet FOLLOW_27_in_ruleNUMERIC4137 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleNUMERIC4152 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleFQN_in_entryRuleFQN4206 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleFQN4217 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleFQN4261 = new BitSet(new long[]{0x0000000080000002L});
    public static final BitSet FOLLOW_31_in_ruleFQN4280 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleFQN4295 = new BitSet(new long[]{0x0000000080000002L});
    public static final BitSet FOLLOW_28_in_ruleBooleanLiteral4360 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_29_in_ruleBooleanLiteral4377 = new BitSet(new long[]{0x0000000000000002L});

}
