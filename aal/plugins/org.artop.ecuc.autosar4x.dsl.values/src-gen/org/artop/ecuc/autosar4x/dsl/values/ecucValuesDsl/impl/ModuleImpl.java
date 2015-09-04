/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl;

import autosar40.ecucparameterdef.EcucModuleDef;

import java.util.Collection;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Tag;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Module</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModuleImpl#getDefinition <em>Definition</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModuleImpl#getShortName <em>Short Name</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModuleImpl#getTags <em>Tags</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.impl.ModuleImpl#getContainer <em>Container</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ModuleImpl extends MinimalEObjectImpl.Container implements Module
{
  /**
   * The cached value of the '{@link #getDefinition() <em>Definition</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getDefinition()
   * @generated
   * @ordered
   */
  protected EcucModuleDef definition;

  /**
   * The default value of the '{@link #getShortName() <em>Short Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getShortName()
   * @generated
   * @ordered
   */
  protected static final String SHORT_NAME_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getShortName() <em>Short Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getShortName()
   * @generated
   * @ordered
   */
  protected String shortName = SHORT_NAME_EDEFAULT;

  /**
   * The cached value of the '{@link #getTags() <em>Tags</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTags()
   * @generated
   * @ordered
   */
  protected EList<Tag> tags;

  /**
   * The cached value of the '{@link #getContainer() <em>Container</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getContainer()
   * @generated
   * @ordered
   */
  protected EList<org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container> container;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ModuleImpl()
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
    return EcucValuesDslPackage.Literals.MODULE;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EcucModuleDef getDefinition()
  {
    if (definition != null && definition.eIsProxy())
    {
      InternalEObject oldDefinition = (InternalEObject)definition;
      definition = (EcucModuleDef)eResolveProxy(oldDefinition);
      if (definition != oldDefinition)
      {
        if (eNotificationRequired())
          eNotify(new ENotificationImpl(this, Notification.RESOLVE, EcucValuesDslPackage.MODULE__DEFINITION, oldDefinition, definition));
      }
    }
    return definition;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EcucModuleDef basicGetDefinition()
  {
    return definition;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setDefinition(EcucModuleDef newDefinition)
  {
    EcucModuleDef oldDefinition = definition;
    definition = newDefinition;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, EcucValuesDslPackage.MODULE__DEFINITION, oldDefinition, definition));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getShortName()
  {
    return shortName;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setShortName(String newShortName)
  {
    String oldShortName = shortName;
    shortName = newShortName;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, EcucValuesDslPackage.MODULE__SHORT_NAME, oldShortName, shortName));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<Tag> getTags()
  {
    if (tags == null)
    {
      tags = new EObjectContainmentEList<Tag>(Tag.class, this, EcucValuesDslPackage.MODULE__TAGS);
    }
    return tags;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EList<org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container> getContainer()
  {
    if (container == null)
    {
      container = new EObjectContainmentEList<org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container>(org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container.class, this, EcucValuesDslPackage.MODULE__CONTAINER);
    }
    return container;
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
      case EcucValuesDslPackage.MODULE__TAGS:
        return ((InternalEList<?>)getTags()).basicRemove(otherEnd, msgs);
      case EcucValuesDslPackage.MODULE__CONTAINER:
        return ((InternalEList<?>)getContainer()).basicRemove(otherEnd, msgs);
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
      case EcucValuesDslPackage.MODULE__DEFINITION:
        if (resolve) return getDefinition();
        return basicGetDefinition();
      case EcucValuesDslPackage.MODULE__SHORT_NAME:
        return getShortName();
      case EcucValuesDslPackage.MODULE__TAGS:
        return getTags();
      case EcucValuesDslPackage.MODULE__CONTAINER:
        return getContainer();
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
      case EcucValuesDslPackage.MODULE__DEFINITION:
        setDefinition((EcucModuleDef)newValue);
        return;
      case EcucValuesDslPackage.MODULE__SHORT_NAME:
        setShortName((String)newValue);
        return;
      case EcucValuesDslPackage.MODULE__TAGS:
        getTags().clear();
        getTags().addAll((Collection<? extends Tag>)newValue);
        return;
      case EcucValuesDslPackage.MODULE__CONTAINER:
        getContainer().clear();
        getContainer().addAll((Collection<? extends org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container>)newValue);
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
      case EcucValuesDslPackage.MODULE__DEFINITION:
        setDefinition((EcucModuleDef)null);
        return;
      case EcucValuesDslPackage.MODULE__SHORT_NAME:
        setShortName(SHORT_NAME_EDEFAULT);
        return;
      case EcucValuesDslPackage.MODULE__TAGS:
        getTags().clear();
        return;
      case EcucValuesDslPackage.MODULE__CONTAINER:
        getContainer().clear();
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
      case EcucValuesDslPackage.MODULE__DEFINITION:
        return definition != null;
      case EcucValuesDslPackage.MODULE__SHORT_NAME:
        return SHORT_NAME_EDEFAULT == null ? shortName != null : !SHORT_NAME_EDEFAULT.equals(shortName);
      case EcucValuesDslPackage.MODULE__TAGS:
        return tags != null && !tags.isEmpty();
      case EcucValuesDslPackage.MODULE__CONTAINER:
        return container != null && !container.isEmpty();
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuffer result = new StringBuffer(super.toString());
    result.append(" (shortName: ");
    result.append(shortName);
    result.append(')');
    return result.toString();
  }

} //ModuleImpl
