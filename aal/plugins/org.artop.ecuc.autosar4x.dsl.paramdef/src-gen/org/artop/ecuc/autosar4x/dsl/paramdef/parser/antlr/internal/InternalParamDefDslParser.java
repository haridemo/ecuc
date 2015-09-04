package org.artop.ecuc.autosar4x.dsl.paramdef.parser.antlr.internal; 

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
import org.artop.ecuc.autosar4x.dsl.paramdef.services.ParamDefDslGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalParamDefDslParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_STRING", "RULE_INT", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'package'", "'module'", "'('", "'desc'", "'tags'", "','", "')'", "'{'", "'}'", "'container'", "'requiresIndex'", "'true'", "'false'", "'lowerMultiplicity'", "'upperMultiplicity'", "'choice'", "'param'", "':'", "'default'", "'literals'", "'min'", "'max'", "'ref'", "'iref'", "'->'", "'fref'", "'*'", "'-'", "'.'", "'/'", "'ADD_INFO'", "'BOOLEAN'", "'ENUM'", "'FLOAT'", "'INTEGER'", "'FUNCTION_NAME'", "'LINKER_SYMBOL'", "'MULTILINE_STRING'", "'STRING'"
    };
    public static final int T__19=19;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__11=11;
    public static final int T__12=12;
    public static final int T__13=13;
    public static final int T__14=14;
    public static final int RULE_ID=4;
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
    public static final int RULE_STRING=5;
    public static final int RULE_SL_COMMENT=8;
    public static final int T__37=37;
    public static final int T__38=38;
    public static final int T__39=39;
    public static final int T__33=33;
    public static final int T__34=34;
    public static final int T__35=35;
    public static final int T__36=36;
    public static final int EOF=-1;
    public static final int T__30=30;
    public static final int T__31=31;
    public static final int T__32=32;
    public static final int RULE_WS=9;
    public static final int RULE_ANY_OTHER=10;
    public static final int T__48=48;
    public static final int T__49=49;
    public static final int T__44=44;
    public static final int T__45=45;
    public static final int T__46=46;
    public static final int T__47=47;
    public static final int T__40=40;
    public static final int T__41=41;
    public static final int T__42=42;
    public static final int T__43=43;

    // delegates
    // delegators


        public InternalParamDefDslParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalParamDefDslParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalParamDefDslParser.tokenNames; }
    public String getGrammarFileName() { return "../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g"; }



     	private ParamDefDslGrammarAccess grammarAccess;
     	
        public InternalParamDefDslParser(TokenStream input, ParamDefDslGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }
        
        @Override
        protected String getFirstRuleName() {
        	return "Model";	
       	}
       	
       	@Override
       	protected ParamDefDslGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}



    // $ANTLR start "entryRuleModel"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:68:1: entryRuleModel returns [EObject current=null] : iv_ruleModel= ruleModel EOF ;
    public final EObject entryRuleModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModel = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:69:2: (iv_ruleModel= ruleModel EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:70:2: iv_ruleModel= ruleModel EOF
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
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:77:1: ruleModel returns [EObject current=null] : ( (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModuleDef ) )* ) ;
    public final EObject ruleModel() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_packageName_1_0=null;
        EObject lv_modules_2_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:80:28: ( ( (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModuleDef ) )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:81:1: ( (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModuleDef ) )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:81:1: ( (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModuleDef ) )* )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:81:2: (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )? ( (lv_modules_2_0= ruleModuleDef ) )*
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:81:2: (otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) ) )?
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==11) ) {
                alt1=1;
            }
            switch (alt1) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:81:4: otherlv_0= 'package' ( (lv_packageName_1_0= RULE_ID ) )
                    {
                    otherlv_0=(Token)match(input,11,FOLLOW_11_in_ruleModel123); 

                        	newLeafNode(otherlv_0, grammarAccess.getModelAccess().getPackageKeyword_0_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:85:1: ( (lv_packageName_1_0= RULE_ID ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:86:1: (lv_packageName_1_0= RULE_ID )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:86:1: (lv_packageName_1_0= RULE_ID )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:87:3: lv_packageName_1_0= RULE_ID
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

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:103:4: ( (lv_modules_2_0= ruleModuleDef ) )*
            loop2:
            do {
                int alt2=2;
                int LA2_0 = input.LA(1);

                if ( (LA2_0==12) ) {
                    alt2=1;
                }


                switch (alt2) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:104:1: (lv_modules_2_0= ruleModuleDef )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:104:1: (lv_modules_2_0= ruleModuleDef )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:105:3: lv_modules_2_0= ruleModuleDef
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getModelAccess().getModulesModuleDefParserRuleCall_1_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleModuleDef_in_ruleModel168);
            	    lv_modules_2_0=ruleModuleDef();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getModelRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"modules",
            	            		lv_modules_2_0, 
            	            		"ModuleDef");
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


    // $ANTLR start "entryRuleModuleDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:129:1: entryRuleModuleDef returns [EObject current=null] : iv_ruleModuleDef= ruleModuleDef EOF ;
    public final EObject entryRuleModuleDef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleModuleDef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:130:2: (iv_ruleModuleDef= ruleModuleDef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:131:2: iv_ruleModuleDef= ruleModuleDef EOF
            {
             newCompositeNode(grammarAccess.getModuleDefRule()); 
            pushFollow(FOLLOW_ruleModuleDef_in_entryRuleModuleDef205);
            iv_ruleModuleDef=ruleModuleDef();

            state._fsp--;

             current =iv_ruleModuleDef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleModuleDef215); 

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
    // $ANTLR end "entryRuleModuleDef"


    // $ANTLR start "ruleModuleDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:138:1: ruleModuleDef returns [EObject current=null] : (otherlv_0= 'module' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_10= ')' )? otherlv_11= '{' ( (lv_container_12_0= ruleAbstractContainerDef ) )* otherlv_13= '}' ) ;
    public final EObject ruleModuleDef() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        Token lv_desc_5_0=null;
        Token otherlv_6=null;
        Token otherlv_8=null;
        Token otherlv_10=null;
        Token otherlv_11=null;
        Token otherlv_13=null;
        EObject lv_tags_7_0 = null;

        EObject lv_tags_9_0 = null;

        EObject lv_container_12_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:141:28: ( (otherlv_0= 'module' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_10= ')' )? otherlv_11= '{' ( (lv_container_12_0= ruleAbstractContainerDef ) )* otherlv_13= '}' ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:142:1: (otherlv_0= 'module' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_10= ')' )? otherlv_11= '{' ( (lv_container_12_0= ruleAbstractContainerDef ) )* otherlv_13= '}' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:142:1: (otherlv_0= 'module' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_10= ')' )? otherlv_11= '{' ( (lv_container_12_0= ruleAbstractContainerDef ) )* otherlv_13= '}' )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:142:3: otherlv_0= 'module' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_10= ')' )? otherlv_11= '{' ( (lv_container_12_0= ruleAbstractContainerDef ) )* otherlv_13= '}'
            {
            otherlv_0=(Token)match(input,12,FOLLOW_12_in_ruleModuleDef252); 

                	newLeafNode(otherlv_0, grammarAccess.getModuleDefAccess().getModuleKeyword_0());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:146:1: ( (lv_name_1_0= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:147:1: (lv_name_1_0= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:147:1: (lv_name_1_0= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:148:3: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleModuleDef269); 

            			newLeafNode(lv_name_1_0, grammarAccess.getModuleDefAccess().getNameIDTerminalRuleCall_1_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getModuleDefRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"name",
                    		lv_name_1_0, 
                    		"ID");
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:164:2: (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_10= ')' )?
            int alt5=2;
            int LA5_0 = input.LA(1);

            if ( (LA5_0==13) ) {
                alt5=1;
            }
            switch (alt5) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:164:4: otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) ) ) otherlv_10= ')'
                    {
                    otherlv_2=(Token)match(input,13,FOLLOW_13_in_ruleModuleDef287); 

                        	newLeafNode(otherlv_2, grammarAccess.getModuleDefAccess().getLeftParenthesisKeyword_2_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:168:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:170:1: ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:170:1: ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:171:2: ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:174:2: ( ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:175:3: ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:175:3: ( ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) ) )*
                    loop4:
                    do {
                        int alt4=3;
                        int LA4_0 = input.LA(1);

                        if ( LA4_0 ==14 && getUnorderedGroupHelper().canSelect(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1(), 0) ) {
                            alt4=1;
                        }
                        else if ( LA4_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1(), 1) ) {
                            alt4=2;
                        }


                        switch (alt4) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:177:4: ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:177:4: ({...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:178:5: {...}? => ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleModuleDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:178:108: ( ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:179:6: ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:182:6: ({...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:182:7: {...}? => (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleModuleDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:182:16: (otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:182:18: otherlv_4= 'desc' ( (lv_desc_5_0= RULE_STRING ) )
                    	    {
                    	    otherlv_4=(Token)match(input,14,FOLLOW_14_in_ruleModuleDef345); 

                    	        	newLeafNode(otherlv_4, grammarAccess.getModuleDefAccess().getDescKeyword_2_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:186:1: ( (lv_desc_5_0= RULE_STRING ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:187:1: (lv_desc_5_0= RULE_STRING )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:187:1: (lv_desc_5_0= RULE_STRING )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:188:3: lv_desc_5_0= RULE_STRING
                    	    {
                    	    lv_desc_5_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleModuleDef362); 

                    	    			newLeafNode(lv_desc_5_0, grammarAccess.getModuleDefAccess().getDescSTRINGTerminalRuleCall_2_1_0_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getModuleDefRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"desc",
                    	            		lv_desc_5_0, 
                    	            		"STRING");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:211:4: ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:211:4: ({...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:212:5: {...}? => ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleModuleDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:212:108: ( ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:213:6: ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:216:6: ({...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:216:7: {...}? => (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleModuleDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:216:16: (otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:216:18: otherlv_6= 'tags' ( (lv_tags_7_0= ruleTag ) ) (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_6=(Token)match(input,15,FOLLOW_15_in_ruleModuleDef435); 

                    	        	newLeafNode(otherlv_6, grammarAccess.getModuleDefAccess().getTagsKeyword_2_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:220:1: ( (lv_tags_7_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:221:1: (lv_tags_7_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:221:1: (lv_tags_7_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:222:3: lv_tags_7_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getModuleDefAccess().getTagsTagParserRuleCall_2_1_1_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleModuleDef456);
                    	    lv_tags_7_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getModuleDefRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_7_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:238:2: (otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) ) )*
                    	    loop3:
                    	    do {
                    	        int alt3=2;
                    	        int LA3_0 = input.LA(1);

                    	        if ( (LA3_0==16) ) {
                    	            alt3=1;
                    	        }


                    	        switch (alt3) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:238:4: otherlv_8= ',' ( (lv_tags_9_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_8=(Token)match(input,16,FOLLOW_16_in_ruleModuleDef469); 

                    	    	        	newLeafNode(otherlv_8, grammarAccess.getModuleDefAccess().getCommaKeyword_2_1_1_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:242:1: ( (lv_tags_9_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:243:1: (lv_tags_9_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:243:1: (lv_tags_9_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:244:3: lv_tags_9_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getModuleDefAccess().getTagsTagParserRuleCall_2_1_1_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleModuleDef490);
                    	    	    lv_tags_9_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getModuleDefRule());
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
                    	    	    break loop3;
                    	        }
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop4;
                        }
                    } while (true);


                    }


                    }

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getModuleDefAccess().getUnorderedGroup_2_1());
                    	

                    }

                    otherlv_10=(Token)match(input,17,FOLLOW_17_in_ruleModuleDef545); 

                        	newLeafNode(otherlv_10, grammarAccess.getModuleDefAccess().getRightParenthesisKeyword_2_2());
                        

                    }
                    break;

            }

            otherlv_11=(Token)match(input,18,FOLLOW_18_in_ruleModuleDef559); 

                	newLeafNode(otherlv_11, grammarAccess.getModuleDefAccess().getLeftCurlyBracketKeyword_3());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:282:1: ( (lv_container_12_0= ruleAbstractContainerDef ) )*
            loop6:
            do {
                int alt6=2;
                int LA6_0 = input.LA(1);

                if ( (LA6_0==20||LA6_0==26) ) {
                    alt6=1;
                }


                switch (alt6) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:283:1: (lv_container_12_0= ruleAbstractContainerDef )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:283:1: (lv_container_12_0= ruleAbstractContainerDef )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:284:3: lv_container_12_0= ruleAbstractContainerDef
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getModuleDefAccess().getContainerAbstractContainerDefParserRuleCall_4_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleAbstractContainerDef_in_ruleModuleDef580);
            	    lv_container_12_0=ruleAbstractContainerDef();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getModuleDefRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"container",
            	            		lv_container_12_0, 
            	            		"AbstractContainerDef");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }
            	    break;

            	default :
            	    break loop6;
                }
            } while (true);

            otherlv_13=(Token)match(input,19,FOLLOW_19_in_ruleModuleDef593); 

                	newLeafNode(otherlv_13, grammarAccess.getModuleDefAccess().getRightCurlyBracketKeyword_5());
                

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
    // $ANTLR end "ruleModuleDef"


    // $ANTLR start "entryRuleAbstractContainerDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:312:1: entryRuleAbstractContainerDef returns [EObject current=null] : iv_ruleAbstractContainerDef= ruleAbstractContainerDef EOF ;
    public final EObject entryRuleAbstractContainerDef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAbstractContainerDef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:313:2: (iv_ruleAbstractContainerDef= ruleAbstractContainerDef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:314:2: iv_ruleAbstractContainerDef= ruleAbstractContainerDef EOF
            {
             newCompositeNode(grammarAccess.getAbstractContainerDefRule()); 
            pushFollow(FOLLOW_ruleAbstractContainerDef_in_entryRuleAbstractContainerDef629);
            iv_ruleAbstractContainerDef=ruleAbstractContainerDef();

            state._fsp--;

             current =iv_ruleAbstractContainerDef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleAbstractContainerDef639); 

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
    // $ANTLR end "entryRuleAbstractContainerDef"


    // $ANTLR start "ruleAbstractContainerDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:321:1: ruleAbstractContainerDef returns [EObject current=null] : (this_ContainerDef_0= ruleContainerDef | this_ChoiceContainerDef_1= ruleChoiceContainerDef ) ;
    public final EObject ruleAbstractContainerDef() throws RecognitionException {
        EObject current = null;

        EObject this_ContainerDef_0 = null;

        EObject this_ChoiceContainerDef_1 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:324:28: ( (this_ContainerDef_0= ruleContainerDef | this_ChoiceContainerDef_1= ruleChoiceContainerDef ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:325:1: (this_ContainerDef_0= ruleContainerDef | this_ChoiceContainerDef_1= ruleChoiceContainerDef )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:325:1: (this_ContainerDef_0= ruleContainerDef | this_ChoiceContainerDef_1= ruleChoiceContainerDef )
            int alt7=2;
            int LA7_0 = input.LA(1);

            if ( (LA7_0==20) ) {
                alt7=1;
            }
            else if ( (LA7_0==26) ) {
                alt7=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 7, 0, input);

                throw nvae;
            }
            switch (alt7) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:326:5: this_ContainerDef_0= ruleContainerDef
                    {
                     
                            newCompositeNode(grammarAccess.getAbstractContainerDefAccess().getContainerDefParserRuleCall_0()); 
                        
                    pushFollow(FOLLOW_ruleContainerDef_in_ruleAbstractContainerDef686);
                    this_ContainerDef_0=ruleContainerDef();

                    state._fsp--;

                     
                            current = this_ContainerDef_0; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:336:5: this_ChoiceContainerDef_1= ruleChoiceContainerDef
                    {
                     
                            newCompositeNode(grammarAccess.getAbstractContainerDefAccess().getChoiceContainerDefParserRuleCall_1()); 
                        
                    pushFollow(FOLLOW_ruleChoiceContainerDef_in_ruleAbstractContainerDef713);
                    this_ChoiceContainerDef_1=ruleChoiceContainerDef();

                    state._fsp--;

                     
                            current = this_ChoiceContainerDef_1; 
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
    // $ANTLR end "ruleAbstractContainerDef"


    // $ANTLR start "entryRuleContainerDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:352:1: entryRuleContainerDef returns [EObject current=null] : iv_ruleContainerDef= ruleContainerDef EOF ;
    public final EObject entryRuleContainerDef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleContainerDef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:353:2: (iv_ruleContainerDef= ruleContainerDef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:354:2: iv_ruleContainerDef= ruleContainerDef EOF
            {
             newCompositeNode(grammarAccess.getContainerDefRule()); 
            pushFollow(FOLLOW_ruleContainerDef_in_entryRuleContainerDef748);
            iv_ruleContainerDef=ruleContainerDef();

            state._fsp--;

             current =iv_ruleContainerDef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleContainerDef758); 

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
    // $ANTLR end "entryRuleContainerDef"


    // $ANTLR start "ruleContainerDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:361:1: ruleContainerDef returns [EObject current=null] : (otherlv_0= 'container' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( ( (lv_container_19_0= ruleAbstractContainerDef ) ) | ( (lv_parameter_20_0= ruleParameterDef ) ) | ( (lv_references_21_0= ruleAbstractReferenceDef ) ) )* otherlv_22= '}' ) ;
    public final EObject ruleContainerDef() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        Token lv_requiresIndex_5_0=null;
        Token otherlv_6=null;
        Token otherlv_7=null;
        Token lv_desc_8_0=null;
        Token otherlv_9=null;
        Token otherlv_11=null;
        Token otherlv_13=null;
        Token otherlv_15=null;
        Token otherlv_17=null;
        Token otherlv_18=null;
        Token otherlv_22=null;
        EObject lv_tags_10_0 = null;

        EObject lv_tags_12_0 = null;

        AntlrDatatypeRuleToken lv_lowerMultiplicity_14_0 = null;

        AntlrDatatypeRuleToken lv_upperMultiplicity_16_0 = null;

        EObject lv_container_19_0 = null;

        EObject lv_parameter_20_0 = null;

        EObject lv_references_21_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:364:28: ( (otherlv_0= 'container' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( ( (lv_container_19_0= ruleAbstractContainerDef ) ) | ( (lv_parameter_20_0= ruleParameterDef ) ) | ( (lv_references_21_0= ruleAbstractReferenceDef ) ) )* otherlv_22= '}' ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:365:1: (otherlv_0= 'container' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( ( (lv_container_19_0= ruleAbstractContainerDef ) ) | ( (lv_parameter_20_0= ruleParameterDef ) ) | ( (lv_references_21_0= ruleAbstractReferenceDef ) ) )* otherlv_22= '}' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:365:1: (otherlv_0= 'container' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( ( (lv_container_19_0= ruleAbstractContainerDef ) ) | ( (lv_parameter_20_0= ruleParameterDef ) ) | ( (lv_references_21_0= ruleAbstractReferenceDef ) ) )* otherlv_22= '}' )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:365:3: otherlv_0= 'container' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( ( (lv_container_19_0= ruleAbstractContainerDef ) ) | ( (lv_parameter_20_0= ruleParameterDef ) ) | ( (lv_references_21_0= ruleAbstractReferenceDef ) ) )* otherlv_22= '}'
            {
            otherlv_0=(Token)match(input,20,FOLLOW_20_in_ruleContainerDef795); 

                	newLeafNode(otherlv_0, grammarAccess.getContainerDefAccess().getContainerKeyword_0());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:369:1: ( (lv_name_1_0= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:370:1: (lv_name_1_0= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:370:1: (lv_name_1_0= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:371:3: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleContainerDef812); 

            			newLeafNode(lv_name_1_0, grammarAccess.getContainerDefAccess().getNameIDTerminalRuleCall_1_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getContainerDefRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"name",
                    		lv_name_1_0, 
                    		"ID");
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:387:2: (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )?
            int alt11=2;
            int LA11_0 = input.LA(1);

            if ( (LA11_0==13) ) {
                alt11=1;
            }
            switch (alt11) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:387:4: otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')'
                    {
                    otherlv_2=(Token)match(input,13,FOLLOW_13_in_ruleContainerDef830); 

                        	newLeafNode(otherlv_2, grammarAccess.getContainerDefAccess().getLeftParenthesisKeyword_2_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:391:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:393:1: ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:393:1: ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:394:2: ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:397:2: ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:398:3: ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:398:3: ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    loop10:
                    do {
                        int alt10=6;
                        int LA10_0 = input.LA(1);

                        if ( LA10_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 0) ) {
                            alt10=1;
                        }
                        else if ( LA10_0 ==14 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 1) ) {
                            alt10=2;
                        }
                        else if ( LA10_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 2) ) {
                            alt10=3;
                        }
                        else if ( LA10_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 3) ) {
                            alt10=4;
                        }
                        else if ( LA10_0 ==25 && getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 4) ) {
                            alt10=5;
                        }


                        switch (alt10) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:400:4: ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:400:4: ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:401:5: {...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:401:111: ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:402:6: ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:405:6: ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:405:7: {...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:405:16: (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:405:18: otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' )
                    	    {
                    	    otherlv_4=(Token)match(input,21,FOLLOW_21_in_ruleContainerDef888); 

                    	        	newLeafNode(otherlv_4, grammarAccess.getContainerDefAccess().getRequiresIndexKeyword_2_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:409:1: ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' )
                    	    int alt8=2;
                    	    int LA8_0 = input.LA(1);

                    	    if ( (LA8_0==22) ) {
                    	        alt8=1;
                    	    }
                    	    else if ( (LA8_0==23) ) {
                    	        alt8=2;
                    	    }
                    	    else {
                    	        NoViableAltException nvae =
                    	            new NoViableAltException("", 8, 0, input);

                    	        throw nvae;
                    	    }
                    	    switch (alt8) {
                    	        case 1 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:409:2: ( (lv_requiresIndex_5_0= 'true' ) )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:409:2: ( (lv_requiresIndex_5_0= 'true' ) )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:410:1: (lv_requiresIndex_5_0= 'true' )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:410:1: (lv_requiresIndex_5_0= 'true' )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:411:3: lv_requiresIndex_5_0= 'true'
                    	            {
                    	            lv_requiresIndex_5_0=(Token)match(input,22,FOLLOW_22_in_ruleContainerDef907); 

                    	                    newLeafNode(lv_requiresIndex_5_0, grammarAccess.getContainerDefAccess().getRequiresIndexTrueKeyword_2_1_0_1_0_0());
                    	                

                    	            	        if (current==null) {
                    	            	            current = createModelElement(grammarAccess.getContainerDefRule());
                    	            	        }
                    	                   		setWithLastConsumed(current, "requiresIndex", true, "true");
                    	            	    

                    	            }


                    	            }


                    	            }
                    	            break;
                    	        case 2 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:425:7: otherlv_6= 'false'
                    	            {
                    	            otherlv_6=(Token)match(input,23,FOLLOW_23_in_ruleContainerDef938); 

                    	                	newLeafNode(otherlv_6, grammarAccess.getContainerDefAccess().getFalseKeyword_2_1_0_1_1());
                    	                

                    	            }
                    	            break;

                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:436:4: ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:436:4: ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:437:5: {...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:437:111: ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:438:6: ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:441:6: ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:441:7: {...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:441:16: (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:441:18: otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) )
                    	    {
                    	    otherlv_7=(Token)match(input,14,FOLLOW_14_in_ruleContainerDef1007); 

                    	        	newLeafNode(otherlv_7, grammarAccess.getContainerDefAccess().getDescKeyword_2_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:445:1: ( (lv_desc_8_0= RULE_STRING ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:446:1: (lv_desc_8_0= RULE_STRING )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:446:1: (lv_desc_8_0= RULE_STRING )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:447:3: lv_desc_8_0= RULE_STRING
                    	    {
                    	    lv_desc_8_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleContainerDef1024); 

                    	    			newLeafNode(lv_desc_8_0, grammarAccess.getContainerDefAccess().getDescSTRINGTerminalRuleCall_2_1_1_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getContainerDefRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"desc",
                    	            		lv_desc_8_0, 
                    	            		"STRING");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 3 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:470:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:470:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:471:5: {...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 2) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 2)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:471:111: ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:472:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 2);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:475:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:475:7: {...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:475:16: (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:475:18: otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_9=(Token)match(input,15,FOLLOW_15_in_ruleContainerDef1097); 

                    	        	newLeafNode(otherlv_9, grammarAccess.getContainerDefAccess().getTagsKeyword_2_1_2_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:479:1: ( (lv_tags_10_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:480:1: (lv_tags_10_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:480:1: (lv_tags_10_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:481:3: lv_tags_10_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getContainerDefAccess().getTagsTagParserRuleCall_2_1_2_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleContainerDef1118);
                    	    lv_tags_10_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getContainerDefRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_10_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:497:2: (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    loop9:
                    	    do {
                    	        int alt9=2;
                    	        int LA9_0 = input.LA(1);

                    	        if ( (LA9_0==16) ) {
                    	            alt9=1;
                    	        }


                    	        switch (alt9) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:497:4: otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_11=(Token)match(input,16,FOLLOW_16_in_ruleContainerDef1131); 

                    	    	        	newLeafNode(otherlv_11, grammarAccess.getContainerDefAccess().getCommaKeyword_2_1_2_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:501:1: ( (lv_tags_12_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:502:1: (lv_tags_12_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:502:1: (lv_tags_12_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:503:3: lv_tags_12_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getContainerDefAccess().getTagsTagParserRuleCall_2_1_2_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleContainerDef1152);
                    	    	    lv_tags_12_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getContainerDefRule());
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
                    	    	    break loop9;
                    	        }
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 4 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:526:4: ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:526:4: ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:527:5: {...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 3) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 3)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:527:111: ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:528:6: ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 3);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:531:6: ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:531:7: {...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:531:16: (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:531:18: otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_13=(Token)match(input,24,FOLLOW_24_in_ruleContainerDef1222); 

                    	        	newLeafNode(otherlv_13, grammarAccess.getContainerDefAccess().getLowerMultiplicityKeyword_2_1_3_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:535:1: ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:536:1: (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:536:1: (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:537:3: lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getContainerDefAccess().getLowerMultiplicityLOWER_MULTIPLICITYParserRuleCall_2_1_3_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleContainerDef1243);
                    	    lv_lowerMultiplicity_14_0=ruleLOWER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getContainerDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"lowerMultiplicity",
                    	            		lv_lowerMultiplicity_14_0, 
                    	            		"LOWER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 5 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:560:4: ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:560:4: ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:561:5: {...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 4) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 4)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:561:111: ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:562:6: ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1(), 4);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:565:6: ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:565:7: {...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:565:16: (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:565:18: otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_15=(Token)match(input,25,FOLLOW_25_in_ruleContainerDef1311); 

                    	        	newLeafNode(otherlv_15, grammarAccess.getContainerDefAccess().getUpperMultiplicityKeyword_2_1_4_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:569:1: ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:570:1: (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:570:1: (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:571:3: lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getContainerDefAccess().getUpperMultiplicityUPPER_MULTIPLICITYParserRuleCall_2_1_4_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleContainerDef1332);
                    	    lv_upperMultiplicity_16_0=ruleUPPER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getContainerDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"upperMultiplicity",
                    	            		lv_upperMultiplicity_16_0, 
                    	            		"UPPER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

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

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getContainerDefAccess().getUnorderedGroup_2_1());
                    	

                    }

                    otherlv_17=(Token)match(input,17,FOLLOW_17_in_ruleContainerDef1385); 

                        	newLeafNode(otherlv_17, grammarAccess.getContainerDefAccess().getRightParenthesisKeyword_2_2());
                        

                    }
                    break;

            }

            otherlv_18=(Token)match(input,18,FOLLOW_18_in_ruleContainerDef1399); 

                	newLeafNode(otherlv_18, grammarAccess.getContainerDefAccess().getLeftCurlyBracketKeyword_3());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:609:1: ( ( (lv_container_19_0= ruleAbstractContainerDef ) ) | ( (lv_parameter_20_0= ruleParameterDef ) ) | ( (lv_references_21_0= ruleAbstractReferenceDef ) ) )*
            loop12:
            do {
                int alt12=4;
                switch ( input.LA(1) ) {
                case 20:
                case 26:
                    {
                    alt12=1;
                    }
                    break;
                case 27:
                    {
                    alt12=2;
                    }
                    break;
                case 33:
                case 34:
                case 36:
                    {
                    alt12=3;
                    }
                    break;

                }

                switch (alt12) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:609:2: ( (lv_container_19_0= ruleAbstractContainerDef ) )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:609:2: ( (lv_container_19_0= ruleAbstractContainerDef ) )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:610:1: (lv_container_19_0= ruleAbstractContainerDef )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:610:1: (lv_container_19_0= ruleAbstractContainerDef )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:611:3: lv_container_19_0= ruleAbstractContainerDef
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getContainerDefAccess().getContainerAbstractContainerDefParserRuleCall_4_0_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleAbstractContainerDef_in_ruleContainerDef1421);
            	    lv_container_19_0=ruleAbstractContainerDef();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getContainerDefRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"container",
            	            		lv_container_19_0, 
            	            		"AbstractContainerDef");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }


            	    }
            	    break;
            	case 2 :
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:628:6: ( (lv_parameter_20_0= ruleParameterDef ) )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:628:6: ( (lv_parameter_20_0= ruleParameterDef ) )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:629:1: (lv_parameter_20_0= ruleParameterDef )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:629:1: (lv_parameter_20_0= ruleParameterDef )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:630:3: lv_parameter_20_0= ruleParameterDef
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getContainerDefAccess().getParameterParameterDefParserRuleCall_4_1_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleParameterDef_in_ruleContainerDef1448);
            	    lv_parameter_20_0=ruleParameterDef();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getContainerDefRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"parameter",
            	            		lv_parameter_20_0, 
            	            		"ParameterDef");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }


            	    }
            	    break;
            	case 3 :
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:647:6: ( (lv_references_21_0= ruleAbstractReferenceDef ) )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:647:6: ( (lv_references_21_0= ruleAbstractReferenceDef ) )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:648:1: (lv_references_21_0= ruleAbstractReferenceDef )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:648:1: (lv_references_21_0= ruleAbstractReferenceDef )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:649:3: lv_references_21_0= ruleAbstractReferenceDef
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getContainerDefAccess().getReferencesAbstractReferenceDefParserRuleCall_4_2_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleAbstractReferenceDef_in_ruleContainerDef1475);
            	    lv_references_21_0=ruleAbstractReferenceDef();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getContainerDefRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"references",
            	            		lv_references_21_0, 
            	            		"AbstractReferenceDef");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }


            	    }
            	    break;

            	default :
            	    break loop12;
                }
            } while (true);

            otherlv_22=(Token)match(input,19,FOLLOW_19_in_ruleContainerDef1489); 

                	newLeafNode(otherlv_22, grammarAccess.getContainerDefAccess().getRightCurlyBracketKeyword_5());
                

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
    // $ANTLR end "ruleContainerDef"


    // $ANTLR start "entryRuleChoiceContainerDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:679:1: entryRuleChoiceContainerDef returns [EObject current=null] : iv_ruleChoiceContainerDef= ruleChoiceContainerDef EOF ;
    public final EObject entryRuleChoiceContainerDef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleChoiceContainerDef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:680:2: (iv_ruleChoiceContainerDef= ruleChoiceContainerDef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:681:2: iv_ruleChoiceContainerDef= ruleChoiceContainerDef EOF
            {
             newCompositeNode(grammarAccess.getChoiceContainerDefRule()); 
            pushFollow(FOLLOW_ruleChoiceContainerDef_in_entryRuleChoiceContainerDef1527);
            iv_ruleChoiceContainerDef=ruleChoiceContainerDef();

            state._fsp--;

             current =iv_ruleChoiceContainerDef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleChoiceContainerDef1537); 

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
    // $ANTLR end "entryRuleChoiceContainerDef"


    // $ANTLR start "ruleChoiceContainerDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:688:1: ruleChoiceContainerDef returns [EObject current=null] : (otherlv_0= 'choice' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( (lv_container_19_0= ruleContainerDef ) )* otherlv_20= '}' ) ;
    public final EObject ruleChoiceContainerDef() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        Token lv_requiresIndex_5_0=null;
        Token otherlv_6=null;
        Token otherlv_7=null;
        Token lv_desc_8_0=null;
        Token otherlv_9=null;
        Token otherlv_11=null;
        Token otherlv_13=null;
        Token otherlv_15=null;
        Token otherlv_17=null;
        Token otherlv_18=null;
        Token otherlv_20=null;
        EObject lv_tags_10_0 = null;

        EObject lv_tags_12_0 = null;

        AntlrDatatypeRuleToken lv_lowerMultiplicity_14_0 = null;

        AntlrDatatypeRuleToken lv_upperMultiplicity_16_0 = null;

        EObject lv_container_19_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:691:28: ( (otherlv_0= 'choice' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( (lv_container_19_0= ruleContainerDef ) )* otherlv_20= '}' ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:692:1: (otherlv_0= 'choice' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( (lv_container_19_0= ruleContainerDef ) )* otherlv_20= '}' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:692:1: (otherlv_0= 'choice' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( (lv_container_19_0= ruleContainerDef ) )* otherlv_20= '}' )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:692:3: otherlv_0= 'choice' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )? otherlv_18= '{' ( (lv_container_19_0= ruleContainerDef ) )* otherlv_20= '}'
            {
            otherlv_0=(Token)match(input,26,FOLLOW_26_in_ruleChoiceContainerDef1574); 

                	newLeafNode(otherlv_0, grammarAccess.getChoiceContainerDefAccess().getChoiceKeyword_0());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:696:1: ( (lv_name_1_0= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:697:1: (lv_name_1_0= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:697:1: (lv_name_1_0= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:698:3: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleChoiceContainerDef1591); 

            			newLeafNode(lv_name_1_0, grammarAccess.getChoiceContainerDefAccess().getNameIDTerminalRuleCall_1_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getChoiceContainerDefRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"name",
                    		lv_name_1_0, 
                    		"ID");
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:714:2: (otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')' )?
            int alt16=2;
            int LA16_0 = input.LA(1);

            if ( (LA16_0==13) ) {
                alt16=1;
            }
            switch (alt16) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:714:4: otherlv_2= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_17= ')'
                    {
                    otherlv_2=(Token)match(input,13,FOLLOW_13_in_ruleChoiceContainerDef1609); 

                        	newLeafNode(otherlv_2, grammarAccess.getChoiceContainerDefAccess().getLeftParenthesisKeyword_2_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:718:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:720:1: ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:720:1: ( ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:721:2: ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:724:2: ( ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:725:3: ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:725:3: ( ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    loop15:
                    do {
                        int alt15=6;
                        int LA15_0 = input.LA(1);

                        if ( LA15_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 0) ) {
                            alt15=1;
                        }
                        else if ( LA15_0 ==14 && getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 1) ) {
                            alt15=2;
                        }
                        else if ( LA15_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 2) ) {
                            alt15=3;
                        }
                        else if ( LA15_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 3) ) {
                            alt15=4;
                        }
                        else if ( LA15_0 ==25 && getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 4) ) {
                            alt15=5;
                        }


                        switch (alt15) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:727:4: ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:727:4: ({...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:728:5: {...}? => ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:728:117: ( ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:729:6: ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:732:6: ({...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:732:7: {...}? => (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:732:16: (otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:732:18: otherlv_4= 'requiresIndex' ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' )
                    	    {
                    	    otherlv_4=(Token)match(input,21,FOLLOW_21_in_ruleChoiceContainerDef1667); 

                    	        	newLeafNode(otherlv_4, grammarAccess.getChoiceContainerDefAccess().getRequiresIndexKeyword_2_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:736:1: ( ( (lv_requiresIndex_5_0= 'true' ) ) | otherlv_6= 'false' )
                    	    int alt13=2;
                    	    int LA13_0 = input.LA(1);

                    	    if ( (LA13_0==22) ) {
                    	        alt13=1;
                    	    }
                    	    else if ( (LA13_0==23) ) {
                    	        alt13=2;
                    	    }
                    	    else {
                    	        NoViableAltException nvae =
                    	            new NoViableAltException("", 13, 0, input);

                    	        throw nvae;
                    	    }
                    	    switch (alt13) {
                    	        case 1 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:736:2: ( (lv_requiresIndex_5_0= 'true' ) )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:736:2: ( (lv_requiresIndex_5_0= 'true' ) )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:737:1: (lv_requiresIndex_5_0= 'true' )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:737:1: (lv_requiresIndex_5_0= 'true' )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:738:3: lv_requiresIndex_5_0= 'true'
                    	            {
                    	            lv_requiresIndex_5_0=(Token)match(input,22,FOLLOW_22_in_ruleChoiceContainerDef1686); 

                    	                    newLeafNode(lv_requiresIndex_5_0, grammarAccess.getChoiceContainerDefAccess().getRequiresIndexTrueKeyword_2_1_0_1_0_0());
                    	                

                    	            	        if (current==null) {
                    	            	            current = createModelElement(grammarAccess.getChoiceContainerDefRule());
                    	            	        }
                    	                   		setWithLastConsumed(current, "requiresIndex", true, "true");
                    	            	    

                    	            }


                    	            }


                    	            }
                    	            break;
                    	        case 2 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:752:7: otherlv_6= 'false'
                    	            {
                    	            otherlv_6=(Token)match(input,23,FOLLOW_23_in_ruleChoiceContainerDef1717); 

                    	                	newLeafNode(otherlv_6, grammarAccess.getChoiceContainerDefAccess().getFalseKeyword_2_1_0_1_1());
                    	                

                    	            }
                    	            break;

                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:763:4: ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:763:4: ({...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:764:5: {...}? => ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:764:117: ( ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:765:6: ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:768:6: ({...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:768:7: {...}? => (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:768:16: (otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:768:18: otherlv_7= 'desc' ( (lv_desc_8_0= RULE_STRING ) )
                    	    {
                    	    otherlv_7=(Token)match(input,14,FOLLOW_14_in_ruleChoiceContainerDef1786); 

                    	        	newLeafNode(otherlv_7, grammarAccess.getChoiceContainerDefAccess().getDescKeyword_2_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:772:1: ( (lv_desc_8_0= RULE_STRING ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:773:1: (lv_desc_8_0= RULE_STRING )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:773:1: (lv_desc_8_0= RULE_STRING )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:774:3: lv_desc_8_0= RULE_STRING
                    	    {
                    	    lv_desc_8_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleChoiceContainerDef1803); 

                    	    			newLeafNode(lv_desc_8_0, grammarAccess.getChoiceContainerDefAccess().getDescSTRINGTerminalRuleCall_2_1_1_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getChoiceContainerDefRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"desc",
                    	            		lv_desc_8_0, 
                    	            		"STRING");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 3 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:797:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:797:4: ({...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:798:5: {...}? => ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 2) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 2)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:798:117: ( ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:799:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 2);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:802:6: ({...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:802:7: {...}? => (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:802:16: (otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:802:18: otherlv_9= 'tags' ( (lv_tags_10_0= ruleTag ) ) (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_9=(Token)match(input,15,FOLLOW_15_in_ruleChoiceContainerDef1876); 

                    	        	newLeafNode(otherlv_9, grammarAccess.getChoiceContainerDefAccess().getTagsKeyword_2_1_2_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:806:1: ( (lv_tags_10_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:807:1: (lv_tags_10_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:807:1: (lv_tags_10_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:808:3: lv_tags_10_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getChoiceContainerDefAccess().getTagsTagParserRuleCall_2_1_2_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleChoiceContainerDef1897);
                    	    lv_tags_10_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getChoiceContainerDefRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_10_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:824:2: (otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) ) )*
                    	    loop14:
                    	    do {
                    	        int alt14=2;
                    	        int LA14_0 = input.LA(1);

                    	        if ( (LA14_0==16) ) {
                    	            alt14=1;
                    	        }


                    	        switch (alt14) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:824:4: otherlv_11= ',' ( (lv_tags_12_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_11=(Token)match(input,16,FOLLOW_16_in_ruleChoiceContainerDef1910); 

                    	    	        	newLeafNode(otherlv_11, grammarAccess.getChoiceContainerDefAccess().getCommaKeyword_2_1_2_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:828:1: ( (lv_tags_12_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:829:1: (lv_tags_12_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:829:1: (lv_tags_12_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:830:3: lv_tags_12_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getChoiceContainerDefAccess().getTagsTagParserRuleCall_2_1_2_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleChoiceContainerDef1931);
                    	    	    lv_tags_12_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getChoiceContainerDefRule());
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

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 4 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:853:4: ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:853:4: ({...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:854:5: {...}? => ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 3) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 3)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:854:117: ( ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:855:6: ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 3);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:858:6: ({...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:858:7: {...}? => (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:858:16: (otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:858:18: otherlv_13= 'lowerMultiplicity' ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_13=(Token)match(input,24,FOLLOW_24_in_ruleChoiceContainerDef2001); 

                    	        	newLeafNode(otherlv_13, grammarAccess.getChoiceContainerDefAccess().getLowerMultiplicityKeyword_2_1_3_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:862:1: ( (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:863:1: (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:863:1: (lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:864:3: lv_lowerMultiplicity_14_0= ruleLOWER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getChoiceContainerDefAccess().getLowerMultiplicityLOWER_MULTIPLICITYParserRuleCall_2_1_3_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleChoiceContainerDef2022);
                    	    lv_lowerMultiplicity_14_0=ruleLOWER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getChoiceContainerDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"lowerMultiplicity",
                    	            		lv_lowerMultiplicity_14_0, 
                    	            		"LOWER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 5 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:887:4: ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:887:4: ({...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:888:5: {...}? => ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 4) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 4)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:888:117: ( ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:889:6: ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1(), 4);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:892:6: ({...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:892:7: {...}? => (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleChoiceContainerDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:892:16: (otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:892:18: otherlv_15= 'upperMultiplicity' ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_15=(Token)match(input,25,FOLLOW_25_in_ruleChoiceContainerDef2090); 

                    	        	newLeafNode(otherlv_15, grammarAccess.getChoiceContainerDefAccess().getUpperMultiplicityKeyword_2_1_4_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:896:1: ( (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:897:1: (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:897:1: (lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:898:3: lv_upperMultiplicity_16_0= ruleUPPER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getChoiceContainerDefAccess().getUpperMultiplicityUPPER_MULTIPLICITYParserRuleCall_2_1_4_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleChoiceContainerDef2111);
                    	    lv_upperMultiplicity_16_0=ruleUPPER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getChoiceContainerDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"upperMultiplicity",
                    	            		lv_upperMultiplicity_16_0, 
                    	            		"UPPER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1());
                    	    	 				

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

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getChoiceContainerDefAccess().getUnorderedGroup_2_1());
                    	

                    }

                    otherlv_17=(Token)match(input,17,FOLLOW_17_in_ruleChoiceContainerDef2164); 

                        	newLeafNode(otherlv_17, grammarAccess.getChoiceContainerDefAccess().getRightParenthesisKeyword_2_2());
                        

                    }
                    break;

            }

            otherlv_18=(Token)match(input,18,FOLLOW_18_in_ruleChoiceContainerDef2178); 

                	newLeafNode(otherlv_18, grammarAccess.getChoiceContainerDefAccess().getLeftCurlyBracketKeyword_3());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:936:1: ( (lv_container_19_0= ruleContainerDef ) )*
            loop17:
            do {
                int alt17=2;
                int LA17_0 = input.LA(1);

                if ( (LA17_0==20) ) {
                    alt17=1;
                }


                switch (alt17) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:937:1: (lv_container_19_0= ruleContainerDef )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:937:1: (lv_container_19_0= ruleContainerDef )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:938:3: lv_container_19_0= ruleContainerDef
            	    {
            	     
            	    	        newCompositeNode(grammarAccess.getChoiceContainerDefAccess().getContainerContainerDefParserRuleCall_4_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleContainerDef_in_ruleChoiceContainerDef2199);
            	    lv_container_19_0=ruleContainerDef();

            	    state._fsp--;


            	    	        if (current==null) {
            	    	            current = createModelElementForParent(grammarAccess.getChoiceContainerDefRule());
            	    	        }
            	           		add(
            	           			current, 
            	           			"container",
            	            		lv_container_19_0, 
            	            		"ContainerDef");
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }
            	    break;

            	default :
            	    break loop17;
                }
            } while (true);

            otherlv_20=(Token)match(input,19,FOLLOW_19_in_ruleChoiceContainerDef2212); 

                	newLeafNode(otherlv_20, grammarAccess.getChoiceContainerDefAccess().getRightCurlyBracketKeyword_5());
                

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
    // $ANTLR end "ruleChoiceContainerDef"


    // $ANTLR start "entryRuleParameterDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:966:1: entryRuleParameterDef returns [EObject current=null] : iv_ruleParameterDef= ruleParameterDef EOF ;
    public final EObject entryRuleParameterDef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleParameterDef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:967:2: (iv_ruleParameterDef= ruleParameterDef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:968:2: iv_ruleParameterDef= ruleParameterDef EOF
            {
             newCompositeNode(grammarAccess.getParameterDefRule()); 
            pushFollow(FOLLOW_ruleParameterDef_in_entryRuleParameterDef2248);
            iv_ruleParameterDef=ruleParameterDef();

            state._fsp--;

             current =iv_ruleParameterDef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleParameterDef2258); 

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
    // $ANTLR end "entryRuleParameterDef"


    // $ANTLR start "ruleParameterDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:975:1: ruleParameterDef returns [EObject current=null] : (otherlv_0= 'param' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_type_3_0= ruleParameterType ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) ) ) otherlv_27= ')' )? ) ;
    public final EObject ruleParameterDef() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        Token otherlv_6=null;
        Token lv_requiresIndex_7_0=null;
        Token otherlv_8=null;
        Token otherlv_9=null;
        Token otherlv_11=null;
        Token lv_literals_12_0=null;
        Token otherlv_13=null;
        Token lv_desc_14_0=null;
        Token otherlv_15=null;
        Token otherlv_17=null;
        Token otherlv_19=null;
        Token otherlv_21=null;
        Token otherlv_23=null;
        Token otherlv_25=null;
        Token otherlv_27=null;
        Enumerator lv_type_3_0 = null;

        AntlrDatatypeRuleToken lv_default_10_0 = null;

        EObject lv_tags_16_0 = null;

        EObject lv_tags_18_0 = null;

        AntlrDatatypeRuleToken lv_lowerMultiplicity_20_0 = null;

        AntlrDatatypeRuleToken lv_upperMultiplicity_22_0 = null;

        AntlrDatatypeRuleToken lv_min_24_0 = null;

        AntlrDatatypeRuleToken lv_max_26_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:978:28: ( (otherlv_0= 'param' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_type_3_0= ruleParameterType ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) ) ) otherlv_27= ')' )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:979:1: (otherlv_0= 'param' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_type_3_0= ruleParameterType ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) ) ) otherlv_27= ')' )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:979:1: (otherlv_0= 'param' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_type_3_0= ruleParameterType ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) ) ) otherlv_27= ')' )? )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:979:3: otherlv_0= 'param' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_type_3_0= ruleParameterType ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) ) ) otherlv_27= ')' )?
            {
            otherlv_0=(Token)match(input,27,FOLLOW_27_in_ruleParameterDef2295); 

                	newLeafNode(otherlv_0, grammarAccess.getParameterDefAccess().getParamKeyword_0());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:983:1: ( (lv_name_1_0= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:984:1: (lv_name_1_0= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:984:1: (lv_name_1_0= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:985:3: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleParameterDef2312); 

            			newLeafNode(lv_name_1_0, grammarAccess.getParameterDefAccess().getNameIDTerminalRuleCall_1_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getParameterDefRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"name",
                    		lv_name_1_0, 
                    		"ID");
            	    

            }


            }

            otherlv_2=(Token)match(input,28,FOLLOW_28_in_ruleParameterDef2329); 

                	newLeafNode(otherlv_2, grammarAccess.getParameterDefAccess().getColonKeyword_2());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1005:1: ( (lv_type_3_0= ruleParameterType ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1006:1: (lv_type_3_0= ruleParameterType )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1006:1: (lv_type_3_0= ruleParameterType )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1007:3: lv_type_3_0= ruleParameterType
            {
             
            	        newCompositeNode(grammarAccess.getParameterDefAccess().getTypeParameterTypeEnumRuleCall_3_0()); 
            	    
            pushFollow(FOLLOW_ruleParameterType_in_ruleParameterDef2350);
            lv_type_3_0=ruleParameterType();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getParameterDefRule());
            	        }
                   		set(
                   			current, 
                   			"type",
                    		lv_type_3_0, 
                    		"ParameterType");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1023:2: (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) ) ) otherlv_27= ')' )?
            int alt22=2;
            int LA22_0 = input.LA(1);

            if ( (LA22_0==13) ) {
                alt22=1;
            }
            switch (alt22) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1023:4: otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) ) ) otherlv_27= ')'
                    {
                    otherlv_4=(Token)match(input,13,FOLLOW_13_in_ruleParameterDef2363); 

                        	newLeafNode(otherlv_4, grammarAccess.getParameterDefAccess().getLeftParenthesisKeyword_4_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1027:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1029:1: ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1029:1: ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1030:2: ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1033:2: ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1034:3: ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1034:3: ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )*
                    loop21:
                    do {
                        int alt21=10;
                        alt21 = dfa21.predict(input);
                        switch (alt21) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1036:4: ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1036:4: ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1037:5: {...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1037:111: ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1038:6: ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1041:6: ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1041:7: {...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1041:16: (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1041:18: otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' )
                    	    {
                    	    otherlv_6=(Token)match(input,21,FOLLOW_21_in_ruleParameterDef2421); 

                    	        	newLeafNode(otherlv_6, grammarAccess.getParameterDefAccess().getRequiresIndexKeyword_4_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1045:1: ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' )
                    	    int alt18=2;
                    	    int LA18_0 = input.LA(1);

                    	    if ( (LA18_0==22) ) {
                    	        alt18=1;
                    	    }
                    	    else if ( (LA18_0==23) ) {
                    	        alt18=2;
                    	    }
                    	    else {
                    	        NoViableAltException nvae =
                    	            new NoViableAltException("", 18, 0, input);

                    	        throw nvae;
                    	    }
                    	    switch (alt18) {
                    	        case 1 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1045:2: ( (lv_requiresIndex_7_0= 'true' ) )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1045:2: ( (lv_requiresIndex_7_0= 'true' ) )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1046:1: (lv_requiresIndex_7_0= 'true' )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1046:1: (lv_requiresIndex_7_0= 'true' )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1047:3: lv_requiresIndex_7_0= 'true'
                    	            {
                    	            lv_requiresIndex_7_0=(Token)match(input,22,FOLLOW_22_in_ruleParameterDef2440); 

                    	                    newLeafNode(lv_requiresIndex_7_0, grammarAccess.getParameterDefAccess().getRequiresIndexTrueKeyword_4_1_0_1_0_0());
                    	                

                    	            	        if (current==null) {
                    	            	            current = createModelElement(grammarAccess.getParameterDefRule());
                    	            	        }
                    	                   		setWithLastConsumed(current, "requiresIndex", true, "true");
                    	            	    

                    	            }


                    	            }


                    	            }
                    	            break;
                    	        case 2 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1061:7: otherlv_8= 'false'
                    	            {
                    	            otherlv_8=(Token)match(input,23,FOLLOW_23_in_ruleParameterDef2471); 

                    	                	newLeafNode(otherlv_8, grammarAccess.getParameterDefAccess().getFalseKeyword_4_1_0_1_1());
                    	                

                    	            }
                    	            break;

                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1072:4: ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1072:4: ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1073:5: {...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1073:111: ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1074:6: ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1077:6: ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1077:7: {...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1077:16: (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1077:18: otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) )
                    	    {
                    	    otherlv_9=(Token)match(input,29,FOLLOW_29_in_ruleParameterDef2540); 

                    	        	newLeafNode(otherlv_9, grammarAccess.getParameterDefAccess().getDefaultKeyword_4_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1081:1: ( (lv_default_10_0= ruleVALUE ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1082:1: (lv_default_10_0= ruleVALUE )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1082:1: (lv_default_10_0= ruleVALUE )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1083:3: lv_default_10_0= ruleVALUE
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getParameterDefAccess().getDefaultVALUEParserRuleCall_4_1_1_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleVALUE_in_ruleParameterDef2561);
                    	    lv_default_10_0=ruleVALUE();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getParameterDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"default",
                    	            		lv_default_10_0, 
                    	            		"VALUE");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 3 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1106:4: ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1106:4: ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1107:5: {...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 2) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 2)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1107:111: ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1108:6: ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 2);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1111:6: ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1111:7: {...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1111:16: (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1111:18: otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+
                    	    {
                    	    otherlv_11=(Token)match(input,30,FOLLOW_30_in_ruleParameterDef2629); 

                    	        	newLeafNode(otherlv_11, grammarAccess.getParameterDefAccess().getLiteralsKeyword_4_1_2_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1115:1: ( (lv_literals_12_0= RULE_ID ) )+
                    	    int cnt19=0;
                    	    loop19:
                    	    do {
                    	        int alt19=2;
                    	        int LA19_0 = input.LA(1);

                    	        if ( (LA19_0==RULE_ID) ) {
                    	            alt19=1;
                    	        }


                    	        switch (alt19) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1116:1: (lv_literals_12_0= RULE_ID )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1116:1: (lv_literals_12_0= RULE_ID )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1117:3: lv_literals_12_0= RULE_ID
                    	    	    {
                    	    	    lv_literals_12_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleParameterDef2646); 

                    	    	    			newLeafNode(lv_literals_12_0, grammarAccess.getParameterDefAccess().getLiteralsIDTerminalRuleCall_4_1_2_1_0()); 
                    	    	    		

                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElement(grammarAccess.getParameterDefRule());
                    	    	    	        }
                    	    	           		addWithLastConsumed(
                    	    	           			current, 
                    	    	           			"literals",
                    	    	            		lv_literals_12_0, 
                    	    	            		"ID");
                    	    	    	    

                    	    	    }


                    	    	    }
                    	    	    break;

                    	    	default :
                    	    	    if ( cnt19 >= 1 ) break loop19;
                    	                EarlyExitException eee =
                    	                    new EarlyExitException(19, input);
                    	                throw eee;
                    	        }
                    	        cnt19++;
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 4 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1140:4: ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1140:4: ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1141:5: {...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 3) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 3)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1141:111: ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1142:6: ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 3);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1145:6: ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1145:7: {...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1145:16: (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1145:18: otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) )
                    	    {
                    	    otherlv_13=(Token)match(input,14,FOLLOW_14_in_ruleParameterDef2720); 

                    	        	newLeafNode(otherlv_13, grammarAccess.getParameterDefAccess().getDescKeyword_4_1_3_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1149:1: ( (lv_desc_14_0= RULE_STRING ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1150:1: (lv_desc_14_0= RULE_STRING )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1150:1: (lv_desc_14_0= RULE_STRING )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1151:3: lv_desc_14_0= RULE_STRING
                    	    {
                    	    lv_desc_14_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleParameterDef2737); 

                    	    			newLeafNode(lv_desc_14_0, grammarAccess.getParameterDefAccess().getDescSTRINGTerminalRuleCall_4_1_3_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getParameterDefRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"desc",
                    	            		lv_desc_14_0, 
                    	            		"STRING");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 5 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1174:4: ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1174:4: ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1175:5: {...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 4) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 4)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1175:111: ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1176:6: ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 4);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1179:6: ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1179:7: {...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1179:16: (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1179:18: otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_15=(Token)match(input,15,FOLLOW_15_in_ruleParameterDef2810); 

                    	        	newLeafNode(otherlv_15, grammarAccess.getParameterDefAccess().getTagsKeyword_4_1_4_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1183:1: ( (lv_tags_16_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1184:1: (lv_tags_16_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1184:1: (lv_tags_16_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1185:3: lv_tags_16_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getParameterDefAccess().getTagsTagParserRuleCall_4_1_4_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleParameterDef2831);
                    	    lv_tags_16_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getParameterDefRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_16_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1201:2: (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )*
                    	    loop20:
                    	    do {
                    	        int alt20=2;
                    	        int LA20_0 = input.LA(1);

                    	        if ( (LA20_0==16) ) {
                    	            alt20=1;
                    	        }


                    	        switch (alt20) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1201:4: otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_17=(Token)match(input,16,FOLLOW_16_in_ruleParameterDef2844); 

                    	    	        	newLeafNode(otherlv_17, grammarAccess.getParameterDefAccess().getCommaKeyword_4_1_4_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1205:1: ( (lv_tags_18_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1206:1: (lv_tags_18_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1206:1: (lv_tags_18_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1207:3: lv_tags_18_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getParameterDefAccess().getTagsTagParserRuleCall_4_1_4_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleParameterDef2865);
                    	    	    lv_tags_18_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getParameterDefRule());
                    	    	    	        }
                    	    	           		add(
                    	    	           			current, 
                    	    	           			"tags",
                    	    	            		lv_tags_18_0, 
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

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 6 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1230:4: ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1230:4: ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1231:5: {...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 5) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 5)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1231:111: ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1232:6: ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 5);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1235:6: ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1235:7: {...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1235:16: (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1235:18: otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_19=(Token)match(input,24,FOLLOW_24_in_ruleParameterDef2935); 

                    	        	newLeafNode(otherlv_19, grammarAccess.getParameterDefAccess().getLowerMultiplicityKeyword_4_1_5_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1239:1: ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1240:1: (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1240:1: (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1241:3: lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getParameterDefAccess().getLowerMultiplicityLOWER_MULTIPLICITYParserRuleCall_4_1_5_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleParameterDef2956);
                    	    lv_lowerMultiplicity_20_0=ruleLOWER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getParameterDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"lowerMultiplicity",
                    	            		lv_lowerMultiplicity_20_0, 
                    	            		"LOWER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 7 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1264:4: ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1264:4: ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1265:5: {...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 6) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 6)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1265:111: ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1266:6: ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 6);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1269:6: ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1269:7: {...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1269:16: (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1269:18: otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_21=(Token)match(input,25,FOLLOW_25_in_ruleParameterDef3024); 

                    	        	newLeafNode(otherlv_21, grammarAccess.getParameterDefAccess().getUpperMultiplicityKeyword_4_1_6_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1273:1: ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1274:1: (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1274:1: (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1275:3: lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getParameterDefAccess().getUpperMultiplicityUPPER_MULTIPLICITYParserRuleCall_4_1_6_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleParameterDef3045);
                    	    lv_upperMultiplicity_22_0=ruleUPPER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getParameterDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"upperMultiplicity",
                    	            		lv_upperMultiplicity_22_0, 
                    	            		"UPPER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 8 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1298:4: ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1298:4: ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1299:5: {...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 7) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 7)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1299:111: ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1300:6: ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 7);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1303:6: ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1303:7: {...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1303:16: (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1303:18: otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) )
                    	    {
                    	    otherlv_23=(Token)match(input,31,FOLLOW_31_in_ruleParameterDef3113); 

                    	        	newLeafNode(otherlv_23, grammarAccess.getParameterDefAccess().getMinKeyword_4_1_7_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1307:1: ( (lv_min_24_0= ruleNUMBER ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1308:1: (lv_min_24_0= ruleNUMBER )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1308:1: (lv_min_24_0= ruleNUMBER )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1309:3: lv_min_24_0= ruleNUMBER
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getParameterDefAccess().getMinNUMBERParserRuleCall_4_1_7_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleNUMBER_in_ruleParameterDef3134);
                    	    lv_min_24_0=ruleNUMBER();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getParameterDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"min",
                    	            		lv_min_24_0, 
                    	            		"NUMBER");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 9 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1332:4: ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1332:4: ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1333:5: {...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 8) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 8)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1333:111: ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1334:6: ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 8);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1337:6: ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1337:7: {...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleParameterDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1337:16: (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1337:18: otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) )
                    	    {
                    	    otherlv_25=(Token)match(input,32,FOLLOW_32_in_ruleParameterDef3202); 

                    	        	newLeafNode(otherlv_25, grammarAccess.getParameterDefAccess().getMaxKeyword_4_1_8_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1341:1: ( (lv_max_26_0= ruleNUMBER ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1342:1: (lv_max_26_0= ruleNUMBER )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1342:1: (lv_max_26_0= ruleNUMBER )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1343:3: lv_max_26_0= ruleNUMBER
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getParameterDefAccess().getMaxNUMBERParserRuleCall_4_1_8_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleNUMBER_in_ruleParameterDef3223);
                    	    lv_max_26_0=ruleNUMBER();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getParameterDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"max",
                    	            		lv_max_26_0, 
                    	            		"NUMBER");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	    	 				

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

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1());
                    	

                    }

                    otherlv_27=(Token)match(input,17,FOLLOW_17_in_ruleParameterDef3276); 

                        	newLeafNode(otherlv_27, grammarAccess.getParameterDefAccess().getRightParenthesisKeyword_4_2());
                        

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
    // $ANTLR end "ruleParameterDef"


    // $ANTLR start "entryRuleAbstractReferenceDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1385:1: entryRuleAbstractReferenceDef returns [EObject current=null] : iv_ruleAbstractReferenceDef= ruleAbstractReferenceDef EOF ;
    public final EObject entryRuleAbstractReferenceDef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAbstractReferenceDef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1386:2: (iv_ruleAbstractReferenceDef= ruleAbstractReferenceDef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1387:2: iv_ruleAbstractReferenceDef= ruleAbstractReferenceDef EOF
            {
             newCompositeNode(grammarAccess.getAbstractReferenceDefRule()); 
            pushFollow(FOLLOW_ruleAbstractReferenceDef_in_entryRuleAbstractReferenceDef3314);
            iv_ruleAbstractReferenceDef=ruleAbstractReferenceDef();

            state._fsp--;

             current =iv_ruleAbstractReferenceDef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleAbstractReferenceDef3324); 

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
    // $ANTLR end "entryRuleAbstractReferenceDef"


    // $ANTLR start "ruleAbstractReferenceDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1394:1: ruleAbstractReferenceDef returns [EObject current=null] : (this_ReferenceDef_0= ruleReferenceDef | this_InstanceReferenceDef_1= ruleInstanceReferenceDef | this_ForeignReferenceDef_2= ruleForeignReferenceDef ) ;
    public final EObject ruleAbstractReferenceDef() throws RecognitionException {
        EObject current = null;

        EObject this_ReferenceDef_0 = null;

        EObject this_InstanceReferenceDef_1 = null;

        EObject this_ForeignReferenceDef_2 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1397:28: ( (this_ReferenceDef_0= ruleReferenceDef | this_InstanceReferenceDef_1= ruleInstanceReferenceDef | this_ForeignReferenceDef_2= ruleForeignReferenceDef ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1398:1: (this_ReferenceDef_0= ruleReferenceDef | this_InstanceReferenceDef_1= ruleInstanceReferenceDef | this_ForeignReferenceDef_2= ruleForeignReferenceDef )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1398:1: (this_ReferenceDef_0= ruleReferenceDef | this_InstanceReferenceDef_1= ruleInstanceReferenceDef | this_ForeignReferenceDef_2= ruleForeignReferenceDef )
            int alt23=3;
            switch ( input.LA(1) ) {
            case 33:
                {
                alt23=1;
                }
                break;
            case 34:
                {
                alt23=2;
                }
                break;
            case 36:
                {
                alt23=3;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 23, 0, input);

                throw nvae;
            }

            switch (alt23) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1399:5: this_ReferenceDef_0= ruleReferenceDef
                    {
                     
                            newCompositeNode(grammarAccess.getAbstractReferenceDefAccess().getReferenceDefParserRuleCall_0()); 
                        
                    pushFollow(FOLLOW_ruleReferenceDef_in_ruleAbstractReferenceDef3371);
                    this_ReferenceDef_0=ruleReferenceDef();

                    state._fsp--;

                     
                            current = this_ReferenceDef_0; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1409:5: this_InstanceReferenceDef_1= ruleInstanceReferenceDef
                    {
                     
                            newCompositeNode(grammarAccess.getAbstractReferenceDefAccess().getInstanceReferenceDefParserRuleCall_1()); 
                        
                    pushFollow(FOLLOW_ruleInstanceReferenceDef_in_ruleAbstractReferenceDef3398);
                    this_InstanceReferenceDef_1=ruleInstanceReferenceDef();

                    state._fsp--;

                     
                            current = this_InstanceReferenceDef_1; 
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1419:5: this_ForeignReferenceDef_2= ruleForeignReferenceDef
                    {
                     
                            newCompositeNode(grammarAccess.getAbstractReferenceDefAccess().getForeignReferenceDefParserRuleCall_2()); 
                        
                    pushFollow(FOLLOW_ruleForeignReferenceDef_in_ruleAbstractReferenceDef3425);
                    this_ForeignReferenceDef_2=ruleForeignReferenceDef();

                    state._fsp--;

                     
                            current = this_ForeignReferenceDef_2; 
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
    // $ANTLR end "ruleAbstractReferenceDef"


    // $ANTLR start "entryRuleReferenceDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1435:1: entryRuleReferenceDef returns [EObject current=null] : iv_ruleReferenceDef= ruleReferenceDef EOF ;
    public final EObject entryRuleReferenceDef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleReferenceDef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1436:2: (iv_ruleReferenceDef= ruleReferenceDef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1437:2: iv_ruleReferenceDef= ruleReferenceDef EOF
            {
             newCompositeNode(grammarAccess.getReferenceDefRule()); 
            pushFollow(FOLLOW_ruleReferenceDef_in_entryRuleReferenceDef3460);
            iv_ruleReferenceDef=ruleReferenceDef();

            state._fsp--;

             current =iv_ruleReferenceDef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleReferenceDef3470); 

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
    // $ANTLR end "entryRuleReferenceDef"


    // $ANTLR start "ruleReferenceDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1444:1: ruleReferenceDef returns [EObject current=null] : (otherlv_0= 'ref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( ruleFQN ) ) (otherlv_4= ',' ( ( ruleFQN ) ) )* (otherlv_6= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_21= ')' )? ) ;
    public final EObject ruleReferenceDef() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        Token otherlv_6=null;
        Token otherlv_8=null;
        Token lv_requiresIndex_9_0=null;
        Token otherlv_10=null;
        Token otherlv_11=null;
        Token lv_desc_12_0=null;
        Token otherlv_13=null;
        Token otherlv_15=null;
        Token otherlv_17=null;
        Token otherlv_19=null;
        Token otherlv_21=null;
        EObject lv_tags_14_0 = null;

        EObject lv_tags_16_0 = null;

        AntlrDatatypeRuleToken lv_lowerMultiplicity_18_0 = null;

        AntlrDatatypeRuleToken lv_upperMultiplicity_20_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1447:28: ( (otherlv_0= 'ref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( ruleFQN ) ) (otherlv_4= ',' ( ( ruleFQN ) ) )* (otherlv_6= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_21= ')' )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1448:1: (otherlv_0= 'ref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( ruleFQN ) ) (otherlv_4= ',' ( ( ruleFQN ) ) )* (otherlv_6= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_21= ')' )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1448:1: (otherlv_0= 'ref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( ruleFQN ) ) (otherlv_4= ',' ( ( ruleFQN ) ) )* (otherlv_6= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_21= ')' )? )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1448:3: otherlv_0= 'ref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( ruleFQN ) ) (otherlv_4= ',' ( ( ruleFQN ) ) )* (otherlv_6= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_21= ')' )?
            {
            otherlv_0=(Token)match(input,33,FOLLOW_33_in_ruleReferenceDef3507); 

                	newLeafNode(otherlv_0, grammarAccess.getReferenceDefAccess().getRefKeyword_0());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1452:1: ( (lv_name_1_0= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1453:1: (lv_name_1_0= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1453:1: (lv_name_1_0= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1454:3: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleReferenceDef3524); 

            			newLeafNode(lv_name_1_0, grammarAccess.getReferenceDefAccess().getNameIDTerminalRuleCall_1_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getReferenceDefRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"name",
                    		lv_name_1_0, 
                    		"ID");
            	    

            }


            }

            otherlv_2=(Token)match(input,28,FOLLOW_28_in_ruleReferenceDef3541); 

                	newLeafNode(otherlv_2, grammarAccess.getReferenceDefAccess().getColonKeyword_2());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1474:1: ( ( ruleFQN ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1475:1: ( ruleFQN )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1475:1: ( ruleFQN )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1476:3: ruleFQN
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getReferenceDefRule());
            	        }
                    
             
            	        newCompositeNode(grammarAccess.getReferenceDefAccess().getTypesContainerDefCrossReference_3_0()); 
            	    
            pushFollow(FOLLOW_ruleFQN_in_ruleReferenceDef3564);
            ruleFQN();

            state._fsp--;

             
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1489:2: (otherlv_4= ',' ( ( ruleFQN ) ) )*
            loop24:
            do {
                int alt24=2;
                int LA24_0 = input.LA(1);

                if ( (LA24_0==16) ) {
                    alt24=1;
                }


                switch (alt24) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1489:4: otherlv_4= ',' ( ( ruleFQN ) )
            	    {
            	    otherlv_4=(Token)match(input,16,FOLLOW_16_in_ruleReferenceDef3577); 

            	        	newLeafNode(otherlv_4, grammarAccess.getReferenceDefAccess().getCommaKeyword_4_0());
            	        
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1493:1: ( ( ruleFQN ) )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1494:1: ( ruleFQN )
            	    {
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1494:1: ( ruleFQN )
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1495:3: ruleFQN
            	    {

            	    			if (current==null) {
            	    	            current = createModelElement(grammarAccess.getReferenceDefRule());
            	    	        }
            	            
            	     
            	    	        newCompositeNode(grammarAccess.getReferenceDefAccess().getTypesContainerDefCrossReference_4_1_0()); 
            	    	    
            	    pushFollow(FOLLOW_ruleFQN_in_ruleReferenceDef3600);
            	    ruleFQN();

            	    state._fsp--;

            	     
            	    	        afterParserOrEnumRuleCall();
            	    	    

            	    }


            	    }


            	    }
            	    break;

            	default :
            	    break loop24;
                }
            } while (true);

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1508:4: (otherlv_6= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_21= ')' )?
            int alt28=2;
            int LA28_0 = input.LA(1);

            if ( (LA28_0==13) ) {
                alt28=1;
            }
            switch (alt28) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1508:6: otherlv_6= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_21= ')'
                    {
                    otherlv_6=(Token)match(input,13,FOLLOW_13_in_ruleReferenceDef3615); 

                        	newLeafNode(otherlv_6, grammarAccess.getReferenceDefAccess().getLeftParenthesisKeyword_5_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1512:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1514:1: ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1514:1: ( ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1515:2: ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1518:2: ( ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1519:3: ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1519:3: ( ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    loop27:
                    do {
                        int alt27=6;
                        int LA27_0 = input.LA(1);

                        if ( LA27_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 0) ) {
                            alt27=1;
                        }
                        else if ( LA27_0 ==14 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 1) ) {
                            alt27=2;
                        }
                        else if ( LA27_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 2) ) {
                            alt27=3;
                        }
                        else if ( LA27_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 3) ) {
                            alt27=4;
                        }
                        else if ( LA27_0 ==25 && getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 4) ) {
                            alt27=5;
                        }


                        switch (alt27) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1521:4: ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1521:4: ({...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1522:5: {...}? => ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1522:111: ( ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1523:6: ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1526:6: ({...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1526:7: {...}? => (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1526:16: (otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1526:18: otherlv_8= 'requiresIndex' ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' )
                    	    {
                    	    otherlv_8=(Token)match(input,21,FOLLOW_21_in_ruleReferenceDef3673); 

                    	        	newLeafNode(otherlv_8, grammarAccess.getReferenceDefAccess().getRequiresIndexKeyword_5_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1530:1: ( ( (lv_requiresIndex_9_0= 'true' ) ) | otherlv_10= 'false' )
                    	    int alt25=2;
                    	    int LA25_0 = input.LA(1);

                    	    if ( (LA25_0==22) ) {
                    	        alt25=1;
                    	    }
                    	    else if ( (LA25_0==23) ) {
                    	        alt25=2;
                    	    }
                    	    else {
                    	        NoViableAltException nvae =
                    	            new NoViableAltException("", 25, 0, input);

                    	        throw nvae;
                    	    }
                    	    switch (alt25) {
                    	        case 1 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1530:2: ( (lv_requiresIndex_9_0= 'true' ) )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1530:2: ( (lv_requiresIndex_9_0= 'true' ) )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1531:1: (lv_requiresIndex_9_0= 'true' )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1531:1: (lv_requiresIndex_9_0= 'true' )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1532:3: lv_requiresIndex_9_0= 'true'
                    	            {
                    	            lv_requiresIndex_9_0=(Token)match(input,22,FOLLOW_22_in_ruleReferenceDef3692); 

                    	                    newLeafNode(lv_requiresIndex_9_0, grammarAccess.getReferenceDefAccess().getRequiresIndexTrueKeyword_5_1_0_1_0_0());
                    	                

                    	            	        if (current==null) {
                    	            	            current = createModelElement(grammarAccess.getReferenceDefRule());
                    	            	        }
                    	                   		setWithLastConsumed(current, "requiresIndex", true, "true");
                    	            	    

                    	            }


                    	            }


                    	            }
                    	            break;
                    	        case 2 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1546:7: otherlv_10= 'false'
                    	            {
                    	            otherlv_10=(Token)match(input,23,FOLLOW_23_in_ruleReferenceDef3723); 

                    	                	newLeafNode(otherlv_10, grammarAccess.getReferenceDefAccess().getFalseKeyword_5_1_0_1_1());
                    	                

                    	            }
                    	            break;

                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1557:4: ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1557:4: ({...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1558:5: {...}? => ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1558:111: ( ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1559:6: ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1562:6: ({...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1562:7: {...}? => (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1562:16: (otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1562:18: otherlv_11= 'desc' ( (lv_desc_12_0= RULE_STRING ) )
                    	    {
                    	    otherlv_11=(Token)match(input,14,FOLLOW_14_in_ruleReferenceDef3792); 

                    	        	newLeafNode(otherlv_11, grammarAccess.getReferenceDefAccess().getDescKeyword_5_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1566:1: ( (lv_desc_12_0= RULE_STRING ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1567:1: (lv_desc_12_0= RULE_STRING )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1567:1: (lv_desc_12_0= RULE_STRING )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1568:3: lv_desc_12_0= RULE_STRING
                    	    {
                    	    lv_desc_12_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleReferenceDef3809); 

                    	    			newLeafNode(lv_desc_12_0, grammarAccess.getReferenceDefAccess().getDescSTRINGTerminalRuleCall_5_1_1_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getReferenceDefRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"desc",
                    	            		lv_desc_12_0, 
                    	            		"STRING");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 3 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1591:4: ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1591:4: ({...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1592:5: {...}? => ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 2) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 2)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1592:111: ( ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1593:6: ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 2);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1596:6: ({...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1596:7: {...}? => (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1596:16: (otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1596:18: otherlv_13= 'tags' ( (lv_tags_14_0= ruleTag ) ) (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_13=(Token)match(input,15,FOLLOW_15_in_ruleReferenceDef3882); 

                    	        	newLeafNode(otherlv_13, grammarAccess.getReferenceDefAccess().getTagsKeyword_5_1_2_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1600:1: ( (lv_tags_14_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1601:1: (lv_tags_14_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1601:1: (lv_tags_14_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1602:3: lv_tags_14_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getReferenceDefAccess().getTagsTagParserRuleCall_5_1_2_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleReferenceDef3903);
                    	    lv_tags_14_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getReferenceDefRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_14_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1618:2: (otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) ) )*
                    	    loop26:
                    	    do {
                    	        int alt26=2;
                    	        int LA26_0 = input.LA(1);

                    	        if ( (LA26_0==16) ) {
                    	            alt26=1;
                    	        }


                    	        switch (alt26) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1618:4: otherlv_15= ',' ( (lv_tags_16_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_15=(Token)match(input,16,FOLLOW_16_in_ruleReferenceDef3916); 

                    	    	        	newLeafNode(otherlv_15, grammarAccess.getReferenceDefAccess().getCommaKeyword_5_1_2_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1622:1: ( (lv_tags_16_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1623:1: (lv_tags_16_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1623:1: (lv_tags_16_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1624:3: lv_tags_16_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getReferenceDefAccess().getTagsTagParserRuleCall_5_1_2_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleReferenceDef3937);
                    	    	    lv_tags_16_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getReferenceDefRule());
                    	    	    	        }
                    	    	           		add(
                    	    	           			current, 
                    	    	           			"tags",
                    	    	            		lv_tags_16_0, 
                    	    	            		"Tag");
                    	    	    	        afterParserOrEnumRuleCall();
                    	    	    	    

                    	    	    }


                    	    	    }


                    	    	    }
                    	    	    break;

                    	    	default :
                    	    	    break loop26;
                    	        }
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 4 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1647:4: ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1647:4: ({...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1648:5: {...}? => ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 3) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 3)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1648:111: ( ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1649:6: ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 3);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1652:6: ({...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1652:7: {...}? => (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1652:16: (otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1652:18: otherlv_17= 'lowerMultiplicity' ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_17=(Token)match(input,24,FOLLOW_24_in_ruleReferenceDef4007); 

                    	        	newLeafNode(otherlv_17, grammarAccess.getReferenceDefAccess().getLowerMultiplicityKeyword_5_1_3_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1656:1: ( (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1657:1: (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1657:1: (lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1658:3: lv_lowerMultiplicity_18_0= ruleLOWER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getReferenceDefAccess().getLowerMultiplicityLOWER_MULTIPLICITYParserRuleCall_5_1_3_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleReferenceDef4028);
                    	    lv_lowerMultiplicity_18_0=ruleLOWER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getReferenceDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"lowerMultiplicity",
                    	            		lv_lowerMultiplicity_18_0, 
                    	            		"LOWER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 5 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1681:4: ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1681:4: ({...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1682:5: {...}? => ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 4) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 4)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1682:111: ( ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1683:6: ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1(), 4);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1686:6: ({...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1686:7: {...}? => (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1686:16: (otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1686:18: otherlv_19= 'upperMultiplicity' ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_19=(Token)match(input,25,FOLLOW_25_in_ruleReferenceDef4096); 

                    	        	newLeafNode(otherlv_19, grammarAccess.getReferenceDefAccess().getUpperMultiplicityKeyword_5_1_4_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1690:1: ( (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1691:1: (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1691:1: (lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1692:3: lv_upperMultiplicity_20_0= ruleUPPER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getReferenceDefAccess().getUpperMultiplicityUPPER_MULTIPLICITYParserRuleCall_5_1_4_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleReferenceDef4117);
                    	    lv_upperMultiplicity_20_0=ruleUPPER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getReferenceDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"upperMultiplicity",
                    	            		lv_upperMultiplicity_20_0, 
                    	            		"UPPER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop27;
                        }
                    } while (true);


                    }


                    }

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getReferenceDefAccess().getUnorderedGroup_5_1());
                    	

                    }

                    otherlv_21=(Token)match(input,17,FOLLOW_17_in_ruleReferenceDef4170); 

                        	newLeafNode(otherlv_21, grammarAccess.getReferenceDefAccess().getRightParenthesisKeyword_5_2());
                        

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
    // $ANTLR end "ruleReferenceDef"


    // $ANTLR start "entryRuleInstanceReferenceDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1734:1: entryRuleInstanceReferenceDef returns [EObject current=null] : iv_ruleInstanceReferenceDef= ruleInstanceReferenceDef EOF ;
    public final EObject entryRuleInstanceReferenceDef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleInstanceReferenceDef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1735:2: (iv_ruleInstanceReferenceDef= ruleInstanceReferenceDef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1736:2: iv_ruleInstanceReferenceDef= ruleInstanceReferenceDef EOF
            {
             newCompositeNode(grammarAccess.getInstanceReferenceDefRule()); 
            pushFollow(FOLLOW_ruleInstanceReferenceDef_in_entryRuleInstanceReferenceDef4208);
            iv_ruleInstanceReferenceDef=ruleInstanceReferenceDef();

            state._fsp--;

             current =iv_ruleInstanceReferenceDef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleInstanceReferenceDef4218); 

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
    // $ANTLR end "entryRuleInstanceReferenceDef"


    // $ANTLR start "ruleInstanceReferenceDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1743:1: ruleInstanceReferenceDef returns [EObject current=null] : (otherlv_0= 'iref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( (lv_contexts_3_0= ruleEClassRefStar ) ) (otherlv_4= ',' ( (lv_contexts_5_0= ruleEClassRefStar ) ) )* )? otherlv_6= '->' ( (lv_dest_7_0= ruleEClassRef ) ) (otherlv_8= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_23= ')' )? ) ;
    public final EObject ruleInstanceReferenceDef() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        Token otherlv_6=null;
        Token otherlv_8=null;
        Token otherlv_10=null;
        Token lv_requiresIndex_11_0=null;
        Token otherlv_12=null;
        Token otherlv_13=null;
        Token lv_desc_14_0=null;
        Token otherlv_15=null;
        Token otherlv_17=null;
        Token otherlv_19=null;
        Token otherlv_21=null;
        Token otherlv_23=null;
        EObject lv_contexts_3_0 = null;

        EObject lv_contexts_5_0 = null;

        EObject lv_dest_7_0 = null;

        EObject lv_tags_16_0 = null;

        EObject lv_tags_18_0 = null;

        AntlrDatatypeRuleToken lv_lowerMultiplicity_20_0 = null;

        AntlrDatatypeRuleToken lv_upperMultiplicity_22_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1746:28: ( (otherlv_0= 'iref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( (lv_contexts_3_0= ruleEClassRefStar ) ) (otherlv_4= ',' ( (lv_contexts_5_0= ruleEClassRefStar ) ) )* )? otherlv_6= '->' ( (lv_dest_7_0= ruleEClassRef ) ) (otherlv_8= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_23= ')' )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1747:1: (otherlv_0= 'iref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( (lv_contexts_3_0= ruleEClassRefStar ) ) (otherlv_4= ',' ( (lv_contexts_5_0= ruleEClassRefStar ) ) )* )? otherlv_6= '->' ( (lv_dest_7_0= ruleEClassRef ) ) (otherlv_8= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_23= ')' )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1747:1: (otherlv_0= 'iref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( (lv_contexts_3_0= ruleEClassRefStar ) ) (otherlv_4= ',' ( (lv_contexts_5_0= ruleEClassRefStar ) ) )* )? otherlv_6= '->' ( (lv_dest_7_0= ruleEClassRef ) ) (otherlv_8= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_23= ')' )? )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1747:3: otherlv_0= 'iref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( ( (lv_contexts_3_0= ruleEClassRefStar ) ) (otherlv_4= ',' ( (lv_contexts_5_0= ruleEClassRefStar ) ) )* )? otherlv_6= '->' ( (lv_dest_7_0= ruleEClassRef ) ) (otherlv_8= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_23= ')' )?
            {
            otherlv_0=(Token)match(input,34,FOLLOW_34_in_ruleInstanceReferenceDef4255); 

                	newLeafNode(otherlv_0, grammarAccess.getInstanceReferenceDefAccess().getIrefKeyword_0());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1751:1: ( (lv_name_1_0= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1752:1: (lv_name_1_0= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1752:1: (lv_name_1_0= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1753:3: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleInstanceReferenceDef4272); 

            			newLeafNode(lv_name_1_0, grammarAccess.getInstanceReferenceDefAccess().getNameIDTerminalRuleCall_1_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getInstanceReferenceDefRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"name",
                    		lv_name_1_0, 
                    		"ID");
            	    

            }


            }

            otherlv_2=(Token)match(input,28,FOLLOW_28_in_ruleInstanceReferenceDef4289); 

                	newLeafNode(otherlv_2, grammarAccess.getInstanceReferenceDefAccess().getColonKeyword_2());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1773:1: ( ( (lv_contexts_3_0= ruleEClassRefStar ) ) (otherlv_4= ',' ( (lv_contexts_5_0= ruleEClassRefStar ) ) )* )?
            int alt30=2;
            int LA30_0 = input.LA(1);

            if ( (LA30_0==RULE_ID) ) {
                alt30=1;
            }
            switch (alt30) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1773:2: ( (lv_contexts_3_0= ruleEClassRefStar ) ) (otherlv_4= ',' ( (lv_contexts_5_0= ruleEClassRefStar ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1773:2: ( (lv_contexts_3_0= ruleEClassRefStar ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1774:1: (lv_contexts_3_0= ruleEClassRefStar )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1774:1: (lv_contexts_3_0= ruleEClassRefStar )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1775:3: lv_contexts_3_0= ruleEClassRefStar
                    {
                     
                    	        newCompositeNode(grammarAccess.getInstanceReferenceDefAccess().getContextsEClassRefStarParserRuleCall_3_0_0()); 
                    	    
                    pushFollow(FOLLOW_ruleEClassRefStar_in_ruleInstanceReferenceDef4311);
                    lv_contexts_3_0=ruleEClassRefStar();

                    state._fsp--;


                    	        if (current==null) {
                    	            current = createModelElementForParent(grammarAccess.getInstanceReferenceDefRule());
                    	        }
                           		add(
                           			current, 
                           			"contexts",
                            		lv_contexts_3_0, 
                            		"EClassRefStar");
                    	        afterParserOrEnumRuleCall();
                    	    

                    }


                    }

                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1791:2: (otherlv_4= ',' ( (lv_contexts_5_0= ruleEClassRefStar ) ) )*
                    loop29:
                    do {
                        int alt29=2;
                        int LA29_0 = input.LA(1);

                        if ( (LA29_0==16) ) {
                            alt29=1;
                        }


                        switch (alt29) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1791:4: otherlv_4= ',' ( (lv_contexts_5_0= ruleEClassRefStar ) )
                    	    {
                    	    otherlv_4=(Token)match(input,16,FOLLOW_16_in_ruleInstanceReferenceDef4324); 

                    	        	newLeafNode(otherlv_4, grammarAccess.getInstanceReferenceDefAccess().getCommaKeyword_3_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1795:1: ( (lv_contexts_5_0= ruleEClassRefStar ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1796:1: (lv_contexts_5_0= ruleEClassRefStar )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1796:1: (lv_contexts_5_0= ruleEClassRefStar )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1797:3: lv_contexts_5_0= ruleEClassRefStar
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getInstanceReferenceDefAccess().getContextsEClassRefStarParserRuleCall_3_1_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleEClassRefStar_in_ruleInstanceReferenceDef4345);
                    	    lv_contexts_5_0=ruleEClassRefStar();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getInstanceReferenceDefRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"contexts",
                    	            		lv_contexts_5_0, 
                    	            		"EClassRefStar");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop29;
                        }
                    } while (true);


                    }
                    break;

            }

            otherlv_6=(Token)match(input,35,FOLLOW_35_in_ruleInstanceReferenceDef4361); 

                	newLeafNode(otherlv_6, grammarAccess.getInstanceReferenceDefAccess().getHyphenMinusGreaterThanSignKeyword_4());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1817:1: ( (lv_dest_7_0= ruleEClassRef ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1818:1: (lv_dest_7_0= ruleEClassRef )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1818:1: (lv_dest_7_0= ruleEClassRef )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1819:3: lv_dest_7_0= ruleEClassRef
            {
             
            	        newCompositeNode(grammarAccess.getInstanceReferenceDefAccess().getDestEClassRefParserRuleCall_5_0()); 
            	    
            pushFollow(FOLLOW_ruleEClassRef_in_ruleInstanceReferenceDef4382);
            lv_dest_7_0=ruleEClassRef();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getInstanceReferenceDefRule());
            	        }
                   		set(
                   			current, 
                   			"dest",
                    		lv_dest_7_0, 
                    		"EClassRef");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1835:2: (otherlv_8= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_23= ')' )?
            int alt34=2;
            int LA34_0 = input.LA(1);

            if ( (LA34_0==13) ) {
                alt34=1;
            }
            switch (alt34) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1835:4: otherlv_8= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_23= ')'
                    {
                    otherlv_8=(Token)match(input,13,FOLLOW_13_in_ruleInstanceReferenceDef4395); 

                        	newLeafNode(otherlv_8, grammarAccess.getInstanceReferenceDefAccess().getLeftParenthesisKeyword_6_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1839:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1841:1: ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1841:1: ( ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1842:2: ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1845:2: ( ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1846:3: ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1846:3: ( ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    loop33:
                    do {
                        int alt33=6;
                        int LA33_0 = input.LA(1);

                        if ( LA33_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 0) ) {
                            alt33=1;
                        }
                        else if ( LA33_0 ==14 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 1) ) {
                            alt33=2;
                        }
                        else if ( LA33_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 2) ) {
                            alt33=3;
                        }
                        else if ( LA33_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 3) ) {
                            alt33=4;
                        }
                        else if ( LA33_0 ==25 && getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 4) ) {
                            alt33=5;
                        }


                        switch (alt33) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1848:4: ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1848:4: ({...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1849:5: {...}? => ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1849:119: ( ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1850:6: ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1853:6: ({...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1853:7: {...}? => (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1853:16: (otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1853:18: otherlv_10= 'requiresIndex' ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' )
                    	    {
                    	    otherlv_10=(Token)match(input,21,FOLLOW_21_in_ruleInstanceReferenceDef4453); 

                    	        	newLeafNode(otherlv_10, grammarAccess.getInstanceReferenceDefAccess().getRequiresIndexKeyword_6_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1857:1: ( ( (lv_requiresIndex_11_0= 'true' ) ) | otherlv_12= 'false' )
                    	    int alt31=2;
                    	    int LA31_0 = input.LA(1);

                    	    if ( (LA31_0==22) ) {
                    	        alt31=1;
                    	    }
                    	    else if ( (LA31_0==23) ) {
                    	        alt31=2;
                    	    }
                    	    else {
                    	        NoViableAltException nvae =
                    	            new NoViableAltException("", 31, 0, input);

                    	        throw nvae;
                    	    }
                    	    switch (alt31) {
                    	        case 1 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1857:2: ( (lv_requiresIndex_11_0= 'true' ) )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1857:2: ( (lv_requiresIndex_11_0= 'true' ) )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1858:1: (lv_requiresIndex_11_0= 'true' )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1858:1: (lv_requiresIndex_11_0= 'true' )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1859:3: lv_requiresIndex_11_0= 'true'
                    	            {
                    	            lv_requiresIndex_11_0=(Token)match(input,22,FOLLOW_22_in_ruleInstanceReferenceDef4472); 

                    	                    newLeafNode(lv_requiresIndex_11_0, grammarAccess.getInstanceReferenceDefAccess().getRequiresIndexTrueKeyword_6_1_0_1_0_0());
                    	                

                    	            	        if (current==null) {
                    	            	            current = createModelElement(grammarAccess.getInstanceReferenceDefRule());
                    	            	        }
                    	                   		setWithLastConsumed(current, "requiresIndex", true, "true");
                    	            	    

                    	            }


                    	            }


                    	            }
                    	            break;
                    	        case 2 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1873:7: otherlv_12= 'false'
                    	            {
                    	            otherlv_12=(Token)match(input,23,FOLLOW_23_in_ruleInstanceReferenceDef4503); 

                    	                	newLeafNode(otherlv_12, grammarAccess.getInstanceReferenceDefAccess().getFalseKeyword_6_1_0_1_1());
                    	                

                    	            }
                    	            break;

                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1884:4: ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1884:4: ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1885:5: {...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1885:119: ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1886:6: ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1889:6: ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1889:7: {...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1889:16: (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1889:18: otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) )
                    	    {
                    	    otherlv_13=(Token)match(input,14,FOLLOW_14_in_ruleInstanceReferenceDef4572); 

                    	        	newLeafNode(otherlv_13, grammarAccess.getInstanceReferenceDefAccess().getDescKeyword_6_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1893:1: ( (lv_desc_14_0= RULE_STRING ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1894:1: (lv_desc_14_0= RULE_STRING )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1894:1: (lv_desc_14_0= RULE_STRING )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1895:3: lv_desc_14_0= RULE_STRING
                    	    {
                    	    lv_desc_14_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleInstanceReferenceDef4589); 

                    	    			newLeafNode(lv_desc_14_0, grammarAccess.getInstanceReferenceDefAccess().getDescSTRINGTerminalRuleCall_6_1_1_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getInstanceReferenceDefRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"desc",
                    	            		lv_desc_14_0, 
                    	            		"STRING");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 3 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1918:4: ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1918:4: ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1919:5: {...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 2) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 2)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1919:119: ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1920:6: ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 2);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1923:6: ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1923:7: {...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1923:16: (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1923:18: otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_15=(Token)match(input,15,FOLLOW_15_in_ruleInstanceReferenceDef4662); 

                    	        	newLeafNode(otherlv_15, grammarAccess.getInstanceReferenceDefAccess().getTagsKeyword_6_1_2_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1927:1: ( (lv_tags_16_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1928:1: (lv_tags_16_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1928:1: (lv_tags_16_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1929:3: lv_tags_16_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getInstanceReferenceDefAccess().getTagsTagParserRuleCall_6_1_2_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleInstanceReferenceDef4683);
                    	    lv_tags_16_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getInstanceReferenceDefRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_16_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1945:2: (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )*
                    	    loop32:
                    	    do {
                    	        int alt32=2;
                    	        int LA32_0 = input.LA(1);

                    	        if ( (LA32_0==16) ) {
                    	            alt32=1;
                    	        }


                    	        switch (alt32) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1945:4: otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_17=(Token)match(input,16,FOLLOW_16_in_ruleInstanceReferenceDef4696); 

                    	    	        	newLeafNode(otherlv_17, grammarAccess.getInstanceReferenceDefAccess().getCommaKeyword_6_1_2_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1949:1: ( (lv_tags_18_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1950:1: (lv_tags_18_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1950:1: (lv_tags_18_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1951:3: lv_tags_18_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getInstanceReferenceDefAccess().getTagsTagParserRuleCall_6_1_2_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleInstanceReferenceDef4717);
                    	    	    lv_tags_18_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getInstanceReferenceDefRule());
                    	    	    	        }
                    	    	           		add(
                    	    	           			current, 
                    	    	           			"tags",
                    	    	            		lv_tags_18_0, 
                    	    	            		"Tag");
                    	    	    	        afterParserOrEnumRuleCall();
                    	    	    	    

                    	    	    }


                    	    	    }


                    	    	    }
                    	    	    break;

                    	    	default :
                    	    	    break loop32;
                    	        }
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 4 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1974:4: ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1974:4: ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1975:5: {...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 3) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 3)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1975:119: ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1976:6: ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 3);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1979:6: ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1979:7: {...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1979:16: (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1979:18: otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_19=(Token)match(input,24,FOLLOW_24_in_ruleInstanceReferenceDef4787); 

                    	        	newLeafNode(otherlv_19, grammarAccess.getInstanceReferenceDefAccess().getLowerMultiplicityKeyword_6_1_3_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1983:1: ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1984:1: (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1984:1: (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:1985:3: lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getInstanceReferenceDefAccess().getLowerMultiplicityLOWER_MULTIPLICITYParserRuleCall_6_1_3_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleInstanceReferenceDef4808);
                    	    lv_lowerMultiplicity_20_0=ruleLOWER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getInstanceReferenceDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"lowerMultiplicity",
                    	            		lv_lowerMultiplicity_20_0, 
                    	            		"LOWER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 5 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2008:4: ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2008:4: ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2009:5: {...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 4) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 4)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2009:119: ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2010:6: ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1(), 4);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2013:6: ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2013:7: {...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleInstanceReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2013:16: (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2013:18: otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_21=(Token)match(input,25,FOLLOW_25_in_ruleInstanceReferenceDef4876); 

                    	        	newLeafNode(otherlv_21, grammarAccess.getInstanceReferenceDefAccess().getUpperMultiplicityKeyword_6_1_4_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2017:1: ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2018:1: (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2018:1: (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2019:3: lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getInstanceReferenceDefAccess().getUpperMultiplicityUPPER_MULTIPLICITYParserRuleCall_6_1_4_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleInstanceReferenceDef4897);
                    	    lv_upperMultiplicity_22_0=ruleUPPER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getInstanceReferenceDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"upperMultiplicity",
                    	            		lv_upperMultiplicity_22_0, 
                    	            		"UPPER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop33;
                        }
                    } while (true);


                    }


                    }

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getInstanceReferenceDefAccess().getUnorderedGroup_6_1());
                    	

                    }

                    otherlv_23=(Token)match(input,17,FOLLOW_17_in_ruleInstanceReferenceDef4950); 

                        	newLeafNode(otherlv_23, grammarAccess.getInstanceReferenceDefAccess().getRightParenthesisKeyword_6_2());
                        

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
    // $ANTLR end "ruleInstanceReferenceDef"


    // $ANTLR start "entryRuleForeignReferenceDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2061:1: entryRuleForeignReferenceDef returns [EObject current=null] : iv_ruleForeignReferenceDef= ruleForeignReferenceDef EOF ;
    public final EObject entryRuleForeignReferenceDef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleForeignReferenceDef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2062:2: (iv_ruleForeignReferenceDef= ruleForeignReferenceDef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2063:2: iv_ruleForeignReferenceDef= ruleForeignReferenceDef EOF
            {
             newCompositeNode(grammarAccess.getForeignReferenceDefRule()); 
            pushFollow(FOLLOW_ruleForeignReferenceDef_in_entryRuleForeignReferenceDef4988);
            iv_ruleForeignReferenceDef=ruleForeignReferenceDef();

            state._fsp--;

             current =iv_ruleForeignReferenceDef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleForeignReferenceDef4998); 

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
    // $ANTLR end "entryRuleForeignReferenceDef"


    // $ANTLR start "ruleForeignReferenceDef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2070:1: ruleForeignReferenceDef returns [EObject current=null] : (otherlv_0= 'fref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_dest_3_0= ruleEClassRef ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_19= ')' )? ) ;
    public final EObject ruleForeignReferenceDef() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_2=null;
        Token otherlv_4=null;
        Token otherlv_6=null;
        Token lv_requiresIndex_7_0=null;
        Token otherlv_8=null;
        Token otherlv_9=null;
        Token lv_desc_10_0=null;
        Token otherlv_11=null;
        Token otherlv_13=null;
        Token otherlv_15=null;
        Token otherlv_17=null;
        Token otherlv_19=null;
        EObject lv_dest_3_0 = null;

        EObject lv_tags_12_0 = null;

        EObject lv_tags_14_0 = null;

        AntlrDatatypeRuleToken lv_lowerMultiplicity_16_0 = null;

        AntlrDatatypeRuleToken lv_upperMultiplicity_18_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2073:28: ( (otherlv_0= 'fref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_dest_3_0= ruleEClassRef ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_19= ')' )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2074:1: (otherlv_0= 'fref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_dest_3_0= ruleEClassRef ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_19= ')' )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2074:1: (otherlv_0= 'fref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_dest_3_0= ruleEClassRef ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_19= ')' )? )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2074:3: otherlv_0= 'fref' ( (lv_name_1_0= RULE_ID ) ) otherlv_2= ':' ( (lv_dest_3_0= ruleEClassRef ) ) (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_19= ')' )?
            {
            otherlv_0=(Token)match(input,36,FOLLOW_36_in_ruleForeignReferenceDef5035); 

                	newLeafNode(otherlv_0, grammarAccess.getForeignReferenceDefAccess().getFrefKeyword_0());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2078:1: ( (lv_name_1_0= RULE_ID ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2079:1: (lv_name_1_0= RULE_ID )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2079:1: (lv_name_1_0= RULE_ID )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2080:3: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleForeignReferenceDef5052); 

            			newLeafNode(lv_name_1_0, grammarAccess.getForeignReferenceDefAccess().getNameIDTerminalRuleCall_1_0()); 
            		

            	        if (current==null) {
            	            current = createModelElement(grammarAccess.getForeignReferenceDefRule());
            	        }
                   		setWithLastConsumed(
                   			current, 
                   			"name",
                    		lv_name_1_0, 
                    		"ID");
            	    

            }


            }

            otherlv_2=(Token)match(input,28,FOLLOW_28_in_ruleForeignReferenceDef5069); 

                	newLeafNode(otherlv_2, grammarAccess.getForeignReferenceDefAccess().getColonKeyword_2());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2100:1: ( (lv_dest_3_0= ruleEClassRef ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2101:1: (lv_dest_3_0= ruleEClassRef )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2101:1: (lv_dest_3_0= ruleEClassRef )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2102:3: lv_dest_3_0= ruleEClassRef
            {
             
            	        newCompositeNode(grammarAccess.getForeignReferenceDefAccess().getDestEClassRefParserRuleCall_3_0()); 
            	    
            pushFollow(FOLLOW_ruleEClassRef_in_ruleForeignReferenceDef5090);
            lv_dest_3_0=ruleEClassRef();

            state._fsp--;


            	        if (current==null) {
            	            current = createModelElementForParent(grammarAccess.getForeignReferenceDefRule());
            	        }
                   		set(
                   			current, 
                   			"dest",
                    		lv_dest_3_0, 
                    		"EClassRef");
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2118:2: (otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_19= ')' )?
            int alt38=2;
            int LA38_0 = input.LA(1);

            if ( (LA38_0==13) ) {
                alt38=1;
            }
            switch (alt38) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2118:4: otherlv_4= '(' ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) ) otherlv_19= ')'
                    {
                    otherlv_4=(Token)match(input,13,FOLLOW_13_in_ruleForeignReferenceDef5103); 

                        	newLeafNode(otherlv_4, grammarAccess.getForeignReferenceDefAccess().getLeftParenthesisKeyword_4_0());
                        
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2122:1: ( ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2124:1: ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2124:1: ( ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* ) )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2125:2: ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    {
                     
                    	  getUnorderedGroupHelper().enter(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1());
                    	
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2128:2: ( ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )* )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2129:3: ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2129:3: ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) )*
                    loop37:
                    do {
                        int alt37=6;
                        int LA37_0 = input.LA(1);

                        if ( LA37_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 0) ) {
                            alt37=1;
                        }
                        else if ( LA37_0 ==14 && getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 1) ) {
                            alt37=2;
                        }
                        else if ( LA37_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 2) ) {
                            alt37=3;
                        }
                        else if ( LA37_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 3) ) {
                            alt37=4;
                        }
                        else if ( LA37_0 ==25 && getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 4) ) {
                            alt37=5;
                        }


                        switch (alt37) {
                    	case 1 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2131:4: ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2131:4: ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2132:5: {...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 0) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 0)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2132:118: ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2133:6: ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 0);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2136:6: ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2136:7: {...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2136:16: (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2136:18: otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' )
                    	    {
                    	    otherlv_6=(Token)match(input,21,FOLLOW_21_in_ruleForeignReferenceDef5161); 

                    	        	newLeafNode(otherlv_6, grammarAccess.getForeignReferenceDefAccess().getRequiresIndexKeyword_4_1_0_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2140:1: ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' )
                    	    int alt35=2;
                    	    int LA35_0 = input.LA(1);

                    	    if ( (LA35_0==22) ) {
                    	        alt35=1;
                    	    }
                    	    else if ( (LA35_0==23) ) {
                    	        alt35=2;
                    	    }
                    	    else {
                    	        NoViableAltException nvae =
                    	            new NoViableAltException("", 35, 0, input);

                    	        throw nvae;
                    	    }
                    	    switch (alt35) {
                    	        case 1 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2140:2: ( (lv_requiresIndex_7_0= 'true' ) )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2140:2: ( (lv_requiresIndex_7_0= 'true' ) )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2141:1: (lv_requiresIndex_7_0= 'true' )
                    	            {
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2141:1: (lv_requiresIndex_7_0= 'true' )
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2142:3: lv_requiresIndex_7_0= 'true'
                    	            {
                    	            lv_requiresIndex_7_0=(Token)match(input,22,FOLLOW_22_in_ruleForeignReferenceDef5180); 

                    	                    newLeafNode(lv_requiresIndex_7_0, grammarAccess.getForeignReferenceDefAccess().getRequiresIndexTrueKeyword_4_1_0_1_0_0());
                    	                

                    	            	        if (current==null) {
                    	            	            current = createModelElement(grammarAccess.getForeignReferenceDefRule());
                    	            	        }
                    	                   		setWithLastConsumed(current, "requiresIndex", true, "true");
                    	            	    

                    	            }


                    	            }


                    	            }
                    	            break;
                    	        case 2 :
                    	            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2156:7: otherlv_8= 'false'
                    	            {
                    	            otherlv_8=(Token)match(input,23,FOLLOW_23_in_ruleForeignReferenceDef5211); 

                    	                	newLeafNode(otherlv_8, grammarAccess.getForeignReferenceDefAccess().getFalseKeyword_4_1_0_1_1());
                    	                

                    	            }
                    	            break;

                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2167:4: ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2167:4: ({...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2168:5: {...}? => ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 1) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 1)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2168:118: ( ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2169:6: ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 1);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2172:6: ({...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2172:7: {...}? => (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2172:16: (otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2172:18: otherlv_9= 'desc' ( (lv_desc_10_0= RULE_STRING ) )
                    	    {
                    	    otherlv_9=(Token)match(input,14,FOLLOW_14_in_ruleForeignReferenceDef5280); 

                    	        	newLeafNode(otherlv_9, grammarAccess.getForeignReferenceDefAccess().getDescKeyword_4_1_1_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2176:1: ( (lv_desc_10_0= RULE_STRING ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2177:1: (lv_desc_10_0= RULE_STRING )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2177:1: (lv_desc_10_0= RULE_STRING )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2178:3: lv_desc_10_0= RULE_STRING
                    	    {
                    	    lv_desc_10_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleForeignReferenceDef5297); 

                    	    			newLeafNode(lv_desc_10_0, grammarAccess.getForeignReferenceDefAccess().getDescSTRINGTerminalRuleCall_4_1_1_1_0()); 
                    	    		

                    	    	        if (current==null) {
                    	    	            current = createModelElement(grammarAccess.getForeignReferenceDefRule());
                    	    	        }
                    	           		setWithLastConsumed(
                    	           			current, 
                    	           			"desc",
                    	            		lv_desc_10_0, 
                    	            		"STRING");
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 3 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2201:4: ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2201:4: ({...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2202:5: {...}? => ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 2) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 2)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2202:118: ( ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2203:6: ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 2);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2206:6: ({...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2206:7: {...}? => (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2206:16: (otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )* )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2206:18: otherlv_11= 'tags' ( (lv_tags_12_0= ruleTag ) ) (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )*
                    	    {
                    	    otherlv_11=(Token)match(input,15,FOLLOW_15_in_ruleForeignReferenceDef5370); 

                    	        	newLeafNode(otherlv_11, grammarAccess.getForeignReferenceDefAccess().getTagsKeyword_4_1_2_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2210:1: ( (lv_tags_12_0= ruleTag ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2211:1: (lv_tags_12_0= ruleTag )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2211:1: (lv_tags_12_0= ruleTag )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2212:3: lv_tags_12_0= ruleTag
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getForeignReferenceDefAccess().getTagsTagParserRuleCall_4_1_2_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleTag_in_ruleForeignReferenceDef5391);
                    	    lv_tags_12_0=ruleTag();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getForeignReferenceDefRule());
                    	    	        }
                    	           		add(
                    	           			current, 
                    	           			"tags",
                    	            		lv_tags_12_0, 
                    	            		"Tag");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }

                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2228:2: (otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) ) )*
                    	    loop36:
                    	    do {
                    	        int alt36=2;
                    	        int LA36_0 = input.LA(1);

                    	        if ( (LA36_0==16) ) {
                    	            alt36=1;
                    	        }


                    	        switch (alt36) {
                    	    	case 1 :
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2228:4: otherlv_13= ',' ( (lv_tags_14_0= ruleTag ) )
                    	    	    {
                    	    	    otherlv_13=(Token)match(input,16,FOLLOW_16_in_ruleForeignReferenceDef5404); 

                    	    	        	newLeafNode(otherlv_13, grammarAccess.getForeignReferenceDefAccess().getCommaKeyword_4_1_2_2_0());
                    	    	        
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2232:1: ( (lv_tags_14_0= ruleTag ) )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2233:1: (lv_tags_14_0= ruleTag )
                    	    	    {
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2233:1: (lv_tags_14_0= ruleTag )
                    	    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2234:3: lv_tags_14_0= ruleTag
                    	    	    {
                    	    	     
                    	    	    	        newCompositeNode(grammarAccess.getForeignReferenceDefAccess().getTagsTagParserRuleCall_4_1_2_2_1_0()); 
                    	    	    	    
                    	    	    pushFollow(FOLLOW_ruleTag_in_ruleForeignReferenceDef5425);
                    	    	    lv_tags_14_0=ruleTag();

                    	    	    state._fsp--;


                    	    	    	        if (current==null) {
                    	    	    	            current = createModelElementForParent(grammarAccess.getForeignReferenceDefRule());
                    	    	    	        }
                    	    	           		add(
                    	    	           			current, 
                    	    	           			"tags",
                    	    	            		lv_tags_14_0, 
                    	    	            		"Tag");
                    	    	    	        afterParserOrEnumRuleCall();
                    	    	    	    

                    	    	    }


                    	    	    }


                    	    	    }
                    	    	    break;

                    	    	default :
                    	    	    break loop36;
                    	        }
                    	    } while (true);


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 4 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2257:4: ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2257:4: ({...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2258:5: {...}? => ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 3) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 3)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2258:118: ( ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2259:6: ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 3);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2262:6: ({...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2262:7: {...}? => (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2262:16: (otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2262:18: otherlv_15= 'lowerMultiplicity' ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_15=(Token)match(input,24,FOLLOW_24_in_ruleForeignReferenceDef5495); 

                    	        	newLeafNode(otherlv_15, grammarAccess.getForeignReferenceDefAccess().getLowerMultiplicityKeyword_4_1_3_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2266:1: ( (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2267:1: (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2267:1: (lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2268:3: lv_lowerMultiplicity_16_0= ruleLOWER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getForeignReferenceDefAccess().getLowerMultiplicityLOWER_MULTIPLICITYParserRuleCall_4_1_3_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleForeignReferenceDef5516);
                    	    lv_lowerMultiplicity_16_0=ruleLOWER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getForeignReferenceDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"lowerMultiplicity",
                    	            		lv_lowerMultiplicity_16_0, 
                    	            		"LOWER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;
                    	case 5 :
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2291:4: ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2291:4: ({...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2292:5: {...}? => ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    {
                    	    if ( ! getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 4) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "getUnorderedGroupHelper().canSelect(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 4)");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2292:118: ( ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2293:6: ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    {
                    	     
                    	    	 				  getUnorderedGroupHelper().select(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1(), 4);
                    	    	 				
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2296:6: ({...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2296:7: {...}? => (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    {
                    	    if ( !((true)) ) {
                    	        throw new FailedPredicateException(input, "ruleForeignReferenceDef", "true");
                    	    }
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2296:16: (otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2296:18: otherlv_17= 'upperMultiplicity' ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) )
                    	    {
                    	    otherlv_17=(Token)match(input,25,FOLLOW_25_in_ruleForeignReferenceDef5584); 

                    	        	newLeafNode(otherlv_17, grammarAccess.getForeignReferenceDefAccess().getUpperMultiplicityKeyword_4_1_4_0());
                    	        
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2300:1: ( (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY ) )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2301:1: (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY )
                    	    {
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2301:1: (lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY )
                    	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2302:3: lv_upperMultiplicity_18_0= ruleUPPER_MULTIPLICITY
                    	    {
                    	     
                    	    	        newCompositeNode(grammarAccess.getForeignReferenceDefAccess().getUpperMultiplicityUPPER_MULTIPLICITYParserRuleCall_4_1_4_1_0()); 
                    	    	    
                    	    pushFollow(FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleForeignReferenceDef5605);
                    	    lv_upperMultiplicity_18_0=ruleUPPER_MULTIPLICITY();

                    	    state._fsp--;


                    	    	        if (current==null) {
                    	    	            current = createModelElementForParent(grammarAccess.getForeignReferenceDefRule());
                    	    	        }
                    	           		set(
                    	           			current, 
                    	           			"upperMultiplicity",
                    	            		lv_upperMultiplicity_18_0, 
                    	            		"UPPER_MULTIPLICITY");
                    	    	        afterParserOrEnumRuleCall();
                    	    	    

                    	    }


                    	    }


                    	    }


                    	    }

                    	     
                    	    	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1());
                    	    	 				

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop37;
                        }
                    } while (true);


                    }


                    }

                     
                    	  getUnorderedGroupHelper().leave(grammarAccess.getForeignReferenceDefAccess().getUnorderedGroup_4_1());
                    	

                    }

                    otherlv_19=(Token)match(input,17,FOLLOW_17_in_ruleForeignReferenceDef5658); 

                        	newLeafNode(otherlv_19, grammarAccess.getForeignReferenceDefAccess().getRightParenthesisKeyword_4_2());
                        

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
    // $ANTLR end "ruleForeignReferenceDef"


    // $ANTLR start "entryRuleEClassRef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2344:1: entryRuleEClassRef returns [EObject current=null] : iv_ruleEClassRef= ruleEClassRef EOF ;
    public final EObject entryRuleEClassRef() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEClassRef = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2345:2: (iv_ruleEClassRef= ruleEClassRef EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2346:2: iv_ruleEClassRef= ruleEClassRef EOF
            {
             newCompositeNode(grammarAccess.getEClassRefRule()); 
            pushFollow(FOLLOW_ruleEClassRef_in_entryRuleEClassRef5696);
            iv_ruleEClassRef=ruleEClassRef();

            state._fsp--;

             current =iv_ruleEClassRef; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEClassRef5706); 

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
    // $ANTLR end "entryRuleEClassRef"


    // $ANTLR start "ruleEClassRef"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2353:1: ruleEClassRef returns [EObject current=null] : ( ( ruleXML_NAME ) ) ;
    public final EObject ruleEClassRef() throws RecognitionException {
        EObject current = null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2356:28: ( ( ( ruleXML_NAME ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2357:1: ( ( ruleXML_NAME ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2357:1: ( ( ruleXML_NAME ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2358:1: ( ruleXML_NAME )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2358:1: ( ruleXML_NAME )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2359:3: ruleXML_NAME
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getEClassRefRule());
            	        }
                    
             
            	        newCompositeNode(grammarAccess.getEClassRefAccess().getTargetEClassCrossReference_0()); 
            	    
            pushFollow(FOLLOW_ruleXML_NAME_in_ruleEClassRef5753);
            ruleXML_NAME();

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
    // $ANTLR end "ruleEClassRef"


    // $ANTLR start "entryRuleEClassRefStar"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2380:1: entryRuleEClassRefStar returns [EObject current=null] : iv_ruleEClassRefStar= ruleEClassRefStar EOF ;
    public final EObject entryRuleEClassRefStar() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleEClassRefStar = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2381:2: (iv_ruleEClassRefStar= ruleEClassRefStar EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2382:2: iv_ruleEClassRefStar= ruleEClassRefStar EOF
            {
             newCompositeNode(grammarAccess.getEClassRefStarRule()); 
            pushFollow(FOLLOW_ruleEClassRefStar_in_entryRuleEClassRefStar5788);
            iv_ruleEClassRefStar=ruleEClassRefStar();

            state._fsp--;

             current =iv_ruleEClassRefStar; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleEClassRefStar5798); 

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
    // $ANTLR end "entryRuleEClassRefStar"


    // $ANTLR start "ruleEClassRefStar"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2389:1: ruleEClassRefStar returns [EObject current=null] : ( ( ( ruleXML_NAME ) ) ( (lv_star_1_0= '*' ) )? ) ;
    public final EObject ruleEClassRefStar() throws RecognitionException {
        EObject current = null;

        Token lv_star_1_0=null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2392:28: ( ( ( ( ruleXML_NAME ) ) ( (lv_star_1_0= '*' ) )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2393:1: ( ( ( ruleXML_NAME ) ) ( (lv_star_1_0= '*' ) )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2393:1: ( ( ( ruleXML_NAME ) ) ( (lv_star_1_0= '*' ) )? )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2393:2: ( ( ruleXML_NAME ) ) ( (lv_star_1_0= '*' ) )?
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2393:2: ( ( ruleXML_NAME ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2394:1: ( ruleXML_NAME )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2394:1: ( ruleXML_NAME )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2395:3: ruleXML_NAME
            {

            			if (current==null) {
            	            current = createModelElement(grammarAccess.getEClassRefStarRule());
            	        }
                    
             
            	        newCompositeNode(grammarAccess.getEClassRefStarAccess().getTargetEClassCrossReference_0_0()); 
            	    
            pushFollow(FOLLOW_ruleXML_NAME_in_ruleEClassRefStar5846);
            ruleXML_NAME();

            state._fsp--;

             
            	        afterParserOrEnumRuleCall();
            	    

            }


            }

            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2408:2: ( (lv_star_1_0= '*' ) )?
            int alt39=2;
            int LA39_0 = input.LA(1);

            if ( (LA39_0==37) ) {
                alt39=1;
            }
            switch (alt39) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2409:1: (lv_star_1_0= '*' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2409:1: (lv_star_1_0= '*' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2410:3: lv_star_1_0= '*'
                    {
                    lv_star_1_0=(Token)match(input,37,FOLLOW_37_in_ruleEClassRefStar5864); 

                            newLeafNode(lv_star_1_0, grammarAccess.getEClassRefStarAccess().getStarAsteriskKeyword_1_0());
                        

                    	        if (current==null) {
                    	            current = createModelElement(grammarAccess.getEClassRefStarRule());
                    	        }
                           		setWithLastConsumed(current, "star", lv_star_1_0, "*");
                    	    

                    }


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
    // $ANTLR end "ruleEClassRefStar"


    // $ANTLR start "entryRuleTag"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2431:1: entryRuleTag returns [EObject current=null] : iv_ruleTag= ruleTag EOF ;
    public final EObject entryRuleTag() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleTag = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2432:2: (iv_ruleTag= ruleTag EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2433:2: iv_ruleTag= ruleTag EOF
            {
             newCompositeNode(grammarAccess.getTagRule()); 
            pushFollow(FOLLOW_ruleTag_in_entryRuleTag5914);
            iv_ruleTag=ruleTag();

            state._fsp--;

             current =iv_ruleTag; 
            match(input,EOF,FOLLOW_EOF_in_entryRuleTag5924); 

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
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2440:1: ruleTag returns [EObject current=null] : ( ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) ) ) ;
    public final EObject ruleTag() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        AntlrDatatypeRuleToken lv_key_0_0 = null;

        AntlrDatatypeRuleToken lv_value_2_0 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2443:28: ( ( ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2444:1: ( ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2444:1: ( ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2444:2: ( (lv_key_0_0= ruleKEY ) ) otherlv_1= '->' ( (lv_value_2_0= ruleVALUE ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2444:2: ( (lv_key_0_0= ruleKEY ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2445:1: (lv_key_0_0= ruleKEY )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2445:1: (lv_key_0_0= ruleKEY )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2446:3: lv_key_0_0= ruleKEY
            {
             
            	        newCompositeNode(grammarAccess.getTagAccess().getKeyKEYParserRuleCall_0_0()); 
            	    
            pushFollow(FOLLOW_ruleKEY_in_ruleTag5970);
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

            otherlv_1=(Token)match(input,35,FOLLOW_35_in_ruleTag5982); 

                	newLeafNode(otherlv_1, grammarAccess.getTagAccess().getHyphenMinusGreaterThanSignKeyword_1());
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2466:1: ( (lv_value_2_0= ruleVALUE ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2467:1: (lv_value_2_0= ruleVALUE )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2467:1: (lv_value_2_0= ruleVALUE )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2468:3: lv_value_2_0= ruleVALUE
            {
             
            	        newCompositeNode(grammarAccess.getTagAccess().getValueVALUEParserRuleCall_2_0()); 
            	    
            pushFollow(FOLLOW_ruleVALUE_in_ruleTag6003);
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


    // $ANTLR start "entryRuleXML_NAME"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2492:1: entryRuleXML_NAME returns [String current=null] : iv_ruleXML_NAME= ruleXML_NAME EOF ;
    public final String entryRuleXML_NAME() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleXML_NAME = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2493:2: (iv_ruleXML_NAME= ruleXML_NAME EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2494:2: iv_ruleXML_NAME= ruleXML_NAME EOF
            {
             newCompositeNode(grammarAccess.getXML_NAMERule()); 
            pushFollow(FOLLOW_ruleXML_NAME_in_entryRuleXML_NAME6040);
            iv_ruleXML_NAME=ruleXML_NAME();

            state._fsp--;

             current =iv_ruleXML_NAME.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleXML_NAME6051); 

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
    // $ANTLR end "entryRuleXML_NAME"


    // $ANTLR start "ruleXML_NAME"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2501:1: ruleXML_NAME returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_ID_0= RULE_ID (kw= '-' this_ID_2= RULE_ID )* ) ;
    public final AntlrDatatypeRuleToken ruleXML_NAME() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_ID_0=null;
        Token kw=null;
        Token this_ID_2=null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2504:28: ( (this_ID_0= RULE_ID (kw= '-' this_ID_2= RULE_ID )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2505:1: (this_ID_0= RULE_ID (kw= '-' this_ID_2= RULE_ID )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2505:1: (this_ID_0= RULE_ID (kw= '-' this_ID_2= RULE_ID )* )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2505:6: this_ID_0= RULE_ID (kw= '-' this_ID_2= RULE_ID )*
            {
            this_ID_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleXML_NAME6091); 

            		current.merge(this_ID_0);
                
             
                newLeafNode(this_ID_0, grammarAccess.getXML_NAMEAccess().getIDTerminalRuleCall_0()); 
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2512:1: (kw= '-' this_ID_2= RULE_ID )*
            loop40:
            do {
                int alt40=2;
                int LA40_0 = input.LA(1);

                if ( (LA40_0==38) ) {
                    alt40=1;
                }


                switch (alt40) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2513:2: kw= '-' this_ID_2= RULE_ID
            	    {
            	    kw=(Token)match(input,38,FOLLOW_38_in_ruleXML_NAME6110); 

            	            current.merge(kw);
            	            newLeafNode(kw, grammarAccess.getXML_NAMEAccess().getHyphenMinusKeyword_1_0()); 
            	        
            	    this_ID_2=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleXML_NAME6125); 

            	    		current.merge(this_ID_2);
            	        
            	     
            	        newLeafNode(this_ID_2, grammarAccess.getXML_NAMEAccess().getIDTerminalRuleCall_1_1()); 
            	        

            	    }
            	    break;

            	default :
            	    break loop40;
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
    // $ANTLR end "ruleXML_NAME"


    // $ANTLR start "entryRuleVALUE"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2533:1: entryRuleVALUE returns [String current=null] : iv_ruleVALUE= ruleVALUE EOF ;
    public final String entryRuleVALUE() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleVALUE = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2534:2: (iv_ruleVALUE= ruleVALUE EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2535:2: iv_ruleVALUE= ruleVALUE EOF
            {
             newCompositeNode(grammarAccess.getVALUERule()); 
            pushFollow(FOLLOW_ruleVALUE_in_entryRuleVALUE6173);
            iv_ruleVALUE=ruleVALUE();

            state._fsp--;

             current =iv_ruleVALUE.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleVALUE6184); 

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
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2542:1: ruleVALUE returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMBER_2= ruleNUMBER | kw= 'true' | kw= 'false' ) ;
    public final AntlrDatatypeRuleToken ruleVALUE() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_STRING_0=null;
        Token this_ID_1=null;
        Token kw=null;
        AntlrDatatypeRuleToken this_NUMBER_2 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2545:28: ( (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMBER_2= ruleNUMBER | kw= 'true' | kw= 'false' ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2546:1: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMBER_2= ruleNUMBER | kw= 'true' | kw= 'false' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2546:1: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMBER_2= ruleNUMBER | kw= 'true' | kw= 'false' )
            int alt41=5;
            switch ( input.LA(1) ) {
            case RULE_STRING:
                {
                alt41=1;
                }
                break;
            case RULE_ID:
                {
                alt41=2;
                }
                break;
            case RULE_INT:
                {
                alt41=3;
                }
                break;
            case 22:
                {
                alt41=4;
                }
                break;
            case 23:
                {
                alt41=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 41, 0, input);

                throw nvae;
            }

            switch (alt41) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2546:6: this_STRING_0= RULE_STRING
                    {
                    this_STRING_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleVALUE6224); 

                    		current.merge(this_STRING_0);
                        
                     
                        newLeafNode(this_STRING_0, grammarAccess.getVALUEAccess().getSTRINGTerminalRuleCall_0()); 
                        

                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2554:10: this_ID_1= RULE_ID
                    {
                    this_ID_1=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleVALUE6250); 

                    		current.merge(this_ID_1);
                        
                     
                        newLeafNode(this_ID_1, grammarAccess.getVALUEAccess().getIDTerminalRuleCall_1()); 
                        

                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2563:5: this_NUMBER_2= ruleNUMBER
                    {
                     
                            newCompositeNode(grammarAccess.getVALUEAccess().getNUMBERParserRuleCall_2()); 
                        
                    pushFollow(FOLLOW_ruleNUMBER_in_ruleVALUE6283);
                    this_NUMBER_2=ruleNUMBER();

                    state._fsp--;


                    		current.merge(this_NUMBER_2);
                        
                     
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2575:2: kw= 'true'
                    {
                    kw=(Token)match(input,22,FOLLOW_22_in_ruleVALUE6307); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getVALUEAccess().getTrueKeyword_3()); 
                        

                    }
                    break;
                case 5 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2582:2: kw= 'false'
                    {
                    kw=(Token)match(input,23,FOLLOW_23_in_ruleVALUE6326); 

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
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2595:1: entryRuleKEY returns [String current=null] : iv_ruleKEY= ruleKEY EOF ;
    public final String entryRuleKEY() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleKEY = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2596:2: (iv_ruleKEY= ruleKEY EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2597:2: iv_ruleKEY= ruleKEY EOF
            {
             newCompositeNode(grammarAccess.getKEYRule()); 
            pushFollow(FOLLOW_ruleKEY_in_entryRuleKEY6367);
            iv_ruleKEY=ruleKEY();

            state._fsp--;

             current =iv_ruleKEY.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleKEY6378); 

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
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2604:1: ruleKEY returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMBER_2= ruleNUMBER | kw= 'true' | kw= 'false' ) ;
    public final AntlrDatatypeRuleToken ruleKEY() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_STRING_0=null;
        Token this_ID_1=null;
        Token kw=null;
        AntlrDatatypeRuleToken this_NUMBER_2 = null;


         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2607:28: ( (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMBER_2= ruleNUMBER | kw= 'true' | kw= 'false' ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2608:1: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMBER_2= ruleNUMBER | kw= 'true' | kw= 'false' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2608:1: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID | this_NUMBER_2= ruleNUMBER | kw= 'true' | kw= 'false' )
            int alt42=5;
            switch ( input.LA(1) ) {
            case RULE_STRING:
                {
                alt42=1;
                }
                break;
            case RULE_ID:
                {
                alt42=2;
                }
                break;
            case RULE_INT:
                {
                alt42=3;
                }
                break;
            case 22:
                {
                alt42=4;
                }
                break;
            case 23:
                {
                alt42=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 42, 0, input);

                throw nvae;
            }

            switch (alt42) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2608:6: this_STRING_0= RULE_STRING
                    {
                    this_STRING_0=(Token)match(input,RULE_STRING,FOLLOW_RULE_STRING_in_ruleKEY6418); 

                    		current.merge(this_STRING_0);
                        
                     
                        newLeafNode(this_STRING_0, grammarAccess.getKEYAccess().getSTRINGTerminalRuleCall_0()); 
                        

                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2616:10: this_ID_1= RULE_ID
                    {
                    this_ID_1=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleKEY6444); 

                    		current.merge(this_ID_1);
                        
                     
                        newLeafNode(this_ID_1, grammarAccess.getKEYAccess().getIDTerminalRuleCall_1()); 
                        

                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2625:5: this_NUMBER_2= ruleNUMBER
                    {
                     
                            newCompositeNode(grammarAccess.getKEYAccess().getNUMBERParserRuleCall_2()); 
                        
                    pushFollow(FOLLOW_ruleNUMBER_in_ruleKEY6477);
                    this_NUMBER_2=ruleNUMBER();

                    state._fsp--;


                    		current.merge(this_NUMBER_2);
                        
                     
                            afterParserOrEnumRuleCall();
                        

                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2637:2: kw= 'true'
                    {
                    kw=(Token)match(input,22,FOLLOW_22_in_ruleKEY6501); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getKEYAccess().getTrueKeyword_3()); 
                        

                    }
                    break;
                case 5 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2644:2: kw= 'false'
                    {
                    kw=(Token)match(input,23,FOLLOW_23_in_ruleKEY6520); 

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


    // $ANTLR start "entryRuleNUMBER"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2657:1: entryRuleNUMBER returns [String current=null] : iv_ruleNUMBER= ruleNUMBER EOF ;
    public final String entryRuleNUMBER() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleNUMBER = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2658:2: (iv_ruleNUMBER= ruleNUMBER EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2659:2: iv_ruleNUMBER= ruleNUMBER EOF
            {
             newCompositeNode(grammarAccess.getNUMBERRule()); 
            pushFollow(FOLLOW_ruleNUMBER_in_entryRuleNUMBER6561);
            iv_ruleNUMBER=ruleNUMBER();

            state._fsp--;

             current =iv_ruleNUMBER.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleNUMBER6572); 

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
    // $ANTLR end "entryRuleNUMBER"


    // $ANTLR start "ruleNUMBER"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2666:1: ruleNUMBER returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_INT_0= RULE_INT (kw= '.' this_INT_2= RULE_INT )? ) ;
    public final AntlrDatatypeRuleToken ruleNUMBER() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_INT_0=null;
        Token kw=null;
        Token this_INT_2=null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2669:28: ( (this_INT_0= RULE_INT (kw= '.' this_INT_2= RULE_INT )? ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2670:1: (this_INT_0= RULE_INT (kw= '.' this_INT_2= RULE_INT )? )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2670:1: (this_INT_0= RULE_INT (kw= '.' this_INT_2= RULE_INT )? )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2670:6: this_INT_0= RULE_INT (kw= '.' this_INT_2= RULE_INT )?
            {
            this_INT_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleNUMBER6612); 

            		current.merge(this_INT_0);
                
             
                newLeafNode(this_INT_0, grammarAccess.getNUMBERAccess().getINTTerminalRuleCall_0()); 
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2677:1: (kw= '.' this_INT_2= RULE_INT )?
            int alt43=2;
            int LA43_0 = input.LA(1);

            if ( (LA43_0==39) ) {
                alt43=1;
            }
            switch (alt43) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2678:2: kw= '.' this_INT_2= RULE_INT
                    {
                    kw=(Token)match(input,39,FOLLOW_39_in_ruleNUMBER6631); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getNUMBERAccess().getFullStopKeyword_1_0()); 
                        
                    this_INT_2=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleNUMBER6646); 

                    		current.merge(this_INT_2);
                        
                     
                        newLeafNode(this_INT_2, grammarAccess.getNUMBERAccess().getINTTerminalRuleCall_1_1()); 
                        

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
    // $ANTLR end "ruleNUMBER"


    // $ANTLR start "entryRuleLOWER_MULTIPLICITY"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2698:1: entryRuleLOWER_MULTIPLICITY returns [String current=null] : iv_ruleLOWER_MULTIPLICITY= ruleLOWER_MULTIPLICITY EOF ;
    public final String entryRuleLOWER_MULTIPLICITY() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleLOWER_MULTIPLICITY = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2699:2: (iv_ruleLOWER_MULTIPLICITY= ruleLOWER_MULTIPLICITY EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2700:2: iv_ruleLOWER_MULTIPLICITY= ruleLOWER_MULTIPLICITY EOF
            {
             newCompositeNode(grammarAccess.getLOWER_MULTIPLICITYRule()); 
            pushFollow(FOLLOW_ruleLOWER_MULTIPLICITY_in_entryRuleLOWER_MULTIPLICITY6694);
            iv_ruleLOWER_MULTIPLICITY=ruleLOWER_MULTIPLICITY();

            state._fsp--;

             current =iv_ruleLOWER_MULTIPLICITY.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleLOWER_MULTIPLICITY6705); 

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
    // $ANTLR end "entryRuleLOWER_MULTIPLICITY"


    // $ANTLR start "ruleLOWER_MULTIPLICITY"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2707:1: ruleLOWER_MULTIPLICITY returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : this_INT_0= RULE_INT ;
    public final AntlrDatatypeRuleToken ruleLOWER_MULTIPLICITY() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_INT_0=null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2710:28: (this_INT_0= RULE_INT )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2711:5: this_INT_0= RULE_INT
            {
            this_INT_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleLOWER_MULTIPLICITY6744); 

            		current.merge(this_INT_0);
                
             
                newLeafNode(this_INT_0, grammarAccess.getLOWER_MULTIPLICITYAccess().getINTTerminalRuleCall()); 
                

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
    // $ANTLR end "ruleLOWER_MULTIPLICITY"


    // $ANTLR start "entryRuleUPPER_MULTIPLICITY"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2726:1: entryRuleUPPER_MULTIPLICITY returns [String current=null] : iv_ruleUPPER_MULTIPLICITY= ruleUPPER_MULTIPLICITY EOF ;
    public final String entryRuleUPPER_MULTIPLICITY() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleUPPER_MULTIPLICITY = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2727:2: (iv_ruleUPPER_MULTIPLICITY= ruleUPPER_MULTIPLICITY EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2728:2: iv_ruleUPPER_MULTIPLICITY= ruleUPPER_MULTIPLICITY EOF
            {
             newCompositeNode(grammarAccess.getUPPER_MULTIPLICITYRule()); 
            pushFollow(FOLLOW_ruleUPPER_MULTIPLICITY_in_entryRuleUPPER_MULTIPLICITY6789);
            iv_ruleUPPER_MULTIPLICITY=ruleUPPER_MULTIPLICITY();

            state._fsp--;

             current =iv_ruleUPPER_MULTIPLICITY.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleUPPER_MULTIPLICITY6800); 

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
    // $ANTLR end "entryRuleUPPER_MULTIPLICITY"


    // $ANTLR start "ruleUPPER_MULTIPLICITY"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2735:1: ruleUPPER_MULTIPLICITY returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_INT_0= RULE_INT | kw= '*' ) ;
    public final AntlrDatatypeRuleToken ruleUPPER_MULTIPLICITY() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_INT_0=null;
        Token kw=null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2738:28: ( (this_INT_0= RULE_INT | kw= '*' ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2739:1: (this_INT_0= RULE_INT | kw= '*' )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2739:1: (this_INT_0= RULE_INT | kw= '*' )
            int alt44=2;
            int LA44_0 = input.LA(1);

            if ( (LA44_0==RULE_INT) ) {
                alt44=1;
            }
            else if ( (LA44_0==37) ) {
                alt44=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 44, 0, input);

                throw nvae;
            }
            switch (alt44) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2739:6: this_INT_0= RULE_INT
                    {
                    this_INT_0=(Token)match(input,RULE_INT,FOLLOW_RULE_INT_in_ruleUPPER_MULTIPLICITY6840); 

                    		current.merge(this_INT_0);
                        
                     
                        newLeafNode(this_INT_0, grammarAccess.getUPPER_MULTIPLICITYAccess().getINTTerminalRuleCall_0()); 
                        

                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2748:2: kw= '*'
                    {
                    kw=(Token)match(input,37,FOLLOW_37_in_ruleUPPER_MULTIPLICITY6864); 

                            current.merge(kw);
                            newLeafNode(kw, grammarAccess.getUPPER_MULTIPLICITYAccess().getAsteriskKeyword_1()); 
                        

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
    // $ANTLR end "ruleUPPER_MULTIPLICITY"


    // $ANTLR start "entryRuleFQN"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2761:1: entryRuleFQN returns [String current=null] : iv_ruleFQN= ruleFQN EOF ;
    public final String entryRuleFQN() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleFQN = null;


        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2762:2: (iv_ruleFQN= ruleFQN EOF )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2763:2: iv_ruleFQN= ruleFQN EOF
            {
             newCompositeNode(grammarAccess.getFQNRule()); 
            pushFollow(FOLLOW_ruleFQN_in_entryRuleFQN6905);
            iv_ruleFQN=ruleFQN();

            state._fsp--;

             current =iv_ruleFQN.getText(); 
            match(input,EOF,FOLLOW_EOF_in_entryRuleFQN6916); 

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
    // $ANTLR end "entryRuleFQN"


    // $ANTLR start "ruleFQN"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2770:1: ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )* ) ;
    public final AntlrDatatypeRuleToken ruleFQN() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_ID_0=null;
        Token kw=null;
        Token this_ID_2=null;

         enterRule(); 
            
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2773:28: ( (this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )* ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2774:1: (this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )* )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2774:1: (this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )* )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2774:6: this_ID_0= RULE_ID (kw= '/' this_ID_2= RULE_ID )*
            {
            this_ID_0=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleFQN6956); 

            		current.merge(this_ID_0);
                
             
                newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); 
                
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2781:1: (kw= '/' this_ID_2= RULE_ID )*
            loop45:
            do {
                int alt45=2;
                int LA45_0 = input.LA(1);

                if ( (LA45_0==40) ) {
                    alt45=1;
                }


                switch (alt45) {
            	case 1 :
            	    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2782:2: kw= '/' this_ID_2= RULE_ID
            	    {
            	    kw=(Token)match(input,40,FOLLOW_40_in_ruleFQN6975); 

            	            current.merge(kw);
            	            newLeafNode(kw, grammarAccess.getFQNAccess().getSolidusKeyword_1_0()); 
            	        
            	    this_ID_2=(Token)match(input,RULE_ID,FOLLOW_RULE_ID_in_ruleFQN6990); 

            	    		current.merge(this_ID_2);
            	        
            	     
            	        newLeafNode(this_ID_2, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); 
            	        

            	    }
            	    break;

            	default :
            	    break loop45;
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
    // $ANTLR end "ruleFQN"


    // $ANTLR start "ruleParameterType"
    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2802:1: ruleParameterType returns [Enumerator current=null] : ( (enumLiteral_0= 'ADD_INFO' ) | (enumLiteral_1= 'BOOLEAN' ) | (enumLiteral_2= 'ENUM' ) | (enumLiteral_3= 'FLOAT' ) | (enumLiteral_4= 'INTEGER' ) | (enumLiteral_5= 'FUNCTION_NAME' ) | (enumLiteral_6= 'LINKER_SYMBOL' ) | (enumLiteral_7= 'MULTILINE_STRING' ) | (enumLiteral_8= 'STRING' ) ) ;
    public final Enumerator ruleParameterType() throws RecognitionException {
        Enumerator current = null;

        Token enumLiteral_0=null;
        Token enumLiteral_1=null;
        Token enumLiteral_2=null;
        Token enumLiteral_3=null;
        Token enumLiteral_4=null;
        Token enumLiteral_5=null;
        Token enumLiteral_6=null;
        Token enumLiteral_7=null;
        Token enumLiteral_8=null;

         enterRule(); 
        try {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2804:28: ( ( (enumLiteral_0= 'ADD_INFO' ) | (enumLiteral_1= 'BOOLEAN' ) | (enumLiteral_2= 'ENUM' ) | (enumLiteral_3= 'FLOAT' ) | (enumLiteral_4= 'INTEGER' ) | (enumLiteral_5= 'FUNCTION_NAME' ) | (enumLiteral_6= 'LINKER_SYMBOL' ) | (enumLiteral_7= 'MULTILINE_STRING' ) | (enumLiteral_8= 'STRING' ) ) )
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2805:1: ( (enumLiteral_0= 'ADD_INFO' ) | (enumLiteral_1= 'BOOLEAN' ) | (enumLiteral_2= 'ENUM' ) | (enumLiteral_3= 'FLOAT' ) | (enumLiteral_4= 'INTEGER' ) | (enumLiteral_5= 'FUNCTION_NAME' ) | (enumLiteral_6= 'LINKER_SYMBOL' ) | (enumLiteral_7= 'MULTILINE_STRING' ) | (enumLiteral_8= 'STRING' ) )
            {
            // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2805:1: ( (enumLiteral_0= 'ADD_INFO' ) | (enumLiteral_1= 'BOOLEAN' ) | (enumLiteral_2= 'ENUM' ) | (enumLiteral_3= 'FLOAT' ) | (enumLiteral_4= 'INTEGER' ) | (enumLiteral_5= 'FUNCTION_NAME' ) | (enumLiteral_6= 'LINKER_SYMBOL' ) | (enumLiteral_7= 'MULTILINE_STRING' ) | (enumLiteral_8= 'STRING' ) )
            int alt46=9;
            switch ( input.LA(1) ) {
            case 41:
                {
                alt46=1;
                }
                break;
            case 42:
                {
                alt46=2;
                }
                break;
            case 43:
                {
                alt46=3;
                }
                break;
            case 44:
                {
                alt46=4;
                }
                break;
            case 45:
                {
                alt46=5;
                }
                break;
            case 46:
                {
                alt46=6;
                }
                break;
            case 47:
                {
                alt46=7;
                }
                break;
            case 48:
                {
                alt46=8;
                }
                break;
            case 49:
                {
                alt46=9;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 46, 0, input);

                throw nvae;
            }

            switch (alt46) {
                case 1 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2805:2: (enumLiteral_0= 'ADD_INFO' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2805:2: (enumLiteral_0= 'ADD_INFO' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2805:4: enumLiteral_0= 'ADD_INFO'
                    {
                    enumLiteral_0=(Token)match(input,41,FOLLOW_41_in_ruleParameterType7051); 

                            current = grammarAccess.getParameterTypeAccess().getADD_INFOEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_0, grammarAccess.getParameterTypeAccess().getADD_INFOEnumLiteralDeclaration_0()); 
                        

                    }


                    }
                    break;
                case 2 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2811:6: (enumLiteral_1= 'BOOLEAN' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2811:6: (enumLiteral_1= 'BOOLEAN' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2811:8: enumLiteral_1= 'BOOLEAN'
                    {
                    enumLiteral_1=(Token)match(input,42,FOLLOW_42_in_ruleParameterType7068); 

                            current = grammarAccess.getParameterTypeAccess().getBOOLEANEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_1, grammarAccess.getParameterTypeAccess().getBOOLEANEnumLiteralDeclaration_1()); 
                        

                    }


                    }
                    break;
                case 3 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2817:6: (enumLiteral_2= 'ENUM' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2817:6: (enumLiteral_2= 'ENUM' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2817:8: enumLiteral_2= 'ENUM'
                    {
                    enumLiteral_2=(Token)match(input,43,FOLLOW_43_in_ruleParameterType7085); 

                            current = grammarAccess.getParameterTypeAccess().getENUMEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_2, grammarAccess.getParameterTypeAccess().getENUMEnumLiteralDeclaration_2()); 
                        

                    }


                    }
                    break;
                case 4 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2823:6: (enumLiteral_3= 'FLOAT' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2823:6: (enumLiteral_3= 'FLOAT' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2823:8: enumLiteral_3= 'FLOAT'
                    {
                    enumLiteral_3=(Token)match(input,44,FOLLOW_44_in_ruleParameterType7102); 

                            current = grammarAccess.getParameterTypeAccess().getFLOATEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_3, grammarAccess.getParameterTypeAccess().getFLOATEnumLiteralDeclaration_3()); 
                        

                    }


                    }
                    break;
                case 5 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2829:6: (enumLiteral_4= 'INTEGER' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2829:6: (enumLiteral_4= 'INTEGER' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2829:8: enumLiteral_4= 'INTEGER'
                    {
                    enumLiteral_4=(Token)match(input,45,FOLLOW_45_in_ruleParameterType7119); 

                            current = grammarAccess.getParameterTypeAccess().getINTEGEREnumLiteralDeclaration_4().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_4, grammarAccess.getParameterTypeAccess().getINTEGEREnumLiteralDeclaration_4()); 
                        

                    }


                    }
                    break;
                case 6 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2835:6: (enumLiteral_5= 'FUNCTION_NAME' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2835:6: (enumLiteral_5= 'FUNCTION_NAME' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2835:8: enumLiteral_5= 'FUNCTION_NAME'
                    {
                    enumLiteral_5=(Token)match(input,46,FOLLOW_46_in_ruleParameterType7136); 

                            current = grammarAccess.getParameterTypeAccess().getFUNCTION_NAMEEnumLiteralDeclaration_5().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_5, grammarAccess.getParameterTypeAccess().getFUNCTION_NAMEEnumLiteralDeclaration_5()); 
                        

                    }


                    }
                    break;
                case 7 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2841:6: (enumLiteral_6= 'LINKER_SYMBOL' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2841:6: (enumLiteral_6= 'LINKER_SYMBOL' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2841:8: enumLiteral_6= 'LINKER_SYMBOL'
                    {
                    enumLiteral_6=(Token)match(input,47,FOLLOW_47_in_ruleParameterType7153); 

                            current = grammarAccess.getParameterTypeAccess().getLINKER_SYMBOLEnumLiteralDeclaration_6().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_6, grammarAccess.getParameterTypeAccess().getLINKER_SYMBOLEnumLiteralDeclaration_6()); 
                        

                    }


                    }
                    break;
                case 8 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2847:6: (enumLiteral_7= 'MULTILINE_STRING' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2847:6: (enumLiteral_7= 'MULTILINE_STRING' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2847:8: enumLiteral_7= 'MULTILINE_STRING'
                    {
                    enumLiteral_7=(Token)match(input,48,FOLLOW_48_in_ruleParameterType7170); 

                            current = grammarAccess.getParameterTypeAccess().getMULTILINE_STRINGEnumLiteralDeclaration_7().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_7, grammarAccess.getParameterTypeAccess().getMULTILINE_STRINGEnumLiteralDeclaration_7()); 
                        

                    }


                    }
                    break;
                case 9 :
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2853:6: (enumLiteral_8= 'STRING' )
                    {
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2853:6: (enumLiteral_8= 'STRING' )
                    // ../org.artop.ecuc.autosar4x.dsl.paramdef/src-gen/org/artop/ecuc/autosar4x/dsl/paramdef/parser/antlr/internal/InternalParamDefDsl.g:2853:8: enumLiteral_8= 'STRING'
                    {
                    enumLiteral_8=(Token)match(input,49,FOLLOW_49_in_ruleParameterType7187); 

                            current = grammarAccess.getParameterTypeAccess().getSTRINGEnumLiteralDeclaration_8().getEnumLiteral().getInstance();
                            newLeafNode(enumLiteral_8, grammarAccess.getParameterTypeAccess().getSTRINGEnumLiteralDeclaration_8()); 
                        

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
    // $ANTLR end "ruleParameterType"

    // Delegated rules


    protected DFA21 dfa21 = new DFA21(this);
    static final String DFA21_eotS =
        "\13\uffff";
    static final String DFA21_eofS =
        "\13\uffff";
    static final String DFA21_minS =
        "\1\16\12\uffff";
    static final String DFA21_maxS =
        "\1\40\12\uffff";
    static final String DFA21_acceptS =
        "\1\uffff\1\12\1\1\1\2\1\3\1\4\1\5\1\6\1\7\1\10\1\11";
    static final String DFA21_specialS =
        "\1\0\12\uffff}>";
    static final String[] DFA21_transitionS = {
            "\1\5\1\6\1\uffff\1\1\3\uffff\1\2\2\uffff\1\7\1\10\3\uffff\1"+
            "\3\1\4\1\11\1\12",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    };

    static final short[] DFA21_eot = DFA.unpackEncodedString(DFA21_eotS);
    static final short[] DFA21_eof = DFA.unpackEncodedString(DFA21_eofS);
    static final char[] DFA21_min = DFA.unpackEncodedStringToUnsignedChars(DFA21_minS);
    static final char[] DFA21_max = DFA.unpackEncodedStringToUnsignedChars(DFA21_maxS);
    static final short[] DFA21_accept = DFA.unpackEncodedString(DFA21_acceptS);
    static final short[] DFA21_special = DFA.unpackEncodedString(DFA21_specialS);
    static final short[][] DFA21_transition;

    static {
        int numStates = DFA21_transitionS.length;
        DFA21_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA21_transition[i] = DFA.unpackEncodedString(DFA21_transitionS[i]);
        }
    }

    class DFA21 extends DFA {

        public DFA21(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 21;
            this.eot = DFA21_eot;
            this.eof = DFA21_eof;
            this.min = DFA21_min;
            this.max = DFA21_max;
            this.accept = DFA21_accept;
            this.special = DFA21_special;
            this.transition = DFA21_transition;
        }
        public String getDescription() {
            return "()* loopback of 1034:3: ( ({...}? => ( ({...}? => (otherlv_6= 'requiresIndex' ( ( (lv_requiresIndex_7_0= 'true' ) ) | otherlv_8= 'false' ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_9= 'default' ( (lv_default_10_0= ruleVALUE ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_11= 'literals' ( (lv_literals_12_0= RULE_ID ) )+ ) ) ) ) | ({...}? => ( ({...}? => (otherlv_13= 'desc' ( (lv_desc_14_0= RULE_STRING ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_15= 'tags' ( (lv_tags_16_0= ruleTag ) ) (otherlv_17= ',' ( (lv_tags_18_0= ruleTag ) ) )* ) ) ) ) | ({...}? => ( ({...}? => (otherlv_19= 'lowerMultiplicity' ( (lv_lowerMultiplicity_20_0= ruleLOWER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_21= 'upperMultiplicity' ( (lv_upperMultiplicity_22_0= ruleUPPER_MULTIPLICITY ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_23= 'min' ( (lv_min_24_0= ruleNUMBER ) ) ) ) ) ) | ({...}? => ( ({...}? => (otherlv_25= 'max' ( (lv_max_26_0= ruleNUMBER ) ) ) ) ) ) )*";
        }
        public int specialStateTransition(int s, IntStream _input) throws NoViableAltException {
            TokenStream input = (TokenStream)_input;
        	int _s = s;
            switch ( s ) {
                    case 0 : 
                        int LA21_0 = input.LA(1);

                         
                        int index21_0 = input.index();
                        input.rewind();
                        s = -1;
                        if ( (LA21_0==17) ) {s = 1;}

                        else if ( LA21_0 ==21 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 0) ) {s = 2;}

                        else if ( LA21_0 ==29 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 1) ) {s = 3;}

                        else if ( LA21_0 ==30 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 2) ) {s = 4;}

                        else if ( LA21_0 ==14 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 3) ) {s = 5;}

                        else if ( LA21_0 ==15 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 4) ) {s = 6;}

                        else if ( LA21_0 ==24 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 5) ) {s = 7;}

                        else if ( LA21_0 ==25 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 6) ) {s = 8;}

                        else if ( LA21_0 ==31 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 7) ) {s = 9;}

                        else if ( LA21_0 ==32 && getUnorderedGroupHelper().canSelect(grammarAccess.getParameterDefAccess().getUnorderedGroup_4_1(), 8) ) {s = 10;}

                         
                        input.seek(index21_0);
                        if ( s>=0 ) return s;
                        break;
            }
            NoViableAltException nvae =
                new NoViableAltException(getDescription(), 21, _s, input);
            error(nvae);
            throw nvae;
        }
    }
 

    public static final BitSet FOLLOW_ruleModel_in_entryRuleModel75 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModel85 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_11_in_ruleModel123 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleModel140 = new BitSet(new long[]{0x0000000000001002L});
    public static final BitSet FOLLOW_ruleModuleDef_in_ruleModel168 = new BitSet(new long[]{0x0000000000001002L});
    public static final BitSet FOLLOW_ruleModuleDef_in_entryRuleModuleDef205 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleModuleDef215 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_12_in_ruleModuleDef252 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleModuleDef269 = new BitSet(new long[]{0x0000000000042000L});
    public static final BitSet FOLLOW_13_in_ruleModuleDef287 = new BitSet(new long[]{0x000000000002C000L});
    public static final BitSet FOLLOW_14_in_ruleModuleDef345 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleModuleDef362 = new BitSet(new long[]{0x000000000002C000L});
    public static final BitSet FOLLOW_15_in_ruleModuleDef435 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleModuleDef456 = new BitSet(new long[]{0x000000000003C000L});
    public static final BitSet FOLLOW_16_in_ruleModuleDef469 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleModuleDef490 = new BitSet(new long[]{0x000000000003C000L});
    public static final BitSet FOLLOW_17_in_ruleModuleDef545 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_ruleModuleDef559 = new BitSet(new long[]{0x0000000004180000L});
    public static final BitSet FOLLOW_ruleAbstractContainerDef_in_ruleModuleDef580 = new BitSet(new long[]{0x0000000004180000L});
    public static final BitSet FOLLOW_19_in_ruleModuleDef593 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleAbstractContainerDef_in_entryRuleAbstractContainerDef629 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleAbstractContainerDef639 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainerDef_in_ruleAbstractContainerDef686 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleChoiceContainerDef_in_ruleAbstractContainerDef713 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleContainerDef_in_entryRuleContainerDef748 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleContainerDef758 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_ruleContainerDef795 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleContainerDef812 = new BitSet(new long[]{0x0000000000042000L});
    public static final BitSet FOLLOW_13_in_ruleContainerDef830 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_21_in_ruleContainerDef888 = new BitSet(new long[]{0x0000000000C00000L});
    public static final BitSet FOLLOW_22_in_ruleContainerDef907 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_23_in_ruleContainerDef938 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_14_in_ruleContainerDef1007 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleContainerDef1024 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_15_in_ruleContainerDef1097 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleContainerDef1118 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_16_in_ruleContainerDef1131 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleContainerDef1152 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_24_in_ruleContainerDef1222 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleContainerDef1243 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_25_in_ruleContainerDef1311 = new BitSet(new long[]{0x0000002000000040L});
    public static final BitSet FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleContainerDef1332 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_17_in_ruleContainerDef1385 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_ruleContainerDef1399 = new BitSet(new long[]{0x000000160C180000L});
    public static final BitSet FOLLOW_ruleAbstractContainerDef_in_ruleContainerDef1421 = new BitSet(new long[]{0x000000160C180000L});
    public static final BitSet FOLLOW_ruleParameterDef_in_ruleContainerDef1448 = new BitSet(new long[]{0x000000160C180000L});
    public static final BitSet FOLLOW_ruleAbstractReferenceDef_in_ruleContainerDef1475 = new BitSet(new long[]{0x000000160C180000L});
    public static final BitSet FOLLOW_19_in_ruleContainerDef1489 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleChoiceContainerDef_in_entryRuleChoiceContainerDef1527 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleChoiceContainerDef1537 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_26_in_ruleChoiceContainerDef1574 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleChoiceContainerDef1591 = new BitSet(new long[]{0x0000000000042000L});
    public static final BitSet FOLLOW_13_in_ruleChoiceContainerDef1609 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_21_in_ruleChoiceContainerDef1667 = new BitSet(new long[]{0x0000000000C00000L});
    public static final BitSet FOLLOW_22_in_ruleChoiceContainerDef1686 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_23_in_ruleChoiceContainerDef1717 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_14_in_ruleChoiceContainerDef1786 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleChoiceContainerDef1803 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_15_in_ruleChoiceContainerDef1876 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleChoiceContainerDef1897 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_16_in_ruleChoiceContainerDef1910 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleChoiceContainerDef1931 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_24_in_ruleChoiceContainerDef2001 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleChoiceContainerDef2022 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_25_in_ruleChoiceContainerDef2090 = new BitSet(new long[]{0x0000002000000040L});
    public static final BitSet FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleChoiceContainerDef2111 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_17_in_ruleChoiceContainerDef2164 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_ruleChoiceContainerDef2178 = new BitSet(new long[]{0x0000000000180000L});
    public static final BitSet FOLLOW_ruleContainerDef_in_ruleChoiceContainerDef2199 = new BitSet(new long[]{0x0000000000180000L});
    public static final BitSet FOLLOW_19_in_ruleChoiceContainerDef2212 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleParameterDef_in_entryRuleParameterDef2248 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleParameterDef2258 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_27_in_ruleParameterDef2295 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleParameterDef2312 = new BitSet(new long[]{0x0000000010000000L});
    public static final BitSet FOLLOW_28_in_ruleParameterDef2329 = new BitSet(new long[]{0x0003FE0000000000L});
    public static final BitSet FOLLOW_ruleParameterType_in_ruleParameterDef2350 = new BitSet(new long[]{0x0000000000002002L});
    public static final BitSet FOLLOW_13_in_ruleParameterDef2363 = new BitSet(new long[]{0x00000001E322C000L});
    public static final BitSet FOLLOW_21_in_ruleParameterDef2421 = new BitSet(new long[]{0x0000000000C00000L});
    public static final BitSet FOLLOW_22_in_ruleParameterDef2440 = new BitSet(new long[]{0x00000001E322C000L});
    public static final BitSet FOLLOW_23_in_ruleParameterDef2471 = new BitSet(new long[]{0x00000001E322C000L});
    public static final BitSet FOLLOW_29_in_ruleParameterDef2540 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleVALUE_in_ruleParameterDef2561 = new BitSet(new long[]{0x00000001E322C000L});
    public static final BitSet FOLLOW_30_in_ruleParameterDef2629 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleParameterDef2646 = new BitSet(new long[]{0x00000001E322C010L});
    public static final BitSet FOLLOW_14_in_ruleParameterDef2720 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleParameterDef2737 = new BitSet(new long[]{0x00000001E322C000L});
    public static final BitSet FOLLOW_15_in_ruleParameterDef2810 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleParameterDef2831 = new BitSet(new long[]{0x00000001E323C000L});
    public static final BitSet FOLLOW_16_in_ruleParameterDef2844 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleParameterDef2865 = new BitSet(new long[]{0x00000001E323C000L});
    public static final BitSet FOLLOW_24_in_ruleParameterDef2935 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleParameterDef2956 = new BitSet(new long[]{0x00000001E322C000L});
    public static final BitSet FOLLOW_25_in_ruleParameterDef3024 = new BitSet(new long[]{0x0000002000000040L});
    public static final BitSet FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleParameterDef3045 = new BitSet(new long[]{0x00000001E322C000L});
    public static final BitSet FOLLOW_31_in_ruleParameterDef3113 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ruleNUMBER_in_ruleParameterDef3134 = new BitSet(new long[]{0x00000001E322C000L});
    public static final BitSet FOLLOW_32_in_ruleParameterDef3202 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ruleNUMBER_in_ruleParameterDef3223 = new BitSet(new long[]{0x00000001E322C000L});
    public static final BitSet FOLLOW_17_in_ruleParameterDef3276 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleAbstractReferenceDef_in_entryRuleAbstractReferenceDef3314 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleAbstractReferenceDef3324 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleReferenceDef_in_ruleAbstractReferenceDef3371 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleInstanceReferenceDef_in_ruleAbstractReferenceDef3398 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleForeignReferenceDef_in_ruleAbstractReferenceDef3425 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleReferenceDef_in_entryRuleReferenceDef3460 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleReferenceDef3470 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_33_in_ruleReferenceDef3507 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleReferenceDef3524 = new BitSet(new long[]{0x0000000010000000L});
    public static final BitSet FOLLOW_28_in_ruleReferenceDef3541 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleFQN_in_ruleReferenceDef3564 = new BitSet(new long[]{0x0000000000012002L});
    public static final BitSet FOLLOW_16_in_ruleReferenceDef3577 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleFQN_in_ruleReferenceDef3600 = new BitSet(new long[]{0x0000000000012002L});
    public static final BitSet FOLLOW_13_in_ruleReferenceDef3615 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_21_in_ruleReferenceDef3673 = new BitSet(new long[]{0x0000000000C00000L});
    public static final BitSet FOLLOW_22_in_ruleReferenceDef3692 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_23_in_ruleReferenceDef3723 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_14_in_ruleReferenceDef3792 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleReferenceDef3809 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_15_in_ruleReferenceDef3882 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleReferenceDef3903 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_16_in_ruleReferenceDef3916 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleReferenceDef3937 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_24_in_ruleReferenceDef4007 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleReferenceDef4028 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_25_in_ruleReferenceDef4096 = new BitSet(new long[]{0x0000002000000040L});
    public static final BitSet FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleReferenceDef4117 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_17_in_ruleReferenceDef4170 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleInstanceReferenceDef_in_entryRuleInstanceReferenceDef4208 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleInstanceReferenceDef4218 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_34_in_ruleInstanceReferenceDef4255 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleInstanceReferenceDef4272 = new BitSet(new long[]{0x0000000010000000L});
    public static final BitSet FOLLOW_28_in_ruleInstanceReferenceDef4289 = new BitSet(new long[]{0x0000000800000010L});
    public static final BitSet FOLLOW_ruleEClassRefStar_in_ruleInstanceReferenceDef4311 = new BitSet(new long[]{0x0000000800010000L});
    public static final BitSet FOLLOW_16_in_ruleInstanceReferenceDef4324 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleEClassRefStar_in_ruleInstanceReferenceDef4345 = new BitSet(new long[]{0x0000000800010000L});
    public static final BitSet FOLLOW_35_in_ruleInstanceReferenceDef4361 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleEClassRef_in_ruleInstanceReferenceDef4382 = new BitSet(new long[]{0x0000000000002002L});
    public static final BitSet FOLLOW_13_in_ruleInstanceReferenceDef4395 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_21_in_ruleInstanceReferenceDef4453 = new BitSet(new long[]{0x0000000000C00000L});
    public static final BitSet FOLLOW_22_in_ruleInstanceReferenceDef4472 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_23_in_ruleInstanceReferenceDef4503 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_14_in_ruleInstanceReferenceDef4572 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleInstanceReferenceDef4589 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_15_in_ruleInstanceReferenceDef4662 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleInstanceReferenceDef4683 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_16_in_ruleInstanceReferenceDef4696 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleInstanceReferenceDef4717 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_24_in_ruleInstanceReferenceDef4787 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleInstanceReferenceDef4808 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_25_in_ruleInstanceReferenceDef4876 = new BitSet(new long[]{0x0000002000000040L});
    public static final BitSet FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleInstanceReferenceDef4897 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_17_in_ruleInstanceReferenceDef4950 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleForeignReferenceDef_in_entryRuleForeignReferenceDef4988 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleForeignReferenceDef4998 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_36_in_ruleForeignReferenceDef5035 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleForeignReferenceDef5052 = new BitSet(new long[]{0x0000000010000000L});
    public static final BitSet FOLLOW_28_in_ruleForeignReferenceDef5069 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_ruleEClassRef_in_ruleForeignReferenceDef5090 = new BitSet(new long[]{0x0000000000002002L});
    public static final BitSet FOLLOW_13_in_ruleForeignReferenceDef5103 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_21_in_ruleForeignReferenceDef5161 = new BitSet(new long[]{0x0000000000C00000L});
    public static final BitSet FOLLOW_22_in_ruleForeignReferenceDef5180 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_23_in_ruleForeignReferenceDef5211 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_14_in_ruleForeignReferenceDef5280 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleForeignReferenceDef5297 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_15_in_ruleForeignReferenceDef5370 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleForeignReferenceDef5391 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_16_in_ruleForeignReferenceDef5404 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleTag_in_ruleForeignReferenceDef5425 = new BitSet(new long[]{0x000000000323C000L});
    public static final BitSet FOLLOW_24_in_ruleForeignReferenceDef5495 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_ruleLOWER_MULTIPLICITY_in_ruleForeignReferenceDef5516 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_25_in_ruleForeignReferenceDef5584 = new BitSet(new long[]{0x0000002000000040L});
    public static final BitSet FOLLOW_ruleUPPER_MULTIPLICITY_in_ruleForeignReferenceDef5605 = new BitSet(new long[]{0x000000000322C000L});
    public static final BitSet FOLLOW_17_in_ruleForeignReferenceDef5658 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEClassRef_in_entryRuleEClassRef5696 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEClassRef5706 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleXML_NAME_in_ruleEClassRef5753 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleEClassRefStar_in_entryRuleEClassRefStar5788 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleEClassRefStar5798 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleXML_NAME_in_ruleEClassRefStar5846 = new BitSet(new long[]{0x0000002000000002L});
    public static final BitSet FOLLOW_37_in_ruleEClassRefStar5864 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleTag_in_entryRuleTag5914 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleTag5924 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleKEY_in_ruleTag5970 = new BitSet(new long[]{0x0000000800000000L});
    public static final BitSet FOLLOW_35_in_ruleTag5982 = new BitSet(new long[]{0x0000000000C00070L});
    public static final BitSet FOLLOW_ruleVALUE_in_ruleTag6003 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleXML_NAME_in_entryRuleXML_NAME6040 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleXML_NAME6051 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleXML_NAME6091 = new BitSet(new long[]{0x0000004000000002L});
    public static final BitSet FOLLOW_38_in_ruleXML_NAME6110 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleXML_NAME6125 = new BitSet(new long[]{0x0000004000000002L});
    public static final BitSet FOLLOW_ruleVALUE_in_entryRuleVALUE6173 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleVALUE6184 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleVALUE6224 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleVALUE6250 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMBER_in_ruleVALUE6283 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_ruleVALUE6307 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_23_in_ruleVALUE6326 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleKEY_in_entryRuleKEY6367 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleKEY6378 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_STRING_in_ruleKEY6418 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleKEY6444 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMBER_in_ruleKEY6477 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_ruleKEY6501 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_23_in_ruleKEY6520 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleNUMBER_in_entryRuleNUMBER6561 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleNUMBER6572 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleNUMBER6612 = new BitSet(new long[]{0x0000008000000002L});
    public static final BitSet FOLLOW_39_in_ruleNUMBER6631 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleNUMBER6646 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleLOWER_MULTIPLICITY_in_entryRuleLOWER_MULTIPLICITY6694 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleLOWER_MULTIPLICITY6705 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleLOWER_MULTIPLICITY6744 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleUPPER_MULTIPLICITY_in_entryRuleUPPER_MULTIPLICITY6789 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleUPPER_MULTIPLICITY6800 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_INT_in_ruleUPPER_MULTIPLICITY6840 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_37_in_ruleUPPER_MULTIPLICITY6864 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ruleFQN_in_entryRuleFQN6905 = new BitSet(new long[]{0x0000000000000000L});
    public static final BitSet FOLLOW_EOF_in_entryRuleFQN6916 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleFQN6956 = new BitSet(new long[]{0x0000010000000002L});
    public static final BitSet FOLLOW_40_in_ruleFQN6975 = new BitSet(new long[]{0x0000000000000010L});
    public static final BitSet FOLLOW_RULE_ID_in_ruleFQN6990 = new BitSet(new long[]{0x0000010000000002L});
    public static final BitSet FOLLOW_41_in_ruleParameterType7051 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_42_in_ruleParameterType7068 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_43_in_ruleParameterType7085 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_44_in_ruleParameterType7102 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_45_in_ruleParameterType7119 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_46_in_ruleParameterType7136 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_47_in_ruleParameterType7153 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_48_in_ruleParameterType7170 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_49_in_ruleParameterType7187 = new BitSet(new long[]{0x0000000000000002L});

}
