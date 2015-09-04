/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Context</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context#getStart <em>Start</em>}</li>
 * </ul>
 *
 * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getContext()
 * @model
 * @generated
 */
public interface Context extends AbstractContext
{
  /**
   * Returns the value of the '<em><b>Start</b></em>' reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Start</em>' reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Start</em>' reference.
   * @see #setStart(EObject)
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getContext_Start()
   * @model
   * @generated
   */
  EObject getStart();

  /**
   * Sets the value of the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Context#getStart <em>Start</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Start</em>' reference.
   * @see #getStart()
   * @generated
   */
  void setStart(EObject value);

} // Context
