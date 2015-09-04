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
package org.artop.ecuc.autosar4x.dsl.values.naming;

import javax.inject.Inject;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.naming.IQualifiedNameConverter;
import org.eclipse.xtext.naming.IQualifiedNameProvider.AbstractImpl;
import org.eclipse.xtext.naming.QualifiedName;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;

/**
 * Provides Qualifed Names for AUTOSAR/Artop Elements
 *
 * @author Christian Dietrich
 */
public class AutosarQualifiedNameProvider extends AbstractImpl {

	@Inject
	private IQualifiedNameConverter qualifiedNameConverter;

	@Override
	public QualifiedName getFullyQualifiedName(EObject obj) {
		if (obj instanceof Identifiable) {
			QualifiedName fqn = qualifiedNameConverter.toQualifiedName(((Identifiable) obj).getShortName());
			EObject o = obj.eContainer();
			while (o instanceof Identifiable) {
				fqn = qualifiedNameConverter.toQualifiedName(((Identifiable) o).getShortName()).append(fqn);
				o = o.eContainer();
			}
			return fqn;
		}
		return null;
	}

}
