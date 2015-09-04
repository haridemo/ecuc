/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.util;

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.*;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.util.Switch;

/**
 * <!-- begin-user-doc -->
 * The <b>Switch</b> for the model's inheritance hierarchy.
 * It supports the call {@link #doSwitch(EObject) doSwitch(object)}
 * to invoke the <code>caseXXX</code> method for each class of the model,
 * starting with the actual class of the object
 * and proceeding up the inheritance hierarchy
 * until a non-null result is returned,
 * which is the result of the switch.
 * <!-- end-user-doc -->
 * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage
 * @generated
 */
public class ParamDefDslSwitch<T> extends Switch<T>
{
  /**
   * The cached model package
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected static ParamDefDslPackage modelPackage;

  /**
   * Creates an instance of the switch.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ParamDefDslSwitch()
  {
    if (modelPackage == null)
    {
      modelPackage = ParamDefDslPackage.eINSTANCE;
    }
  }

  /**
   * Checks whether this is a switch for the given package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param ePackage the package in question.
   * @return whether this is a switch for the given package.
   * @generated
   */
  @Override
  protected boolean isSwitchFor(EPackage ePackage)
  {
    return ePackage == modelPackage;
  }

  /**
   * Calls <code>caseXXX</code> for each class of the model until one returns a non null result; it yields that result.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the first non-null result returned by a <code>caseXXX</code> call.
   * @generated
   */
  @Override
  protected T doSwitch(int classifierID, EObject theEObject)
  {
    switch (classifierID)
    {
      case ParamDefDslPackage.MODEL:
      {
        Model model = (Model)theEObject;
        T result = caseModel(model);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.MODULE_DEF:
      {
        ModuleDef moduleDef = (ModuleDef)theEObject;
        T result = caseModuleDef(moduleDef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.ABSTRACT_CONTAINER_DEF:
      {
        AbstractContainerDef abstractContainerDef = (AbstractContainerDef)theEObject;
        T result = caseAbstractContainerDef(abstractContainerDef);
        if (result == null) result = caseContainerElement(abstractContainerDef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.CONTAINER_DEF:
      {
        ContainerDef containerDef = (ContainerDef)theEObject;
        T result = caseContainerDef(containerDef);
        if (result == null) result = caseAbstractContainerDef(containerDef);
        if (result == null) result = caseContainerElement(containerDef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.CONTAINER_ELEMENT:
      {
        ContainerElement containerElement = (ContainerElement)theEObject;
        T result = caseContainerElement(containerElement);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.CHOICE_CONTAINER_DEF:
      {
        ChoiceContainerDef choiceContainerDef = (ChoiceContainerDef)theEObject;
        T result = caseChoiceContainerDef(choiceContainerDef);
        if (result == null) result = caseAbstractContainerDef(choiceContainerDef);
        if (result == null) result = caseContainerElement(choiceContainerDef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.PARAMETER_DEF:
      {
        ParameterDef parameterDef = (ParameterDef)theEObject;
        T result = caseParameterDef(parameterDef);
        if (result == null) result = caseContainerElement(parameterDef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.ABSTRACT_REFERENCE_DEF:
      {
        AbstractReferenceDef abstractReferenceDef = (AbstractReferenceDef)theEObject;
        T result = caseAbstractReferenceDef(abstractReferenceDef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.REFERENCE_DEF:
      {
        ReferenceDef referenceDef = (ReferenceDef)theEObject;
        T result = caseReferenceDef(referenceDef);
        if (result == null) result = caseContainerElement(referenceDef);
        if (result == null) result = caseAbstractReferenceDef(referenceDef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF:
      {
        InstanceReferenceDef instanceReferenceDef = (InstanceReferenceDef)theEObject;
        T result = caseInstanceReferenceDef(instanceReferenceDef);
        if (result == null) result = caseContainerElement(instanceReferenceDef);
        if (result == null) result = caseAbstractReferenceDef(instanceReferenceDef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF:
      {
        ForeignReferenceDef foreignReferenceDef = (ForeignReferenceDef)theEObject;
        T result = caseForeignReferenceDef(foreignReferenceDef);
        if (result == null) result = caseAbstractReferenceDef(foreignReferenceDef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.ECLASS_REF:
      {
        EClassRef eClassRef = (EClassRef)theEObject;
        T result = caseEClassRef(eClassRef);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.ECLASS_REF_STAR:
      {
        EClassRefStar eClassRefStar = (EClassRefStar)theEObject;
        T result = caseEClassRefStar(eClassRefStar);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case ParamDefDslPackage.TAG:
      {
        Tag tag = (Tag)theEObject;
        T result = caseTag(tag);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      default: return defaultCase(theEObject);
    }
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Model</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Model</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseModel(Model object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Module Def</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Module Def</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseModuleDef(ModuleDef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Abstract Container Def</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Abstract Container Def</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseAbstractContainerDef(AbstractContainerDef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Container Def</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Container Def</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseContainerDef(ContainerDef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Container Element</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Container Element</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseContainerElement(ContainerElement object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Choice Container Def</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Choice Container Def</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseChoiceContainerDef(ChoiceContainerDef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Parameter Def</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Parameter Def</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseParameterDef(ParameterDef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Abstract Reference Def</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Abstract Reference Def</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseAbstractReferenceDef(AbstractReferenceDef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Reference Def</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Reference Def</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseReferenceDef(ReferenceDef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Instance Reference Def</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Instance Reference Def</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseInstanceReferenceDef(InstanceReferenceDef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Foreign Reference Def</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Foreign Reference Def</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseForeignReferenceDef(ForeignReferenceDef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>EClass Ref</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>EClass Ref</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseEClassRef(EClassRef object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>EClass Ref Star</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>EClass Ref Star</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseEClassRefStar(EClassRefStar object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Tag</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Tag</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseTag(Tag object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>EObject</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch, but this is the last case anyway.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>EObject</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject)
   * @generated
   */
  @Override
  public T defaultCase(EObject object)
  {
    return null;
  }

} //ParamDefDslSwitch
