package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.factory;

import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GFunctionNameDef;
import gautosar.gecucparameterdef.GIntegerParamDef;
import gautosar.gecucparameterdef.GLinkerSymbolDef;
import gautosar.gecucparameterdef.GStringParamDef;

import java.util.Map;

import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichAddInfoParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichBooleanParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichEnumerationParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichFloatParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichFunctionNameDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichIntegerParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichLinkerSymbolDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichMultilineStringParamDef40Type;
import org.artop.ecuc.autosar40.xtend.typesystem.richtypes.RichStringParamDef40Type;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFunctionNameDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichLinkerSymbolDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichStringParamDefType;
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
			configParameterType = new RichMultilineStringParamDef40Type(context, (EcucMultilineStringParamDef) parameter);
		} else if (parameter instanceof EcucAddInfoParamDef) {
			configParameterType = new RichAddInfoParamDef40Type(context, parameter);
		} else {
			configParameterType = super.createConfigParameterType(parameter);
		}
		return configParameterType;
	}

	@Override
	protected RichIntegerParamDefType createRichIntegerParamDefType(GConfigParameter parameter) {
		return new RichIntegerParamDef40Type(context, (GIntegerParamDef) parameter);
	}

	@Override
	protected RichFloatParamDefType createRichFloatParamDefType(GConfigParameter parameter) {
		return new RichFloatParamDef40Type(context, (GFloatParamDef) parameter);
	}

	@Override
	protected RichBooleanParamDefType createRichBooleanParamDefType(GConfigParameter parameter) {
		return new RichBooleanParamDef40Type(context, (GBooleanParamDef) parameter);
	}

	@Override
	protected RichStringParamDefType createRichStringParamDefType(GConfigParameter parameter) {
		return new RichStringParamDef40Type(context, (GStringParamDef) parameter);
	}

	@Override
	protected RichLinkerSymbolDefType createRichLinkerSymbolDefType(GConfigParameter parameter) {
		return new RichLinkerSymbolDef40Type(context, (GLinkerSymbolDef) parameter);
	}

	@Override
	protected RichFunctionNameDefType createRichFunctionNameDefType(GConfigParameter parameter) {
		return new RichFunctionNameDef40Type(context, (GFunctionNameDef) parameter);
	}

	@Override
	protected RichEnumerationParamDefType createEnumerationParamDefType(GEnumerationParamDef parameterDef) {
		return new RichEnumerationParamDef40Type(context, parameterDef);
	}
}
