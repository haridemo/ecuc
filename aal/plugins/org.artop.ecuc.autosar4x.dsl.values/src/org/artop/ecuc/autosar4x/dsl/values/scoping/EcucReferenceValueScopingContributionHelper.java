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

import java.util.List;

import org.artop.ecuc.autosar4x.dsl.values.referencesapi.IEcucReferenceValueScopeContribution;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtext.scoping.IScope;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;

/**
 * Helper Class for the Scoping of Ecuc(Instance)RefValues Uses the IEcucReferenceValueScopeContribution provided via
 * Extension point
 *
 * @author Christian Dietrich
 */
public class EcucReferenceValueScopingContributionHelper {

	public IScope getScope(EcucAbstractReferenceDef refDef, EReference ref, Resource ctx) {
		IConfigurationElement[] cfgs = Platform.getExtensionRegistry().getConfigurationElementsFor(
				IEcucReferenceValueScopeContribution.CONTRIBUTION_ID);
		IScope result = IScope.NULLSCOPE;

		for (IConfigurationElement cfg : cfgs) {
			if ("scopeContribution".equals(cfg.getName())) {
				try {

					Object o = cfg.createExecutableExtension("class");
					if (o instanceof IEcucReferenceValueScopeContribution) {
						IEcucReferenceValueScopeContribution contrib = (IEcucReferenceValueScopeContribution) o;
						IScope s = contrib.getScope(refDef, ref, ctx);
						result = new DelegateScope(result, s);
					}
				} catch (CoreException e) {
					// TODO
					e.printStackTrace();
				}
			}
		}

		return result;
	}

	public IScope getContextScope(EcucAbstractReferenceDef refDef, EReference ref, Resource ctx, List<EObject> prev) {
		IConfigurationElement[] cfgs = Platform.getExtensionRegistry().getConfigurationElementsFor(
				IEcucReferenceValueScopeContribution.CONTRIBUTION_ID);
		IScope result = IScope.NULLSCOPE;

		for (IConfigurationElement cfg : cfgs) {
			if ("scopeContribution".equals(cfg.getName())) {
				try {

					Object o = cfg.createExecutableExtension("class");
					if (o instanceof IEcucReferenceValueScopeContribution) {
						IEcucReferenceValueScopeContribution contrib = (IEcucReferenceValueScopeContribution) o;
						IScope s = contrib.getContextScope(refDef, ref, ctx, prev);
						result = new DelegateScope(result, s);
					}
				} catch (CoreException e) {
					// TODO
					e.printStackTrace();
				}
			}
		}

		return result;
	}

}
