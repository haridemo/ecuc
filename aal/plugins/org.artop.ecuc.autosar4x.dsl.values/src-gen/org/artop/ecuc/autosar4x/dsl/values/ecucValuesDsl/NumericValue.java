/**
 */
package org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Numeric Value</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue#getValue <em>Value</em>}</li>
 * </ul>
 *
 * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getNumericValue()
 * @model
 * @generated
 */
public interface NumericValue extends SimpleValue
{
  /**
   * Returns the value of the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Value</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Value</em>' attribute.
   * @see #setValue(String)
   * @see org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage#getNumericValue_Value()
   * @model
   * @generated
   */
  String getValue();

  /**
   * Sets the value of the '{@link org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.NumericValue#getValue <em>Value</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Value</em>' attribute.
   * @see #getValue()
   * @generated
   */
  void setValue(String value);

} // NumericValue
