package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.ArrayList;
import java.util.List;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractCompositeEcucRichType extends AbstractEcucRichType implements ICompositeEcucRichType {

	private List<ICompositeEcucRichType> childTypes = new ArrayList<ICompositeEcucRichType>();

	private ICompositeEcucRichType parentType = null;

	public AbstractCompositeEcucRichType(EcucContext context, GIdentifiable ecucTypeDef) {
		super(context, ecucTypeDef);
	}

	public AbstractCompositeEcucRichType(EcucContext context, GIdentifiable ecucTypeDef, String typeNameSuffix) {
		super(context, ecucTypeDef, typeNameSuffix);
	}

	public boolean isInstance(Object target) {
		return false;
	}

	public List<ICompositeEcucRichType> getChildTypes() {
		return childTypes;
	}

	public void addChildType(ICompositeEcucRichType childType) {
		Assert.isNotNull(childType);

		childTypes.add(childType);
		childType.setParentType(this);
	}

	public ICompositeEcucRichType getParentType() {
		return parentType;
	}

	public void setParentType(ICompositeEcucRichType parentType) {
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

	public void addChildAccessorFeatures(final ICompositeEcucRichType childType) {
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

	private Type getChildAccessorReturnType(ICompositeEcucRichType childType) {
		return isMany(childType) ? getTypeSystem().getListType(childType) : childType;
	}

	private boolean isMany(ICompositeEcucRichType compositeType) {
		Assert.isNotNull(compositeType);

		GIdentifiable typeDef;
		if (compositeType.getParentType() instanceof RichChoiceContainerDefType) {
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

	public void addParentAccessorFeatures(ICompositeEcucRichType parentType) {
		addFeature(new PropertyImpl(this, "parent", getParentAccessorReturnType(parentType)) { //$NON-NLS-1$
			public Object get(Object target) {
				return ((EObject) target).eContainer();
			}
		});
	}

	private Type getParentAccessorReturnType(ICompositeEcucRichType parentType) {
		return parentType != null ? parentType : getTypeSystem().getObjectType();
	}

	public void accept(IEcucRichTypeHierarchyVisitor visitor) {
		Assert.isNotNull(visitor);

		visitor.visit(this);

		for (ICompositeEcucRichType childType : childTypes) {
			if (childType instanceof AbstractCompositeEcucRichType) {
				((AbstractCompositeEcucRichType) childType).accept(visitor);
			}
		}
	}
}
