/**
 * <copyright>
 * 
 * Copyright (c) See4sys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.gautosar.initializers.util;

import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.ggenericstructure.ginfrastructure.GARObject;

import java.util.List;
import java.util.Map;

import org.artop.ecuc.gautosar.initializers.internal.Activator;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.sphinx.emf.util.WorkspaceTransactionUtil;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.ReflectUtil;

public class ModuleConfigurationUtil {

	private static final String GET_EXTENSIONS_OPERATION_NAME = "getExtensions";//$NON-NLS-1$

	/**
	 * For setting the property value of the object
	 * 
	 * @param object
	 *            the description object
	 * @param feature
	 *            the feature
	 * @param valueObject
	 *            the value to be set
	 */
	@SuppressWarnings("unchecked")
	public static void setPropertyValue(GARObject object, EStructuralFeature feature, Object valueObject) {
		if (object != null && feature != null) {
			if (valueObject != null && !"".equals(valueObject.toString())) { //$NON-NLS-1$
				if (feature.isMany()) {
					((List<Object>) ((EObject) object).eGet(feature)).add(valueObject);
				} else {
					object.eSet(feature, valueObject);
				}
			}
		}
	}

	/**
	 * For setting the property value of the object
	 * 
	 * @param object
	 *            the description object
	 * @param feature
	 *            the feature
	 * @param valueObject
	 *            the value to be set
	 */
	public static Object getPropertyValue(GARObject object, EStructuralFeature feature) {
		if (object != null && feature != null) {
			return object.eGet(feature);
		}
		return null;
	}

	/**
	 * Returns the container that have <code>containerDef</code> as definition and that is defined in
	 * <code>moduleConfiguration</code> module configuration.
	 * 
	 * @param containerDef
	 * @param moduleConfiguration
	 * @return the container that have <code>containerDef</code> as definition and that is defined in
	 *         <code>moduleConfiguration</code> module configuration.
	 */
	public static GContainer getContainerFromDefinition(GContainerDef containerDef, GModuleConfiguration moduleConfiguration) {
		Assert.isNotNull(containerDef);
		Assert.isNotNull(moduleConfiguration);
		GContainer goodContainer = null;
		for (GContainer container : moduleConfiguration.gGetContainers()) {
			GContainer gContainer = getContainerFromDefinition(containerDef, container);
			if (gContainer != null) {
				return gContainer;
			}
		}
		return goodContainer;
	}

	/**
	 * Returns the given <code>container</code> container if it has <code>containerDef</code> as definition, or null
	 * else.
	 * 
	 * @param containerDef
	 * @param container
	 * @return <code>container</code> if it has <code>containerDef</code> as definition, or null else.
	 */
	public static GContainer getContainerFromDefinition(GContainerDef containerDef, GContainer container) {
		GContainer goodContainer = null;
		if (container.gGetDefinition().equals(containerDef)) {
			return container;
		}

		// iterate sub containers
		for (GContainer subContainer : container.gGetSubContainers()) {
			GContainer gContainer = getContainerFromDefinition(containerDef, subContainer);
			if (gContainer != null) {
				goodContainer = gContainer;
				break;
			}
		}
		return goodContainer;
	}

	/**
	 * Returns the {@linkplain EStructuralFeature structural feature} of the specified {@link EClass ownerEClass} whom
	 * type if the given {@link EClass childEClass}. This method only considers <em>containment</em> relation between
	 * these two types.
	 * 
	 * @param ownerEClass
	 *            The parent {@link EClass}.
	 * @param childEClass
	 *            The child {@link EClass}.
	 * @return The containment feature that links the two given {@linkplain EClass EClasses}.
	 */
	public static EStructuralFeature getEStructuralFeature(EClass ownerEClass, EClass childEClass) {
		EStructuralFeature feature = null;
		for (EStructuralFeature ownerFeature : ownerEClass.getEAllContainments()) {
			if (isReferenceTypeSubTypeOf(childEClass, ownerFeature.getEType())) {
				feature = ownerFeature;
			}
		}
		return feature;
	}

	/**
	 * Returns true if the given type is a subType of an other type, false else.
	 * 
	 * @param referenceType
	 * @param type
	 * @return
	 */
	public static boolean isReferenceTypeSubTypeOf(EClassifier referenceType, EClassifier type) {
		Assert.isLegal(referenceType instanceof EClass);
		Assert.isLegal(type instanceof EClass);

		if (referenceType == type) {
			return true;
		}

		for (EClass superType : ((EClass) referenceType).getESuperTypes()) {
			if (superType == type) {
				return true;
			}

			if (isReferenceTypeSubTypeOf(superType, type)) {
				return true;
			}
		}

		return false;
	}

	/**
	 * For checking a particular property exist for an object
	 * 
	 * @param object
	 *            the object
	 * @param propertyId
	 *            the property to be checked
	 * @return true if the property exist else false
	 */
	// TODO Rename exists
	public static boolean isPropertyExist(GARObject object, String propertyId) {
		if (object != null && EObjectUtil.getEStructuralFeature(object, propertyId) != null) {
			return true;
		}
		return false;
	}

	/**
	 * Create new model extension
	 * 
	 * @param object
	 *            Object in model to be added
	 * @param extensionKey
	 *            Key of extension
	 * @param extensionValue
	 *            Value of extension
	 */
	public static void createModelExtension(final EObject object, final String extensionKey, final Object extensionValue) {
		Assert.isNotNull(object);
		Assert.isNotNull(extensionKey);

		TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(object);
		if (editingDomain != null) {
			try {
				Runnable runnable = new Runnable() {
					public void run() {
						try {
							// Put extension object on given GIdentifiable or AUTOSAR element
							@SuppressWarnings("unchecked")
							Map<String, Object> extensions = (Map<String, Object>) ReflectUtil.invokeMethod(object, GET_EXTENSIONS_OPERATION_NAME);
							if (extensions != null) {
								extensions.put(extensionKey, extensionValue);
							}
						} catch (Exception ex) {
							// Ignore exception
						}
					}
				};
				WorkspaceTransactionUtil.executeInWriteTransaction(editingDomain, runnable, "Creating Model Extension"); //$NON-NLS-1$
			} catch (ExecutionException ex) {
				PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
			}
		}
	}
}
