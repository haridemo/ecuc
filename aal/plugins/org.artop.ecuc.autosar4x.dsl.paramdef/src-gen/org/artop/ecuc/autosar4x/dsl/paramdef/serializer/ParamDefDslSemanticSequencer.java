package org.artop.ecuc.autosar4x.dsl.paramdef.serializer;

import com.google.inject.Inject;
import com.google.inject.Provider;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag;
import org.artop.ecuc.autosar4x.dsl.paramdef.services.ParamDefDslGrammarAccess;
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
public class ParamDefDslSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private ParamDefDslGrammarAccess grammarAccess;
	
	public void createSequence(EObject context, EObject semanticObject) {
		if(semanticObject.eClass().getEPackage() == ParamDefDslPackage.eINSTANCE) switch(semanticObject.eClass().getClassifierID()) {
			case ParamDefDslPackage.CHOICE_CONTAINER_DEF:
				if(context == grammarAccess.getAbstractContainerDefRule() ||
				   context == grammarAccess.getChoiceContainerDefRule() ||
				   context == grammarAccess.getContainerElementRule()) {
					sequence_ChoiceContainerDef(context, (ChoiceContainerDef) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.CONTAINER_DEF:
				if(context == grammarAccess.getAbstractContainerDefRule() ||
				   context == grammarAccess.getContainerDefRule() ||
				   context == grammarAccess.getContainerElementRule()) {
					sequence_ContainerDef(context, (ContainerDef) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.ECLASS_REF:
				if(context == grammarAccess.getEClassRefRule()) {
					sequence_EClassRef(context, (EClassRef) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.ECLASS_REF_STAR:
				if(context == grammarAccess.getEClassRefStarRule()) {
					sequence_EClassRefStar(context, (EClassRefStar) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.FOREIGN_REFERENCE_DEF:
				if(context == grammarAccess.getAbstractReferenceDefRule() ||
				   context == grammarAccess.getForeignReferenceDefRule()) {
					sequence_ForeignReferenceDef(context, (ForeignReferenceDef) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.INSTANCE_REFERENCE_DEF:
				if(context == grammarAccess.getAbstractReferenceDefRule() ||
				   context == grammarAccess.getContainerElementRule() ||
				   context == grammarAccess.getInstanceReferenceDefRule()) {
					sequence_InstanceReferenceDef(context, (InstanceReferenceDef) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.MODEL:
				if(context == grammarAccess.getModelRule()) {
					sequence_Model(context, (Model) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.MODULE_DEF:
				if(context == grammarAccess.getModuleDefRule()) {
					sequence_ModuleDef(context, (ModuleDef) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.PARAMETER_DEF:
				if(context == grammarAccess.getContainerElementRule() ||
				   context == grammarAccess.getParameterDefRule()) {
					sequence_ParameterDef(context, (ParameterDef) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.REFERENCE_DEF:
				if(context == grammarAccess.getAbstractReferenceDefRule() ||
				   context == grammarAccess.getContainerElementRule() ||
				   context == grammarAccess.getReferenceDefRule()) {
					sequence_ReferenceDef(context, (ReferenceDef) semanticObject); 
					return; 
				}
				else break;
			case ParamDefDslPackage.TAG:
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
	 *     (
	 *         name=ID 
	 *         (requiresIndex?='true'? desc=STRING? (tags+=Tag tags+=Tag*)? lowerMultiplicity=LOWER_MULTIPLICITY? upperMultiplicity=UPPER_MULTIPLICITY?)? 
	 *         container+=ContainerDef*
	 *     )
	 */
	protected void sequence_ChoiceContainerDef(EObject context, ChoiceContainerDef semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (
	 *         name=ID 
	 *         (requiresIndex?='true'? desc=STRING? (tags+=Tag tags+=Tag*)? lowerMultiplicity=LOWER_MULTIPLICITY? upperMultiplicity=UPPER_MULTIPLICITY?)? 
	 *         (container+=AbstractContainerDef | parameter+=ParameterDef | references+=AbstractReferenceDef)*
	 *     )
	 */
	protected void sequence_ContainerDef(EObject context, ContainerDef semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (target=[EClass|XML_NAME] star='*'?)
	 */
	protected void sequence_EClassRefStar(EObject context, EClassRefStar semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     target=[EClass|XML_NAME]
	 */
	protected void sequence_EClassRef(EObject context, EClassRef semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, ParamDefDslPackage.Literals.ECLASS_REF__TARGET) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ParamDefDslPackage.Literals.ECLASS_REF__TARGET));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getEClassRefAccess().getTargetEClassXML_NAMEParserRuleCall_0_1(), semanticObject.getTarget());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (
	 *         name=ID 
	 *         dest=EClassRef 
	 *         (requiresIndex?='true'? desc=STRING? (tags+=Tag tags+=Tag*)? lowerMultiplicity=LOWER_MULTIPLICITY? upperMultiplicity=UPPER_MULTIPLICITY?)?
	 *     )
	 */
	protected void sequence_ForeignReferenceDef(EObject context, ForeignReferenceDef semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (
	 *         name=ID 
	 *         (contexts+=EClassRefStar contexts+=EClassRefStar*)? 
	 *         dest=EClassRef 
	 *         (requiresIndex?='true'? desc=STRING? (tags+=Tag tags+=Tag*)? lowerMultiplicity=LOWER_MULTIPLICITY? upperMultiplicity=UPPER_MULTIPLICITY?)?
	 *     )
	 */
	protected void sequence_InstanceReferenceDef(EObject context, InstanceReferenceDef semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (packageName=ID? modules+=ModuleDef*)
	 */
	protected void sequence_Model(EObject context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (name=ID (desc=STRING? (tags+=Tag tags+=Tag*)?)? container+=AbstractContainerDef*)
	 */
	protected void sequence_ModuleDef(EObject context, ModuleDef semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (
	 *         name=ID 
	 *         type=ParameterType 
	 *         (
	 *             requiresIndex?='true'? 
	 *             default=VALUE? 
	 *             literals+=ID* 
	 *             desc=STRING? 
	 *             (tags+=Tag tags+=Tag*)? 
	 *             lowerMultiplicity=LOWER_MULTIPLICITY? 
	 *             upperMultiplicity=UPPER_MULTIPLICITY? 
	 *             min=NUMBER? 
	 *             max=NUMBER?
	 *         )?
	 *     )
	 */
	protected void sequence_ParameterDef(EObject context, ParameterDef semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (
	 *         name=ID 
	 *         types+=[ContainerDef|FQN] 
	 *         types+=[ContainerDef|FQN]* 
	 *         (requiresIndex?='true'? desc=STRING? (tags+=Tag tags+=Tag*)? lowerMultiplicity=LOWER_MULTIPLICITY? upperMultiplicity=UPPER_MULTIPLICITY?)?
	 *     )
	 */
	protected void sequence_ReferenceDef(EObject context, ReferenceDef semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (key=KEY value=VALUE)
	 */
	protected void sequence_Tag(EObject context, Tag semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, ParamDefDslPackage.Literals.TAG__KEY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ParamDefDslPackage.Literals.TAG__KEY));
			if(transientValues.isValueTransient(semanticObject, ParamDefDslPackage.Literals.TAG__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ParamDefDslPackage.Literals.TAG__VALUE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getTagAccess().getKeyKEYParserRuleCall_0_0(), semanticObject.getKey());
		feeder.accept(grammarAccess.getTagAccess().getValueVALUEParserRuleCall_2_0(), semanticObject.getValue());
		feeder.finish();
	}
}
