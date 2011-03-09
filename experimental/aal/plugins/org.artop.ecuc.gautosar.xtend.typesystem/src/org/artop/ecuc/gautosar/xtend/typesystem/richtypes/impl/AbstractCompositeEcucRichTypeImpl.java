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
import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.MultiplicityAwareListType;
import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.impl.MultiplicityAwareList;
import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.impl.MultiplicityAwareListTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractCompositeEcucRichTypeImpl extends AbstractEcucRichTypeImpl implements CompositeEcucRichType {

	private List<CompositeEcucRichType> childTypes = new ArrayList<CompositeEcucRichType>();

	private CompositeEcucRichType parentType = null;

	public AbstractCompositeEcucRichTypeImpl(EcucContext context, GIdentifiable ecucTypeDef) {
		super(context, ecucTypeDef);
		/*
		 * !! Important Note !! The multiplicity features are added at this moment because we need to access the
		 * ecucTypeDef wich is not accessible when feature creation is made in addBaseFeature because addBaseFeature is
		 * call from AbstractEcucMetaType super Type constructor where ecucTypeDef has not been set yet.
		 */
		addMultiplicityFeatures();
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

	protected void addMultiplicityFeatures() {
		if (!isMany(this)) {
			addFeature(new PropertyImpl(this, "lowerMultiplicity", getTypeSystem().getIntegerType()) { //$NON-NLS-1$
				public Object get(Object target) {
					GIdentifiable ecucTypeDef = getEcucTypeDef();
					if (ecucTypeDef instanceof GParamConfMultiplicity) {
						GParamConfMultiplicity gParamConfMultiplicity = (GParamConfMultiplicity) ecucTypeDef;
						String lowerMultiplicity = gParamConfMultiplicity.gGetLowerMultiplicityAsString();
						if (lowerMultiplicity != null) {
							try {
								return Integer.valueOf(lowerMultiplicity);
							} catch (NumberFormatException ex) {
								return 1;
							}
						}
						return MultiplicityAwareList.DEFAULT_LOWER_MULTIPLICITY;

					}
					return 1;
				}

			});
			addFeature(new PropertyImpl(this, "upperMultiplicity", getTypeSystem().getIntegerType()) { //$NON-NLS-1$
				public Object get(Object target) {
					GIdentifiable ecucTypeDef = getEcucTypeDef();
					if (ecucTypeDef instanceof GParamConfMultiplicity) {
						GParamConfMultiplicity gParamConfMultiplicity = (GParamConfMultiplicity) ecucTypeDef;
						if (gParamConfMultiplicity.gGetUpperMultiplicityInfinite()) {
							return -1;
						} else {
							String upperMultiplicity = gParamConfMultiplicity.gGetUpperMultiplicityAsString();
							if (upperMultiplicity != null) {
								try {
									return Integer.valueOf(upperMultiplicity);
								} catch (NumberFormatException ex) {
									return 1;
								}
							}
							return MultiplicityAwareList.DEFAULT_LOWER_MULTIPLICITY;
						}
					}
					return 1;
				}

			});
		}

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

	public void addChildAccessorFeatures(final CompositeEcucRichType childType) {
		addFeature(new PropertyImpl(this, getChildPropertyName(childType), getChildAccessorReturnType(childType)) {
			public Object get(Object target) {
				List<EObject> values = null;
				boolean many = isMany(childType);
				if (many) {
					GIdentifiable childEcucTypeDef = childType.getEcucTypeDef();
					if (childEcucTypeDef instanceof GParamConfMultiplicity) {
						GParamConfMultiplicity gParamConfMultiplicity = (GParamConfMultiplicity) childEcucTypeDef;
						String lowerMultiplicityString = gParamConfMultiplicity.gGetLowerMultiplicityAsString();
						int lowerMultiplicity = MultiplicityAwareList.DEFAULT_LOWER_MULTIPLICITY;
						if (lowerMultiplicityString != null) {
							lowerMultiplicity = Integer.valueOf(lowerMultiplicityString);
						}
						int upperMultiplicity = MultiplicityAwareList.MULTIPLICITY_INFINITE;
						if (!gParamConfMultiplicity.gGetUpperMultiplicityInfinite()) {
							String upperMultiplicityString = gParamConfMultiplicity.gGetUpperMultiplicityAsString();
							if (upperMultiplicityString != null) {
								upperMultiplicity = Integer.valueOf(upperMultiplicityString);
							} else {
								upperMultiplicity = MultiplicityAwareList.NO_MULTIPLICITY;
							}
						}
						values = new MultiplicityAwareList<EObject>();
						((MultiplicityAwareList<EObject>) values).setLowerMultiplicity(lowerMultiplicity);
						((MultiplicityAwareList<EObject>) values).setUpperMultiplicity(upperMultiplicity);
					} else {
						values = new ArrayList<EObject>();
					}
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

	private String getChildPropertyName(CompositeEcucRichType childType) {
		Assert.isNotNull(childType);
		String propertyName = childType.getSimpleName();
		if (isMany(childType)) {
			propertyName = getPluralOf(childType.getSimpleName());
		}
		return propertyName;
	}

	private Type getChildAccessorReturnType(CompositeEcucRichType childType) {
		if (isMany(childType)) {
			GIdentifiable ecucTypeDef = childType.getEcucTypeDef();
			if (ecucTypeDef instanceof GParamConfMultiplicity) {
				return new MultiplicityAwareListTypeImpl(childType, getTypeSystem(), MultiplicityAwareListType.TYPE_NAME);
			} else {
				return getTypeSystem().getListType(childType);
			}
		} else {
			return childType;
		}
	}

	public boolean isMany(CompositeEcucRichType compositeType) {
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
			GParamConfMultiplicity multiplicity = (GParamConfMultiplicity) typeDef;
			if (multiplicity.gGetUpperMultiplicityInfinite()) {
				return true;
			} else {
				String upperMultiplicity = multiplicity.gGetUpperMultiplicityAsString();
				return upperMultiplicity != null && upperMultiplicity.length() > 0 && !"1".equals(upperMultiplicity); //$NON-NLS-1$
			}
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
