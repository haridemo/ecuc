package org.artop.ecuc.gautosar.xtend.typesystem.metatypes;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;

/**
 * the root base object type, such as EObject the super meta class for all types
 */
public class ARObjectType extends AbstractEcucMetaType {

	public final static String TYPE_NAME = META_NAMESPACE + "::ARObjectType"; //$NON-NLS-1$

	public ARObjectType(final EcucContext context) {
		this(context, TYPE_NAME);
	}

	private ARObjectType(EcucContext context, String typeName) {
		super(context, typeName);
	}

	public boolean isInstance(Object o) {
		return false;
	}

	@Override
	public boolean isAbstract() {
		return true;
	}
}
