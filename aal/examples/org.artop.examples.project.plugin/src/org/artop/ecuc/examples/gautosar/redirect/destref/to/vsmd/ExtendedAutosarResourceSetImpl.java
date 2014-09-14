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
package org.artop.ecuc.examples.gautosar.redirect.destref.to.vsmd;

import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GReferenceDef;

import java.util.Iterator;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.common.resource.impl.AutosarResourceSetImpl;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.resource.ScopingResourceSet;
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
			GContainerDef destination = getRefDestination(referenceDef);
			if (proxy == destination) {
				GModuleDef moduleDef = getModuleDef(referenceDef);
				if (isVSMD(moduleDef)) {
					String aqn = AutosarURIFactory.getAbsoluteQualifiedName(proxy);
					String containerName = aqn.substring(aqn.lastIndexOf(AutosarURIFactory.SEGMENT_SEPARATOR) + 1);
					destination = getContainerDef(moduleDef, containerName);
					if (destination != null) {
						return destination;
					}
				}
			}
		}

		return super.getEObject(proxy, contextObject, loadOnDemand);
	}

	private GContainerDef getContainerDef(GModuleDef moduleDef, String containerDefName) {

		GContainerDef result = null;
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

		return result;
	}

	private GContainerDef getRefDestination(GReferenceDef referenceDef) {
		try {
			Object dest = ReflectUtil.getInvisibleFieldValue(referenceDef, "destination");
			if (dest instanceof GContainerDef) {
				return (GContainerDef) dest;
			}
		} catch (NoSuchFieldException ex) {
		} catch (IllegalArgumentException ex) {
		} catch (IllegalAccessException ex) {
		}
		return null;
	}

	private GModuleDef getModuleDef(GReferenceDef referenceDef) {
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
