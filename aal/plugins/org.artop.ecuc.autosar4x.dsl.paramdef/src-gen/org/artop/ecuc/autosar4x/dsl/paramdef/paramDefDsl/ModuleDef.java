/**
 */
package org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Module Def</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getName <em>Name</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getDesc <em>Desc</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getTags <em>Tags</em>}</li>
 *   <li>{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getContainer <em>Container</em>}</li>
 * </ul>
 *
 * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getModuleDef()
 * @model
 * @generated
 */
public interface ModuleDef extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getModuleDef_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Desc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Desc</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Desc</em>' attribute.
   * @see #setDesc(String)
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getModuleDef_Desc()
   * @model
   * @generated
   */
  String getDesc();

  /**
   * Sets the value of the '{@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef#getDesc <em>Desc</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Desc</em>' attribute.
   * @see #getDesc()
   * @generated
   */
  void setDesc(String value);

  /**
   * Returns the value of the '<em><b>Tags</b></em>' containment reference list.
   * The list contents are of type {@link org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.Tag}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Tags</em>' containment reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Tags</em>' containment reference list.
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getModuleDef_Tags()
   * @model containment="true"
   * @generated
   */
  EList<Tag> getTags();

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
   * @see org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParamDefDslPackage#getModuleDef_Container()
   * @model containment="true"
   * @generated
   */
  EList<AbstractContainerDef> getContainer();

} // ModuleDef
