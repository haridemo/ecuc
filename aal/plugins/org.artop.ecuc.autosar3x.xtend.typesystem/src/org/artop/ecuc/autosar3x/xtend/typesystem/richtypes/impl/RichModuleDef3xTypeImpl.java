/**
 * <copyright>
 * 
 * Copyright (c) See4sys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.autosar3x.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GModuleDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichModuleDefTypeImpl;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Type;

import autosar3x.bswmodule.bswimplementation.BswImplementation;
import autosar3x.ecucdescription.ModuleConfiguration;
import autosar3x.ecucparameterdef.ConfigurationVariant;

public class RichModuleDef3xTypeImpl extends RichModuleDefTypeImpl {

	public RichModuleDef3xTypeImpl(EcucContext context, GModuleDef moduleDef) {
		super(context, moduleDef);
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();
		addFeature(new PropertyImpl(this, "vendorId", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						bswImplementation.getVendorId();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "vendorApiInfix", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						bswImplementation.getVendorApiInfix();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "swVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						Integer swMajorVersion = bswImplementation.getSwMajorVersion();
						Integer swMinorVersion = bswImplementation.getSwMinorVersion();
						Integer swPatchVersion = bswImplementation.getSwPatchVersion();
						return swMajorVersion.toString() + "." + swMinorVersion.toString() + "." + swPatchVersion.toString(); //$NON-NLS-1$ //$NON-NLS-2$
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "swMajorVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						return bswImplementation.getSwMajorVersion().toString();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "swMinorVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						return bswImplementation.getSwMinorVersion().toString();
					}
				}
				return ""; //$NON-NLS-1$
			}

		});
		addFeature(new PropertyImpl(this, "swPatchVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						return bswImplementation.getSwPatchVersion().toString();
					}
				}
				return ""; //$NON-NLS-1$
			}

		});

		addFeature(new PropertyImpl(this, "arReleaseVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						Integer arMajorVersion = bswImplementation.getArMajorVersion();
						Integer arMinorVersion = bswImplementation.getArMinorVersion();
						Integer arPatchVersion = bswImplementation.getArPatchVersion();
						return arMajorVersion.toString() + "." + arMinorVersion.toString() + "." + arPatchVersion.toString(); //$NON-NLS-1$//$NON-NLS-2$
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "arReleaseMajorVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						return bswImplementation.getArMajorVersion().toString();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "arReleaseMinorVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						return bswImplementation.getArMinorVersion().toString();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "arReleasePatchVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof ModuleConfiguration) {
					ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
					BswImplementation bswImplementation = moduleConfiguration.getModuleDescription();
					if (bswImplementation != null) {
						return bswImplementation.getArPatchVersion().toString();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new OperationImpl(this, "isPreCompile", getTypeSystem().getBooleanType(), new Type[0]) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				if (target != null) {
					if (target instanceof ModuleConfiguration) {
						ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
						ConfigurationVariant configVariant = moduleConfiguration.getImplementationConfigVariant();
						if (configVariant != null) {
							return ConfigurationVariant.VARIANT_PRE_COMPILE.equals(configVariant);
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
					if (target instanceof ModuleConfiguration) {
						ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
						ConfigurationVariant configVariant = moduleConfiguration.getImplementationConfigVariant();
						if (configVariant != null) {
							return ConfigurationVariant.VARIANT_LINK_TIME.equals(configVariant);
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
					if (target instanceof ModuleConfiguration) {
						ModuleConfiguration moduleConfiguration = (ModuleConfiguration) target;
						ConfigurationVariant configVariant = moduleConfiguration.getImplementationConfigVariant();
						if (configVariant != null) {
							return ConfigurationVariant.VARIANT_POST_BUILD.equals(configVariant);
						}
					}
				}
				return false;
			}
		});
	}
}
