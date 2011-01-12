package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GContainer;
import gautosar.gecucparameterdef.GContainerDef;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractRichContainerDefType extends AbstractCompositeEcucRichType {

	public AbstractRichContainerDefType(EcucContext context, GContainerDef containerDef) {
		super(context, containerDef);
	}

	@Override
	public boolean isInstance(Object target) {
		/*
		 * <CONTAINER UUID="DCE:c8f7b57b-2986-647e-98f6-4e65a566ef81"> <SHORT-NAME>ComConfig</SHORT-NAME>
		 * <DEFINITION-REF DEST="PARAM-CONF-CONTAINER-DEF">/ARRoot/Com/ComConfig</DEFINITION-REF>
		 */
		if (target instanceof GContainer) {
			GContainerDef containerDef = ((GContainer) target).gGetDefinition();
			if (containerDef == getEcucTypeDef()) {
				return true;
			}
		}
		return false;
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ContainerDefType.TYPE_NAME));
	}

	@Override
	public void accept(IEcucRichTypeHierarchyVisitor visitor) {
		Assert.isNotNull(visitor);

		super.accept(visitor);
		visitor.visit(this);
	}
}