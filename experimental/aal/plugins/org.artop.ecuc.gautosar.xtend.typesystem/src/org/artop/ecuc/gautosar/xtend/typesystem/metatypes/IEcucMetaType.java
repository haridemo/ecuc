package org.artop.ecuc.gautosar.xtend.typesystem.metatypes;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.xtend.typesystem.Type;

public interface IEcucMetaType extends Type {

	String getNamespace();

	String getSimpleName();

	EcucContext getContext();
}