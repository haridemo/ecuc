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
package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GChoiceContainerDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichChoiceContainerDefTypeImpl;
import org.eclipse.core.runtime.Assert;

public class RichChoiceContainerDef40TypeImpl extends RichChoiceContainerDefTypeImpl implements RichChoiceContainerDefType {

	public RichChoiceContainerDef40TypeImpl(EcucContext context, GChoiceContainerDef choiceContainerDef) {
		super(context, choiceContainerDef);
	}

	@Override
	public boolean isMany(CompositeEcucRichType compositeType) {
		Assert.isNotNull(compositeType);

		GIdentifiable typeDef;
		typeDef = compositeType.getEcucTypeDef();

		if (typeDef instanceof GParamConfMultiplicity) {
			GParamConfMultiplicity multiplicity = (GParamConfMultiplicity) typeDef;
			if (multiplicity.gGetUpperMultiplicityInfinite()) {
				return true;
			} else {
				String upperMultiplicity = multiplicity.gGetUpperMultiplicityAsString();
				return upperMultiplicity != null && upperMultiplicity.length() > 0 && !"1".equals(upperMultiplicity); //$NON-NLS-1$
			}
		}

		return false;
	}
}
