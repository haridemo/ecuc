/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Reference Value</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue#getContainer <em>Container</em>}</li>
 * </ul>
 *
 * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getReferenceValue()
 * @model
 * @generated
 */
public interface ReferenceValue extends EObject
{
  /**
   * Returns the value of the '<em><b>Container</b></em>' reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Container</em>' reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Container</em>' reference.
   * @see #setContainer(EObject)
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getReferenceValue_Container()
   * @model
   * @generated
   */
  EObject getContainer();

  /**
   * Sets the value of the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue#getContainer <em>Container</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Container</em>' reference.
   * @see #getContainer()
   * @generated
   */
  void setContainer(EObject value);

} // ReferenceValue
