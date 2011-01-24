package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory;

import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;

public class AddParentAccessorFeaturesVisitor implements IEcucRichTypeHierarchyVisitor {

	public void visit(CompositeEcucRichType target) {
		CompositeEcucRichType parentType = target.getParentType();
		if (parentType instanceof RichChoiceContainerDefType) {
			// choice container are removed from the properties hierarchy
			parentType = ((RichChoiceContainerDefType) parentType).getParentType();
		}
		target.addParentAccessorFeatures(parentType);
	}
}
