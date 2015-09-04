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

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference;
import org.eclipse.emf.ecore.EObject;

import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.genericstructure.abstractstructure.AtpFeature;

/**
 * Contribution to the to-Autosar Transformation of EcucReferenceValues
 *
 * @author Christian Dietrich
 */
public interface IDerivedModelInferrerEcucReferenceValueContribution {

	String CONTRIBUTION_ID = "org.artop.ecuc.autosar4x.dsl.values.ecucReferenceValueContribution";

	/**
	 * transforms a reference in the xtext model to a Reference in the Autosar Model
	 *
	 * @param r
	 *            the Reference in the Xtext Model
	 * @return the reference as EcucReferenceValue
	 */
	public EcucReferenceValue toEcucReferenceValue(Reference r);

	/**
	 * creates an AtpFeature or Proxy for the Target of an Instance Ref
	 *
	 * @param r
	 *            the context/reference to be transformed
	 * @param o
	 *            the to be tranformed reference object
	 * @return the AptFeature (or Proxy) to reference to
	 */
	public AtpFeature toAtpTargetFeature(InstanceReference r, EObject o);

	/**
	 * creates an AtpFeature or Proxy for a Context of an Instance Ref
	 *
	 * @param r
	 *            the context/reference to be transformed
	 * @param o
	 *            the to be tranformed reference object
	 * @param index
	 *            index of the context object
	 * @return the AtpFeature (or Proxy) to reference to
	 */
	public AtpFeature toAtpContextFeature(InstanceReference r, EObject o, int index);

}