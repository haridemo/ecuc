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
import org.artop.ecuc.autosar4x.dsl.values.naming.AutosarSimpleNameProvider;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtext.resource.IEObjectDescription;
import org.eclipse.xtext.scoping.IScope;
import org.eclipse.xtext.scoping.Scopes;
import org.eclipse.xtext.scoping.impl.DefaultGlobalScopeProvider;

import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.util.Autosar40ReleaseDescriptor;

import com.google.common.base.Predicate;

public class AutosarGlobalScopeProvider extends DefaultGlobalScopeProvider {

	@Inject
	private AutosarSimpleNameProvider artopSimpleNameProvider;

	@Inject
	private AutosarQualifiedNameProvider artopQualifiedNameProvider;

	@Override
	protected IScope getScope(Resource resource, boolean ignoreCase, EClass type, Predicate<IEObjectDescription> filter) {

		if (IdentifiablePackage.Literals.IDENTIFIABLE.isSuperTypeOf(type)) {
			List<Resource> resources = SphinxHelper.getSphinxResourceSet(resource, Autosar40ReleaseDescriptor.INSTANCE);
			List<EObject> obs = new ArrayList<EObject>();
			for (Resource r : resources) {
				TreeIterator<EObject> allContents = r.getAllContents();

				// TODO einschränken (allContents.prune())
				while (allContents.hasNext()) {
					Notifier n = allContents.next();
					if (n instanceof EObject) {
						EObject next = (EObject) n;
						if (type.isSuperTypeOf(next.eClass())) {
							obs.add(next);
						}
					}

				}
			}

			if (type == EcucparameterdefPackage.Literals.ECUC_MODULE_DEF) {
				IScope scope = Scopes.scopeFor(obs, artopSimpleNameProvider, IScope.NULLSCOPE);
				return scope;
			} else {
				IScope scope = Scopes.scopeFor(obs, artopQualifiedNameProvider, IScope.NULLSCOPE);
				return scope;
			}

		}
		return super.getScope(resource, ignoreCase, type, filter);
	}

}
