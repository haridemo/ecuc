/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl;

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.*;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class ParamDefDslFactoryImpl extends EFactoryImpl implements ParamDefDslFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static ParamDefDslFactory init()
  {
    try
    {
      ParamDefDslFactory theParamDefDslFactory = (ParamDefDslFactory)EPackage.Registry.INSTANCE.getEFactory(ParamDefDslPackage.eNS_URI);
      if (theParamDefDslFactory != null)
      {
        return theParamDefDslFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new ParamDefDslFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ParamDefDslFactoryImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EObject create(EClass eClass)
  {
    switch (eClass.getClassifierID())
    {
      case ParamDefDslPackage.MODEL: return createModel();
      case ParamDefDslPackage.MODULE_DEF: return createModuleDef();
      case ParamDefDslPackage.ABSTRACT_CONTAINER_DEF: return createAbstractContainerDef();
      case ParamDefDslPackage.CONTAINER_DEF: return createContainerDef();
      case ParamDefDslPackage.CONTAINER_ELEMENT: return createContainerElement();
      case ParamDefDslPackage.CHOICE_CONTAINER_DEF: return createChoiceContainerDef();
      case ParamDefDslPackage.PARAMETER_DEF: return createParameterDef();
      case ParamDefDslPackage.ABSTRACT_REFERENCE_DEF: return createAbstractReferenceDef();
      case ParamDefDslPackage.REFERENCE_DEF: return createReferenceDef();
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF: return createInstanceReferenceDef();
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF: return createForeignReferenceDef();
      case ParamDefDslPackage.ECLASS_REF: return createEClassRef();
      case ParamDefDslPackage.ECLASS_REF_STAR: return createEClassRefStar();
      case ParamDefDslPackage.TAG: return createTag();
      default:
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object createFromString(EDataType eDataType, String initialValue)
  {
    switch (eDataType.getClassifierID())
    {
      case ParamDefDslPackage.PARAMETER_TYPE:
        return createParameterTypeFromString(eDataType, initialValue);
      default:
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String convertToString(EDataType eDataType, Object instanceValue)
  {
    switch (eDataType.getClassifierID())
    {
      case ParamDefDslPackage.PARAMETER_TYPE:
        return convertParameterTypeToString(eDataType, instanceValue);
      default:
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Model createModel()
  {
    ModelImpl model = new ModelImpl();
    return model;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ModuleDef createModuleDef()
  {
    ModuleDefImpl moduleDef = new ModuleDefImpl();
    return moduleDef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AbstractContainerDef createAbstractContainerDef()
  {
    AbstractContainerDefImpl abstractContainerDef = new AbstractContainerDefImpl();
    return abstractContainerDef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ContainerDef createContainerDef()
  {
    ContainerDefImpl containerDef = new ContainerDefImpl();
    return containerDef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ContainerElement createContainerElement()
  {
    ContainerElementImpl containerElement = new ContainerElementImpl();
    return containerElement;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ChoiceContainerDef createChoiceContainerDef()
  {
    ChoiceContainerDefImpl choiceContainerDef = new ChoiceContainerDefImpl();
    return choiceContainerDef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ParameterDef createParameterDef()
  {
    ParameterDefImpl parameterDef = new ParameterDefImpl();
    return parameterDef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AbstractReferenceDef createAbstractReferenceDef()
  {
    AbstractReferenceDefImpl abstractReferenceDef = new AbstractReferenceDefImpl();
    return abstractReferenceDef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ReferenceDef createReferenceDef()
  {
    ReferenceDefImpl referenceDef = new ReferenceDefImpl();
    return referenceDef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public InstanceReferenceDef createInstanceReferenceDef()
  {
    InstanceReferenceDefImpl instanceReferenceDef = new InstanceReferenceDefImpl();
    return instanceReferenceDef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ForeignReferenceDef createForeignReferenceDef()
  {
    ForeignReferenceDefImpl foreignReferenceDef = new ForeignReferenceDefImpl();
    return foreignReferenceDef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClassRef createEClassRef()
  {
    EClassRefImpl eClassRef = new EClassRefImpl();
    return eClassRef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClassRefStar createEClassRefStar()
  {
    EClassRefStarImpl eClassRefStar = new EClassRefStarImpl();
    return eClassRefStar;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Tag createTag()
  {
    TagImpl tag = new TagImpl();
    return tag;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ParameterType createParameterTypeFromString(EDataType eDataType, String initialValue)
  {
    ParameterType result = ParameterType.get(initialValue);
    if (result == null) throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
    return result;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String convertParameterTypeToString(EDataType eDataType, Object instanceValue)
  {
    return instanceValue == null ? null : instanceValue.toString();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ParamDefDslPackage getParamDefDslPackage()
  {
    return (ParamDefDslPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static ParamDefDslPackage getPackage()
  {
    return ParamDefDslPackage.eINSTANCE;
  }

} //ParamDefDslFactoryImpl
