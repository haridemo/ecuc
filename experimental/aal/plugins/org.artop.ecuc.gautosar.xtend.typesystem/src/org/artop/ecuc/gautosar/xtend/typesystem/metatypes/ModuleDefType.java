package org.artop.ecuc.gautosar.xtend.typesystem.metatypes;

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;

import java.util.Collections;
import java.util.Set;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Type;

public class ModuleDefType extends AbstractEcucMetaType {

	public final static String TYPE_NAME = META_NAMESPACE + "::ModuleDefType"; //$NON-NLS-1$

	public ModuleDefType(final EcucContext context) {
		this(context, TYPE_NAME);
	}

	private ModuleDefType(EcucContext context, String typeName) {
		super(context, typeName);
		createMetaFeatures();
	}

	private void createMetaFeatures() {
		addFeature(new PropertyImpl(this, "unresolvedDefinition", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GModuleConfiguration) {
					GModuleDef moduleDef = ((GModuleConfiguration) target).gGetDefinition();
					if (moduleDef.eIsProxy()) {
						return AutosarURIFactory.getAbsoluteQualifiedName(moduleDef);
					}
				}
				return null;
			}
		});
	}

	public boolean isInstance(Object target) {
		return target instanceof GModuleConfiguration;
	}

	@Override
	public boolean isAbstract() {
		return true;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ContainerDefType.TYPE_NAME));
	}
}
