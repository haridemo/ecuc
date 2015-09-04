/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslFactory
 * @model kind="package"
 * @generated
 */
public interface EcucValuesDslPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "ecucValuesDsl";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.artop.org/ecuc/autosar4x/dsl/values/EcucValuesDsl";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "ecucValuesDsl";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  EcucValuesDslPackage eINSTANCE = org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl.init();

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModelImpl <em>Model</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModelImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getModel()
   * @generated
   */
  int MODEL = 0;

  /**
   * The feature id for the '<em><b>Package Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__PACKAGE_NAME = 0;

  /**
   * The feature id for the '<em><b>Modules</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__MODULES = 1;

  /**
   * The number of structural features of the '<em>Model</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModuleImpl <em>Module</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModuleImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getModule()
   * @generated
   */
  int MODULE = 1;

  /**
   * The feature id for the '<em><b>Definition</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE__DEFINITION = 0;

  /**
   * The feature id for the '<em><b>Short Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE__SHORT_NAME = 1;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE__TAGS = 2;

  /**
   * The feature id for the '<em><b>Container</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE__CONTAINER = 3;

  /**
   * The number of structural features of the '<em>Module</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE_FEATURE_COUNT = 4;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContainedElementImpl <em>Contained Element</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContainedElementImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getContainedElement()
   * @generated
   */
  int CONTAINED_ELEMENT = 2;

  /**
   * The feature id for the '<em><b>Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINED_ELEMENT__INDEX = 0;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINED_ELEMENT__TAGS = 1;

  /**
   * The number of structural features of the '<em>Contained Element</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINED_ELEMENT_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContainerImpl <em>Container</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContainerImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getContainer()
   * @generated
   */
  int CONTAINER = 3;

  /**
   * The feature id for the '<em><b>Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER__INDEX = CONTAINED_ELEMENT__INDEX;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER__TAGS = CONTAINED_ELEMENT__TAGS;

  /**
   * The feature id for the '<em><b>Definition</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER__DEFINITION = CONTAINED_ELEMENT_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Short Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER__SHORT_NAME = CONTAINED_ELEMENT_FEATURE_COUNT + 1;

  /**
   * The feature id for the '<em><b>Elements</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER__ELEMENTS = CONTAINED_ELEMENT_FEATURE_COUNT + 2;

  /**
   * The number of structural features of the '<em>Container</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_FEATURE_COUNT = CONTAINED_ELEMENT_FEATURE_COUNT + 3;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ParameterImpl <em>Parameter</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ParameterImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getParameter()
   * @generated
   */
  int PARAMETER = 4;

  /**
   * The feature id for the '<em><b>Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER__INDEX = CONTAINED_ELEMENT__INDEX;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER__TAGS = CONTAINED_ELEMENT__TAGS;

  /**
   * The feature id for the '<em><b>Definition</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER__DEFINITION = CONTAINED_ELEMENT_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Value</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER__VALUE = CONTAINED_ELEMENT_FEATURE_COUNT + 1;

  /**
   * The number of structural features of the '<em>Parameter</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_FEATURE_COUNT = CONTAINED_ELEMENT_FEATURE_COUNT + 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ReferenceImpl <em>Reference</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ReferenceImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getReference()
   * @generated
   */
  int REFERENCE = 5;

  /**
   * The feature id for the '<em><b>Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE__INDEX = CONTAINED_ELEMENT__INDEX;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE__TAGS = CONTAINED_ELEMENT__TAGS;

  /**
   * The feature id for the '<em><b>Definition</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE__DEFINITION = CONTAINED_ELEMENT_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Value</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE__VALUE = CONTAINED_ELEMENT_FEATURE_COUNT + 1;

  /**
   * The number of structural features of the '<em>Reference</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_FEATURE_COUNT = CONTAINED_ELEMENT_FEATURE_COUNT + 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceImpl <em>Instance Reference</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getInstanceReference()
   * @generated
   */
  int INSTANCE_REFERENCE = 6;

  /**
   * The feature id for the '<em><b>Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE__INDEX = CONTAINED_ELEMENT__INDEX;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE__TAGS = CONTAINED_ELEMENT__TAGS;

  /**
   * The feature id for the '<em><b>Definition</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE__DEFINITION = CONTAINED_ELEMENT_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Value</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE__VALUE = CONTAINED_ELEMENT_FEATURE_COUNT + 1;

  /**
   * The number of structural features of the '<em>Instance Reference</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_FEATURE_COUNT = CONTAINED_ELEMENT_FEATURE_COUNT + 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ReferenceValueImpl <em>Reference Value</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ReferenceValueImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getReferenceValue()
   * @generated
   */
  int REFERENCE_VALUE = 7;

  /**
   * The feature id for the '<em><b>Container</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_VALUE__CONTAINER = 0;

  /**
   * The number of structural features of the '<em>Reference Value</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_VALUE_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceValueImpl <em>Instance Reference Value</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceValueImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getInstanceReferenceValue()
   * @generated
   */
  int INSTANCE_REFERENCE_VALUE = 8;

  /**
   * The feature id for the '<em><b>Contexts</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_VALUE__CONTEXTS = 0;

  /**
   * The feature id for the '<em><b>Target</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_VALUE__TARGET = 1;

  /**
   * The number of structural features of the '<em>Instance Reference Value</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_VALUE_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.AbstractContextImpl <em>Abstract Context</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.AbstractContextImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getAbstractContext()
   * @generated
   */
  int ABSTRACT_CONTEXT = 9;

  /**
   * The number of structural features of the '<em>Abstract Context</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ABSTRACT_CONTEXT_FEATURE_COUNT = 0;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.SimpleValueImpl <em>Simple Value</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.SimpleValueImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getSimpleValue()
   * @generated
   */
  int SIMPLE_VALUE = 10;

  /**
   * The number of structural features of the '<em>Simple Value</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int SIMPLE_VALUE_FEATURE_COUNT = 0;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.StringValueImpl <em>String Value</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.StringValueImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getStringValue()
   * @generated
   */
  int STRING_VALUE = 11;

  /**
   * The feature id for the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int STRING_VALUE__VALUE = SIMPLE_VALUE_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>String Value</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int STRING_VALUE_FEATURE_COUNT = SIMPLE_VALUE_FEATURE_COUNT + 1;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EnumValueImpl <em>Enum Value</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EnumValueImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getEnumValue()
   * @generated
   */
  int ENUM_VALUE = 12;

  /**
   * The feature id for the '<em><b>Literal</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ENUM_VALUE__LITERAL = SIMPLE_VALUE_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>Enum Value</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ENUM_VALUE_FEATURE_COUNT = SIMPLE_VALUE_FEATURE_COUNT + 1;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.BooleanValueImpl <em>Boolean Value</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.BooleanValueImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getBooleanValue()
   * @generated
   */
  int BOOLEAN_VALUE = 13;

  /**
   * The feature id for the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_VALUE__VALUE = SIMPLE_VALUE_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>Boolean Value</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int BOOLEAN_VALUE_FEATURE_COUNT = SIMPLE_VALUE_FEATURE_COUNT + 1;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.NumericValueImpl <em>Numeric Value</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.NumericValueImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getNumericValue()
   * @generated
   */
  int NUMERIC_VALUE = 14;

  /**
   * The feature id for the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int NUMERIC_VALUE__VALUE = SIMPLE_VALUE_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>Numeric Value</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int NUMERIC_VALUE_FEATURE_COUNT = SIMPLE_VALUE_FEATURE_COUNT + 1;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.TagImpl <em>Tag</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.TagImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getTag()
   * @generated
   */
  int TAG = 15;

  /**
   * The feature id for the '<em><b>Key</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TAG__KEY = 0;

  /**
   * The feature id for the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TAG__VALUE = 1;

  /**
   * The number of structural features of the '<em>Tag</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int TAG_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextChainImpl <em>Context Chain</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextChainImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getContextChain()
   * @generated
   */
  int CONTEXT_CHAIN = 16;

  /**
   * The feature id for the '<em><b>Prev</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTEXT_CHAIN__PREV = ABSTRACT_CONTEXT_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Object</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTEXT_CHAIN__OBJECT = ABSTRACT_CONTEXT_FEATURE_COUNT + 1;

  /**
   * The number of structural features of the '<em>Context Chain</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTEXT_CHAIN_FEATURE_COUNT = ABSTRACT_CONTEXT_FEATURE_COUNT + 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextImpl <em>Context</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextImpl
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getContext()
   * @generated
   */
  int CONTEXT = 17;

  /**
   * The feature id for the '<em><b>Start</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTEXT__START = ABSTRACT_CONTEXT_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>Context</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTEXT_FEATURE_COUNT = ABSTRACT_CONTEXT_FEATURE_COUNT + 1;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral <em>Boolean Literal</em>}' enum.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getBooleanLiteral()
   * @generated
   */
  int BOOLEAN_LITERAL = 18;


  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Model</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model
   * @generated
   */
  EClass getModel();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model#getPackageName <em>Package Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Package Name</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model#getPackageName()
   * @see #getModel()
   * @generated
   */
  EAttribute getModel_PackageName();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model#getModules <em>Modules</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Modules</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model#getModules()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Modules();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module <em>Module</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Module</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module
   * @generated
   */
  EClass getModule();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module#getDefinition <em>Definition</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Definition</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module#getDefinition()
   * @see #getModule()
   * @generated
   */
  EReference getModule_Definition();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module#getShortName <em>Short Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Short Name</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module#getShortName()
   * @see #getModule()
   * @generated
   */
  EAttribute getModule_ShortName();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module#getTags <em>Tags</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Tags</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module#getTags()
   * @see #getModule()
   * @generated
   */
  EReference getModule_Tags();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module#getContainer <em>Container</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Container</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module#getContainer()
   * @see #getModule()
   * @generated
   */
  EReference getModule_Container();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContainedElement <em>Contained Element</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Contained Element</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContainedElement
   * @generated
   */
  EClass getContainedElement();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContainedElement#getIndex <em>Index</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Index</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContainedElement#getIndex()
   * @see #getContainedElement()
   * @generated
   */
  EAttribute getContainedElement_Index();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContainedElement#getTags <em>Tags</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Tags</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContainedElement#getTags()
   * @see #getContainedElement()
   * @generated
   */
  EReference getContainedElement_Tags();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container <em>Container</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Container</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
   * @generated
   */
  EClass getContainer();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container#getDefinition <em>Definition</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Definition</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container#getDefinition()
   * @see #getContainer()
   * @generated
   */
  EReference getContainer_Definition();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container#getShortName <em>Short Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Short Name</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container#getShortName()
   * @see #getContainer()
   * @generated
   */
  EAttribute getContainer_ShortName();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container#getElements <em>Elements</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Elements</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container#getElements()
   * @see #getContainer()
   * @generated
   */
  EReference getContainer_Elements();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter <em>Parameter</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Parameter</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter
   * @generated
   */
  EClass getParameter();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter#getDefinition <em>Definition</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Definition</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter#getDefinition()
   * @see #getParameter()
   * @generated
   */
  EReference getParameter_Definition();

  /**
   * Returns the meta object for the containment reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter#getValue()
   * @see #getParameter()
   * @generated
   */
  EReference getParameter_Value();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference <em>Reference</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Reference</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference
   * @generated
   */
  EClass getReference();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference#getDefinition <em>Definition</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Definition</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference#getDefinition()
   * @see #getReference()
   * @generated
   */
  EReference getReference_Definition();

  /**
   * Returns the meta object for the containment reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference#getValue()
   * @see #getReference()
   * @generated
   */
  EReference getReference_Value();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference <em>Instance Reference</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Instance Reference</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference
   * @generated
   */
  EClass getInstanceReference();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference#getDefinition <em>Definition</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Definition</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference#getDefinition()
   * @see #getInstanceReference()
   * @generated
   */
  EReference getInstanceReference_Definition();

  /**
   * Returns the meta object for the containment reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference#getValue()
   * @see #getInstanceReference()
   * @generated
   */
  EReference getInstanceReference_Value();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue <em>Reference Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Reference Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue
   * @generated
   */
  EClass getReferenceValue();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue#getContainer <em>Container</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Container</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue#getContainer()
   * @see #getReferenceValue()
   * @generated
   */
  EReference getReferenceValue_Container();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue <em>Instance Reference Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Instance Reference Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue
   * @generated
   */
  EClass getInstanceReferenceValue();

  /**
   * Returns the meta object for the containment reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue#getContexts <em>Contexts</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Contexts</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue#getContexts()
   * @see #getInstanceReferenceValue()
   * @generated
   */
  EReference getInstanceReferenceValue_Contexts();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue#getTarget <em>Target</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Target</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue#getTarget()
   * @see #getInstanceReferenceValue()
   * @generated
   */
  EReference getInstanceReferenceValue_Target();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.AbstractContext <em>Abstract Context</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Abstract Context</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.AbstractContext
   * @generated
   */
  EClass getAbstractContext();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.SimpleValue <em>Simple Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Simple Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.SimpleValue
   * @generated
   */
  EClass getSimpleValue();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.StringValue <em>String Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>String Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.StringValue
   * @generated
   */
  EClass getStringValue();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.StringValue#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.StringValue#getValue()
   * @see #getStringValue()
   * @generated
   */
  EAttribute getStringValue_Value();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EnumValue <em>Enum Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Enum Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EnumValue
   * @generated
   */
  EClass getEnumValue();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EnumValue#getLiteral <em>Literal</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Literal</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EnumValue#getLiteral()
   * @see #getEnumValue()
   * @generated
   */
  EAttribute getEnumValue_Literal();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue <em>Boolean Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Boolean Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue
   * @generated
   */
  EClass getBooleanValue();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue#getValue()
   * @see #getBooleanValue()
   * @generated
   */
  EAttribute getBooleanValue_Value();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue <em>Numeric Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Numeric Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue
   * @generated
   */
  EClass getNumericValue();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue#getValue()
   * @see #getNumericValue()
   * @generated
   */
  EAttribute getNumericValue_Value();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag <em>Tag</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Tag</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag
   * @generated
   */
  EClass getTag();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag#getKey <em>Key</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Key</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag#getKey()
   * @see #getTag()
   * @generated
   */
  EAttribute getTag_Key();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag#getValue()
   * @see #getTag()
   * @generated
   */
  EAttribute getTag_Value();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain <em>Context Chain</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Context Chain</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain
   * @generated
   */
  EClass getContextChain();

  /**
   * Returns the meta object for the containment reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain#getPrev <em>Prev</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Prev</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain#getPrev()
   * @see #getContextChain()
   * @generated
   */
  EReference getContextChain_Prev();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain#getObject <em>Object</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Object</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain#getObject()
   * @see #getContextChain()
   * @generated
   */
  EReference getContextChain_Object();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context <em>Context</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Context</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context
   * @generated
   */
  EClass getContext();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context#getStart <em>Start</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Start</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context#getStart()
   * @see #getContext()
   * @generated
   */
  EReference getContext_Start();

  /**
   * Returns the meta object for enum '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral <em>Boolean Literal</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for enum '<em>Boolean Literal</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral
   * @generated
   */
  EEnum getBooleanLiteral();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  EcucValuesDslFactory getEcucValuesDslFactory();

  /**
   * <!-- begin-user-doc -->
   * Defines literals for the meta objects that represent
   * <ul>
   *   <li>each class,</li>
   *   <li>each feature of each class,</li>
   *   <li>each enum,</li>
   *   <li>and each data type</li>
   * </ul>
   * <!-- end-user-doc -->
   * @generated
   */
  interface Literals
  {
    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModelImpl <em>Model</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModelImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getModel()
     * @generated
     */
    EClass MODEL = eINSTANCE.getModel();

    /**
     * The meta object literal for the '<em><b>Package Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute MODEL__PACKAGE_NAME = eINSTANCE.getModel_PackageName();

    /**
     * The meta object literal for the '<em><b>Modules</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__MODULES = eINSTANCE.getModel_Modules();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModuleImpl <em>Module</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModuleImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getModule()
     * @generated
     */
    EClass MODULE = eINSTANCE.getModule();

    /**
     * The meta object literal for the '<em><b>Definition</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODULE__DEFINITION = eINSTANCE.getModule_Definition();

    /**
     * The meta object literal for the '<em><b>Short Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute MODULE__SHORT_NAME = eINSTANCE.getModule_ShortName();

    /**
     * The meta object literal for the '<em><b>Tags</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODULE__TAGS = eINSTANCE.getModule_Tags();

    /**
     * The meta object literal for the '<em><b>Container</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODULE__CONTAINER = eINSTANCE.getModule_Container();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContainedElementImpl <em>Contained Element</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContainedElementImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getContainedElement()
     * @generated
     */
    EClass CONTAINED_ELEMENT = eINSTANCE.getContainedElement();

    /**
     * The meta object literal for the '<em><b>Index</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute CONTAINED_ELEMENT__INDEX = eINSTANCE.getContainedElement_Index();

    /**
     * The meta object literal for the '<em><b>Tags</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTAINED_ELEMENT__TAGS = eINSTANCE.getContainedElement_Tags();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContainerImpl <em>Container</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContainerImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getContainer()
     * @generated
     */
    EClass CONTAINER = eINSTANCE.getContainer();

    /**
     * The meta object literal for the '<em><b>Definition</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTAINER__DEFINITION = eINSTANCE.getContainer_Definition();

    /**
     * The meta object literal for the '<em><b>Short Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute CONTAINER__SHORT_NAME = eINSTANCE.getContainer_ShortName();

    /**
     * The meta object literal for the '<em><b>Elements</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTAINER__ELEMENTS = eINSTANCE.getContainer_Elements();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ParameterImpl <em>Parameter</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ParameterImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getParameter()
     * @generated
     */
    EClass PARAMETER = eINSTANCE.getParameter();

    /**
     * The meta object literal for the '<em><b>Definition</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference PARAMETER__DEFINITION = eINSTANCE.getParameter_Definition();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference PARAMETER__VALUE = eINSTANCE.getParameter_Value();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ReferenceImpl <em>Reference</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ReferenceImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getReference()
     * @generated
     */
    EClass REFERENCE = eINSTANCE.getReference();

    /**
     * The meta object literal for the '<em><b>Definition</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference REFERENCE__DEFINITION = eINSTANCE.getReference_Definition();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference REFERENCE__VALUE = eINSTANCE.getReference_Value();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceImpl <em>Instance Reference</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getInstanceReference()
     * @generated
     */
    EClass INSTANCE_REFERENCE = eINSTANCE.getInstanceReference();

    /**
     * The meta object literal for the '<em><b>Definition</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference INSTANCE_REFERENCE__DEFINITION = eINSTANCE.getInstanceReference_Definition();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference INSTANCE_REFERENCE__VALUE = eINSTANCE.getInstanceReference_Value();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ReferenceValueImpl <em>Reference Value</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ReferenceValueImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getReferenceValue()
     * @generated
     */
    EClass REFERENCE_VALUE = eINSTANCE.getReferenceValue();

    /**
     * The meta object literal for the '<em><b>Container</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference REFERENCE_VALUE__CONTAINER = eINSTANCE.getReferenceValue_Container();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceValueImpl <em>Instance Reference Value</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceValueImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getInstanceReferenceValue()
     * @generated
     */
    EClass INSTANCE_REFERENCE_VALUE = eINSTANCE.getInstanceReferenceValue();

    /**
     * The meta object literal for the '<em><b>Contexts</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference INSTANCE_REFERENCE_VALUE__CONTEXTS = eINSTANCE.getInstanceReferenceValue_Contexts();

    /**
     * The meta object literal for the '<em><b>Target</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference INSTANCE_REFERENCE_VALUE__TARGET = eINSTANCE.getInstanceReferenceValue_Target();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.AbstractContextImpl <em>Abstract Context</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.AbstractContextImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getAbstractContext()
     * @generated
     */
    EClass ABSTRACT_CONTEXT = eINSTANCE.getAbstractContext();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.SimpleValueImpl <em>Simple Value</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.SimpleValueImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getSimpleValue()
     * @generated
     */
    EClass SIMPLE_VALUE = eINSTANCE.getSimpleValue();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.StringValueImpl <em>String Value</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.StringValueImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getStringValue()
     * @generated
     */
    EClass STRING_VALUE = eINSTANCE.getStringValue();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute STRING_VALUE__VALUE = eINSTANCE.getStringValue_Value();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EnumValueImpl <em>Enum Value</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EnumValueImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getEnumValue()
     * @generated
     */
    EClass ENUM_VALUE = eINSTANCE.getEnumValue();

    /**
     * The meta object literal for the '<em><b>Literal</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ENUM_VALUE__LITERAL = eINSTANCE.getEnumValue_Literal();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.BooleanValueImpl <em>Boolean Value</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.BooleanValueImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getBooleanValue()
     * @generated
     */
    EClass BOOLEAN_VALUE = eINSTANCE.getBooleanValue();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute BOOLEAN_VALUE__VALUE = eINSTANCE.getBooleanValue_Value();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.NumericValueImpl <em>Numeric Value</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.NumericValueImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getNumericValue()
     * @generated
     */
    EClass NUMERIC_VALUE = eINSTANCE.getNumericValue();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute NUMERIC_VALUE__VALUE = eINSTANCE.getNumericValue_Value();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.TagImpl <em>Tag</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.TagImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getTag()
     * @generated
     */
    EClass TAG = eINSTANCE.getTag();

    /**
     * The meta object literal for the '<em><b>Key</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TAG__KEY = eINSTANCE.getTag_Key();

    /**
     * The meta object literal for the '<em><b>Value</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute TAG__VALUE = eINSTANCE.getTag_Value();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextChainImpl <em>Context Chain</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextChainImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getContextChain()
     * @generated
     */
    EClass CONTEXT_CHAIN = eINSTANCE.getContextChain();

    /**
     * The meta object literal for the '<em><b>Prev</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTEXT_CHAIN__PREV = eINSTANCE.getContextChain_Prev();

    /**
     * The meta object literal for the '<em><b>Object</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTEXT_CHAIN__OBJECT = eINSTANCE.getContextChain_Object();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextImpl <em>Context</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextImpl
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getContext()
     * @generated
     */
    EClass CONTEXT = eINSTANCE.getContext();

    /**
     * The meta object literal for the '<em><b>Start</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTEXT__START = eINSTANCE.getContext_Start();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral <em>Boolean Literal</em>}' enum.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral
     * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.EcucValuesDslPackageImpl#getBooleanLiteral()
     * @generated
     */
    EEnum BOOLEAN_LITERAL = eINSTANCE.getBooleanLiteral();

  }

} //EcucValuesDslPackage
