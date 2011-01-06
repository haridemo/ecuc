package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory;

import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractCompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.ICompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;

public class AddParentAccessorFeaturesVisitor extends DefaultEcucRichTypeHierarchyVisitorImpl {

	@Override
	public void visit(AbstractCompositeEcucRichType target) {
		ICompositeEcucRichType parentType = target.getParentType();
		if (parentType instanceof RichChoiceContainerDefType) {
			// choice container are removed from the properties hierarchy
			parentType = ((RichChoiceContainerDefType) parentType).getParentType();
		}
		target.addParentAccessorFeatures(parentType);
	}
}
