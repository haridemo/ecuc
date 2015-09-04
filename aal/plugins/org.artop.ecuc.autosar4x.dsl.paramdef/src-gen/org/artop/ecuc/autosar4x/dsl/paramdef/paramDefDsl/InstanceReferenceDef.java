/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Instance Reference Def</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef#getContexts <em>Contexts</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef#getDest <em>Dest</em>}</li>
 * </ul>
 *
 * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getInstanceReferenceDef()
 * @model
 * @generated
 */
public interface InstanceReferenceDef extends ContainerElement, AbstractReferenceDef
{
  /**
   * Returns the value of the '<em><b>Contexts</b></em>' containment reference list.
   * The list contents are of type {@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.EClassRefStar}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Contexts</em>' containment reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Contexts</em>' containment reference list.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getInstanceReferenceDef_Contexts()
   * @model containment="true"
   * @generated
   */
  EList<EClassRefStar> getContexts();

  /**
   * Returns the value of the '<em><b>Dest</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Dest</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Dest</em>' containment reference.
   * @see #setDest(EClassRef)
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getInstanceReferenceDef_Dest()
   * @model containment="true"
   * @generated
   */
  EClassRef getDest();

  /**
   * Sets the value of the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef#getDest <em>Dest</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Dest</em>' containment reference.
   * @see #getDest()
   * @generated
   */
  void setDest(EClassRef value);

} // InstanceReferenceDef
