/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.AbstractContext;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Instance Reference Value</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceValueImpl#getContexts <em>Contexts</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.InstanceReferenceValueImpl#getTarget <em>Target</em>}</li>
 * </ul>
 *
 * @generated
 */
public class InstanceReferenceValueImpl extends MinimalEObjectImpl.Container implements InstanceReferenceValue
{
  /**
   * The cached value of the '{@link #getContexts() <em>Contexts</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getContexts()
   * @generated
   * @ordered
   */
  protected AbstractContext contexts;

  /**
   * The cached value of the '{@link #getTarget() <em>Target</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTarget()
   * @generated
   * @ordered
   */
  protected EObject target;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected InstanceReferenceValueImpl()
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
    return EcucValuesDslPackage.Literals.INSTANCE_REFERENCE_VALUE;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public AbstractContext getContexts()
  {
    return contexts;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetContexts(AbstractContext newContexts, NotificationChain msgs)
  {
    AbstractContext oldContexts = contexts;
    contexts = newContexts;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__CONTEXTS, oldContexts, newContexts);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setContexts(AbstractContext newContexts)
  {
    if (newContexts != contexts)
    {
      NotificationChain msgs = null;
      if (contexts != null)
        msgs = ((InternalEObject)contexts).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__CONTEXTS, null, msgs);
      if (newContexts != null)
        msgs = ((InternalEObject)newContexts).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__CONTEXTS, null, msgs);
      msgs = basicSetContexts(newContexts, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__CONTEXTS, newContexts, newContexts));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EObject getTarget()
  {
    if (target != null && target.eIsProxy())
    {
      InternalEObject oldTarget = (InternalEObject)target;
      target = eResolveProxy(oldTarget);
      if (target != oldTarget)
      {
        if (eNotificationRequired())
          eNotify(new ENotificationImpl(this, Notification.RESOLVE, EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__TARGET, oldTarget, target));
      }
    }
    return target;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EObject basicGetTarget()
  {
    return target;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTarget(EObject newTarget)
  {
    EObject oldTarget = target;
    target = newTarget;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__TARGET, oldTarget, target));
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
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__CONTEXTS:
        return basicSetContexts(null, msgs);
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
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__CONTEXTS:
        return getContexts();
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__TARGET:
        if (resolve) return getTarget();
        return basicGetTarget();
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
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__CONTEXTS:
        setContexts((AbstractContext)newValue);
        return;
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__TARGET:
        setTarget((EObject)newValue);
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
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__CONTEXTS:
        setContexts((AbstractContext)null);
        return;
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__TARGET:
        setTarget((EObject)null);
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
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__CONTEXTS:
        return contexts != null;
      case EcucValuesDslPackage.INSTANCE_REFERENCE_VALUE__TARGET:
        return target != null;
    }
    return super.eIsSet(featureID);
  }

} //InstanceReferenceValueImpl
