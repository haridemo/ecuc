/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Boolean Value</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue#getValue <em>Value</em>}</li>
 * </ul>
 *
 * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getBooleanValue()
 * @model
 * @generated
 */
public interface BooleanValue extends SimpleValue
{
  /**
   * Returns the value of the '<em><b>Value</b></em>' attribute.
   * The literals are from the enumeration {@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Value</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Value</em>' attribute.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral
   * @see #setValue(BooleanLiteral)
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getBooleanValue_Value()
   * @model
   * @generated
   */
  BooleanLiteral getValue();

  /**
   * Sets the value of the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanValue#getValue <em>Value</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Value</em>' attribute.
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.BooleanLiteral
   * @see #getValue()
   * @generated
   */
  void setValue(BooleanLiteral value);

} // BooleanValue
