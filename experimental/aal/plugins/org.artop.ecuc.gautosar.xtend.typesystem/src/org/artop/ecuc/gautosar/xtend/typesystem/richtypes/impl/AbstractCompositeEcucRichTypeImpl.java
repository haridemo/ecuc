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
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.MultiplicityAwareListType;
import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.impl.AbstractFilteringEList;
import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.impl.AbstractMultiplicityAwareFilteringEList;
import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.impl.MultiplicityAwareListTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
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
							}
						}
					}
					return AbstractMultiplicityAwareFilteringEList.DEFAULT_LOWER_MULTIPLICITY;
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
								}
							}
						}
					}
					return AbstractMultiplicityAwareFilteringEList.DEFAULT_UPPER_MULTIPLICITY;
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
		addFeature(new PropertyImpl(this, getChildPropertyName(childType), getChildAccessorType(childType)) {
			public Object get(Object target) {
				if (isMany(childType)) {
					List<EObject> values;

					GIdentifiable childEcucTypeDef = childType.getEcucTypeDef();
					if (childEcucTypeDef instanceof GParamConfMultiplicity) {
						GParamConfMultiplicity gParamConfMultiplicity = (GParamConfMultiplicity) childEcucTypeDef;
						String lowerMultiplicityString = gParamConfMultiplicity.gGetLowerMultiplicityAsString();
						int lowerMultiplicity = AbstractMultiplicityAwareFilteringEList.DEFAULT_LOWER_MULTIPLICITY;
						if (lowerMultiplicityString != null) {
							lowerMultiplicity = Integer.valueOf(lowerMultiplicityString);
						}
						int upperMultiplicity = AbstractMultiplicityAwareFilteringEList.MULTIPLICITY_INFINITE;
						if (!gParamConfMultiplicity.gGetUpperMultiplicityInfinite()) {
							String upperMultiplicityString = gParamConfMultiplicity.gGetUpperMultiplicityAsString();
							if (upperMultiplicityString != null) {
								upperMultiplicity = Integer.valueOf(upperMultiplicityString);
							} else {
								upperMultiplicity = AbstractMultiplicityAwareFilteringEList.NO_MULTIPLICITY;
							}
						}
						values = new AbstractMultiplicityAwareFilteringEList<EObject>((EObject) target, getEContainingFeature((EObject) target,
								childType.getEcucValueType())) {

							private static final long serialVersionUID = 1L;

							@Override
							protected boolean accept(EObject item) {
								return internalAcceptChild(item, childType);
							}
						};
						((AbstractMultiplicityAwareFilteringEList<EObject>) values).setLowerMultiplicity(lowerMultiplicity);
						((AbstractMultiplicityAwareFilteringEList<EObject>) values).setUpperMultiplicity(upperMultiplicity);
					} else {
						values = new AbstractFilteringEList<EObject>((EObject) target, getEContainingFeature((EObject) target,
								childType.getEcucValueType())) {

							private static final long serialVersionUID = 1L;

							@Override
							protected boolean accept(EObject child) {
								return internalAcceptChild(child, childType);
							}
						};
					}

					// TODO Check if it is OK to always return a list even if it is empty; most probably it is OK
					// because otherwise we could never invoke any list-level API (e.g., isEmpty(),
					// getUpperMultiplicity()) on empty lists
					// if (!values.isEmpty()) {
					// return values;
					// }
					return values;
				} else {
					@SuppressWarnings("unchecked")
					List<EObject> children = (List<EObject>) ((EObject) target).eGet(getEContainingFeature((EObject) target,
							childType.getEcucValueType()));
					for (EObject child : children) {
						if (internalAcceptChild(child, childType)) {
							return child;
						}
					}
				}
				return null;
			}

			@Override
			public void set(Object target, Object newValue) {
				if (!isMany(childType)) {
					internalSet(target, childType, newValue);
				} else {
					super.set(target, newValue);
				}
			}
		});

		if (!isMany(childType)) {
			addFeature(new OperationImpl(this, getSetChildOperationName(childType), getTypeSystem().getVoidType(), getChildAccessorType(childType)) {
				@Override
				protected Object evaluateInternal(Object target, Object[] params) {
					internalSet(target, childType, params != null && params.length == 1 ? params[0] : null);
					return null;
				}
			});
		}
	}

	private String getChildPropertyName(CompositeEcucRichType childType) {
		Assert.isNotNull(childType);

		String propertyName = childType.getSimpleName();
		if (isMany(childType)) {
			propertyName = getPluralOf(childType.getSimpleName());
		}
		return propertyName;
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

	private String getSetChildOperationName(CompositeEcucRichType childType) {
		Assert.isNotNull(childType);
		Assert.isLegal(childType.getSimpleName() != null && childType.getSimpleName().length() > 0);

		String simpleName = childType.getSimpleName();
		return "set" + simpleName.substring(0, 1).toUpperCase() + simpleName.substring(1); //$NON-NLS-1$
	}

	private Type getChildAccessorType(CompositeEcucRichType childType) {
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

	private EStructuralFeature getEContainingFeature(EObject target, EClass ecucValueType) {
		if (target instanceof GModuleConfiguration && GecucdescriptionPackage.eINSTANCE.getGContainer().isSuperTypeOf(ecucValueType)) {
			return target.eClass().getEStructuralFeature("containers"); //$NON-NLS-1$
		}
		if (target instanceof GContainer && GecucdescriptionPackage.eINSTANCE.getGContainer().isSuperTypeOf(ecucValueType)) {
			return target.eClass().getEStructuralFeature("subContainers"); //$NON-NLS-1$
		}
		if (target instanceof GContainer && GecucdescriptionPackage.eINSTANCE.getGParameterValue().isSuperTypeOf(ecucValueType)) {
			return target.eClass().getEStructuralFeature("parameterValues"); //$NON-NLS-1$
		}
		if (target instanceof GContainer && GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue().isSuperTypeOf(ecucValueType)) {
			return target.eClass().getEStructuralFeature("referenceValues"); //$NON-NLS-1$
		}
		return null;
	}

	private boolean internalAcceptChild(EObject child, CompositeEcucRichType childType) {
		EStructuralFeature definitionFeature = child.eClass().getEStructuralFeature("definition"); //$NON-NLS-1$
		if (definitionFeature != null) {
			if (child.eGet(definitionFeature) == childType.getEcucTypeDef()) {
				return true;
			}
		}
		return false;
	}

	private void internalSet(Object target, CompositeEcucRichType childType, Object newValue) {
		// Retrieve target list on target object in which child is hosted
		@SuppressWarnings("unchecked")
		List<EObject> children = (List<EObject>) ((EObject) target).eGet(getEContainingFeature((EObject) target, childType.getEcucValueType()));

		// Remove old child any such is present
		for (Iterator<EObject> iter = children.iterator(); iter.hasNext();) {
			if (internalAcceptChild(iter.next(), childType)) {
				iter.remove();
				break;
			}
		}

		// Add new child if one has been provided
		if (newValue instanceof EObject) {
			children.add((EObject) newValue);
		}
	}

	public void addParentAccessorFeatures(CompositeEcucRichType parentType) {
		addFeature(new PropertyImpl(this, "parent", getParentAccessorType(parentType)) { //$NON-NLS-1$
			public Object get(Object target) {
				return ((EObject) target).eContainer();
			}
		});
	}

	private Type getParentAccessorType(CompositeEcucRichType parentType) {
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
