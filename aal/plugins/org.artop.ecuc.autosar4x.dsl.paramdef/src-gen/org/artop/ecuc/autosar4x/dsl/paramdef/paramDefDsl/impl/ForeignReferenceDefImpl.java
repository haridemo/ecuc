/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl;

import java.util.Collection;

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage;
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag;

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
 * An implementation of the model object '<em><b>Foreign Reference Def</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl#getName <em>Name</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl#getDest <em>Dest</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl#isRequiresIndex <em>Requires Index</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl#getDesc <em>Desc</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl#getTags <em>Tags</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl#getLowerMultiplicity <em>Lower Multiplicity</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.impl.ForeignReferenceDefImpl#getUpperMultiplicity <em>Upper Multiplicity</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ForeignReferenceDefImpl extends AbstractReferenceDefImpl implements ForeignReferenceDef
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
   * The cached value of the '{@link #getDest() <em>Dest</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getDest()
   * @generated
   * @ordered
   */
  protected EClassRef dest;

  /**
   * The default value of the '{@link #isRequiresIndex() <em>Requires Index</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #isRequiresIndex()
   * @generated
   * @ordered
   */
  protected static final boolean REQUIRES_INDEX_EDEFAULT = false;

  /**
   * The cached value of the '{@link #isRequiresIndex() <em>Requires Index</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #isRequiresIndex()
   * @generated
   * @ordered
   */
  protected boolean requiresIndex = REQUIRES_INDEX_EDEFAULT;

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
   * The default value of the '{@link #getLowerMultiplicity() <em>Lower Multiplicity</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getLowerMultiplicity()
   * @generated
   * @ordered
   */
  protected static final String LOWER_MULTIPLICITY_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getLowerMultiplicity() <em>Lower Multiplicity</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getLowerMultiplicity()
   * @generated
   * @ordered
   */
  protected String lowerMultiplicity = LOWER_MULTIPLICITY_EDEFAULT;

  /**
   * The default value of the '{@link #getUpperMultiplicity() <em>Upper Multiplicity</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getUpperMultiplicity()
   * @generated
   * @ordered
   */
  protected static final String UPPER_MULTIPLICITY_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getUpperMultiplicity() <em>Upper Multiplicity</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getUpperMultiplicity()
   * @generated
   * @ordered
   */
  protected String upperMultiplicity = UPPER_MULTIPLICITY_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ForeignReferenceDefImpl()
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
    return ParamDefDslPackage.Literals.FOREIGN_REFERENCE_DEF;
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
      eNotify(new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.FOREIGN_REFERENCE_DEF__NAME, oldName, name));
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
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DEST, oldDest, newDest);
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
        msgs = ((InternalEObject)dest).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DEST, null, msgs);
      if (newDest != null)
        msgs = ((InternalEObject)newDest).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DEST, null, msgs);
      msgs = basicSetDest(newDest, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DEST, newDest, newDest));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public boolean isRequiresIndex()
  {
    return requiresIndex;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setRequiresIndex(boolean newRequiresIndex)
  {
    boolean oldRequiresIndex = requiresIndex;
    requiresIndex = newRequiresIndex;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.FOREIGN_REFERENCE_DEF__REQUIRES_INDEX, oldRequiresIndex, requiresIndex));
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
      eNotify(new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DESC, oldDesc, desc));
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
      tags = new EObjectContainmentEList<Tag>(Tag.class, this, ParamDefDslPackage.FOREIGN_REFERENCE_DEF__TAGS);
    }
    return tags;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getLowerMultiplicity()
  {
    return lowerMultiplicity;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setLowerMultiplicity(String newLowerMultiplicity)
  {
    String oldLowerMultiplicity = lowerMultiplicity;
    lowerMultiplicity = newLowerMultiplicity;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.FOREIGN_REFERENCE_DEF__LOWER_MULTIPLICITY, oldLowerMultiplicity, lowerMultiplicity));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public String getUpperMultiplicity()
  {
    return upperMultiplicity;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setUpperMultiplicity(String newUpperMultiplicity)
  {
    String oldUpperMultiplicity = upperMultiplicity;
    upperMultiplicity = newUpperMultiplicity;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParamDefDslPackage.FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY, oldUpperMultiplicity, upperMultiplicity));
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
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DEST:
        return basicSetDest(null, msgs);
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__TAGS:
        return ((InternalEList<?>)getTags()).basicRemove(otherEnd, msgs);
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
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__NAME:
        return getName();
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DEST:
        return getDest();
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__REQUIRES_INDEX:
        return isRequiresIndex();
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DESC:
        return getDesc();
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__TAGS:
        return getTags();
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__LOWER_MULTIPLICITY:
        return getLowerMultiplicity();
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY:
        return getUpperMultiplicity();
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
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__NAME:
        setName((String)newValue);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DEST:
        setDest((EClassRef)newValue);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__REQUIRES_INDEX:
        setRequiresIndex((Boolean)newValue);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DESC:
        setDesc((String)newValue);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__TAGS:
        getTags().clear();
        getTags().addAll((Collection<? extends Tag>)newValue);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__LOWER_MULTIPLICITY:
        setLowerMultiplicity((String)newValue);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY:
        setUpperMultiplicity((String)newValue);
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
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__NAME:
        setName(NAME_EDEFAULT);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DEST:
        setDest((EClassRef)null);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__REQUIRES_INDEX:
        setRequiresIndex(REQUIRES_INDEX_EDEFAULT);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DESC:
        setDesc(DESC_EDEFAULT);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__TAGS:
        getTags().clear();
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__LOWER_MULTIPLICITY:
        setLowerMultiplicity(LOWER_MULTIPLICITY_EDEFAULT);
        return;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY:
        setUpperMultiplicity(UPPER_MULTIPLICITY_EDEFAULT);
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
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__NAME:
        return NAME_EDEFAULT == null ? name != null : !NAME_EDEFAULT.equals(name);
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DEST:
        return dest != null;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__REQUIRES_INDEX:
        return requiresIndex != REQUIRES_INDEX_EDEFAULT;
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__DESC:
        return DESC_EDEFAULT == null ? desc != null : !DESC_EDEFAULT.equals(desc);
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__TAGS:
        return tags != null && !tags.isEmpty();
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__LOWER_MULTIPLICITY:
        return LOWER_MULTIPLICITY_EDEFAULT == null ? lowerMultiplicity != null : !LOWER_MULTIPLICITY_EDEFAULT.equals(lowerMultiplicity);
      case ParamDefDslPackage.FOREIGN_REFERENCE_DEF__UPPER_MULTIPLICITY:
        return UPPER_MULTIPLICITY_EDEFAULT == null ? upperMultiplicity != null : !UPPER_MULTIPLICITY_EDEFAULT.equals(upperMultiplicity);
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
    result.append(", requiresIndex: ");
    result.append(requiresIndex);
    result.append(", desc: ");
    result.append(desc);
    result.append(", lowerMultiplicity: ");
    result.append(lowerMultiplicity);
    result.append(", upperMultiplicity: ");
    result.append(upperMultiplicity);
    result.append(')');
    return result.toString();
  }

} //ForeignReferenceDefImpl
