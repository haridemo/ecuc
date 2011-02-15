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
package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl;

import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.ArrayList;
import java.util.List;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractCompositeEcucRichTypeImpl extends AbstractEcucRichTypeImpl implements CompositeEcucRichType {

	private List<CompositeEcucRichType> childTypes = new ArrayList<CompositeEcucRichType>();

	private CompositeEcucRichType parentType = null;

	public AbstractCompositeEcucRichTypeImpl(EcucContext context, GIdentifiable ecucTypeDef) {
		super(context, ecucTypeDef);
	}

	public AbstractCompositeEcucRichTypeImpl(EcucContext context, GIdentifiable ecucTypeDef, String typeNameSuffix) {
		super(context, ecucTypeDef, typeNameSuffix);
	}

	public List<CompositeEcucRichType> getChildTypes() {
		return childTypes;
	}

	public void addChildType(CompositeEcucRichType childType) {
		Assert.isNotNull(childType);

		childTypes.add(childType);
		childType.setParentType(this);
	}

	public CompositeEcucRichType getParentType() {
		return parentType;
	}

	public void setParentType(CompositeEcucRichType parentType) {
		this.parentType = parentType;
	}

	@Override
	protected List<EObject> internalEContents(EObject object) {
		List<EObject> contents = new ArrayList<EObject>();
		if (object instanceof GModuleConfiguration) {
			contents.addAll(((GModuleConfiguration) object).gGetContainers());
		} else if (object instanceof GContainer) {
			contents.addAll(((GContainer) object).gGetSubContainers());
			contents.addAll(((GContainer) object).gGetParameterValues());
			contents.addAll(((GContainer) object).gGetReferenceValues());
		}
		return contents.isEmpty() ? null : contents;
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();
		addFeature(new OperationImpl(this, "exists", getTypeSystem().getBooleanType(), new Type[0]) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				if (target != null) {
					if (isMany(AbstractCompositeEcucRichTypeImpl.this)) {
						List<EObject> contents = internalEContents((EObject) target);
						if (contents != null) {
							for (EObject content : contents) {
								Object typeDef = null;
								if (content instanceof GContainer) {
									typeDef = ((GContainer) content).gGetDefinition();
								} else if (content instanceof GParameterValue) {
									typeDef = ((GParameterValue) content).gGetDefinition();
								} else if (content instanceof GReferenceValue) {
									typeDef = ((GReferenceValue) content).gGetDefinition();
								}
								if (typeDef == AbstractCompositeEcucRichTypeImpl.this.getEcucTypeDef()) {
									return true;
								}
							}
						}
					} else {
						return true;
					}
				}
				return false;
			}
		});
	}

	public void addChildAccessorFeatures(final CompositeEcucRichType childType) {
		Assert.isNotNull(childType);
		String propertyName = childType.getSimpleName();
		// if (isMany(childType)) {
		// propertyName = getPluralOf(childType.getSimpleName());
		// }
		addFeature(new PropertyImpl(this, propertyName, getChildAccessorReturnType(childType)) {
			public Object get(Object target) {
				List<EObject> values = null;
				boolean many = isMany(childType);
				if (many) {
					values = new ArrayList<EObject>();
				}
				List<EObject> contents = internalEContents((EObject) target);
				if (contents != null) {
					for (EObject content : contents) {
						Object typeDef = null;
						if (content instanceof GContainer) {
							typeDef = ((GContainer) content).gGetDefinition();
						} else if (content instanceof GParameterValue) {
							typeDef = ((GParameterValue) content).gGetDefinition();
						} else if (content instanceof GReferenceValue) {
							typeDef = ((GReferenceValue) content).gGetDefinition();
						}
						if (typeDef == childType.getEcucTypeDef()) {
							if (!many) {
								return content;
							}
							values.add(content);
						}
					}
					if (many && !values.isEmpty()) {
						return values;
					}
				}
				return null;
			}
		});

	}

	private String getPluralOf(String input) {
		String plural = input;
		if (input != null && input.length() > 0) {
			if (input.toUpperCase().equals(input)) {
				if (input.length() > 1 && input.endsWith("Y") //$NON-NLS-1$
						&& !(input.endsWith("AY") || input.endsWith("EY") || input.endsWith("OY") || input.endsWith("UY"))) { //$NON-NLS-1$//$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
					plural = plural.substring(0, input.length() - 1) + "IES"; //$NON-NLS-1$
				} else if (!input.endsWith("S")) { //$NON-NLS-1$
					plural = plural + "S"; //$NON-NLS-1$
				}
			} else {
				if (input.length() > 1 && input.endsWith("y") //$NON-NLS-1$
						&& !(input.endsWith("ay") || input.endsWith("ey") || input.endsWith("oy") || input.endsWith("uy"))) { //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
					plural = plural.substring(0, input.length() - 1) + "ies"; //$NON-NLS-1$
				} else if (!input.endsWith("s")) { //$NON-NLS-1$
					plural = plural + "s"; //$NON-NLS-1$
				}
			}
		}
		return plural;
	}

	private Type getChildAccessorReturnType(CompositeEcucRichType childType) {
		return isMany(childType) ? getTypeSystem().getListType(childType) : childType;
	}

	private boolean isMany(CompositeEcucRichType compositeType) {
		Assert.isNotNull(compositeType);

		GIdentifiable typeDef;
		if (compositeType.getParentType() instanceof RichChoiceContainerDefTypeImpl) {
			// Choice containers definitions are removed from the type hierarchy
			// but possible multiplicity must be added to the children
			typeDef = compositeType.getParentType().getEcucTypeDef();
		} else {
			typeDef = compositeType.getEcucTypeDef();
		}

		if (typeDef instanceof GParamConfMultiplicity) {
			String upperMultiplicity = ((GParamConfMultiplicity) typeDef).gGetUpperMultiplicityAsString();
			return upperMultiplicity != null && !"1".equals(upperMultiplicity); //$NON-NLS-1$
		}

		return false;
	}

	public void addParentAccessorFeatures(CompositeEcucRichType parentType) {
		addFeature(new PropertyImpl(this, "parent", getParentAccessorReturnType(parentType)) { //$NON-NLS-1$
			public Object get(Object target) {
				return ((EObject) target).eContainer();
			}
		});
	}

	private Type getParentAccessorReturnType(CompositeEcucRichType parentType) {
		return parentType != null ? parentType : getTypeSystem().getObjectType();
	}

	public void accept(IEcucRichTypeHierarchyVisitor visitor) {
		Assert.isNotNull(visitor);

		visitor.visit(this);

		for (CompositeEcucRichType childType : childTypes) {
			if (childType instanceof AbstractCompositeEcucRichTypeImpl) {
				((AbstractCompositeEcucRichTypeImpl) childType).accept(visitor);
			}
		}
	}
}
