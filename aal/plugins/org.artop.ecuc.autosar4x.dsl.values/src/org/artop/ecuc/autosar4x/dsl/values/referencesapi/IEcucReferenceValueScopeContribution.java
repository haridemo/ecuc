/**
 * <copyright>
 *
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     itemis - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.autosar4x.dsl.values.referencesapi;

import java.util.List;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtext.scoping.IScope;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;

/**
 * An IEcucReferenceValueScopeContribution can provided Additional Elements to the Ecuc(Instance)RefValue Scoping
 *
 * @author Christian Dietrich
 */
public interface IEcucReferenceValueScopeContribution {

	String CONTRIBUTION_ID = "org.artop.ecuc.autosar4x.dsl.values.ecucReferenceValueContribution";

	/**
	 * Calculates the Scope that is provided by this contribution
	 *
	 * @param refDef
	 *            the definition of the reference
	 * @param ref
	 *            the ereference in the Xtext Model to be scoped
	 * @param ctx
	 *            the resource in whose context the scoping is done. may be one of
	 *            <ul>
	 *            <li>{@link EcucValuesDslPackage.Literals.REFERENCE_VALUE__CONTAINER}</li>
	 *            <li>{@link EcucValuesDslPackage.Literals.CONTEXT__OBJECT}</li>
	 *            <li>{@link EcucValuesDslPackage.Literals.INSTANCE_REFERENCE_VALUE__TARGET}</li>
	 *            </ul>
	 * @param prev
	 *            previously scoped elements in the context chain
	 * @return
	 */
	IScope getContextScope(EcucAbstractReferenceDef refDef, EReference ref, Resource ctx, List<EObject> prev);

	/**
	 * Calculates the Scope that is provided by this contribution
	 *
	 * @param refDef
	 *            the definition of the reference
	 * @param ref
	 *            the ereference in the Xtext Model to be scoped
	 * @param ctx
	 *            the resource in whose context the scoping is done. may be one of
	 *            <ul>
	 *            <li>{@link EcucValuesDslPackage.Literals.REFERENCE_VALUE__CONTAINER}</li>
	 *            <li>{@link EcucValuesDslPackage.Literals.CONTEXT__OBJECT}</li>
	 *            <li>{@link EcucValuesDslPackage.Literals.INSTANCE_REFERENCE_VALUE__TARGET}</li>
	 *            </ul>
	 * @param prev
	 *            the previous context elements
	 * @return
	 */
	IScope getScope(EcucAbstractReferenceDef refDef, EReference ref, Resource ctx);

}
