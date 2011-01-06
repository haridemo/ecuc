package org.artop.ecuc.gautosar.xtend.typesystem.metatypes;

import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Feature;
import org.eclipse.xtend.typesystem.Type;

public class AUTOSARType extends AbstractEcucMetaType {

	public final static String TYPE_NAME = META_NAMESPACE + "::AUTOSARType"; //$NON-NLS-1$

	public AUTOSARType(final EcucContext context) {
		this(context, TYPE_NAME);
	}

	private AUTOSARType(final EcucContext confContext, final String name) {
		super(confContext, name);
		createBaseFeatures();
	}

	/**
	 * Creates the base features like name, shortName, longName and fullQualifiedName
	 */
	private void createBaseFeatures() {
		super.addFeature(createPackagesProperty());
	}

	private Feature createPackagesProperty() {
		return new PropertyImpl(this, "packages", getTypeSystem().getListType(getTypeSystem().getTypeForName(ARPackageType.TYPE_NAME))) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GAUTOSAR) {
					return ((GAUTOSAR) target).gGetArPackages();
				}
				return Collections.emptyList();
			}
		};
	}

	@Override
	protected List<EObject> internalEContents(EObject object) {
		List<EObject> contents = new ArrayList<EObject>();
		contents.addAll(((GAUTOSAR) object).gGetArPackages());
		return contents;
	}

	/**
	 * {@inheritDoc}
	 */
	public boolean isInstance(final Object target) {
		return target instanceof GAUTOSAR;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ContainerDefType.TYPE_NAME));
	}
}
