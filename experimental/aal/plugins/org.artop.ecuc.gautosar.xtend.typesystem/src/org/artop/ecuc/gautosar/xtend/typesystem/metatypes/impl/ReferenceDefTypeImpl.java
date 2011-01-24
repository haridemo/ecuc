package org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ReferenceDefType;
import org.eclipse.xtend.typesystem.Type;

public class ReferenceDefTypeImpl extends ConfigReferenceTypeImpl implements ReferenceDefType {

	public ReferenceDefTypeImpl(final EcucContext context) {
		this(context, ReferenceDefType.TYPE_NAME);
	}

	private ReferenceDefTypeImpl(EcucContext context, String typeName) {
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
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ConfigReferenceType.TYPE_NAME));
	}
}
