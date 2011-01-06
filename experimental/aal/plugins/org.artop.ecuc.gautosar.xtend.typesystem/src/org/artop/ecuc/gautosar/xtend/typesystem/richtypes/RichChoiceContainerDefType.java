package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucparameterdef.GChoiceContainerDef;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceContainerDefType;
import org.eclipse.xtend.typesystem.Type;

/**
 * This class is more then a marker class for choice containers, because in property hierarchy for parent and childs,
 * they must be removed. But the behaviour is the same as for RichParamConfContainerType
 */
public class RichChoiceContainerDefType extends AbstractRichContainerDefType {

	public RichChoiceContainerDefType(EcucContext context, GChoiceContainerDef choiceContainerDef) {
		super(context, choiceContainerDef);
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ChoiceContainerDefType.TYPE_NAME));
	}
}
