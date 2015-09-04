/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl;

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractContainerDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslFactory;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterType;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

import org.eclipse.emf.ecore.impl.EPackageImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class ParamDefDslPackageImpl extends EPackageImpl implements ParamDefDslPackage
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass modelEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass moduleDefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass abstractContainerDefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass containerDefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass containerElementEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass choiceContainerDefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass parameterDefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass abstractReferenceDefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass referenceDefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass instanceReferenceDefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass foreignReferenceDefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass eClassRefEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass eClassRefStarEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass tagEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EEnum parameterTypeEEnum = null;

  /**
   * Creates an instance of the model <b>Package</b>, registered with
   * {@link org.eclipse.emf.ecore.EPackage.Registry EPackage.Registry} by the package
   * package URI value.
   * <p>Note: the correct way to create the package is via the static
   * factory method {@link #init init()}, which also performs
   * initialization of the package, or returns the registered package,
   * if one already exists.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.eclipse.emf.ecore.EPackage.Registry
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#eNS_URI
   * @see #init()
   * @generated
   */
  private ParamDefDslPackageImpl()
  {
    super(eNS_URI, ParamDefDslFactory.eINSTANCE);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private static boolean isInited = false;

  /**
   * Creates, registers, and initializes the <b>Package</b> for this model, and for any others upon which it depends.
   * 
   * <p>This method is used to initialize {@link ParamDefDslPackage#eINSTANCE} when that field is accessed.
   * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #eNS_URI
   * @see #createPackageContents()
   * @see #initializePackageContents()
   * @generated
   */
  public static ParamDefDslPackage init()
  {
    if (isInited) return (ParamDefDslPackage)EPackage.Registry.INSTANCE.getEPackage(ParamDefDslPackage.eNS_URI);

    // Obtain or create and register package
    ParamDefDslPackageImpl theParamDefDslPackage = (ParamDefDslPackageImpl)(EPackage.Registry.INSTANCE.get(eNS_URI) instanceof ParamDefDslPackageImpl ? EPackage.Registry.INSTANCE.get(eNS_URI) : new ParamDefDslPackageImpl());

    isInited = true;

    // Create package meta-data objects
    theParamDefDslPackage.createPackageContents();

    // Initialize created meta-data
    theParamDefDslPackage.initializePackageContents();

    // Mark meta-data to indicate it can't be changed
    theParamDefDslPackage.freeze();

  
    // Update the registry and return the package
    EPackage.Registry.INSTANCE.put(ParamDefDslPackage.eNS_URI, theParamDefDslPackage);
    return theParamDefDslPackage;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getModel()
  {
    return modelEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getModel_PackageName()
  {
    return (EAttribute)modelEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getModel_Modules()
  {
    return (EReference)modelEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getModuleDef()
  {
    return moduleDefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getModuleDef_Name()
  {
    return (EAttribute)moduleDefEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getModuleDef_Desc()
  {
    return (EAttribute)moduleDefEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getModuleDef_Tags()
  {
    return (EReference)moduleDefEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getModuleDef_Container()
  {
    return (EReference)moduleDefEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getAbstractContainerDef()
  {
    return abstractContainerDefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getContainerDef()
  {
    return containerDefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContainerDef_Container()
  {
    return (EReference)containerDefEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContainerDef_Parameter()
  {
    return (EReference)containerDefEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContainerDef_References()
  {
    return (EReference)containerDefEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getContainerElement()
  {
    return containerElementEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getContainerElement_Name()
  {
    return (EAttribute)containerElementEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getContainerElement_RequiresIndex()
  {
    return (EAttribute)containerElementEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getContainerElement_Desc()
  {
    return (EAttribute)containerElementEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getContainerElement_Tags()
  {
    return (EReference)containerElementEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getContainerElement_LowerMultiplicity()
  {
    return (EAttribute)containerElementEClass.getEStructuralFeatures().get(4);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getContainerElement_UpperMultiplicity()
  {
    return (EAttribute)containerElementEClass.getEStructuralFeatures().get(5);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getChoiceContainerDef()
  {
    return choiceContainerDefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getChoiceContainerDef_Container()
  {
    return (EReference)choiceContainerDefEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getParameterDef()
  {
    return parameterDefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getParameterDef_Type()
  {
    return (EAttribute)parameterDefEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getParameterDef_Default()
  {
    return (EAttribute)parameterDefEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getParameterDef_Literals()
  {
    return (EAttribute)parameterDefEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getParameterDef_Min()
  {
    return (EAttribute)parameterDefEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getParameterDef_Max()
  {
    return (EAttribute)parameterDefEClass.getEStructuralFeatures().get(4);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getAbstractReferenceDef()
  {
    return abstractReferenceDefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getReferenceDef()
  {
    return referenceDefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getReferenceDef_Types()
  {
    return (EReference)referenceDefEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getInstanceReferenceDef()
  {
    return instanceReferenceDefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getInstanceReferenceDef_Contexts()
  {
    return (EReference)instanceReferenceDefEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getInstanceReferenceDef_Dest()
  {
    return (EReference)instanceReferenceDefEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getForeignReferenceDef()
  {
    return foreignReferenceDefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getForeignReferenceDef_Name()
  {
    return (EAttribute)foreignReferenceDefEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getForeignReferenceDef_Dest()
  {
    return (EReference)foreignReferenceDefEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getForeignReferenceDef_RequiresIndex()
  {
    return (EAttribute)foreignReferenceDefEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getForeignReferenceDef_Desc()
  {
    return (EAttribute)foreignReferenceDefEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getForeignReferenceDef_Tags()
  {
    return (EReference)foreignReferenceDefEClass.getEStructuralFeatures().get(4);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getForeignReferenceDef_LowerMultiplicity()
  {
    return (EAttribute)foreignReferenceDefEClass.getEStructuralFeatures().get(5);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getForeignReferenceDef_UpperMultiplicity()
  {
    return (EAttribute)foreignReferenceDefEClass.getEStructuralFeatures().get(6);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getEClassRef()
  {
    return eClassRefEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getEClassRef_Target()
  {
    return (EReference)eClassRefEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getEClassRefStar()
  {
    return eClassRefStarEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getEClassRefStar_Target()
  {
    return (EReference)eClassRefStarEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getEClassRefStar_Star()
  {
    return (EAttribute)eClassRefStarEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getTag()
  {
    return tagEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTag_Key()
  {
    return (EAttribute)tagEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getTag_Value()
  {
    return (EAttribute)tagEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EEnum getParameterType()
  {
    return parameterTypeEEnum;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ParamDefDslFactory getParamDefDslFactory()
  {
    return (ParamDefDslFactory)getEFactoryInstance();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isCreated = false;

  /**
   * Creates the meta-model objects for the package.  This method is
   * guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void createPackageContents()
  {
    if (isCreated) return;
    isCreated = true;

    // Create classes and their features
    modelEClass = createEClass(MODEL);
    createEAttribute(modelEClass, MODEL__PACKAGE_NAME);
    createEReference(modelEClass, MODEL__MODULES);

    moduleDefEClass = createEClass(MODULE_DEF);
    createEAttribute(moduleDefEClass, MODULE_DEF__NAME);
    createEAttribute(moduleDefEClass, MODULE_DEF__DESC);
    createEReference(moduleDefEClass, MODULE_DEF__TAGS);
    createEReference(moduleDefEClass, MODULE_DEF__CONTAINER);

    abstractContainerDefEClass = createEClass(ABSTRACT_CONTAINER_DEF);

    containerDefEClass = createEClass(CONTAINER_DEF);
    createEReference(containerDefEClass, CONTAINER_DEF__CONTAINER);
    createEReference(containerDefEClass, CONTAINER_DEF__PARAMETER);
    createEReference(containerDefEClass, CONTAINER_DEF__REFERENCES);

    containerElementEClass = createEClass(CONTAINER_ELEMENT);
    createEAttribute(containerElementEClass, CONTAINER_ELEMENT__NAME);
    createEAttribute(containerElementEClass, CONTAINER_ELEMENT__REQUIRES_INDEX);
    createEAttribute(containerElementEClass, CONTAINER_ELEMENT__DESC);
    createEReference(containerElementEClass, CONTAINER_ELEMENT__TAGS);
    createEAttribute(containerElementEClass, CONTAINER_ELEMENT__LOWER_MULTIPLICITY);
    createEAttribute(containerElementEClass, CONTAINER_ELEMENT__UPPER_MULTIPLICITY);

    choiceContainerDefEClass = createEClass(CHOICE_CONTAINER_DEF);
    createEReference(choiceContainerDefEClass, CHOICE_CONTAINER_DEF__CONTAINER);

    parameterDefEClass = createEClass(PARAMETER_DEF);
    createEAttribute(parameterDefEClass, PARAMETER_DEF__TYPE);
    createEAttribute(parameterDefEClass, PARAMETER_DEF__DEFAULT);
    createEAttribute(parameterDefEClass, PARAMETER_DEF__LITERALS);
    createEAttribute(parameterDefEClass, PARAMETER_DEF__MIN);
    createEAttribute(parameterDefEClass, PARAMETER_DEF__MAX);

    abstractReferenceDefEClass = createEClass(ABSTRACT_REFERENCE_DEF);

    referenceDefEClass = createEClass(REFERENCE_DEF);
    createEReference(referenceDefEClass, REFERENCE_DEF__TYPES);

    instanceReferenceDefEClass = createEClass(INSTANCE_REFERENCE_DEF);
    createEReference(instanceReferenceDefEClass, INSTANCE_REFERENCE_DEF__CONTEXTS);
    createEReference(instanceReferenceDefEClass, INSTANCE_REFERENCE_DEF__DEST);

    foreignReferenceDefEClass = createEClass(FOREIGN_REFERENCE_DEF);
    createEAttribute(foreignReferenceDefEClass, FOREIGN_REFERENCE_DEF__NAME);
    createEReference(foreignReferenceDefEClass, FOREIGN_REFERENCE_DEF__DEST);
    createEAttribute(foreignReferenceDefEClass, FOREIGN_REFERENCE_DEF__REQUIRES_INDEX);
    createEAttribute(foreignReferenceDefEClass, FOREIGN_REFERENCE_DEF__DESC);
    createEReference(foreignReferenceDefEClass, FOREIGN_REFERENCE_DEF__TAGS);
    createEAttribute(foreignReferenceDefEClass, FOREIGN_REFERENCE_DEF__LOWER_MULTIPLICITY);
    createEAttribute(foreignReferenceDefEClass, FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY);

    eClassRefEClass = createEClass(ECLASS_REF);
    createEReference(eClassRefEClass, ECLASS_REF__TARGET);

    eClassRefStarEClass = createEClass(ECLASS_REF_STAR);
    createEReference(eClassRefStarEClass, ECLASS_REF_STAR__TARGET);
    createEAttribute(eClassRefStarEClass, ECLASS_REF_STAR__STAR);

    tagEClass = createEClass(TAG);
    createEAttribute(tagEClass, TAG__KEY);
    createEAttribute(tagEClass, TAG__VALUE);

    // Create enums
    parameterTypeEEnum = createEEnum(PARAMETER_TYPE);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isInitialized = false;

  /**
   * Complete the initialization of the package and its meta-model.  This
   * method is guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void initializePackageContents()
  {
    if (isInitialized) return;
    isInitialized = true;

    // Initialize package
    setName(eNAME);
    setNsPrefix(eNS_PREFIX);
    setNsURI(eNS_URI);

    // Create type parameters

    // Set bounds for type parameters

    // Add supertypes to classes
    abstractContainerDefEClass.getESuperTypes().add(this.getContainerElement());
    containerDefEClass.getESuperTypes().add(this.getAbstractContainerDef());
    choiceContainerDefEClass.getESuperTypes().add(this.getAbstractContainerDef());
    parameterDefEClass.getESuperTypes().add(this.getContainerElement());
    referenceDefEClass.getESuperTypes().add(this.getContainerElement());
    referenceDefEClass.getESuperTypes().add(this.getAbstractReferenceDef());
    instanceReferenceDefEClass.getESuperTypes().add(this.getContainerElement());
    instanceReferenceDefEClass.getESuperTypes().add(this.getAbstractReferenceDef());
    foreignReferenceDefEClass.getESuperTypes().add(this.getAbstractReferenceDef());

    // Initialize classes and features; add operations and parameters
    initEClass(modelEClass, Model.class, "Model", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getModel_PackageName(), ecorePackage.getEString(), "packageName", null, 0, 1, Model.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getModel_Modules(), this.getModuleDef(), null, "modules", null, 0, -1, Model.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(moduleDefEClass, ModuleDef.class, "ModuleDef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getModuleDef_Name(), ecorePackage.getEString(), "name", null, 0, 1, ModuleDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getModuleDef_Desc(), ecorePackage.getEString(), "desc", null, 0, 1, ModuleDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getModuleDef_Tags(), this.getTag(), null, "tags", null, 0, -1, ModuleDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getModuleDef_Container(), this.getAbstractContainerDef(), null, "container", null, 0, -1, ModuleDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(abstractContainerDefEClass, AbstractContainerDef.class, "AbstractContainerDef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

    initEClass(containerDefEClass, ContainerDef.class, "ContainerDef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getContainerDef_Container(), this.getAbstractContainerDef(), null, "container", null, 0, -1, ContainerDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getContainerDef_Parameter(), this.getParameterDef(), null, "parameter", null, 0, -1, ContainerDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getContainerDef_References(), this.getAbstractReferenceDef(), null, "references", null, 0, -1, ContainerDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(containerElementEClass, ContainerElement.class, "ContainerElement", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getContainerElement_Name(), ecorePackage.getEString(), "name", null, 0, 1, ContainerElement.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getContainerElement_RequiresIndex(), ecorePackage.getEBoolean(), "requiresIndex", null, 0, 1, ContainerElement.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getContainerElement_Desc(), ecorePackage.getEString(), "desc", null, 0, 1, ContainerElement.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getContainerElement_Tags(), this.getTag(), null, "tags", null, 0, -1, ContainerElement.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getContainerElement_LowerMultiplicity(), ecorePackage.getEString(), "lowerMultiplicity", null, 0, 1, ContainerElement.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getContainerElement_UpperMultiplicity(), ecorePackage.getEString(), "upperMultiplicity", null, 0, 1, ContainerElement.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(choiceContainerDefEClass, ChoiceContainerDef.class, "ChoiceContainerDef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getChoiceContainerDef_Container(), this.getContainerDef(), null, "container", null, 0, -1, ChoiceContainerDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(parameterDefEClass, ParameterDef.class, "ParameterDef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getParameterDef_Type(), this.getParameterType(), "type", null, 0, 1, ParameterDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getParameterDef_Default(), ecorePackage.getEString(), "default", null, 0, 1, ParameterDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getParameterDef_Literals(), ecorePackage.getEString(), "literals", null, 0, -1, ParameterDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, !IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getParameterDef_Min(), ecorePackage.getEString(), "min", null, 0, 1, ParameterDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getParameterDef_Max(), ecorePackage.getEString(), "max", null, 0, 1, ParameterDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(abstractReferenceDefEClass, AbstractReferenceDef.class, "AbstractReferenceDef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

    initEClass(referenceDefEClass, ReferenceDef.class, "ReferenceDef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getReferenceDef_Types(), this.getContainerDef(), null, "types", null, 0, -1, ReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, !IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(instanceReferenceDefEClass, InstanceReferenceDef.class, "InstanceReferenceDef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getInstanceReferenceDef_Contexts(), this.getEClassRefStar(), null, "contexts", null, 0, -1, InstanceReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getInstanceReferenceDef_Dest(), this.getEClassRef(), null, "dest", null, 0, 1, InstanceReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(foreignReferenceDefEClass, ForeignReferenceDef.class, "ForeignReferenceDef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getForeignReferenceDef_Name(), ecorePackage.getEString(), "name", null, 0, 1, ForeignReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getForeignReferenceDef_Dest(), this.getEClassRef(), null, "dest", null, 0, 1, ForeignReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getForeignReferenceDef_RequiresIndex(), ecorePackage.getEBoolean(), "requiresIndex", null, 0, 1, ForeignReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getForeignReferenceDef_Desc(), ecorePackage.getEString(), "desc", null, 0, 1, ForeignReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getForeignReferenceDef_Tags(), this.getTag(), null, "tags", null, 0, -1, ForeignReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getForeignReferenceDef_LowerMultiplicity(), ecorePackage.getEString(), "lowerMultiplicity", null, 0, 1, ForeignReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getForeignReferenceDef_UpperMultiplicity(), ecorePackage.getEString(), "upperMultiplicity", null, 0, 1, ForeignReferenceDef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(eClassRefEClass, EClassRef.class, "EClassRef", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getEClassRef_Target(), ecorePackage.getEClass(), null, "target", null, 0, 1, EClassRef.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(eClassRefStarEClass, EClassRefStar.class, "EClassRefStar", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getEClassRefStar_Target(), ecorePackage.getEClass(), null, "target", null, 0, 1, EClassRefStar.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_COMPOSITE, IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getEClassRefStar_Star(), ecorePackage.getEString(), "star", null, 0, 1, EClassRefStar.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(tagEClass, Tag.class, "Tag", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getTag_Key(), ecorePackage.getEString(), "key", null, 0, 1, Tag.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getTag_Value(), ecorePackage.getEString(), "value", null, 0, 1, Tag.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    // Initialize enums and add enum literals
    initEEnum(parameterTypeEEnum, ParameterType.class, "ParameterType");
    addEEnumLiteral(parameterTypeEEnum, ParameterType.ADD_INFO);
    addEEnumLiteral(parameterTypeEEnum, ParameterType.BOOLEAN);
    addEEnumLiteral(parameterTypeEEnum, ParameterType.ENUM);
    addEEnumLiteral(parameterTypeEEnum, ParameterType.FLOAT);
    addEEnumLiteral(parameterTypeEEnum, ParameterType.INTEGER);
    addEEnumLiteral(parameterTypeEEnum, ParameterType.FUNCTION_NAME);
    addEEnumLiteral(parameterTypeEEnum, ParameterType.LINKER_SYMBOL);
    addEEnumLiteral(parameterTypeEEnum, ParameterType.MULTILINE_STRING);
    addEEnumLiteral(parameterTypeEEnum, ParameterType.STRING);

    // Create resource
    createResource(eNS_URI);
  }

} //ParamDefDslPackageImpl
