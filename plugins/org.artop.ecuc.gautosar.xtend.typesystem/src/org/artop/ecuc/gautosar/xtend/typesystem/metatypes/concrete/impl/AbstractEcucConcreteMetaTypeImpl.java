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
package org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.impl;

import org.artop.aal.gautosar.services.DefaultMetaModelServiceProvider;
import org.artop.aal.gautosar.services.factories.IGAutosarFactoryService;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.EcucConcreteMetaType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.AbstractEcucMetaTypeImpl;
import org.eclipse.sphinx.emf.model.IModelDescriptor;

public abstract class AbstractEcucConcreteMetaTypeImpl extends AbstractEcucMetaTypeImpl implements EcucConcreteMetaType {

	public AbstractEcucConcreteMetaTypeImpl(EcucContext context, String name) {
		super(context, name);
	}

	@Override
	public boolean isAbstract() {
		return false;
	}

	@Override
	public Object newInstance() {
		IGAutosarFactoryService factory = getAutosarFactoryService();
		if (factory != null) {
			return factory.create(getEcucType());
		}
		return null;
	}

	protected IGAutosarFactoryService getAutosarFactoryService() {
		EcucContext context = getContext();
		if (context != null) {
			IModelDescriptor modelDescriptor = context.getModuleDefModelDescriptor();
			if (modelDescriptor != null) {
				return new DefaultMetaModelServiceProvider().getService(modelDescriptor.getMetaModelDescriptor(), IGAutosarFactoryService.class);
			}
		}
		return null;
	}
}
