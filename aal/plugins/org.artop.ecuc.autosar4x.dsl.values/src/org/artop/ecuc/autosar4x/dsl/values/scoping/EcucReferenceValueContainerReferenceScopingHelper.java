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
package org.artop.ecuc.autosar4x.dsl.values.scoping;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.artop.ecuc.autosar4x.dsl.values.naming.AutosarQualifiedNameProvider;
import org.eclipse.xtext.naming.QualifiedName;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucChoiceContainerDef;
import autosar40.ecucparameterdef.EcucChoiceReferenceDef;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucReferenceDef;

/**
 * Helper Class for Scoping of EcucReference Values. Calculates possible Container Types based on the Reference Def
 *
 * @author Christian Dietrich
 */
public class EcucReferenceValueContainerReferenceScopingHelper {

	@Inject
	private AutosarQualifiedNameProvider artopQualifiedNameProvider;

	public List<QualifiedName> getPossibleContainerDefNames(EcucAbstractReferenceDef refDef) {
		List<QualifiedName> containers = new ArrayList<QualifiedName>();
		if (refDef instanceof EcucReferenceDef) {
			EcucContainerDef destination = ((EcucReferenceDef) refDef).getDestination();
			if (destination instanceof EcucChoiceContainerDef) {
				for (EcucParamConfContainerDef c : ((EcucChoiceContainerDef) destination).getChoices()) {
					containers.add(artopQualifiedNameProvider.getFullyQualifiedName(c));
				}
			} else if (destination instanceof EcucParamConfContainerDef) {
				containers.add(artopQualifiedNameProvider.getFullyQualifiedName(destination));
			}
		} else if (refDef instanceof EcucChoiceReferenceDef) {
			EcucChoiceReferenceDef choice = (EcucChoiceReferenceDef) refDef;
			for (EcucContainerDef destination : choice.getDestinations()) {
				if (destination instanceof EcucChoiceContainerDef) {
					for (EcucParamConfContainerDef c : ((EcucChoiceContainerDef) destination).getChoices()) {
						containers.add(artopQualifiedNameProvider.getFullyQualifiedName(c));
					}
				} else if (destination instanceof EcucParamConfContainerDef) {
					containers.add(artopQualifiedNameProvider.getFullyQualifiedName(destination));
				}
			}
		}
		return containers;
	}
}