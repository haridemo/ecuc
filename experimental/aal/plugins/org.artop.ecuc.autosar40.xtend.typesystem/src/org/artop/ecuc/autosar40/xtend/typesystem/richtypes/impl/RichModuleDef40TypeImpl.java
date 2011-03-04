package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GModuleDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichModuleDefTypeImpl;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Type;

import autosar40.bswmodule.bswimplementation.BswImplementation;
import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucparameterdef.EcucConfigurationVariantEnum;

public class RichModuleDef40TypeImpl extends RichModuleDefTypeImpl {

	public RichModuleDef40TypeImpl(EcucContext context, GModuleDef moduleDef) {
		super(context, moduleDef);
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();
		addFeature(new PropertyImpl(this, "swVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation moduleDescription = ecucModuleConfigurationValues.getModuleDescription();
					if (moduleDescription != null) {
						return moduleDescription.getSwVersion();
					}
				}
				return "";
			}

		});
		addFeature(new OperationImpl(this, "isPreCompile", getTypeSystem().getBooleanType(), new Type[0]) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				if (target != null) {
					if (target instanceof EcucModuleConfigurationValues) {
						EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
						EcucConfigurationVariantEnum implementationConfigVariant = ecucModuleConfigurationValues.getImplementationConfigVariant();
						if (implementationConfigVariant != null) {
							return EcucConfigurationVariantEnum.VARIANT_PRE_COMPILE.equals(implementationConfigVariant);
						}
					}
				}
				return false;
			}
		});
		addFeature(new OperationImpl(this, "isLinkTime", getTypeSystem().getBooleanType(), new Type[0]) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				if (target != null) {
					if (target instanceof EcucModuleConfigurationValues) {
						EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
						EcucConfigurationVariantEnum implementationConfigVariant = ecucModuleConfigurationValues.getImplementationConfigVariant();
						if (implementationConfigVariant != null) {
							return EcucConfigurationVariantEnum.VARIANT_LINK_TIME.equals(implementationConfigVariant);
						}
					}
				}
				return false;
			}
		});
		addFeature(new OperationImpl(this, "isPostBuild", getTypeSystem().getBooleanType(), new Type[0]) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				if (target != null) {
					if (target instanceof EcucModuleConfigurationValues) {
						EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
						EcucConfigurationVariantEnum implementationConfigVariant = ecucModuleConfigurationValues.getImplementationConfigVariant();
						if (implementationConfigVariant != null) {
							return EcucConfigurationVariantEnum.VARIANT_POST_BUILD.equals(implementationConfigVariant);
						}
					}
				}
				return false;
			}
		});

	}

}
