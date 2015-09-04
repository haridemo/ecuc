/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Container Def</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef#getContainer <em>Container</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef#getParameter <em>Parameter</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef#getReferences <em>References</em>}</li>
 * </ul>
 *
 * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getContainerDef()
 * @model
 * @generated
 */
public interface ContainerDef extends AbstractContainerDef
{
  /**
   * Returns the value of the '<em><b>Container</b></em>' containment reference list.
   * The list contents are of type {@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractContainerDef}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Container</em>' containment reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Container</em>' containment reference list.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getContainerDef_Container()
   * @model containment="true"
   * @generated
   */
  EList<AbstractContainerDef> getContainer();

  /**
   * Returns the value of the '<em><b>Parameter</b></em>' containment reference list.
   * The list contents are of type {@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Parameter</em>' containment reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Parameter</em>' containment reference list.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getContainerDef_Parameter()
   * @model containment="true"
   * @generated
   */
  EList<ParameterDef> getParameter();

  /**
   * Returns the value of the '<em><b>References</b></em>' containment reference list.
   * The list contents are of type {@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractReferenceDef}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>References</em>' containment reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>References</em>' containment reference list.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getContainerDef_References()
   * @model containment="true"
   * @generated
   */
  EList<AbstractReferenceDef> getReferences();

} // ContainerDef
