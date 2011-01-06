package org.artop.ecuc.gautosar.xtend.typesystem.metatypes;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.xtend.typesystem.Type;

public class ConfigReferenceType extends AbstractEcucMetaType {

	public final static String TYPE_NAME = META_NAMESPACE + "::ConfigReferenceType"; //$NON-NLS-1$

	public ConfigReferenceType(final EcucContext context) {
		this(context, TYPE_NAME);
	}

	private ConfigReferenceType(EcucContext context, String typeName) {
		super(context, typeName);
	}

	public boolean isInstance(Object o) {
		return false;
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
