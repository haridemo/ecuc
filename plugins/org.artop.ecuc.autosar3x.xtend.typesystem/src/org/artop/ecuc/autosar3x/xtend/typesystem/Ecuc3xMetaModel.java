/**
 * <copyright>
 * 
 * Copyright (c) See4sys, itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 *     itemis - API & fixed Bug 1582 https://www.artop.org/bugs/show_bug.cgi?id=1582
 * 
 * </copyright>
 */
package org.artop.ecuc.autosar3x.xtend.typesystem;

import org.artop.ecuc.autosar3x.xtend.typesystem.metatypes.concrete.impl.EcuParameterDefinitionTypeImpl;
import org.artop.ecuc.autosar3x.xtend.typesystem.richtypes.factory.Ecuc3xRichTypeFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IRichTypeFactory;

public class Ecuc3xMetaModel extends EcucMetaModel {

	public Ecuc3xMetaModel(EcucContext context) {
		super(context);
	}

	@Override
	protected IRichTypeFactory createRichTypeFactory() {
		return new Ecuc3xRichTypeFactory(context, types);
	}

	@Override
	protected void createMetaTypes() {
		super.createMetaTypes();
		// Create EcuParameterDefinitionType meta type and register it; order does matter!
		registerType(new EcuParameterDefinitionTypeImpl(context));
	}
}
