/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl;

import java.util.Collection;

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Instance Reference Def</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.InstanceReferenceDefImpl#getContexts <em>Contexts</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.InstanceReferenceDefImpl#getDest <em>Dest</em>}</li>
 * </ul>
 *
 * @generated
 */
public class InstanceReferenceDefImpl extends ContainerElementImpl implements InstanceReferenceDef
{
  /**
   * The cached value of the '{@link #getContexts() <em>Contexts</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getContexts()
   * @generated
   * @ordered
   */
  protected EList<EClassRefStar> contexts;

  /**
   * The cached value of the '{@link #getDest() <em>Dest</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getDest()
   * @generated
   * @ordered
   */
  protected EClassRef dest;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected InstanceReferenceDefImpl()
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
    return ParamDefDslPackage.Literals.INSTANCE_REFERENCE_DEF;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<EClassRefStar> getContexts()
  {
    if (contexts == null)
    {
      contexts = new EObjectContainmentEList<EClassRefStar>(EClassRefStar.class, this, ParamDefDslPackage.INSTANCE_REFERENCE_DEF__CONTEXTS);
    }
    return contexts;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClassRef getDest()
  {
    return dest;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetDest(EClassRef newDest, NotificationChain msgs)
  {
    EClassRef oldDest = dest;
    dest = newDest;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.INSTANCE_REFERENCE_DEF__DEST, oldDest, newDest);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setDest(EClassRef newDest)
  {
    if (newDest != dest)
    {
      NotificationChain msgs = null;
      if (dest != null)
        msgs = ((InternalEObject)dest).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - ParamDefDslPackage.INSTANCE_REFERENCE_DEF__DEST, null, msgs);
      if (newDest != null)
        msgs = ((InternalEObject)newDest).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - ParamDefDslPackage.INSTANCE_REFERENCE_DEF__DEST, null, msgs);
      msgs = basicSetDest(newDest, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.INSTANCE_REFERENCE_DEF__DEST, newDest, newDest));
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
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__CONTEXTS:
        return ((InternalEList<?>)getContexts()).basicRemove(otherEnd, msgs);
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__DEST:
        return basicSetDest(null, msgs);
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
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__CONTEXTS:
        return getContexts();
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__DEST:
        return getDest();
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
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__CONTEXTS:
        getContexts().clear();
        getContexts().addAll((Collection<? extends EClassRefStar>)newValue);
        return;
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__DEST:
        setDest((EClassRef)newValue);
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
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__CONTEXTS:
        getContexts().clear();
        return;
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__DEST:
        setDest((EClassRef)null);
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
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__CONTEXTS:
        return contexts != null && !contexts.isEmpty();
      case ParamDefDslPackage.INSTANCE_REFERENCE_DEF__DEST:
        return dest != null;
    }
    return super.eIsSet(featureID);
  }

} //InstanceReferenceDefImpl
