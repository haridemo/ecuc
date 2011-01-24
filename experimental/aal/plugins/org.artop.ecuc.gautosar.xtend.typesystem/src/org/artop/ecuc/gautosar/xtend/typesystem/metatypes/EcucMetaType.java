package org.artop.ecuc.gautosar.xtend.typesystem.metatypes;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.xtend.typesystem.Feature;
import org.eclipse.xtend.typesystem.Type;

public interface EcucMetaType extends Type {

	String META_NAMESPACE = "AR"; //$NON-NLS-1$
	String TYPE_NAME_SEGMENT_SEPARATOR = "::"; //$NON-NLS-1$

	String getNamespace();

	String getSimpleName();

	EcucContext getContext();

	void addFeature(Feature feature);
}