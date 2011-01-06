package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory;

import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractCompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichModuleDefType;

public interface IEcucRichTypeHierarchyVisitor {

	void visit(AbstractCompositeEcucRichType target);

	void visit(RichModuleDefType target);

	void visit(AbstractRichContainerDefType target);

	void visit(AbstractRichConfigParameterType target);

	void visit(AbstractRichConfigReferenceType target);
}
