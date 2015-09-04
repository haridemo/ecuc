package org.artop.ecuc.autosar4x.dsl.paramdef.serializer;

import com.google.inject.Inject;
import java.util.List;
import org.artop.ecuc.autosar4x.dsl.paramdef.services.ParamDefDslGrammarAccess;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.IGrammarAccess;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AbstractElementAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.GroupAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.TokenAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynNavigable;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;

@SuppressWarnings("all")
public class ParamDefDslSyntacticSequencer extends AbstractSyntacticSequencer {

	protected ParamDefDslGrammarAccess grammarAccess;
	protected AbstractElementAlias match_ChoiceContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a;
	protected AbstractElementAlias match_ChoiceContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q;
	protected AbstractElementAlias match_ChoiceContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a;
	protected AbstractElementAlias match_ContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a;
	protected AbstractElementAlias match_ContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q;
	protected AbstractElementAlias match_ContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a;
	protected AbstractElementAlias match_ForeignReferenceDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a;
	protected AbstractElementAlias match_ForeignReferenceDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q;
	protected AbstractElementAlias match_ForeignReferenceDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a;
	protected AbstractElementAlias match_InstanceReferenceDef___FalseKeyword_6_1_0_1_1_RequiresIndexKeyword_6_1_0_0__a;
	protected AbstractElementAlias match_InstanceReferenceDef___LeftParenthesisKeyword_6_0___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a_RightParenthesisKeyword_6_2__q;
	protected AbstractElementAlias match_InstanceReferenceDef___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a;
	protected AbstractElementAlias match_ModuleDef___LeftParenthesisKeyword_2_0_RightParenthesisKeyword_2_2__q;
	protected AbstractElementAlias match_ParameterDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a;
	protected AbstractElementAlias match_ParameterDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q;
	protected AbstractElementAlias match_ParameterDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a;
	protected AbstractElementAlias match_ParameterDef_____RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_LiteralsKeyword_4_1_2_0__q;
	protected AbstractElementAlias match_ReferenceDef___FalseKeyword_5_1_0_1_1_RequiresIndexKeyword_5_1_0_0__a;
	protected AbstractElementAlias match_ReferenceDef___LeftParenthesisKeyword_5_0___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a_RightParenthesisKeyword_5_2__q;
	protected AbstractElementAlias match_ReferenceDef___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (ParamDefDslGrammarAccess) access;
		match_ChoiceContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getChoiceContainerDefAccess().getFalseKeyword_2_1_0_1_1()), new TokenAlias(false, false, grammarAccess.getChoiceContainerDefAccess().getRequiresIndexKeyword_2_1_0_0()));
		match_ChoiceContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getChoiceContainerDefAccess().getLeftParenthesisKeyword_2_0()), new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getChoiceContainerDefAccess().getRequiresIndexKeyword_2_1_0_0()), new TokenAlias(false, false, grammarAccess.getChoiceContainerDefAccess().getFalseKeyword_2_1_0_1_1())), new TokenAlias(false, false, grammarAccess.getChoiceContainerDefAccess().getRightParenthesisKeyword_2_2()));
		match_ChoiceContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getChoiceContainerDefAccess().getRequiresIndexKeyword_2_1_0_0()), new TokenAlias(false, false, grammarAccess.getChoiceContainerDefAccess().getFalseKeyword_2_1_0_1_1()));
		match_ContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getContainerDefAccess().getFalseKeyword_2_1_0_1_1()), new TokenAlias(false, false, grammarAccess.getContainerDefAccess().getRequiresIndexKeyword_2_1_0_0()));
		match_ContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getContainerDefAccess().getLeftParenthesisKeyword_2_0()), new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getContainerDefAccess().getRequiresIndexKeyword_2_1_0_0()), new TokenAlias(false, false, grammarAccess.getContainerDefAccess().getFalseKeyword_2_1_0_1_1())), new TokenAlias(false, false, grammarAccess.getContainerDefAccess().getRightParenthesisKeyword_2_2()));
		match_ContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getContainerDefAccess().getRequiresIndexKeyword_2_1_0_0()), new TokenAlias(false, false, grammarAccess.getContainerDefAccess().getFalseKeyword_2_1_0_1_1()));
		match_ForeignReferenceDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getForeignReferenceDefAccess().getFalseKeyword_4_1_0_1_1()), new TokenAlias(false, false, grammarAccess.getForeignReferenceDefAccess().getRequiresIndexKeyword_4_1_0_0()));
		match_ForeignReferenceDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getForeignReferenceDefAccess().getLeftParenthesisKeyword_4_0()), new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getForeignReferenceDefAccess().getRequiresIndexKeyword_4_1_0_0()), new TokenAlias(false, false, grammarAccess.getForeignReferenceDefAccess().getFalseKeyword_4_1_0_1_1())), new TokenAlias(false, false, grammarAccess.getForeignReferenceDefAccess().getRightParenthesisKeyword_4_2()));
		match_ForeignReferenceDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getForeignReferenceDefAccess().getRequiresIndexKeyword_4_1_0_0()), new TokenAlias(false, false, grammarAccess.getForeignReferenceDefAccess().getFalseKeyword_4_1_0_1_1()));
		match_InstanceReferenceDef___FalseKeyword_6_1_0_1_1_RequiresIndexKeyword_6_1_0_0__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getInstanceReferenceDefAccess().getFalseKeyword_6_1_0_1_1()), new TokenAlias(false, false, grammarAccess.getInstanceReferenceDefAccess().getRequiresIndexKeyword_6_1_0_0()));
		match_InstanceReferenceDef___LeftParenthesisKeyword_6_0___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a_RightParenthesisKeyword_6_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getInstanceReferenceDefAccess().getLeftParenthesisKeyword_6_0()), new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getInstanceReferenceDefAccess().getRequiresIndexKeyword_6_1_0_0()), new TokenAlias(false, false, grammarAccess.getInstanceReferenceDefAccess().getFalseKeyword_6_1_0_1_1())), new TokenAlias(false, false, grammarAccess.getInstanceReferenceDefAccess().getRightParenthesisKeyword_6_2()));
		match_InstanceReferenceDef___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getInstanceReferenceDefAccess().getRequiresIndexKeyword_6_1_0_0()), new TokenAlias(false, false, grammarAccess.getInstanceReferenceDefAccess().getFalseKeyword_6_1_0_1_1()));
		match_ModuleDef___LeftParenthesisKeyword_2_0_RightParenthesisKeyword_2_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getModuleDefAccess().getLeftParenthesisKeyword_2_0()), new TokenAlias(false, false, grammarAccess.getModuleDefAccess().getRightParenthesisKeyword_2_2()));
		match_ParameterDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getFalseKeyword_4_1_0_1_1()), new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getRequiresIndexKeyword_4_1_0_0()));
		match_ParameterDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getLeftParenthesisKeyword_4_0()), new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getRequiresIndexKeyword_4_1_0_0()), new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getFalseKeyword_4_1_0_1_1())), new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getRightParenthesisKeyword_4_2()));
		match_ParameterDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getRequiresIndexKeyword_4_1_0_0()), new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getFalseKeyword_4_1_0_1_1()));
		match_ParameterDef_____RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_LiteralsKeyword_4_1_2_0__q = new GroupAlias(false, true, new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getRequiresIndexKeyword_4_1_0_0()), new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getFalseKeyword_4_1_0_1_1())), new TokenAlias(false, false, grammarAccess.getParameterDefAccess().getLiteralsKeyword_4_1_2_0()));
		match_ReferenceDef___FalseKeyword_5_1_0_1_1_RequiresIndexKeyword_5_1_0_0__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getReferenceDefAccess().getFalseKeyword_5_1_0_1_1()), new TokenAlias(false, false, grammarAccess.getReferenceDefAccess().getRequiresIndexKeyword_5_1_0_0()));
		match_ReferenceDef___LeftParenthesisKeyword_5_0___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a_RightParenthesisKeyword_5_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getReferenceDefAccess().getLeftParenthesisKeyword_5_0()), new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getReferenceDefAccess().getRequiresIndexKeyword_5_1_0_0()), new TokenAlias(false, false, grammarAccess.getReferenceDefAccess().getFalseKeyword_5_1_0_1_1())), new TokenAlias(false, false, grammarAccess.getReferenceDefAccess().getRightParenthesisKeyword_5_2()));
		match_ReferenceDef___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getReferenceDefAccess().getRequiresIndexKeyword_5_1_0_0()), new TokenAlias(false, false, grammarAccess.getReferenceDefAccess().getFalseKeyword_5_1_0_1_1()));
	}
	
	@Override
	protected String getUnassignedRuleCallToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		return "";
	}
	
	
	@Override
	protected void emitUnassignedTokens(EObject semanticObject, ISynTransition transition, INode fromNode, INode toNode) {
		if (transition.getAmbiguousSyntaxes().isEmpty()) return;
		List<INode> transitionNodes = collectNodes(fromNode, toNode);
		for (AbstractElementAlias syntax : transition.getAmbiguousSyntaxes()) {
			List<INode> syntaxNodes = getNodesFor(transitionNodes, syntax);
			if(match_ChoiceContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a.equals(syntax))
				emit_ChoiceContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ChoiceContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q.equals(syntax))
				emit_ChoiceContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ChoiceContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a.equals(syntax))
				emit_ChoiceContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a.equals(syntax))
				emit_ContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q.equals(syntax))
				emit_ContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a.equals(syntax))
				emit_ContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ForeignReferenceDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a.equals(syntax))
				emit_ForeignReferenceDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ForeignReferenceDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q.equals(syntax))
				emit_ForeignReferenceDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ForeignReferenceDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a.equals(syntax))
				emit_ForeignReferenceDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_InstanceReferenceDef___FalseKeyword_6_1_0_1_1_RequiresIndexKeyword_6_1_0_0__a.equals(syntax))
				emit_InstanceReferenceDef___FalseKeyword_6_1_0_1_1_RequiresIndexKeyword_6_1_0_0__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_InstanceReferenceDef___LeftParenthesisKeyword_6_0___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a_RightParenthesisKeyword_6_2__q.equals(syntax))
				emit_InstanceReferenceDef___LeftParenthesisKeyword_6_0___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a_RightParenthesisKeyword_6_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_InstanceReferenceDef___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a.equals(syntax))
				emit_InstanceReferenceDef___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ModuleDef___LeftParenthesisKeyword_2_0_RightParenthesisKeyword_2_2__q.equals(syntax))
				emit_ModuleDef___LeftParenthesisKeyword_2_0_RightParenthesisKeyword_2_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ParameterDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a.equals(syntax))
				emit_ParameterDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ParameterDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q.equals(syntax))
				emit_ParameterDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ParameterDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a.equals(syntax))
				emit_ParameterDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ParameterDef_____RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_LiteralsKeyword_4_1_2_0__q.equals(syntax))
				emit_ParameterDef_____RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_LiteralsKeyword_4_1_2_0__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ReferenceDef___FalseKeyword_5_1_0_1_1_RequiresIndexKeyword_5_1_0_0__a.equals(syntax))
				emit_ReferenceDef___FalseKeyword_5_1_0_1_1_RequiresIndexKeyword_5_1_0_0__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ReferenceDef___LeftParenthesisKeyword_5_0___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a_RightParenthesisKeyword_5_2__q.equals(syntax))
				emit_ReferenceDef___LeftParenthesisKeyword_5_0___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a_RightParenthesisKeyword_5_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_ReferenceDef___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a.equals(syntax))
				emit_ReferenceDef___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * Syntax:
	 *     ('false' 'requiresIndex')*
	 */
	protected void emit_ChoiceContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ('requiresIndex' 'false')* ')')?
	 */
	protected void emit_ChoiceContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('requiresIndex' 'false')*
	 */
	protected void emit_ChoiceContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('false' 'requiresIndex')*
	 */
	protected void emit_ContainerDef___FalseKeyword_2_1_0_1_1_RequiresIndexKeyword_2_1_0_0__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ('requiresIndex' 'false')* ')')?
	 */
	protected void emit_ContainerDef___LeftParenthesisKeyword_2_0___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a_RightParenthesisKeyword_2_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('requiresIndex' 'false')*
	 */
	protected void emit_ContainerDef___RequiresIndexKeyword_2_1_0_0_FalseKeyword_2_1_0_1_1__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('false' 'requiresIndex')*
	 */
	protected void emit_ForeignReferenceDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ('requiresIndex' 'false')* ')')?
	 */
	protected void emit_ForeignReferenceDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('requiresIndex' 'false')*
	 */
	protected void emit_ForeignReferenceDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('false' 'requiresIndex')*
	 */
	protected void emit_InstanceReferenceDef___FalseKeyword_6_1_0_1_1_RequiresIndexKeyword_6_1_0_0__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ('requiresIndex' 'false')* ')')?
	 */
	protected void emit_InstanceReferenceDef___LeftParenthesisKeyword_6_0___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a_RightParenthesisKeyword_6_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('requiresIndex' 'false')*
	 */
	protected void emit_InstanceReferenceDef___RequiresIndexKeyword_6_1_0_0_FalseKeyword_6_1_0_1_1__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ')')?
	 */
	protected void emit_ModuleDef___LeftParenthesisKeyword_2_0_RightParenthesisKeyword_2_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('false' 'requiresIndex')*
	 */
	protected void emit_ParameterDef___FalseKeyword_4_1_0_1_1_RequiresIndexKeyword_4_1_0_0__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ('requiresIndex' 'false')* ')')?
	 */
	protected void emit_ParameterDef___LeftParenthesisKeyword_4_0___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_RightParenthesisKeyword_4_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('requiresIndex' 'false')*
	 */
	protected void emit_ParameterDef___RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     (('requiresIndex' 'false')* 'literals')?
	 */
	protected void emit_ParameterDef_____RequiresIndexKeyword_4_1_0_0_FalseKeyword_4_1_0_1_1__a_LiteralsKeyword_4_1_2_0__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('false' 'requiresIndex')*
	 */
	protected void emit_ReferenceDef___FalseKeyword_5_1_0_1_1_RequiresIndexKeyword_5_1_0_0__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ('requiresIndex' 'false')* ')')?
	 */
	protected void emit_ReferenceDef___LeftParenthesisKeyword_5_0___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a_RightParenthesisKeyword_5_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('requiresIndex' 'false')*
	 */
	protected void emit_ReferenceDef___RequiresIndexKeyword_5_1_0_0_FalseKeyword_5_1_0_1_1__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}
