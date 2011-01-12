package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.xtend.typesystem.Type;

public class RichModuleDefType extends AbstractCompositeEcucRichType {

	public RichModuleDefType(EcucContext context, GModuleDef moduleDef) {
		super(context, moduleDef);
	}

	@Override
	public boolean isInstance(Object target) {
		// model must be named MODULE-CONFIGURATION
		// and must contain an REF to this definition
		/*
		 * <MODULE-CONFIGURATION UUID="DCE:412708e8-6c0f-6b7b-b2ad-368a38ec4552"> <SHORT-NAME>GeensysCom</SHORT-NAME>
		 * <LONG-NAME> <L-4 L="FOR-ALL">GeensysCom</L-4> </LONG-NAME> <DEFINITION-REF
		 * DEST="MODULE-DEF">/ARRoot/Com</DEFINITION-REF>
		 */
		if (target instanceof GModuleConfiguration) {
			GModuleDef moduleDef = ((GModuleConfiguration) target).gGetDefinition();
			if (moduleDef == getEcucTypeDef()) {
				return true;
			}
		}
		return false;
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ModuleDefType.TYPE_NAME));
	}

	@Override
	public void accept(IEcucRichTypeHierarchyVisitor visitor) {
		Assert.isNotNull(visitor);

		super.accept(visitor);
		visitor.visit(this);
	}

	@Override
	public void setParentType(ICompositeEcucRichType parentType) {
		throw new UnsupportedOperationException();
	}
}