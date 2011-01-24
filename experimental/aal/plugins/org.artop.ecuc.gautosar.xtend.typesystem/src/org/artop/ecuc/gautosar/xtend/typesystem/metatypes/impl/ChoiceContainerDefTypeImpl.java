package org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ContainerDefType;
import org.eclipse.xtend.typesystem.Type;

public class ChoiceContainerDefTypeImpl extends ContainerDefTypeImpl implements ChoiceContainerDefType {

	public ChoiceContainerDefTypeImpl(final EcucContext context) {
		this(context, ChoiceContainerDefType.TYPE_NAME);
	}

	private ChoiceContainerDefTypeImpl(EcucContext context, String typeName) {
		super(context, typeName);
	}

	@Override
	public boolean isAbstract() {
		return true;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ContainerDefType.TYPE_NAME));
	}
}
