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
package org.artop.ecuc.gautosar.xtend.typesystem;

import java.util.HashSet;
import java.util.Set;

import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.xtend.expression.TypeSystem;
import org.eclipse.xtend.expression.TypeSystemImpl;

public class EcucContext {

	private TypeSystem typeSystem;
	private IModelDescriptor moduleDefModelDescriptor;
	private EcucMetaModel metaModel;
	private Set<String> namespaces;

	public TypeSystem getTypeSystem() {
		if (typeSystem == null) {
			typeSystem = new TypeSystemImpl();
			if (metaModel != null) {
				((TypeSystemImpl) typeSystem).getMetaModels().add(metaModel);
			}
		}
		return typeSystem;
	}

	public void setTypeSystem(TypeSystem typeSystem) {
		this.typeSystem = typeSystem;
	}

	public IModelDescriptor getModuleDefModelDescriptor() {
		return moduleDefModelDescriptor;
	}

	public void setModuleDefModelDescriptor(IModelDescriptor moduleDefModelDescriptor) {
		this.moduleDefModelDescriptor = moduleDefModelDescriptor;
	}

	public EcucMetaModel getMetaModel() {
		return metaModel;
	}

	public void setMetamodel(EcucMetaModel metaModel) {
		this.metaModel = metaModel;
	}

	public Set<String> getNamespaces() {
		if (namespaces == null) {
			namespaces = new HashSet<String>();
		}
		return namespaces;
	}
}
