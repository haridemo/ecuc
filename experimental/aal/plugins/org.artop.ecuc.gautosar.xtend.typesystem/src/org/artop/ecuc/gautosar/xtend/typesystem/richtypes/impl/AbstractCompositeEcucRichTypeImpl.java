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

	public void addChildAccessorFeatures(final CompositeEcucRichType childType) {
		Assert.isNotNull(childType);

		addFeature(new PropertyImpl(this, childType.getSimpleName(), getChildAccessorReturnType(childType)) {
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
