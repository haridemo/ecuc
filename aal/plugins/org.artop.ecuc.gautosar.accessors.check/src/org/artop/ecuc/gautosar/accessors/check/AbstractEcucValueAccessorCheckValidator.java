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
package org.artop.ecuc.gautosar.accessors.check;

import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import org.artop.ecuc.gautosar.accessors.check.internal.Activator;
import org.artop.ecuc.gautosar.accessors.lib.factory.IEcucValueAccessorFactory;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.check.AbstractCheckValidator;
import org.eclipse.sphinx.emf.check.CheckValidatorState;
import org.eclipse.sphinx.emf.util.IWrapper;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

public abstract class AbstractEcucValueAccessorCheckValidator extends AbstractCheckValidator {

	private IEcucValueAccessorFactory ecucValueAccessorFactory;

	protected AbstractEcucValueAccessorCheckValidator(IEcucValueAccessorFactory ecucValueAccessorFactory) {
		Assert.isNotNull(ecucValueAccessorFactory);
		this.ecucValueAccessorFactory = ecucValueAccessorFactory;
	}

	public IEcucValueAccessorFactory getEcucValueAccessorFactory() {
		return ecucValueAccessorFactory;
	}

	@Override
	protected Class<?> getModelObjectType(EObject eObject) {
		if (eObject instanceof GModuleConfiguration || eObject instanceof GContainer) {
			try {
				IWrapper<?> wrapperType = ecucValueAccessorFactory.createEcucValueAccessor((GIdentifiable) eObject);
				if (wrapperType != null) {
					return wrapperType.getClass();
				}
			} catch (CoreException ex) {
				PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
			}
		}
		return super.getModelObjectType(eObject);
	}

	@Override
	protected void setCurrentObject(CheckValidatorState state, Object object) {
		Object currentObject = object;
		if (object instanceof GModuleConfiguration || object instanceof GContainer) {
			try {
				IWrapper<?> wrapperType = ecucValueAccessorFactory.createEcucValueAccessor((GIdentifiable) object);
				if (wrapperType != null) {
					currentObject = wrapperType;
				}
			} catch (CoreException ex) {
				PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
			}
		}
		super.setCurrentObject(state, currentObject);
	}
}
