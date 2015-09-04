/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl;

import java.util.Collection;

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.util.EObjectResolvingEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Reference Def</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ReferenceDefImpl#getTypes <em>Types</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ReferenceDefImpl extends ContainerElementImpl implements ReferenceDef
{
  /**
   * The cached value of the '{@link #getTypes() <em>Types</em>}' reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTypes()
   * @generated
   * @ordered
   */
  protected EList<ContainerDef> types;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ReferenceDefImpl()
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
    return ParamDefDslPackage.Literals.REFERENCE_DEF;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<ContainerDef> getTypes()
  {
    if (types == null)
    {
      types = new EObjectResolvingEList<ContainerDef>(ContainerDef.class, this, ParamDefDslPackage.REFERENCE_DEF__TYPES);
    }
    return types;
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
      case ParamDefDslPackage.REFERENCE_DEF__TYPES:
        return getTypes();
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
      case ParamDefDslPackage.REFERENCE_DEF__TYPES:
        getTypes().clear();
        getTypes().addAll((Collection<? extends ContainerDef>)newValue);
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
      case ParamDefDslPackage.REFERENCE_DEF__TYPES:
        getTypes().clear();
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
      case ParamDefDslPackage.REFERENCE_DEF__TYPES:
        return types != null && !types.isEmpty();
    }
    return super.eIsSet(featureID);
  }

} //ReferenceDefImpl
