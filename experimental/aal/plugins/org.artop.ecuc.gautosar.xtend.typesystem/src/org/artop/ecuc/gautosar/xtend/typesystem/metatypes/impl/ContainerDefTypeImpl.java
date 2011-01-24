package org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ContainerDefType;
import org.eclipse.xtend.typesystem.Type;

public class ContainerDefTypeImpl extends AbstractEcucMetaTypeImpl implements ContainerDefType {

	public ContainerDefTypeImpl(final EcucContext context) {
		this(context, ContainerDefType.TYPE_NAME);
	}

	protected ContainerDefTypeImpl(EcucContext context, String typeName) {
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
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ARObjectType.TYPE_NAME));
	}
}
