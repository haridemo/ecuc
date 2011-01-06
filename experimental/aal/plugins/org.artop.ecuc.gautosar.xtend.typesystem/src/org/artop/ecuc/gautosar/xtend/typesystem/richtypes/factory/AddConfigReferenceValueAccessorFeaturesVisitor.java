package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory;

import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigReferenceType;

public class AddConfigReferenceValueAccessorFeaturesVisitor extends DefaultEcucRichTypeHierarchyVisitorImpl {

	@Override
	public void visit(AbstractRichConfigReferenceType target) {
		target.addValueAccessorFeatures();
	}
}
