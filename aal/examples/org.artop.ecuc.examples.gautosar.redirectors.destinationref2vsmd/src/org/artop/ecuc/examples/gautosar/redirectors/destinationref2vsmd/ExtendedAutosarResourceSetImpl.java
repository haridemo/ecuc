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
package org.artop.ecuc.examples.gautosar.redirectors.destinationref2vsmd;

import gautosar.gecucparameterdef.GChoiceReferenceDef;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GReferenceDef;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.common.resource.impl.AutosarResourceSetImpl;
import org.artop.ecuc.examples.gautosar.redirectors.destinationref2vsmd.internal.Activator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.resource.ScopingResourceSet;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.ReflectUtil;

/**
 * A performance-optimized {@link ScopingResourceSet} implementation for AUTOSAR.
 */
public class ExtendedAutosarResourceSetImpl extends AutosarResourceSetImpl {

	/**
	 * Default constructor.
	 */
	public ExtendedAutosarResourceSetImpl() {

	}

	@Override
	public EObject getEObject(EObject proxy, EObject contextObject, boolean loadOnDemand) {
		if (contextObject instanceof GReferenceDef) {
			GReferenceDef referenceDef = (GReferenceDef) contextObject;
			GContainerDef destination = getDestination(referenceDef);
			if (proxy == destination) {
				EObject resolvedDestination = resolveDestination(proxy, referenceDef);
				if (resolvedDestination != null) {
					return resolvedDestination;
				}
			}
		} else if (contextObject instanceof GChoiceReferenceDef) {
			GChoiceReferenceDef choiceReferenceDef = (GChoiceReferenceDef) contextObject;
			EObject resolvedDestination = resolveDestination(proxy, choiceReferenceDef);
			if (resolvedDestination != null) {
				return resolvedDestination;
			}
		}
		return super.getEObject(proxy, contextObject, loadOnDemand);
	}

	private EObject resolveDestination(EObject proxy, GConfigReference contextReference) {
		GModuleDef moduleDef = getModuleDef(contextReference);
		if (isVSMD(moduleDef)) {
			String aqn = AutosarURIFactory.getAbsoluteQualifiedName(proxy);
			String containerDefName = aqn.substring(aqn.lastIndexOf(AutosarURIFactory.SEGMENT_SEPARATOR) + 1);
			// First search in the scope of the current ModuleDef
			GContainerDef destination = getContainerDef(Collections.singletonList(moduleDef), containerDefName);
			// If the ContainerDef if not found in the current ModuleDef, search in the scope of all
			// ModuleDef(s) and return the first one found
			if (destination == null) {
				List<GModuleDef> allModuleDefs = EObjectUtil.getAllInstancesOf(moduleDef.eResource(), GModuleDef.class, false);
				destination = getContainerDef(allModuleDefs, containerDefName);
			}
			return destination;
		}
		return null;
	}

	private GContainerDef getContainerDef(List<GModuleDef> moduleDefs, String containerDefName) {
		GContainerDef result = null;
		for (GModuleDef moduleDef : moduleDefs) {
			for (Iterator<EObject> iterator = moduleDef.eAllContents(); iterator.hasNext();) {
				EObject type = iterator.next();
				if (type instanceof GContainerDef) {
					GContainerDef containerDef = (GContainerDef) type;
					if (containerDefName.equals(containerDef.gGetShortName())) {
						result = containerDef;
						break;
					}
				}
			}
		}
		return result;
	}

	private GContainerDef getDestination(GReferenceDef referenceDef) {
		try {
			// !!! Do not use gGetRefDestination() to prevent StackOverflow !!!
			return (GContainerDef) ReflectUtil.getInvisibleFieldValue(referenceDef, "destination"); //$NON-NLS-1$
		} catch (Exception ex) {
			PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
		}
		return null;
	}

	private GModuleDef getModuleDef(GConfigReference referenceDef) {
		EObject container = referenceDef.eContainer();
		while (container != null && !(container instanceof GModuleDef)) {
			container = container.eContainer();
		}
		return container instanceof GModuleDef ? (GModuleDef) container : null;
	}

	private boolean isVSMD(GModuleDef moduleDef) {
		return moduleDef != null && moduleDef.gGetRefinedModuleDef() != null;
	}

	@Override
	public EObject getEObject(URI uri, boolean loadOnDemand) {
		return super.getEObject(uri, loadOnDemand);
	}
}
