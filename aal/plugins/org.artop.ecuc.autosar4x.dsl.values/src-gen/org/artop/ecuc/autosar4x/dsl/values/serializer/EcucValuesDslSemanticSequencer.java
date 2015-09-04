package org.artop.ecuc.autosar4x.dsl.values.serializer;

import com.google.inject.Inject;
import com.google.inject.Provider;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EnumValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.StringValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag;
import org.artop.ecuc.autosar4x.dsl.values.services.EcucValuesDslGrammarAccess;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.serializer.acceptor.ISemanticSequenceAcceptor;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.diagnostic.ISemanticSequencerDiagnosticProvider;
import org.eclipse.xtext.serializer.diagnostic.ISerializationDiagnostic.Acceptor;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.GenericSequencer;
import org.eclipse.xtext.serializer.sequencer.ISemanticNodeProvider.INodesForEObjectProvider;
import org.eclipse.xtext.serializer.sequencer.ISemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;

@SuppressWarnings("all")
public class EcucValuesDslSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private EcucValuesDslGrammarAccess grammarAccess;
	
	public void createSequence(EObject context, EObject semanticObject) {
		if(semanticObject.eClass().getEPackage() == EcucValuesDslPackage.eINSTANCE) switch(semanticObject.eClass().getClassifierID()) {
			case EcucValuesDslPackage.BOOLEAN_VALUE:
				if(context == grammarAccess.getBooleanValueRule() ||
				   context == grammarAccess.getSimpleValueRule()) {
					sequence_BooleanValue(context, (BooleanValue) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.CONTAINER:
				if(context == grammarAccess.getContainedElementRule() ||
				   context == grammarAccess.getContainerRule()) {
					sequence_Container(context, (Container) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.CONTEXT:
				if(context == grammarAccess.getContextRule() ||
				   context == grammarAccess.getContextChainRule() ||
				   context == grammarAccess.getContextChainAccess().getContextChainPrevAction_1_0()) {
					sequence_Context(context, (Context) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.CONTEXT_CHAIN:
				if(context == grammarAccess.getContextChainRule() ||
				   context == grammarAccess.getContextChainAccess().getContextChainPrevAction_1_0()) {
					sequence_ContextChain(context, (ContextChain) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.ENUM_VALUE:
				if(context == grammarAccess.getEnumValueRule() ||
				   context == grammarAccess.getSimpleValueRule()) {
					sequence_EnumValue(context, (EnumValue) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.INSTANCE_REFERENCE:
				if(context == grammarAccess.getContainedElementRule() ||
				   context == grammarAccess.getInstanceReferenceRule()) {
					sequence_InstanceReference(context, (InstanceReference) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE:
				if(context == grammarAccess.getInstanceReferenceValueRule()) {
					sequence_InstanceReferenceValue(context, (InstanceReferenceValue) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.MODEL:
				if(context == grammarAccess.getModelRule()) {
					sequence_Model(context, (Model) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.MODULE:
				if(context == grammarAccess.getModuleRule()) {
					sequence_Module(context, (Module) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.NUMERIC_VALUE:
				if(context == grammarAccess.getNumericValueRule() ||
				   context == grammarAccess.getSimpleValueRule()) {
					sequence_NumericValue(context, (NumericValue) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.PARAMETER:
				if(context == grammarAccess.getContainedElementRule() ||
				   context == grammarAccess.getParameterRule()) {
					sequence_Parameter(context, (Parameter) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.REFERENCE:
				if(context == grammarAccess.getContainedElementRule() ||
				   context == grammarAccess.getReferenceRule()) {
					sequence_Reference(context, (Reference) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.REFERENCE_VALUE:
				if(context == grammarAccess.getReferenceValueRule()) {
					sequence_ReferenceValue(context, (ReferenceValue) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.STRING_VALUE:
				if(context == grammarAccess.getSimpleValueRule() ||
				   context == grammarAccess.getStringValueRule()) {
					sequence_StringValue(context, (StringValue) semanticObject); 
					return; 
				}
				else break;
			case EcucValuesDslPackage.TAG:
				if(context == grammarAccess.getTagRule()) {
					sequence_Tag(context, (Tag) semanticObject); 
					return; 
				}
				else break;
			}
		if (errorAcceptor != null) errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Constraint:
	 *     value=BooleanLiteral
	 */
	protected void sequence_BooleanValue(EObject context, BooleanValue semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.BOOLEAN_VALUE__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.BOOLEAN_VALUE__VALUE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getBooleanValueAccess().getValueBooleanLiteralEnumRuleCall_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (definition=[EcucContainerDef|ID] shortName=ID? (index=INT? (tags+=Tag tags+=Tag*)?)? elements+=ContainedElement*)
	 */
	protected void sequence_Container(EObject context, Container semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (prev=ContextChain_ContextChain_1_0 object=[EObject|FQN])
	 */
	protected void sequence_ContextChain(EObject context, ContextChain semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.CONTEXT_CHAIN__PREV) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.CONTEXT_CHAIN__PREV));
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.CONTEXT_CHAIN__OBJECT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.CONTEXT_CHAIN__OBJECT));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getContextChainAccess().getContextChainPrevAction_1_0(), semanticObject.getPrev());
		feeder.accept(grammarAccess.getContextChainAccess().getObjectEObjectFQNParserRuleCall_1_2_0_1(), semanticObject.getObject());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     start=[EObject|FQN]
	 */
	protected void sequence_Context(EObject context, Context semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.CONTEXT__START) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.CONTEXT__START));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getContextAccess().getStartEObjectFQNParserRuleCall_1_0_1(), semanticObject.getStart());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     literal=EID
	 */
	protected void sequence_EnumValue(EObject context, EnumValue semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.ENUM_VALUE__LITERAL) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.ENUM_VALUE__LITERAL));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getEnumValueAccess().getLiteralEIDParserRuleCall_0(), semanticObject.getLiteral());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (contexts=ContextChain target=[EObject|FQN])
	 */
	protected void sequence_InstanceReferenceValue(EObject context, InstanceReferenceValue semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.INSTANCE_REFERENCE_VALUE__CONTEXTS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.INSTANCE_REFERENCE_VALUE__CONTEXTS));
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.INSTANCE_REFERENCE_VALUE__TARGET) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.INSTANCE_REFERENCE_VALUE__TARGET));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getInstanceReferenceValueAccess().getContextsContextChainParserRuleCall_0_0(), semanticObject.getContexts());
		feeder.accept(grammarAccess.getInstanceReferenceValueAccess().getTargetEObjectFQNParserRuleCall_2_0_1(), semanticObject.getTarget());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (definition=[EcucAbstractReferenceDef|ID] value=InstanceReferenceValue (index=INT? (tags+=Tag tags+=Tag*)?)?)
	 */
	protected void sequence_InstanceReference(EObject context, InstanceReference semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (packageName=ID? modules+=Module*)
	 */
	protected void sequence_Model(EObject context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (definition=[EcucModuleDef|ID] shortName=ID? (tags+=Tag tags+=Tag*)? container+=Container*)
	 */
	protected void sequence_Module(EObject context, Module semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     value=NUMERIC
	 */
	protected void sequence_NumericValue(EObject context, NumericValue semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.NUMERIC_VALUE__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.NUMERIC_VALUE__VALUE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getNumericValueAccess().getValueNUMERICParserRuleCall_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (definition=[EcucParameterDef|ID] value=SimpleValue (index=INT? (tags+=Tag tags+=Tag*)?)?)
	 */
	protected void sequence_Parameter(EObject context, Parameter semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     container=[EObject|FQN]
	 */
	protected void sequence_ReferenceValue(EObject context, ReferenceValue semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.REFERENCE_VALUE__CONTAINER) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.REFERENCE_VALUE__CONTAINER));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getReferenceValueAccess().getContainerEObjectFQNParserRuleCall_0_1(), semanticObject.getContainer());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (definition=[EcucAbstractReferenceDef|ID] value=ReferenceValue (index=INT? (tags+=Tag tags+=Tag*)?)?)
	 */
	protected void sequence_Reference(EObject context, Reference semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     value=STRING
	 */
	protected void sequence_StringValue(EObject context, StringValue semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.STRING_VALUE__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.STRING_VALUE__VALUE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getStringValueAccess().getValueSTRINGTerminalRuleCall_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (key=KEY value=VALUE)
	 */
	protected void sequence_Tag(EObject context, Tag semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.TAG__KEY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.TAG__KEY));
			if(transientValues.isValueTransient(semanticObject, EcucValuesDslPackage.Literals.TAG__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, EcucValuesDslPackage.Literals.TAG__VALUE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getTagAccess().getKeyKEYParserRuleCall_0_0(), semanticObject.getKey());
		feeder.accept(grammarAccess.getTagAccess().getValueVALUEParserRuleCall_2_0(), semanticObject.getValue());
		feeder.finish();
	}
}
