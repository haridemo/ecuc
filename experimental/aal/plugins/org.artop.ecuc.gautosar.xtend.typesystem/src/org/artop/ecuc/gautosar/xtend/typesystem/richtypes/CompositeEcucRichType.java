package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import java.util.List;

import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;

/**
 * this is only a marker interface to better support building of the type hierarchy.
 */
public interface CompositeEcucRichType extends EcucRichType {

	void addChildType(CompositeEcucRichType childType);

	List<CompositeEcucRichType> getChildTypes();

	CompositeEcucRichType getParentType();

	void setParentType(CompositeEcucRichType parentType);

	void addChildAccessorFeatures(CompositeEcucRichType childType);

	void addParentAccessorFeatures(CompositeEcucRichType parentType);

	void accept(IEcucRichTypeHierarchyVisitor visitor);
}
