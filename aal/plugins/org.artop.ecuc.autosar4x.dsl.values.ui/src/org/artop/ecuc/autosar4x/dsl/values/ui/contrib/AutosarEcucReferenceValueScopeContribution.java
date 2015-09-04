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
package org.artop.ecuc.autosar4x.dsl.values.ui.contrib;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage;
import org.artop.ecuc.autosar4x.dsl.values.naming.AutosarQualifiedNameProvider;
import org.artop.ecuc.autosar4x.dsl.values.referencesapi.IEcucReferenceValueScopeContribution;
import org.artop.ecuc.autosar4x.dsl.values.scoping.EcucReferenceValueContainerReferenceScopingHelper;
import org.artop.ecuc.autosar4x.dsl.values.scoping.SphinxHelper;
import org.artop.ecuc.autosar4x.dsl.values.ui.contrib.EcucInstanceReferenceHelper.State;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtext.naming.QualifiedName;
import org.eclipse.xtext.scoping.IScope;
import org.eclipse.xtext.scoping.Scopes;

import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucForeignReferenceDef;
import autosar40.ecucparameterdef.EcucInstanceReferenceDef;
import autosar40.util.Autosar40Package;
import autosar40.util.Autosar40ReleaseDescriptor;

import com.google.common.base.Function;

public class AutosarEcucReferenceValueScopeContribution implements IEcucReferenceValueScopeContribution {

	@Inject
	private EcucReferenceValueContainerReferenceScopingHelper data;

	@Inject
	private AutosarQualifiedNameProvider artopQualifiedNameProvider;

	@Override
	public IScope getContextScope(EcucAbstractReferenceDef refDef, EReference ref, Resource resource, List<EObject> prev) {
		List<Resource> resources = SphinxHelper.getSphinxResourceSet(resource, Autosar40ReleaseDescriptor.INSTANCE);
		List<EObject> obs = new ArrayList<EObject>();
		try {
			for (Resource r : resources) {
				TreeIterator<EObject> allContents = r.getAllContents();
				if (ref == EcucValuesDslPackage.Literals.CONTEXT__START || ref == EcucValuesDslPackage.Literals.CONTEXT_CHAIN__OBJECT) {
					State state = EcucInstanceReferenceHelper.toState(((EcucInstanceReferenceDef) refDef).getDestinationContext());
					Function<EObject, EClass> mapToAutosar = new Function<EObject, EClass>() {

						@Override
						public EClass apply(EObject input) {
							return input.eClass();
						}
					};
					state = state.consume(prev, mapToAutosar);
					List<EClass> followUps = new ArrayList<EClass>();
					if (state != null) {
						followUps = state.followUps();
					}

					if (followUps.isEmpty()) {
						continue;
					}
					// TODO ist das so richtig ???
					while (allContents.hasNext()) {
						Notifier n = allContents.next();
						if (n instanceof EObject) {
							EObject next = (EObject) n;
							for (EClass eClass : followUps) {
								if (eClass != null && eClass.isInstance(next)) {
									obs.add(next);
								}
							}

						}

					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		IScope scope = Scopes.scopeFor(obs, artopQualifiedNameProvider, IScope.NULLSCOPE);
		return scope;
	}

	@Override
	public IScope getScope(EcucAbstractReferenceDef refDef, EReference ref, Resource resource) {
		List<Resource> resources = SphinxHelper.getSphinxResourceSet(resource, Autosar40ReleaseDescriptor.INSTANCE);
		List<EObject> obs = new ArrayList<EObject>();
		for (Resource r : resources) {
			TreeIterator<EObject> allContents = r.getAllContents();
			if (ref == EcucValuesDslPackage.Literals.INSTANCE_REFERENCE_VALUE__TARGET) {
				// TODO ist das so richtig ???
				EClass result = (EClass) Autosar40Package.eINSTANCE.getExtendedMetaData().getType(
						((EcucInstanceReferenceDef) refDef).getDestinationType());
				EClass eClass = result;
				while (allContents.hasNext()) {
					Notifier n = allContents.next();
					if (n instanceof EObject) {
						EObject next = (EObject) n;
						if (eClass.isInstance(next)) {
							obs.add(next);
						}
					}

				}
			} else if (refDef instanceof EcucForeignReferenceDef) {
				// TODO ist das so richtig ???
				EClass result = (EClass) Autosar40Package.eINSTANCE.getExtendedMetaData().getType(
						((EcucForeignReferenceDef) refDef).getDestinationType());
				EClass eClass = result;
				while (allContents.hasNext()) {
					Notifier n = allContents.next();
					if (n instanceof EObject) {
						EObject next = (EObject) n;
						if (eClass.isInstance(next)) {
							obs.add(next);
						}
					}

				}
			} else {
				List<QualifiedName> containers = data.getPossibleContainerDefNames(refDef);

				while (allContents.hasNext()) {
					Notifier n = allContents.next();
					if (n instanceof EObject) {
						EObject next = (EObject) n;
						if (next instanceof EcucContainerValue) {
							EcucContainerValue v = (EcucContainerValue) next;
							QualifiedName name = artopQualifiedNameProvider.getFullyQualifiedName(v.getDefinition());
							if (containers.contains(name)) {
								obs.add(next);
							}
						}
					}

				}

			}
		}

		IScope scope = Scopes.scopeFor(obs, artopQualifiedNameProvider, IScope.NULLSCOPE);
		return scope;

	}

}
