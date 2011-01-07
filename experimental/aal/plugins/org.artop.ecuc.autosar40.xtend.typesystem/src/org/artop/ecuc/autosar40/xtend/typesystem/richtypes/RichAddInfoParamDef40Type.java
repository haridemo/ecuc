package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GFloatValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GConfigParameter;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigParameterType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

public class RichAddInfoParamDef40Type extends AbstractRichConfigParameterType {

	public RichAddInfoParamDef40Type(EcucContext context, GConfigParameter configParameter) {
		super(context, configParameter);
	}

	@Override
	protected EClass getParameterValueType() {
		// TODO Adapt to AUTOSAR 4.0
		return GecucdescriptionPackage.eINSTANCE.getGFloatValue();
	}

	@Override
	protected Type getValueType() {
		// TODO Adapt to AUTOSAR 4.0
		return getTypeSystem().getRealType();
	}

	@Override
	protected Object internalGet(Object target) {
		// TODO Adapt to AUTOSAR 4.0
		return ((GFloatValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		// TODO Adapt to AUTOSAR 4.0
		((GFloatValue) target).gSetValue((Double) value);
	}
}
