package org.artop.ecuc.autosar4x.dsl.values.serializer;

import com.google.inject.Inject;
import java.util.List;
import org.artop.ecuc.autosar4x.dsl.values.services.EcucValuesDslGrammarAccess;
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
public class EcucValuesDslSyntacticSequencer extends AbstractSyntacticSequencer {

	protected EcucValuesDslGrammarAccess grammarAccess;
	protected AbstractElementAlias match_Container___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q;
	protected AbstractElementAlias match_InstanceReference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q;
	protected AbstractElementAlias match_Module___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q;
	protected AbstractElementAlias match_Parameter___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q;
	protected AbstractElementAlias match_Reference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (EcucValuesDslGrammarAccess) access;
		match_Container___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getContainerAccess().getLeftParenthesisKeyword_4_0()), new TokenAlias(false, false, grammarAccess.getContainerAccess().getRightParenthesisKeyword_4_2()));
		match_InstanceReference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getInstanceReferenceAccess().getLeftParenthesisKeyword_5_0()), new TokenAlias(false, false, grammarAccess.getInstanceReferenceAccess().getRightParenthesisKeyword_5_2()));
		match_Module___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getModuleAccess().getLeftParenthesisKeyword_4_0()), new TokenAlias(false, false, grammarAccess.getModuleAccess().getRightParenthesisKeyword_4_2()));
		match_Parameter___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getParameterAccess().getLeftParenthesisKeyword_5_0()), new TokenAlias(false, false, grammarAccess.getParameterAccess().getRightParenthesisKeyword_5_2()));
		match_Reference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getReferenceAccess().getLeftParenthesisKeyword_5_0()), new TokenAlias(false, false, grammarAccess.getReferenceAccess().getRightParenthesisKeyword_5_2()));
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
			if(match_Container___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q.equals(syntax))
				emit_Container___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_InstanceReference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q.equals(syntax))
				emit_InstanceReference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_Module___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q.equals(syntax))
				emit_Module___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_Parameter___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q.equals(syntax))
				emit_Parameter___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if(match_Reference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q.equals(syntax))
				emit_Reference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * Syntax:
	 *     ('(' ')')?
	 */
	protected void emit_Container___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ')')?
	 */
	protected void emit_InstanceReference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ')')?
	 */
	protected void emit_Module___LeftParenthesisKeyword_4_0_RightParenthesisKeyword_4_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ')')?
	 */
	protected void emit_Parameter___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Syntax:
	 *     ('(' ')')?
	 */
	protected void emit_Reference___LeftParenthesisKeyword_5_0_RightParenthesisKeyword_5_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}
