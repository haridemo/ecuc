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
	public boolean isAbstract() {
		return false;
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();

		addFeature(new PropertyImpl(this, "vendorId", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation bswImplementation = ecucModuleConfigurationValues.getModuleDescription();
					if (bswImplementation != null) {
						return bswImplementation.getVendorId();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "vendorApiInfix", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation bswImplementation = ecucModuleConfigurationValues.getModuleDescription();
					if (bswImplementation != null) {
						return bswImplementation.getVendorApiInfix();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "swVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation moduleDescription = ecucModuleConfigurationValues.getModuleDescription();
					if (moduleDescription != null) {
						return moduleDescription.getSwVersion();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "swMajorVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation moduleDescription = ecucModuleConfigurationValues.getModuleDescription();
					if (moduleDescription != null) {
						String swVersion = moduleDescription.getSwVersion();
						if (swVersion != null && swVersion.length() > 0) {
							String[] split = swVersion.split("\\."); //$NON-NLS-1$
							if (split.length > 0) {
								return split[0].trim();
							}
						}
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "swMinorVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation moduleDescription = ecucModuleConfigurationValues.getModuleDescription();
					if (moduleDescription != null) {
						String swVersion = moduleDescription.getSwVersion();
						if (swVersion != null && swVersion.length() > 0) {
							String[] split = swVersion.split("\\."); //$NON-NLS-1$
							if (split.length > 1) {
								return split[1];
							}
						}
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "swPatchVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation moduleDescription = ecucModuleConfigurationValues.getModuleDescription();
					if (moduleDescription != null) {
						String swVersion = moduleDescription.getSwVersion();
						if (swVersion != null && swVersion.length() > 0) {
							String[] split = swVersion.split("\\."); //$NON-NLS-1$
							if (split.length > 2) {
								return split[2];
							}
						}
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "arReleaseVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation moduleDescription = ecucModuleConfigurationValues.getModuleDescription();
					if (moduleDescription != null) {
						return moduleDescription.getArReleaseVersion();
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "arReleaseMajorVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation moduleDescription = ecucModuleConfigurationValues.getModuleDescription();
					if (moduleDescription != null) {
						String arReleaseVersion = moduleDescription.getArReleaseVersion();
						if (arReleaseVersion != null && arReleaseVersion.length() > 0) {
							String[] split = arReleaseVersion.split("\\."); //$NON-NLS-1$
							if (split.length > 0) {
								return split[0].trim();
							}
						}
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "arReleaseMinorVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation moduleDescription = ecucModuleConfigurationValues.getModuleDescription();
					if (moduleDescription != null) {
						String arReleaseVersion = moduleDescription.getArReleaseVersion();
						if (arReleaseVersion != null && arReleaseVersion.length() > 0) {
							String[] split = arReleaseVersion.split("\\."); //$NON-NLS-1$
							if (split.length > 1) {
								return split[1];
							}
						}
					}
				}
				return ""; //$NON-NLS-1$
			}
		});

		addFeature(new PropertyImpl(this, "arReleasePatchVersion", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcucModuleConfigurationValues) {
					EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues) target;
					BswImplementation moduleDescription = ecucModuleConfigurationValues.getModuleDescription();
					if (moduleDescription != null) {
						String arReleaseVersion = moduleDescription.getArReleaseVersion();
						if (arReleaseVersion != null && arReleaseVersion.length() > 0) {
							String[] split = arReleaseVersion.split("\\."); //$NON-NLS-1$
							if (split.length > 2) {
								return split[2];
							}
						}
					}
				}
				return ""; //$NON-NLS-1$
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
