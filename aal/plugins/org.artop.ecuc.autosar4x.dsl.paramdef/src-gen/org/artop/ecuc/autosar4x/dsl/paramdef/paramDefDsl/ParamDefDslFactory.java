/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage
 * @generated
 */
public interface ParamDefDslFactory extends EFactory
{
  /**
   * The singleton instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  ParamDefDslFactory eINSTANCE = org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslFactoryImpl.init();

  /**
   * Returns a new object of class '<em>Model</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Model</em>'.
   * @generated
   */
  Model createModel();

  /**
   * Returns a new object of class '<em>Module Def</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Module Def</em>'.
   * @generated
   */
  ModuleDef createModuleDef();

  /**
   * Returns a new object of class '<em>Abstract Container Def</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Abstract Container Def</em>'.
   * @generated
   */
  AbstractContainerDef createAbstractContainerDef();

  /**
   * Returns a new object of class '<em>Container Def</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Container Def</em>'.
   * @generated
   */
  ContainerDef createContainerDef();

  /**
   * Returns a new object of class '<em>Container Element</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Container Element</em>'.
   * @generated
   */
  ContainerElement createContainerElement();

  /**
   * Returns a new object of class '<em>Choice Container Def</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Choice Container Def</em>'.
   * @generated
   */
  ChoiceContainerDef createChoiceContainerDef();

  /**
   * Returns a new object of class '<em>Parameter Def</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Parameter Def</em>'.
   * @generated
   */
  ParameterDef createParameterDef();

  /**
   * Returns a new object of class '<em>Abstract Reference Def</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Abstract Reference Def</em>'.
   * @generated
   */
  AbstractReferenceDef createAbstractReferenceDef();

  /**
   * Returns a new object of class '<em>Reference Def</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Reference Def</em>'.
   * @generated
   */
  ReferenceDef createReferenceDef();

  /**
   * Returns a new object of class '<em>Instance Reference Def</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Instance Reference Def</em>'.
   * @generated
   */
  InstanceReferenceDef createInstanceReferenceDef();

  /**
   * Returns a new object of class '<em>Foreign Reference Def</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Foreign Reference Def</em>'.
   * @generated
   */
  ForeignReferenceDef createForeignReferenceDef();

  /**
   * Returns a new object of class '<em>EClass Ref</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>EClass Ref</em>'.
   * @generated
   */
  EClassRef createEClassRef();

  /**
   * Returns a new object of class '<em>EClass Ref Star</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>EClass Ref Star</em>'.
   * @generated
   */
  EClassRefStar createEClassRefStar();

  /**
   * Returns a new object of class '<em>Tag</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Tag</em>'.
   * @generated
   */
  Tag createTag();

  /**
   * Returns the package supported by this factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the package supported by this factory.
   * @generated
   */
  ParamDefDslPackage getParamDefDslPackage();

} //ParamDefDslFactory
