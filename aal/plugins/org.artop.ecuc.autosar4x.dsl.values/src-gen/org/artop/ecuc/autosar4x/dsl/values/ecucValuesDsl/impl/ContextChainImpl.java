/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.AbstractContext;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ContextChain;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Context Chain</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextChainImpl#getPrev <em>Prev</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ContextChainImpl#getObject <em>Object</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ContextChainImpl extends AbstractContextImpl implements ContextChain
{
  /**
   * The cached value of the '{@link #getPrev() <em>Prev</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getPrev()
   * @generated
   * @ordered
   */
  protected AbstractContext prev;

  /**
   * The cached value of the '{@link #getObject() <em>Object</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getObject()
   * @generated
   * @ordered
   */
  protected EObject object;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ContextChainImpl()
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
    return EcucValuesDslPackage.Literals.CONTEXT_CHAIN;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AbstractContext getPrev()
  {
    return prev;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetPrev(AbstractContext newPrev, NotificationChain msgs)
  {
    AbstractContext oldPrev = prev;
    prev = newPrev;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, EcucValuesDslPackage.CONTEXT_CHAIN__PREV, oldPrev, newPrev);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setPrev(AbstractContext newPrev)
  {
    if (newPrev != prev)
    {
      NotificationChain msgs = null;
      if (prev != null)
        msgs = ((InternalEObject)prev).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - EcucValuesDslPackage.CONTEXT_CHAIN__PREV, null, msgs);
      if (newPrev != null)
        msgs = ((InternalEObject)newPrev).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - EcucValuesDslPackage.CONTEXT_CHAIN__PREV, null, msgs);
      msgs = basicSetPrev(newPrev, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, EcucValuesDslPackage.CONTEXT_CHAIN__PREV, newPrev, newPrev));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EObject getObject()
  {
    if (object != null && object.eIsProxy())
    {
      InternalEObject oldObject = (InternalEObject)object;
      object = eResolveProxy(oldObject);
      if (object != oldObject)
      {
        if (eNotificationRequired())
          eNotify(new ENotificationImpl(this, Notification.RESOLVE, EcucValuesDslPackage.CONTEXT_CHAIN__OBJECT, oldObject, object));
      }
    }
    return object;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EObject basicGetObject()
  {
    return object;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setObject(EObject newObject)
  {
    EObject oldObject = object;
    object = newObject;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, EcucValuesDslPackage.CONTEXT_CHAIN__OBJECT, oldObject, object));
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
      case EcucValuesDslPackage.CONTEXT_CHAIN__PREV:
        return basicSetPrev(null, msgs);
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
      case EcucValuesDslPackage.CONTEXT_CHAIN__PREV:
        return getPrev();
      case EcucValuesDslPackage.CONTEXT_CHAIN__OBJECT:
        if (resolve) return getObject();
        return basicGetObject();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case EcucValuesDslPackage.CONTEXT_CHAIN__PREV:
        setPrev((AbstractContext)newValue);
        return;
      case EcucValuesDslPackage.CONTEXT_CHAIN__OBJECT:
        setObject((EObject)newValue);
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
      case EcucValuesDslPackage.CONTEXT_CHAIN__PREV:
        setPrev((AbstractContext)null);
        return;
      case EcucValuesDslPackage.CONTEXT_CHAIN__OBJECT:
        setObject((EObject)null);
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
      case EcucValuesDslPackage.CONTEXT_CHAIN__PREV:
        return prev != null;
      case EcucValuesDslPackage.CONTEXT_CHAIN__OBJECT:
        return object != null;
    }
    return super.eIsSet(featureID);
  }

} //ContextChainImpl
