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
package org.artop.ecuc.autosar3x.xtend.typesystem.richtypes.factory;

import gautosar.gecucparameterdef.GModuleDef;

import java.util.Map;

import org.artop.ecuc.autosar3x.xtend.typesystem.richtypes.impl.RichModuleDef3xTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.EcucRichTypeFactory;
import org.eclipse.xtend.typesystem.Type;

public class Ecuc3xRichTypeFactory extends EcucRichTypeFactory {

	public Ecuc3xRichTypeFactory(EcucContext context, Map<String, Type> types) {
		super(context, types);
	}

	@Override
	protected RichModuleDefType createRichModuleDefType(GModuleDef moduleDef) {
		return new RichModuleDef3xTypeImpl(context, moduleDef);
	}
}
