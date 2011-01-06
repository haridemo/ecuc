package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.AbstractEcucMetaType;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;

public abstract class AbstractEcucRichType extends AbstractEcucMetaType implements IEcucRichType {

	private GIdentifiable ecucTypeDef;

	public AbstractEcucRichType(EcucContext context, GIdentifiable ecucTypeDef) {
		this(context, ecucTypeDef, null);
	}

	public AbstractEcucRichType(EcucContext context, GIdentifiable ecucTypeDef, String typeNameSuffix) {
		super(context, getTypeName(ecucTypeDef, typeNameSuffix));
		this.ecucTypeDef = ecucTypeDef;
		addBaseFeatures();
	}

	private static String getTypeName(GIdentifiable ecucTypeDef, String typeNameSuffix) {
		String typeName = getTypeName(ecucTypeDef);
		if (typeNameSuffix != null) {
			return typeName.concat(typeNameSuffix);
		}
		return typeName;
	}

	protected void addBaseFeatures() {
		addFeature(new PropertyImpl(this, "shortName", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GIdentifiable) {
					return ((GIdentifiable) target).gGetShortName();
				}
				return null;
			}
		});
		addFeature(new PropertyImpl(this, "absoluteQualifiedName", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				return AutosarURIFactory.getAbsoluteQualifiedName(ecucTypeDef);
			}
		});
	}

	public GIdentifiable getEcucTypeDef() {
		return ecucTypeDef;
	}
}
