package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import java.util.List;

/**
 * this is only a marker interface to better support building of the type hierarchy.
 */
public interface ICompositeEcucRichType extends IEcucRichType {

	void addChildType(ICompositeEcucRichType childType);

	List<ICompositeEcucRichType> getChildTypes();

	ICompositeEcucRichType getParentType();

	void setParentType(ICompositeEcucRichType parentType);
}
