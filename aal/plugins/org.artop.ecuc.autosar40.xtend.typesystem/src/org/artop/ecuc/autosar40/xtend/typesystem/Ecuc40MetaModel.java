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
package org.artop.ecuc.autosar40.xtend.typesystem;

import org.artop.ecuc.autosar40.xtend.typesystem.metatypes.concrete.impl.EcucDefinitionCollectionTypeImpl;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.factory.Ecuc40RichTypeFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IRichTypeFactory;

public class Ecuc40MetaModel extends EcucMetaModel {

	public Ecuc40MetaModel(EcucContext context) {
		super(context);
	}

	@Override
	protected IRichTypeFactory createRichTypeFactory() {
		return new Ecuc40RichTypeFactory(context, types);
	}

	@Override
	protected void createMetaTypes() {
		super.createMetaTypes();
		// Create EcucDefinitionCollectionType meta type and register it; order does matter!
		registerType(new EcucDefinitionCollectionTypeImpl(context));
	}
}
