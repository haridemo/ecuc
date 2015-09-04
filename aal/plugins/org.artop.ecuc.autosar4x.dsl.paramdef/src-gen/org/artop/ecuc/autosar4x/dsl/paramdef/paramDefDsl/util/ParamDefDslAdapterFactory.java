/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.util;

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.*;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage
 * @generated
 */
public class ParamDefDslAdapterFactory extends AdapterFactoryImpl
{
  /**
   * The cached model package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected static ParamDefDslPackage modelPackage;

  /**
   * Creates an instance of the adapter factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ParamDefDslAdapterFactory()
  {
    if (modelPackage == null)
    {
      modelPackage = ParamDefDslPackage.eINSTANCE;
    }
  }

  /**
   * Returns whether this factory is applicable for the type of the object.
   * <!-- begin-user-doc -->
   * This implementation returns <code>true</code> if the object is either the model's package or is an instance object of the model.
   * <!-- end-user-doc -->
   * @return whether this factory is applicable for the type of the object.
   * @generated
   */
  @Override
  public boolean isFactoryForType(Object object)
  {
    if (object == modelPackage)
    {
      return true;
    }
    if (object instanceof EObject)
    {
      return ((EObject)object).eClass().getEPackage() == modelPackage;
    }
    return false;
  }

  /**
   * The switch that delegates to the <code>createXXX</code> methods.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ParamDefDslSwitch<Adapter> modelSwitch =
    new ParamDefDslSwitch<Adapter>()
    {
      @Override
      public Adapter caseModel(Model object)
      {
        return createModelAdapter();
      }
      @Override
      public Adapter caseModuleDef(ModuleDef object)
      {
        return createModuleDefAdapter();
      }
      @Override
      public Adapter caseAbstractContainerDef(AbstractContainerDef object)
      {
        return createAbstractContainerDefAdapter();
      }
      @Override
      public Adapter caseContainerDef(ContainerDef object)
      {
        return createContainerDefAdapter();
      }
      @Override
      public Adapter caseContainerElement(ContainerElement object)
      {
        return createContainerElementAdapter();
      }
      @Override
      public Adapter caseChoiceContainerDef(ChoiceContainerDef object)
      {
        return createChoiceContainerDefAdapter();
      }
      @Override
      public Adapter caseParameterDef(ParameterDef object)
      {
        return createParameterDefAdapter();
      }
      @Override
      public Adapter caseAbstractReferenceDef(AbstractReferenceDef object)
      {
        return createAbstractReferenceDefAdapter();
      }
      @Override
      public Adapter caseReferenceDef(ReferenceDef object)
      {
        return createReferenceDefAdapter();
      }
      @Override
      public Adapter caseInstanceReferenceDef(InstanceReferenceDef object)
      {
        return createInstanceReferenceDefAdapter();
      }
      @Override
      public Adapter caseForeignReferenceDef(ForeignReferenceDef object)
      {
        return createForeignReferenceDefAdapter();
      }
      @Override
      public Adapter caseEClassRef(EClassRef object)
      {
        return createEClassRefAdapter();
      }
      @Override
      public Adapter caseEClassRefStar(EClassRefStar object)
      {
        return createEClassRefStarAdapter();
      }
      @Override
      public Adapter caseTag(Tag object)
      {
        return createTagAdapter();
      }
      @Override
      public Adapter defaultCase(EObject object)
      {
        return createEObjectAdapter();
      }
    };

  /**
   * Creates an adapter for the <code>target</code>.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param target the object to adapt.
   * @return the adapter for the <code>target</code>.
   * @generated
   */
  @Override
  public Adapter createAdapter(Notifier target)
  {
    return modelSwitch.doSwitch((EObject)target);
  }


  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Model
   * @generated
   */
  public Adapter createModelAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef <em>Module Def</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef
   * @generated
   */
  public Adapter createModuleDefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractContainerDef <em>Abstract Container Def</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractContainerDef
   * @generated
   */
  public Adapter createAbstractContainerDefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef <em>Container Def</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef
   * @generated
   */
  public Adapter createContainerDefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement <em>Container Element</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerElement
   * @generated
   */
  public Adapter createContainerElementAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef <em>Choice Container Def</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef
   * @generated
   */
  public Adapter createChoiceContainerDefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef <em>Parameter Def</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef
   * @generated
   */
  public Adapter createParameterDefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractReferenceDef <em>Abstract Reference Def</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractReferenceDef
   * @generated
   */
  public Adapter createAbstractReferenceDefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef <em>Reference Def</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef
   * @generated
   */
  public Adapter createReferenceDefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef <em>Instance Reference Def</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef
   * @generated
   */
  public Adapter createInstanceReferenceDefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef <em>Foreign Reference Def</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef
   * @generated
   */
  public Adapter createForeignReferenceDefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef <em>EClass Ref</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef
   * @generated
   */
  public Adapter createEClassRefAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar <em>EClass Ref Star</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar
   * @generated
   */
  public Adapter createEClassRefStarAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag <em>Tag</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag
   * @generated
   */
  public Adapter createTagAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for the default case.
   * <!-- begin-user-doc -->
   * This default implementation returns null.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @generated
   */
  public Adapter createEObjectAdapter()
  {
    return null;
  }

} //ParamDefDslAdapterFactory
