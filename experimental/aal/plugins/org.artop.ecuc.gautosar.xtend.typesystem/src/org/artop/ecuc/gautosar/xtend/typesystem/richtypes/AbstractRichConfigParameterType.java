package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucparameterdef.GConfigParameter;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractRichConfigParameterType extends AbstractCompositeEcucRichType {

	public AbstractRichConfigParameterType(EcucContext context, GConfigParameter configParameter) {
		super(context, configParameter);
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();

		addFeature(new PropertyImpl(this, "value", getValueType()) { //$NON-NLS-1$
			public Object get(Object target) {
				return internalGet(target);
			}

			@Override
			public void set(Object target, Object newValue) {
				internalSet(target, newValue);
			}
		});
		addFeature(new OperationImpl(this, "set", getTypeSystem().getVoidType(), getValueType()) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				internalSet(target, params != null && params.length == 1 ? params[0] : null);
				return null;
			}
		});
	}

	// XXX Shouldn't we add a definition match check here - just as there is in
	// AbstractRichConfigReferenceType.internalGet(Object)?
	protected abstract Object internalGet(Object target);

	protected abstract void internalSet(Object target, Object value);

	protected abstract EClass getParameterValueType();

	protected abstract Type getValueType();

	@Override
	public boolean isInstance(Object target) {
		if (target instanceof GParameterValue && getParameterValueType().isInstance(target)) {
			GConfigParameter parameterDef = ((GParameterValue) target).gGetDefinition();
			if (parameterDef == getEcucTypeDef()) {
				return true;
			}
		}
		return false;
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ConfigParameterType.TYPE_NAME));
	}

	@Override
	public void accept(IEcucRichTypeHierarchyVisitor visitor) {
		Assert.isNotNull(visitor);

		super.accept(visitor);
		visitor.visit(this);
	}

	@Override
	public void addChildType(ICompositeEcucRichType childType) {
		throw new UnsupportedOperationException();
	}
}
