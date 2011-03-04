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
package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.factory;

import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GChoiceContainerDef;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GIntegerParamDef;
import gautosar.gecucparameterdef.GModuleDef;

import java.util.Map;

import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl.RichBooleanParamDef40TypeImpl;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl.RichChoiceContainerDef40TypeImpl;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl.RichEnumerationParamDef40TypeImpl;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl.RichFloatParamDef40TypeImpl;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl.RichIntegerParamDef40TypeImpl;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl.RichModuleDef40TypeImpl;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl.RichTextualParamDef40TypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFunctionNameDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichLinkerSymbolDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichStringParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.EcucRichTypeFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.xtend.typesystem.Type;

import autosar40.ecucparameterdef.EcucAddInfoParamDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDef;

public class Ecuc40RichTypeFactory extends EcucRichTypeFactory {

	public Ecuc40RichTypeFactory(EcucContext context, Map<String, Type> types) {
		super(context, types);
	}

	@Override
	protected RichConfigParameterType createConfigParameterType(GConfigParameter parameter) {
		RichConfigParameterType configParameterType = null;
		if (parameter instanceof EcucMultilineStringParamDef) {
			configParameterType = new RichTextualParamDef40TypeImpl(context, parameter);
		} else if (parameter instanceof EcucAddInfoParamDef) {
			// TODO Provide support for RichAddInfoParamDef40Type
			// configParameterType = new RichAddInfoParamDef40Type(context, parameter);
			System.err.println("ConfigParameter type '" + parameter.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		} else {
			configParameterType = super.createConfigParameterType(parameter);
		}
		return configParameterType;
	}

	@Override
	protected IEcucRichTypeHierarchyVisitor createAddChildAccessorFeaturesVisitor() {
		return new AddChildAccessor40FeaturesVisitor();
	}

	@Override
	protected IEcucRichTypeHierarchyVisitor createAddParentAccessorFeaturesVisitor() {
		return new AddParentAccessor40FeaturesVisitor();
	}

	@Override
	protected RichModuleDefType createRichModuleDefType(GModuleDef moduleDef) {

		return new RichModuleDef40TypeImpl(context, moduleDef);
	}

	@Override
	protected RichChoiceContainerDefType createRichChoiceContainerDefType(GContainerDef containerDef) {
		return new RichChoiceContainerDef40TypeImpl(context, (GChoiceContainerDef) containerDef);
	}

	@Override
	protected RichIntegerParamDefType createRichIntegerParamDefType(GConfigParameter parameter) {
		return new RichIntegerParamDef40TypeImpl(context, (GIntegerParamDef) parameter);
	}

	@Override
	protected RichFloatParamDefType createRichFloatParamDefType(GConfigParameter parameter) {
		return new RichFloatParamDef40TypeImpl(context, (GFloatParamDef) parameter);
	}

	@Override
	protected RichBooleanParamDefType createRichBooleanParamDefType(GConfigParameter parameter) {
		return new RichBooleanParamDef40TypeImpl(context, (GBooleanParamDef) parameter);
	}

	@Override
	protected RichStringParamDefType createRichStringParamDefType(GConfigParameter parameter) {
		return new RichTextualParamDef40TypeImpl(context, parameter);
	}

	@Override
	protected RichLinkerSymbolDefType createRichLinkerSymbolDefType(GConfigParameter parameter) {
		return new RichTextualParamDef40TypeImpl(context, parameter);
	}

	@Override
	protected RichFunctionNameDefType createRichFunctionNameDefType(GConfigParameter parameter) {
		return new RichTextualParamDef40TypeImpl(context, parameter);
	}

	@Override
	protected RichEnumerationParamDefType createEnumerationParamDefType(GEnumerationParamDef parameterDef) {
		return new RichEnumerationParamDef40TypeImpl(context, parameterDef);
	}
}
