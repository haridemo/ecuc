package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory;

import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigReferenceType;

public class AddConfigReferenceValueAccessorFeaturesVisitor implements IEcucRichTypeHierarchyVisitor {

	public void visit(CompositeEcucRichType target) {
		if (target instanceof RichConfigReferenceType) {
			((RichConfigReferenceType) target).addValueAccessorFeatures();
		}
	}
}
