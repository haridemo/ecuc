/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Instance Reference Value</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue#getContexts <em>Contexts</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue#getTarget <em>Target</em>}</li>
 * </ul>
 *
 * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getInstanceReferenceValue()
 * @model
 * @generated
 */
public interface InstanceReferenceValue extends EObject
{
  /**
   * Returns the value of the '<em><b>Contexts</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Contexts</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Contexts</em>' containment reference.
   * @see #setContexts(AbstractContext)
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getInstanceReferenceValue_Contexts()
   * @model containment="true"
   * @generated
   */
  AbstractContext getContexts();

  /**
   * Sets the value of the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue#getContexts <em>Contexts</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Contexts</em>' containment reference.
   * @see #getContexts()
   * @generated
   */
  void setContexts(AbstractContext value);

  /**
   * Returns the value of the '<em><b>Target</b></em>' reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Target</em>' reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Target</em>' reference.
   * @see #setTarget(EObject)
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getInstanceReferenceValue_Target()
   * @model
   * @generated
   */
  EObject getTarget();

  /**
   * Sets the value of the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReferenceValue#getTarget <em>Target</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Target</em>' reference.
   * @see #getTarget()
   * @generated
   */
  void setTarget(EObject value);

} // InstanceReferenceValue
