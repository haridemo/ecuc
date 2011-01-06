package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.gecucparameterdef.GReferenceDef;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ReferenceDefType;
import org.eclipse.xtend.typesystem.Type;

public class RichReferenceDefType extends AbstractRichConfigReferenceType {

	public RichReferenceDefType(EcucContext context, GReferenceDef referenceDef, GParamConfContainerDef valueTypeDef) {
		super(context, referenceDef, valueTypeDef);
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ReferenceDefType.TYPE_NAME));
	}
}
