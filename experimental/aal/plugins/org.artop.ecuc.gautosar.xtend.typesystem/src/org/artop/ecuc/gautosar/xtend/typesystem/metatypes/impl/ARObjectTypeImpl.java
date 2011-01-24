package org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;

/**
 * the root base object type, such as EObject the super meta class for all types
 */
public class ARObjectTypeImpl extends AbstractEcucMetaTypeImpl implements ARObjectType {

	public ARObjectTypeImpl(final EcucContext context) {
		this(context, TYPE_NAME);
	}

	private ARObjectTypeImpl(EcucContext context, String typeName) {
		super(context, typeName);
	}

	@Override
	public boolean isAbstract() {
		return true;
	}
}
