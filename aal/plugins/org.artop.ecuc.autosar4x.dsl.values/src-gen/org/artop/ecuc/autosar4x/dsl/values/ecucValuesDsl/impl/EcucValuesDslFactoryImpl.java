/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.*;

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
public class EcucValuesDslFactoryImpl extends EFactoryImpl implements EcucValuesDslFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static EcucValuesDslFactory init()
  {
    try
    {
      EcucValuesDslFactory theEcucValuesDslFactory = (EcucValuesDslFactory)EPackage.Registry.INSTANCE.getEFactory(EcucValuesDslPackage.eNS_URI);
      if (theEcucValuesDslFactory != null)
      {
        return theEcucValuesDslFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new EcucValuesDslFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EcucValuesDslFactoryImpl()
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
      case EcucValuesDslPackage.MODEL: return createModel();
      case EcucValuesDslPackage.MODULE: return createModule();
      case EcucValuesDslPackage.CONTAINED_ELEMENT: return createContainedElement();
      case EcucValuesDslPackage.CONTAINER: return createContainer();
      case EcucValuesDslPackage.PARAMETER: return createParameter();
      case EcucValuesDslPackage.REFERENCE: return createReference();
      case EcucValuesDslPackage.INSTANCE_REFERENCE: return createInstanceReference();
      case EcucValuesDslPackage.REFERENCE_VALUE: return createReferenceValue();
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE: return createInstanceReferenceValue();
      case EcucValuesDslPackage.ABSTRACT_CONTEXT: return createAbstractContext();
      case EcucValuesDslPackage.SIMPLE_VALUE: return createSimpleValue();
      case EcucValuesDslPackage.STRING_VALUE: return createStringValue();
      case EcucValuesDslPackage.ENUM_VALUE: return createEnumValue();
      case EcucValuesDslPackage.BOOLEAN_VALUE: return createBooleanValue();
      case EcucValuesDslPackage.NUMERIC_VALUE: return createNumericValue();
      case EcucValuesDslPackage.TAG: return createTag();
      case EcucValuesDslPackage.CONTEXT_CHAIN: return createContextChain();
      case EcucValuesDslPackage.CONTEXT: return createContext();
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
      case EcucValuesDslPackage.BOOLEAN_LITERAL:
        return createBooleanLiteralFromString(eDataType, initialValue);
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
      case EcucValuesDslPackage.BOOLEAN_LITERAL:
        return convertBooleanLiteralToString(eDataType, instanceValue);
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
  public Module createModule()
  {
    ModuleImpl module = new ModuleImpl();
    return module;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ContainedElement createContainedElement()
  {
    ContainedElementImpl containedElement = new ContainedElementImpl();
    return containedElement;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container createContainer()
  {
    ContainerImpl container = new ContainerImpl();
    return container;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Parameter createParameter()
  {
    ParameterImpl parameter = new ParameterImpl();
    return parameter;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Reference createReference()
  {
    ReferenceImpl reference = new ReferenceImpl();
    return reference;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public InstanceReference createInstanceReference()
  {
    InstanceReferenceImpl instanceReference = new InstanceReferenceImpl();
    return instanceReference;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ReferenceValue createReferenceValue()
  {
    ReferenceValueImpl referenceValue = new ReferenceValueImpl();
    return referenceValue;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public InstanceReferenceValue createInstanceReferenceValue()
  {
    InstanceReferenceValueImpl instanceReferenceValue = new InstanceReferenceValueImpl();
    return instanceReferenceValue;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AbstractContext createAbstractContext()
  {
    AbstractContextImpl abstractContext = new AbstractContextImpl();
    return abstractContext;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public SimpleValue createSimpleValue()
  {
    SimpleValueImpl simpleValue = new SimpleValueImpl();
    return simpleValue;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public StringValue createStringValue()
  {
    StringValueImpl stringValue = new StringValueImpl();
    return stringValue;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EnumValue createEnumValue()
  {
    EnumValueImpl enumValue = new EnumValueImpl();
    return enumValue;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BooleanValue createBooleanValue()
  {
    BooleanValueImpl booleanValue = new BooleanValueImpl();
    return booleanValue;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NumericValue createNumericValue()
  {
    NumericValueImpl numericValue = new NumericValueImpl();
    return numericValue;
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
  public ContextChain createContextChain()
  {
    ContextChainImpl contextChain = new ContextChainImpl();
    return contextChain;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Context createContext()
  {
    ContextImpl context = new ContextImpl();
    return context;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public BooleanLiteral createBooleanLiteralFromString(EDataType eDataType, String initialValue)
  {
    BooleanLiteral result = BooleanLiteral.get(initialValue);
    if (result == null) throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
    return result;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String convertBooleanLiteralToString(EDataType eDataType, Object instanceValue)
  {
    return instanceValue == null ? null : instanceValue.toString();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EcucValuesDslPackage getEcucValuesDslPackage()
  {
    return (EcucValuesDslPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static EcucValuesDslPackage getPackage()
  {
    return EcucValuesDslPackage.eINSTANCE;
  }

} //EcucValuesDslFactoryImpl
