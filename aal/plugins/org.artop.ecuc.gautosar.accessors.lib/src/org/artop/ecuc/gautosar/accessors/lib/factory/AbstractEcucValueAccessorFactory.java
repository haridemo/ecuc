/**
 * <copyright>
 *
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     itemis - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.gautosar.accessors.lib.factory;

import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.lang.reflect.Constructor;

import org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil;
import org.artop.ecuc.gautosar.accessors.lib.internal.Activator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.sphinx.emf.util.IWrapper;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.StatusUtil;

public abstract class AbstractEcucValueAccessorFactory implements IEcucValueAccessorFactory {

	protected abstract String getEcucValueAccessorJavaPackageName();

	@Override
	public <E extends IWrapper<?>> E createEcucValueAccessor(Class<E> wrapperType, GIdentifiable identifiable) throws CoreException {
		Assert.isNotNull(wrapperType);
		Assert.isTrue(identifiable instanceof GModuleConfiguration || identifiable instanceof GContainer);

		try {
			Constructor<E> constructor = null;
			if (identifiable instanceof GModuleConfiguration) {
				constructor = wrapperType.getDeclaredConstructor(GModuleConfiguration.class);
			} else if (identifiable instanceof GContainer) {
				constructor = wrapperType.getDeclaredConstructor(GContainer.class);
			}
			if (constructor != null) {
				return constructor.newInstance(identifiable);
			}
		} catch (Exception ex) {
			IStatus status = StatusUtil.createErrorStatus(Activator.getPlugin(), ex);
			throw new CoreException(status);
		}
		return null;
	}

	@Override
	public IWrapper<?> createEcucValueAccessor(GIdentifiable identifiable) throws CoreException {
		Assert.isTrue(identifiable instanceof GModuleConfiguration || identifiable instanceof GContainer);

		GIdentifiable definition = null;
		if (identifiable instanceof GModuleConfiguration) {
			definition = ((GModuleConfiguration) identifiable).gGetDefinition();
		} else if (identifiable instanceof GContainer) {
			definition = ((GContainer) identifiable).gGetDefinition();
		}
		if (definition != null) {
			Class<? extends IWrapper<?>> wrapperType = getEcucValueAccessor(definition);
			if (wrapperType != null) {
				return createEcucValueAccessor(wrapperType, identifiable);
			}
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	private Class<? extends IWrapper<?>> getEcucValueAccessor(GIdentifiable definition) {
		Assert.isTrue(definition instanceof GModuleDef || definition instanceof GContainerDef);

		Class<? extends IWrapper<?>> wrapperType = null;
		final String packageName = getEcucValueAccessorJavaPackageName();
		final String wrapperTypeName = definition instanceof GModuleDef ? packageName.concat(".").concat(definition.gGetShortName()) //$NON-NLS-1$
				: EcucValueAccessorUtil.getAccessorClassQualifiedName(packageName, (GContainerDef) definition, "$"); //$NON-NLS-1$
		try {
			wrapperType = (Class<? extends IWrapper<?>>) Class.forName(wrapperTypeName);
		} catch (ClassNotFoundException ex) {
			PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
			return null;
		}
		return wrapperType;
	}
}
