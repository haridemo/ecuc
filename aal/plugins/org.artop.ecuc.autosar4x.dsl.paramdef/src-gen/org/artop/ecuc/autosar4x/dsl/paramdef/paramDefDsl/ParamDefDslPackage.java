/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl;

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
 * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslFactory
 * @model kind="package"
 * @generated
 */
public interface ParamDefDslPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "paramDefDsl";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.artop.org/ecuc/autosar4x/dsl/paramdef/ParamDefDsl";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "paramDefDsl";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  ParamDefDslPackage eINSTANCE = org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl.init();

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModelImpl <em>Model</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModelImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getModel()
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
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModuleDefImpl <em>Module Def</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModuleDefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getModuleDef()
   * @generated
   */
  int MODULE_DEF = 1;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE_DEF__NAME = 0;

  /**
   * The feature id for the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE_DEF__DESC = 1;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE_DEF__TAGS = 2;

  /**
   * The feature id for the '<em><b>Container</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE_DEF__CONTAINER = 3;

  /**
   * The number of structural features of the '<em>Module Def</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODULE_DEF_FEATURE_COUNT = 4;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerElementImpl <em>Container Element</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerElementImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getContainerElement()
   * @generated
   */
  int CONTAINER_ELEMENT = 4;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_ELEMENT__NAME = 0;

  /**
   * The feature id for the '<em><b>Requires Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_ELEMENT__REQUIRES_INDEX = 1;

  /**
   * The feature id for the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_ELEMENT__DESC = 2;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_ELEMENT__TAGS = 3;

  /**
   * The feature id for the '<em><b>Lower Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_ELEMENT__LOWER_MULTIPLICITY = 4;

  /**
   * The feature id for the '<em><b>Upper Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_ELEMENT__UPPER_MULTIPLICITY = 5;

  /**
   * The number of structural features of the '<em>Container Element</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_ELEMENT_FEATURE_COUNT = 6;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.AbstractContainerDefImpl <em>Abstract Container Def</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.AbstractContainerDefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getAbstractContainerDef()
   * @generated
   */
  int ABSTRACT_CONTAINER_DEF = 2;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ABSTRACT_CONTAINER_DEF__NAME = CONTAINER_ELEMENT__NAME;

  /**
   * The feature id for the '<em><b>Requires Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ABSTRACT_CONTAINER_DEF__REQUIRES_INDEX = CONTAINER_ELEMENT__REQUIRES_INDEX;

  /**
   * The feature id for the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ABSTRACT_CONTAINER_DEF__DESC = CONTAINER_ELEMENT__DESC;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ABSTRACT_CONTAINER_DEF__TAGS = CONTAINER_ELEMENT__TAGS;

  /**
   * The feature id for the '<em><b>Lower Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ABSTRACT_CONTAINER_DEF__LOWER_MULTIPLICITY = CONTAINER_ELEMENT__LOWER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Upper Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ABSTRACT_CONTAINER_DEF__UPPER_MULTIPLICITY = CONTAINER_ELEMENT__UPPER_MULTIPLICITY;

  /**
   * The number of structural features of the '<em>Abstract Container Def</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ABSTRACT_CONTAINER_DEF_FEATURE_COUNT = CONTAINER_ELEMENT_FEATURE_COUNT + 0;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerDefImpl <em>Container Def</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerDefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getContainerDef()
   * @generated
   */
  int CONTAINER_DEF = 3;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF__NAME = ABSTRACT_CONTAINER_DEF__NAME;

  /**
   * The feature id for the '<em><b>Requires Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF__REQUIRES_INDEX = ABSTRACT_CONTAINER_DEF__REQUIRES_INDEX;

  /**
   * The feature id for the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF__DESC = ABSTRACT_CONTAINER_DEF__DESC;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF__TAGS = ABSTRACT_CONTAINER_DEF__TAGS;

  /**
   * The feature id for the '<em><b>Lower Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF__LOWER_MULTIPLICITY = ABSTRACT_CONTAINER_DEF__LOWER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Upper Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF__UPPER_MULTIPLICITY = ABSTRACT_CONTAINER_DEF__UPPER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Container</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF__CONTAINER = ABSTRACT_CONTAINER_DEF_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Parameter</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF__PARAMETER = ABSTRACT_CONTAINER_DEF_FEATURE_COUNT + 1;

  /**
   * The feature id for the '<em><b>References</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF__REFERENCES = ABSTRACT_CONTAINER_DEF_FEATURE_COUNT + 2;

  /**
   * The number of structural features of the '<em>Container Def</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CONTAINER_DEF_FEATURE_COUNT = ABSTRACT_CONTAINER_DEF_FEATURE_COUNT + 3;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ChoiceContainerDefImpl <em>Choice Container Def</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ChoiceContainerDefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getChoiceContainerDef()
   * @generated
   */
  int CHOICE_CONTAINER_DEF = 5;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CHOICE_CONTAINER_DEF__NAME = ABSTRACT_CONTAINER_DEF__NAME;

  /**
   * The feature id for the '<em><b>Requires Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CHOICE_CONTAINER_DEF__REQUIRES_INDEX = ABSTRACT_CONTAINER_DEF__REQUIRES_INDEX;

  /**
   * The feature id for the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CHOICE_CONTAINER_DEF__DESC = ABSTRACT_CONTAINER_DEF__DESC;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CHOICE_CONTAINER_DEF__TAGS = ABSTRACT_CONTAINER_DEF__TAGS;

  /**
   * The feature id for the '<em><b>Lower Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CHOICE_CONTAINER_DEF__LOWER_MULTIPLICITY = ABSTRACT_CONTAINER_DEF__LOWER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Upper Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CHOICE_CONTAINER_DEF__UPPER_MULTIPLICITY = ABSTRACT_CONTAINER_DEF__UPPER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Container</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CHOICE_CONTAINER_DEF__CONTAINER = ABSTRACT_CONTAINER_DEF_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>Choice Container Def</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int CHOICE_CONTAINER_DEF_FEATURE_COUNT = ABSTRACT_CONTAINER_DEF_FEATURE_COUNT + 1;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParameterDefImpl <em>Parameter Def</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParameterDefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getParameterDef()
   * @generated
   */
  int PARAMETER_DEF = 6;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__NAME = CONTAINER_ELEMENT__NAME;

  /**
   * The feature id for the '<em><b>Requires Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__REQUIRES_INDEX = CONTAINER_ELEMENT__REQUIRES_INDEX;

  /**
   * The feature id for the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__DESC = CONTAINER_ELEMENT__DESC;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__TAGS = CONTAINER_ELEMENT__TAGS;

  /**
   * The feature id for the '<em><b>Lower Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__LOWER_MULTIPLICITY = CONTAINER_ELEMENT__LOWER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Upper Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__UPPER_MULTIPLICITY = CONTAINER_ELEMENT__UPPER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Type</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__TYPE = CONTAINER_ELEMENT_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Default</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__DEFAULT = CONTAINER_ELEMENT_FEATURE_COUNT + 1;

  /**
   * The feature id for the '<em><b>Literals</b></em>' attribute list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__LITERALS = CONTAINER_ELEMENT_FEATURE_COUNT + 2;

  /**
   * The feature id for the '<em><b>Min</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__MIN = CONTAINER_ELEMENT_FEATURE_COUNT + 3;

  /**
   * The feature id for the '<em><b>Max</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF__MAX = CONTAINER_ELEMENT_FEATURE_COUNT + 4;

  /**
   * The number of structural features of the '<em>Parameter Def</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int PARAMETER_DEF_FEATURE_COUNT = CONTAINER_ELEMENT_FEATURE_COUNT + 5;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.AbstractReferenceDefImpl <em>Abstract Reference Def</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.AbstractReferenceDefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getAbstractReferenceDef()
   * @generated
   */
  int ABSTRACT_REFERENCE_DEF = 7;

  /**
   * The number of structural features of the '<em>Abstract Reference Def</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ABSTRACT_REFERENCE_DEF_FEATURE_COUNT = 0;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ReferenceDefImpl <em>Reference Def</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ReferenceDefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getReferenceDef()
   * @generated
   */
  int REFERENCE_DEF = 8;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_DEF__NAME = CONTAINER_ELEMENT__NAME;

  /**
   * The feature id for the '<em><b>Requires Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_DEF__REQUIRES_INDEX = CONTAINER_ELEMENT__REQUIRES_INDEX;

  /**
   * The feature id for the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_DEF__DESC = CONTAINER_ELEMENT__DESC;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_DEF__TAGS = CONTAINER_ELEMENT__TAGS;

  /**
   * The feature id for the '<em><b>Lower Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_DEF__LOWER_MULTIPLICITY = CONTAINER_ELEMENT__LOWER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Upper Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_DEF__UPPER_MULTIPLICITY = CONTAINER_ELEMENT__UPPER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Types</b></em>' reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_DEF__TYPES = CONTAINER_ELEMENT_FEATURE_COUNT + 0;

  /**
   * The number of structural features of the '<em>Reference Def</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int REFERENCE_DEF_FEATURE_COUNT = CONTAINER_ELEMENT_FEATURE_COUNT + 1;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.InstanceReferenceDefImpl <em>Instance Reference Def</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.InstanceReferenceDefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getInstanceReferenceDef()
   * @generated
   */
  int INSTANCE_REFERENCE_DEF = 9;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_DEF__NAME = CONTAINER_ELEMENT__NAME;

  /**
   * The feature id for the '<em><b>Requires Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_DEF__REQUIRES_INDEX = CONTAINER_ELEMENT__REQUIRES_INDEX;

  /**
   * The feature id for the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_DEF__DESC = CONTAINER_ELEMENT__DESC;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_DEF__TAGS = CONTAINER_ELEMENT__TAGS;

  /**
   * The feature id for the '<em><b>Lower Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_DEF__LOWER_MULTIPLICITY = CONTAINER_ELEMENT__LOWER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Upper Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_DEF__UPPER_MULTIPLICITY = CONTAINER_ELEMENT__UPPER_MULTIPLICITY;

  /**
   * The feature id for the '<em><b>Contexts</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_DEF__CONTEXTS = CONTAINER_ELEMENT_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Dest</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_DEF__DEST = CONTAINER_ELEMENT_FEATURE_COUNT + 1;

  /**
   * The number of structural features of the '<em>Instance Reference Def</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int INSTANCE_REFERENCE_DEF_FEATURE_COUNT = CONTAINER_ELEMENT_FEATURE_COUNT + 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl <em>Foreign Reference Def</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getForeignReferenceDef()
   * @generated
   */
  int FOREIGN_REFERENCE_DEF = 10;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FOREIGN_REFERENCE_DEF__NAME = ABSTRACT_REFERENCE_DEF_FEATURE_COUNT + 0;

  /**
   * The feature id for the '<em><b>Dest</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FOREIGN_REFERENCE_DEF__DEST = ABSTRACT_REFERENCE_DEF_FEATURE_COUNT + 1;

  /**
   * The feature id for the '<em><b>Requires Index</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FOREIGN_REFERENCE_DEF__REQUIRES_INDEX = ABSTRACT_REFERENCE_DEF_FEATURE_COUNT + 2;

  /**
   * The feature id for the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FOREIGN_REFERENCE_DEF__DESC = ABSTRACT_REFERENCE_DEF_FEATURE_COUNT + 3;

  /**
   * The feature id for the '<em><b>Tags</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FOREIGN_REFERENCE_DEF__TAGS = ABSTRACT_REFERENCE_DEF_FEATURE_COUNT + 4;

  /**
   * The feature id for the '<em><b>Lower Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FOREIGN_REFERENCE_DEF__LOWER_MULTIPLICITY = ABSTRACT_REFERENCE_DEF_FEATURE_COUNT + 5;

  /**
   * The feature id for the '<em><b>Upper Multiplicity</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY = ABSTRACT_REFERENCE_DEF_FEATURE_COUNT + 6;

  /**
   * The number of structural features of the '<em>Foreign Reference Def</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int FOREIGN_REFERENCE_DEF_FEATURE_COUNT = ABSTRACT_REFERENCE_DEF_FEATURE_COUNT + 7;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.EClassRefImpl <em>EClass Ref</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.EClassRefImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getEClassRef()
   * @generated
   */
  int ECLASS_REF = 11;

  /**
   * The feature id for the '<em><b>Target</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ECLASS_REF__TARGET = 0;

  /**
   * The number of structural features of the '<em>EClass Ref</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ECLASS_REF_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.EClassRefStarImpl <em>EClass Ref Star</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.EClassRefStarImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getEClassRefStar()
   * @generated
   */
  int ECLASS_REF_STAR = 12;

  /**
   * The feature id for the '<em><b>Target</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ECLASS_REF_STAR__TARGET = 0;

  /**
   * The feature id for the '<em><b>Star</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ECLASS_REF_STAR__STAR = 1;

  /**
   * The number of structural features of the '<em>EClass Ref Star</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ECLASS_REF_STAR_FEATURE_COUNT = 2;

  /**
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.TagImpl <em>Tag</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.TagImpl
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getTag()
   * @generated
   */
  int TAG = 13;

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
   * The meta object id for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterType <em>Parameter Type</em>}' enum.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterType
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getParameterType()
   * @generated
   */
  int PARAMETER_TYPE = 14;


  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Model</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model
   * @generated
   */
  EClass getModel();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model#getPackageName <em>Package Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Package Name</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model#getPackageName()
   * @see #getModel()
   * @generated
   */
  EAttribute getModel_PackageName();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model#getModules <em>Modules</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Modules</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model#getModules()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Modules();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef <em>Module Def</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Module Def</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef
   * @generated
   */
  EClass getModuleDef();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getName <em>Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Name</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getName()
   * @see #getModuleDef()
   * @generated
   */
  EAttribute getModuleDef_Name();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getDesc <em>Desc</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Desc</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getDesc()
   * @see #getModuleDef()
   * @generated
   */
  EAttribute getModuleDef_Desc();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getTags <em>Tags</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Tags</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getTags()
   * @see #getModuleDef()
   * @generated
   */
  EReference getModuleDef_Tags();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getContainer <em>Container</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Container</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getContainer()
   * @see #getModuleDef()
   * @generated
   */
  EReference getModuleDef_Container();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractContainerDef <em>Abstract Container Def</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Abstract Container Def</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractContainerDef
   * @generated
   */
  EClass getAbstractContainerDef();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef <em>Container Def</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Container Def</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef
   * @generated
   */
  EClass getContainerDef();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef#getContainer <em>Container</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Container</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef#getContainer()
   * @see #getContainerDef()
   * @generated
   */
  EReference getContainerDef_Container();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef#getParameter <em>Parameter</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Parameter</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef#getParameter()
   * @see #getContainerDef()
   * @generated
   */
  EReference getContainerDef_Parameter();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef#getReferences <em>References</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>References</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef#getReferences()
   * @see #getContainerDef()
   * @generated
   */
  EReference getContainerDef_References();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement <em>Container Element</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Container Element</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement
   * @generated
   */
  EClass getContainerElement();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getName <em>Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Name</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getName()
   * @see #getContainerElement()
   * @generated
   */
  EAttribute getContainerElement_Name();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#isRequiresIndex <em>Requires Index</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Requires Index</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#isRequiresIndex()
   * @see #getContainerElement()
   * @generated
   */
  EAttribute getContainerElement_RequiresIndex();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getDesc <em>Desc</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Desc</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getDesc()
   * @see #getContainerElement()
   * @generated
   */
  EAttribute getContainerElement_Desc();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getTags <em>Tags</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Tags</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getTags()
   * @see #getContainerElement()
   * @generated
   */
  EReference getContainerElement_Tags();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getLowerMultiplicity <em>Lower Multiplicity</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Lower Multiplicity</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getLowerMultiplicity()
   * @see #getContainerElement()
   * @generated
   */
  EAttribute getContainerElement_LowerMultiplicity();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getUpperMultiplicity <em>Upper Multiplicity</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Upper Multiplicity</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement#getUpperMultiplicity()
   * @see #getContainerElement()
   * @generated
   */
  EAttribute getContainerElement_UpperMultiplicity();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef <em>Choice Container Def</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Choice Container Def</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef
   * @generated
   */
  EClass getChoiceContainerDef();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef#getContainer <em>Container</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Container</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef#getContainer()
   * @see #getChoiceContainerDef()
   * @generated
   */
  EReference getChoiceContainerDef_Container();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef <em>Parameter Def</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Parameter Def</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef
   * @generated
   */
  EClass getParameterDef();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getType <em>Type</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Type</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getType()
   * @see #getParameterDef()
   * @generated
   */
  EAttribute getParameterDef_Type();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getDefault <em>Default</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Default</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getDefault()
   * @see #getParameterDef()
   * @generated
   */
  EAttribute getParameterDef_Default();

  /**
   * Returns the meta object for the attribute list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getLiterals <em>Literals</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute list '<em>Literals</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getLiterals()
   * @see #getParameterDef()
   * @generated
   */
  EAttribute getParameterDef_Literals();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getMin <em>Min</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Min</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getMin()
   * @see #getParameterDef()
   * @generated
   */
  EAttribute getParameterDef_Min();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getMax <em>Max</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Max</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef#getMax()
   * @see #getParameterDef()
   * @generated
   */
  EAttribute getParameterDef_Max();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractReferenceDef <em>Abstract Reference Def</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Abstract Reference Def</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractReferenceDef
   * @generated
   */
  EClass getAbstractReferenceDef();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef <em>Reference Def</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Reference Def</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef
   * @generated
   */
  EClass getReferenceDef();

  /**
   * Returns the meta object for the reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef#getTypes <em>Types</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference list '<em>Types</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef#getTypes()
   * @see #getReferenceDef()
   * @generated
   */
  EReference getReferenceDef_Types();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef <em>Instance Reference Def</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Instance Reference Def</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef
   * @generated
   */
  EClass getInstanceReferenceDef();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef#getContexts <em>Contexts</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Contexts</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef#getContexts()
   * @see #getInstanceReferenceDef()
   * @generated
   */
  EReference getInstanceReferenceDef_Contexts();

  /**
   * Returns the meta object for the containment reference '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef#getDest <em>Dest</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Dest</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef#getDest()
   * @see #getInstanceReferenceDef()
   * @generated
   */
  EReference getInstanceReferenceDef_Dest();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef <em>Foreign Reference Def</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Foreign Reference Def</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef
   * @generated
   */
  EClass getForeignReferenceDef();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getName <em>Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Name</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getName()
   * @see #getForeignReferenceDef()
   * @generated
   */
  EAttribute getForeignReferenceDef_Name();

  /**
   * Returns the meta object for the containment reference '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getDest <em>Dest</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference '<em>Dest</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getDest()
   * @see #getForeignReferenceDef()
   * @generated
   */
  EReference getForeignReferenceDef_Dest();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#isRequiresIndex <em>Requires Index</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Requires Index</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#isRequiresIndex()
   * @see #getForeignReferenceDef()
   * @generated
   */
  EAttribute getForeignReferenceDef_RequiresIndex();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getDesc <em>Desc</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Desc</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getDesc()
   * @see #getForeignReferenceDef()
   * @generated
   */
  EAttribute getForeignReferenceDef_Desc();

  /**
   * Returns the meta object for the containment reference list '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getTags <em>Tags</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Tags</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getTags()
   * @see #getForeignReferenceDef()
   * @generated
   */
  EReference getForeignReferenceDef_Tags();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getLowerMultiplicity <em>Lower Multiplicity</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Lower Multiplicity</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getLowerMultiplicity()
   * @see #getForeignReferenceDef()
   * @generated
   */
  EAttribute getForeignReferenceDef_LowerMultiplicity();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getUpperMultiplicity <em>Upper Multiplicity</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Upper Multiplicity</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef#getUpperMultiplicity()
   * @see #getForeignReferenceDef()
   * @generated
   */
  EAttribute getForeignReferenceDef_UpperMultiplicity();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef <em>EClass Ref</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>EClass Ref</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef
   * @generated
   */
  EClass getEClassRef();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef#getTarget <em>Target</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Target</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef#getTarget()
   * @see #getEClassRef()
   * @generated
   */
  EReference getEClassRef_Target();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar <em>EClass Ref Star</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>EClass Ref Star</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar
   * @generated
   */
  EClass getEClassRefStar();

  /**
   * Returns the meta object for the reference '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar#getTarget <em>Target</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference '<em>Target</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar#getTarget()
   * @see #getEClassRefStar()
   * @generated
   */
  EReference getEClassRefStar_Target();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar#getStar <em>Star</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Star</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar#getStar()
   * @see #getEClassRefStar()
   * @generated
   */
  EAttribute getEClassRefStar_Star();

  /**
   * Returns the meta object for class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag <em>Tag</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Tag</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag
   * @generated
   */
  EClass getTag();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag#getKey <em>Key</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Key</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag#getKey()
   * @see #getTag()
   * @generated
   */
  EAttribute getTag_Key();

  /**
   * Returns the meta object for the attribute '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag#getValue <em>Value</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Value</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag#getValue()
   * @see #getTag()
   * @generated
   */
  EAttribute getTag_Value();

  /**
   * Returns the meta object for enum '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterType <em>Parameter Type</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for enum '<em>Parameter Type</em>'.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterType
   * @generated
   */
  EEnum getParameterType();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  ParamDefDslFactory getParamDefDslFactory();

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
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModelImpl <em>Model</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModelImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getModel()
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
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModuleDefImpl <em>Module Def</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModuleDefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getModuleDef()
     * @generated
     */
    EClass MODULE_DEF = eINSTANCE.getModuleDef();

    /**
     * The meta object literal for the '<em><b>Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute MODULE_DEF__NAME = eINSTANCE.getModuleDef_Name();

    /**
     * The meta object literal for the '<em><b>Desc</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute MODULE_DEF__DESC = eINSTANCE.getModuleDef_Desc();

    /**
     * The meta object literal for the '<em><b>Tags</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODULE_DEF__TAGS = eINSTANCE.getModuleDef_Tags();

    /**
     * The meta object literal for the '<em><b>Container</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODULE_DEF__CONTAINER = eINSTANCE.getModuleDef_Container();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.AbstractContainerDefImpl <em>Abstract Container Def</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.AbstractContainerDefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getAbstractContainerDef()
     * @generated
     */
    EClass ABSTRACT_CONTAINER_DEF = eINSTANCE.getAbstractContainerDef();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerDefImpl <em>Container Def</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerDefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getContainerDef()
     * @generated
     */
    EClass CONTAINER_DEF = eINSTANCE.getContainerDef();

    /**
     * The meta object literal for the '<em><b>Container</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTAINER_DEF__CONTAINER = eINSTANCE.getContainerDef_Container();

    /**
     * The meta object literal for the '<em><b>Parameter</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTAINER_DEF__PARAMETER = eINSTANCE.getContainerDef_Parameter();

    /**
     * The meta object literal for the '<em><b>References</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTAINER_DEF__REFERENCES = eINSTANCE.getContainerDef_References();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerElementImpl <em>Container Element</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerElementImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getContainerElement()
     * @generated
     */
    EClass CONTAINER_ELEMENT = eINSTANCE.getContainerElement();

    /**
     * The meta object literal for the '<em><b>Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute CONTAINER_ELEMENT__NAME = eINSTANCE.getContainerElement_Name();

    /**
     * The meta object literal for the '<em><b>Requires Index</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute CONTAINER_ELEMENT__REQUIRES_INDEX = eINSTANCE.getContainerElement_RequiresIndex();

    /**
     * The meta object literal for the '<em><b>Desc</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute CONTAINER_ELEMENT__DESC = eINSTANCE.getContainerElement_Desc();

    /**
     * The meta object literal for the '<em><b>Tags</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CONTAINER_ELEMENT__TAGS = eINSTANCE.getContainerElement_Tags();

    /**
     * The meta object literal for the '<em><b>Lower Multiplicity</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute CONTAINER_ELEMENT__LOWER_MULTIPLICITY = eINSTANCE.getContainerElement_LowerMultiplicity();

    /**
     * The meta object literal for the '<em><b>Upper Multiplicity</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute CONTAINER_ELEMENT__UPPER_MULTIPLICITY = eINSTANCE.getContainerElement_UpperMultiplicity();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ChoiceContainerDefImpl <em>Choice Container Def</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ChoiceContainerDefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getChoiceContainerDef()
     * @generated
     */
    EClass CHOICE_CONTAINER_DEF = eINSTANCE.getChoiceContainerDef();

    /**
     * The meta object literal for the '<em><b>Container</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference CHOICE_CONTAINER_DEF__CONTAINER = eINSTANCE.getChoiceContainerDef_Container();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParameterDefImpl <em>Parameter Def</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParameterDefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getParameterDef()
     * @generated
     */
    EClass PARAMETER_DEF = eINSTANCE.getParameterDef();

    /**
     * The meta object literal for the '<em><b>Type</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute PARAMETER_DEF__TYPE = eINSTANCE.getParameterDef_Type();

    /**
     * The meta object literal for the '<em><b>Default</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute PARAMETER_DEF__DEFAULT = eINSTANCE.getParameterDef_Default();

    /**
     * The meta object literal for the '<em><b>Literals</b></em>' attribute list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute PARAMETER_DEF__LITERALS = eINSTANCE.getParameterDef_Literals();

    /**
     * The meta object literal for the '<em><b>Min</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute PARAMETER_DEF__MIN = eINSTANCE.getParameterDef_Min();

    /**
     * The meta object literal for the '<em><b>Max</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute PARAMETER_DEF__MAX = eINSTANCE.getParameterDef_Max();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.AbstractReferenceDefImpl <em>Abstract Reference Def</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.AbstractReferenceDefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getAbstractReferenceDef()
     * @generated
     */
    EClass ABSTRACT_REFERENCE_DEF = eINSTANCE.getAbstractReferenceDef();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ReferenceDefImpl <em>Reference Def</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ReferenceDefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getReferenceDef()
     * @generated
     */
    EClass REFERENCE_DEF = eINSTANCE.getReferenceDef();

    /**
     * The meta object literal for the '<em><b>Types</b></em>' reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference REFERENCE_DEF__TYPES = eINSTANCE.getReferenceDef_Types();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.InstanceReferenceDefImpl <em>Instance Reference Def</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.InstanceReferenceDefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getInstanceReferenceDef()
     * @generated
     */
    EClass INSTANCE_REFERENCE_DEF = eINSTANCE.getInstanceReferenceDef();

    /**
     * The meta object literal for the '<em><b>Contexts</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference INSTANCE_REFERENCE_DEF__CONTEXTS = eINSTANCE.getInstanceReferenceDef_Contexts();

    /**
     * The meta object literal for the '<em><b>Dest</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference INSTANCE_REFERENCE_DEF__DEST = eINSTANCE.getInstanceReferenceDef_Dest();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl <em>Foreign Reference Def</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getForeignReferenceDef()
     * @generated
     */
    EClass FOREIGN_REFERENCE_DEF = eINSTANCE.getForeignReferenceDef();

    /**
     * The meta object literal for the '<em><b>Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute FOREIGN_REFERENCE_DEF__NAME = eINSTANCE.getForeignReferenceDef_Name();

    /**
     * The meta object literal for the '<em><b>Dest</b></em>' containment reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference FOREIGN_REFERENCE_DEF__DEST = eINSTANCE.getForeignReferenceDef_Dest();

    /**
     * The meta object literal for the '<em><b>Requires Index</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute FOREIGN_REFERENCE_DEF__REQUIRES_INDEX = eINSTANCE.getForeignReferenceDef_RequiresIndex();

    /**
     * The meta object literal for the '<em><b>Desc</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute FOREIGN_REFERENCE_DEF__DESC = eINSTANCE.getForeignReferenceDef_Desc();

    /**
     * The meta object literal for the '<em><b>Tags</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference FOREIGN_REFERENCE_DEF__TAGS = eINSTANCE.getForeignReferenceDef_Tags();

    /**
     * The meta object literal for the '<em><b>Lower Multiplicity</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute FOREIGN_REFERENCE_DEF__LOWER_MULTIPLICITY = eINSTANCE.getForeignReferenceDef_LowerMultiplicity();

    /**
     * The meta object literal for the '<em><b>Upper Multiplicity</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY = eINSTANCE.getForeignReferenceDef_UpperMultiplicity();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.EClassRefImpl <em>EClass Ref</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.EClassRefImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getEClassRef()
     * @generated
     */
    EClass ECLASS_REF = eINSTANCE.getEClassRef();

    /**
     * The meta object literal for the '<em><b>Target</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ECLASS_REF__TARGET = eINSTANCE.getEClassRef_Target();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.EClassRefStarImpl <em>EClass Ref Star</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.EClassRefStarImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getEClassRefStar()
     * @generated
     */
    EClass ECLASS_REF_STAR = eINSTANCE.getEClassRefStar();

    /**
     * The meta object literal for the '<em><b>Target</b></em>' reference feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ECLASS_REF_STAR__TARGET = eINSTANCE.getEClassRefStar_Target();

    /**
     * The meta object literal for the '<em><b>Star</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ECLASS_REF_STAR__STAR = eINSTANCE.getEClassRefStar_Star();

    /**
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.TagImpl <em>Tag</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.TagImpl
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getTag()
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
     * The meta object literal for the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterType <em>Parameter Type</em>}' enum.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterType
     * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ParamDefDslPackageImpl#getParameterType()
     * @generated
     */
    EEnum PARAMETER_TYPE = eINSTANCE.getParameterType();

  }

} //ParamDefDslPackage
