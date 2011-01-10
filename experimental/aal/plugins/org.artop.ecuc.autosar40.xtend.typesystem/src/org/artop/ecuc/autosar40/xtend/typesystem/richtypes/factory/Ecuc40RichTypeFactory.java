package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.factory;

import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GIntegerParamDef;

import java.util.Map;

import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichBooleanParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichEnumerationParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichFloatParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichIntegerParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichTextualParamDef40Type;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.IRichEnumerationParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.EcucRichTypeFactory;
import org.eclipse.xtend.typesystem.Type;

import autosar40.ecucparameterdef.EcucAddInfoParamDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDef;

public class Ecuc40RichTypeFactory extends EcucRichTypeFactory {

	public Ecuc40RichTypeFactory(EcucContext context, Map<String, Type> types) {
		super(context, types);
	}

	@Override
	protected AbstractRichConfigParameterType createConfigParameterType(GConfigParameter parameter) {
		AbstractRichConfigParameterType configParameterType = null;
		if (parameter instanceof EcucMultilineStringParamDef) {
			configParameterType = new RichTextualParamDef40Type(context, parameter);
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
	protected AbstractRichConfigParameterType createRichIntegerParamDefType(GConfigParameter parameter) {
		return new RichIntegerParamDef40Type(context, (GIntegerParamDef) parameter);
	}

	@Override
	protected AbstractRichConfigParameterType createRichFloatParamDefType(GConfigParameter parameter) {
		return new RichFloatParamDef40Type(context, (GFloatParamDef) parameter);
	}

	@Override
	protected AbstractRichConfigParameterType createRichBooleanParamDefType(GConfigParameter parameter) {
		return new RichBooleanParamDef40Type(context, (GBooleanParamDef) parameter);
	}

	@Override
	protected AbstractRichConfigParameterType createRichStringParamDefType(GConfigParameter parameter) {
		return new RichTextualParamDef40Type(context, parameter);
	}

	@Override
	protected AbstractRichConfigParameterType createRichLinkerSymbolDefType(GConfigParameter parameter) {
		return new RichTextualParamDef40Type(context, parameter);
	}

	@Override
	protected AbstractRichConfigParameterType createRichFunctionNameDefType(GConfigParameter parameter) {
		return new RichTextualParamDef40Type(context, parameter);
	}

	@Override
	protected IRichEnumerationParamDefType createEnumerationParamDefType(GEnumerationParamDef parameterDef) {
		return new RichEnumerationParamDef40Type(context, parameterDef);
	}
}
