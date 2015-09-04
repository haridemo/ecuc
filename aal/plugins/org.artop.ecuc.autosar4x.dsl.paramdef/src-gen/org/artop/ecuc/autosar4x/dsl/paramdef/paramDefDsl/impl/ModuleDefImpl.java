/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl;

import java.util.Collection;

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractContainerDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag;

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
 * An implementation of the model object '<em><b>Module Def</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModuleDefImpl#getName <em>Name</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModuleDefImpl#getDesc <em>Desc</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModuleDefImpl#getTags <em>Tags</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ModuleDefImpl#getContainer <em>Container</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ModuleDefImpl extends MinimalEObjectImpl.Container implements ModuleDef
{
  /**
   * The default value of the '{@link #getName() <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getName()
   * @generated
   * @ordered
   */
  protected static final String NAME_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getName() <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getName()
   * @generated
   * @ordered
   */
  protected String name = NAME_EDEFAULT;

  /**
   * The default value of the '{@link #getDesc() <em>Desc</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getDesc()
   * @generated
   * @ordered
   */
  protected static final String DESC_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getDesc() <em>Desc</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getDesc()
   * @generated
   * @ordered
   */
  protected String desc = DESC_EDEFAULT;

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
  protected EList<AbstractContainerDef> container;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ModuleDefImpl()
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
    return ParamDefDslPackage.Literals.MODULE_DEF;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getName()
  {
    return name;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setName(String newName)
  {
    String oldName = name;
    name = newName;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.MODULE_DEF__NAME, oldName, name));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getDesc()
  {
    return desc;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setDesc(String newDesc)
  {
    String oldDesc = desc;
    desc = newDesc;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.MODULE_DEF__DESC, oldDesc, desc));
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
      tags = new EObjectContainmentEList<Tag>(Tag.class, this, ParamDefDslPackage.MODULE_DEF__TAGS);
    }
    return tags;
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
      container = new EObjectContainmentEList<AbstractContainerDef>(AbstractContainerDef.class, this, ParamDefDslPackage.MODULE_DEF__CONTAINER);
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
      case ParamDefDslPackage.MODULE_DEF__TAGS:
        return ((InternalEList<?>)getTags()).basicRemove(otherEnd, msgs);
      case ParamDefDslPackage.MODULE_DEF__CONTAINER:
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
      case ParamDefDslPackage.MODULE_DEF__NAME:
        return getName();
      case ParamDefDslPackage.MODULE_DEF__DESC:
        return getDesc();
      case ParamDefDslPackage.MODULE_DEF__TAGS:
        return getTags();
      case ParamDefDslPackage.MODULE_DEF__CONTAINER:
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
      case ParamDefDslPackage.MODULE_DEF__NAME:
        setName((String)newValue);
        return;
      case ParamDefDslPackage.MODULE_DEF__DESC:
        setDesc((String)newValue);
        return;
      case ParamDefDslPackage.MODULE_DEF__TAGS:
        getTags().clear();
        getTags().addAll((Collection<? extends Tag>)newValue);
        return;
      case ParamDefDslPackage.MODULE_DEF__CONTAINER:
        getContainer().clear();
        getContainer().addAll((Collection<? extends AbstractContainerDef>)newValue);
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
      case ParamDefDslPackage.MODULE_DEF__NAME:
        setName(NAME_EDEFAULT);
        return;
      case ParamDefDslPackage.MODULE_DEF__DESC:
        setDesc(DESC_EDEFAULT);
        return;
      case ParamDefDslPackage.MODULE_DEF__TAGS:
        getTags().clear();
        return;
      case ParamDefDslPackage.MODULE_DEF__CONTAINER:
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
      case ParamDefDslPackage.MODULE_DEF__NAME:
        return NAME_EDEFAULT == null ? name != null : !NAME_EDEFAULT.equals(name);
      case ParamDefDslPackage.MODULE_DEF__DESC:
        return DESC_EDEFAULT == null ? desc != null : !DESC_EDEFAULT.equals(desc);
      case ParamDefDslPackage.MODULE_DEF__TAGS:
        return tags != null && !tags.isEmpty();
      case ParamDefDslPackage.MODULE_DEF__CONTAINER:
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
    result.append(" (name: ");
    result.append(name);
    result.append(", desc: ");
    result.append(desc);
    result.append(')');
    return result.toString();
  }

} //ModuleDefImpl
