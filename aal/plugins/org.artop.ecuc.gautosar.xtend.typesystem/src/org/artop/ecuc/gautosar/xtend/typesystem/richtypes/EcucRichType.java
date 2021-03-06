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
package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.EcucMetaType;
import org.eclipse.emf.ecore.EClass;

public interface EcucRichType extends EcucMetaType {

	GIdentifiable getEcucTypeDef();

	EClass getEcucType();
}
