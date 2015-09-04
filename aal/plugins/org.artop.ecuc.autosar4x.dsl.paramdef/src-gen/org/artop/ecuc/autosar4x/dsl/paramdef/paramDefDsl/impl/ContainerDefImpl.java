/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl;

import java.util.Collection;

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractContainerDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef;

import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Container Def</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerDefImpl#getContainer <em>Container</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerDefImpl#getParameter <em>Parameter</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ContainerDefImpl#getReferences <em>References</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ContainerDefImpl extends AbstractContainerDefImpl implements ContainerDef
{
  /**
   * The cached value of the '{@link #getContainer() <em>Container</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getContainer()
   * @generated
   * @ordered
   */
  protected EList<AbstractContainerDef> container;

  /**
   * The cached value of the '{@link #getParameter() <em>Parameter</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getParameter()
   * @generated
   * @ordered
   */
  protected EList<ParameterDef> parameter;

  /**
   * The cached value of the '{@link #getReferences() <em>References</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getReferences()
   * @generated
   * @ordered
   */
  protected EList<AbstractReferenceDef> references;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ContainerDefImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return ParamDefDslPackage.Literals.CONTAINER_DEF;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<AbstractContainerDef> getContainer()
  {
    if (container == null)
    {
      container = new EObjectContainmentEList<AbstractContainerDef>(AbstractContainerDef.class, this, ParamDefDslPackage.CONTAINER_DEF__CONTAINER);
    }
    return container;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<ParameterDef> getParameter()
  {
    if (parameter == null)
    {
      parameter = new EObjectContainmentEList<ParameterDef>(ParameterDef.class, this, ParamDefDslPackage.CONTAINER_DEF__PARAMETER);
    }
    return parameter;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<AbstractReferenceDef> getReferences()
  {
    if (references == null)
    {
      references = new EObjectContainmentEList<AbstractReferenceDef>(AbstractReferenceDef.class, this, ParamDefDslPackage.CONTAINER_DEF__REFERENCES);
    }
    return references;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case ParamDefDslPackage.CONTAINER_DEF__CONTAINER:
        return ((InternalEList<?>)getContainer()).basicRemove(otherEnd, msgs);
      case ParamDefDslPackage.CONTAINER_DEF__PARAMETER:
        return ((InternalEList<?>)getParameter()).basicRemove(otherEnd, msgs);
      case ParamDefDslPackage.CONTAINER_DEF__REFERENCES:
        return ((InternalEList<?>)getReferences()).basicRemove(otherEnd, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case ParamDefDslPackage.CONTAINER_DEF__CONTAINER:
        return getContainer();
      case ParamDefDslPackage.CONTAINER_DEF__PARAMETER:
        return getParameter();
      case ParamDefDslPackage.CONTAINER_DEF__REFERENCES:
        return getReferences();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @SuppressWarnings("unchecked")
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case ParamDefDslPackage.CONTAINER_DEF__CONTAINER:
        getContainer().clear();
        getContainer().addAll((Collection<? extends AbstractContainerDef>)newValue);
        return;
      case ParamDefDslPackage.CONTAINER_DEF__PARAMETER:
        getParameter().clear();
        getParameter().addAll((Collection<? extends ParameterDef>)newValue);
        return;
      case ParamDefDslPackage.CONTAINER_DEF__REFERENCES:
        getReferences().clear();
        getReferences().addAll((Collection<? extends AbstractReferenceDef>)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case ParamDefDslPackage.CONTAINER_DEF__CONTAINER:
        getContainer().clear();
        return;
      case ParamDefDslPackage.CONTAINER_DEF__PARAMETER:
        getParameter().clear();
        return;
      case ParamDefDslPackage.CONTAINER_DEF__REFERENCES:
        getReferences().clear();
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case ParamDefDslPackage.CONTAINER_DEF__CONTAINER:
        return container != null && !container.isEmpty();
      case ParamDefDslPackage.CONTAINER_DEF__PARAMETER:
        return parameter != null && !parameter.isEmpty();
      case ParamDefDslPackage.CONTAINER_DEF__REFERENCES:
        return references != null && !references.isEmpty();
    }
    return super.eIsSet(featureID);
  }

} //ContainerDefImpl
