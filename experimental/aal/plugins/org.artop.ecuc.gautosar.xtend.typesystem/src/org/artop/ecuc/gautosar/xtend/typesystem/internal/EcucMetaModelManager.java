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
package org.artop.ecuc.gautosar.xtend.typesystem.internal;

import gautosar.gecucparameterdef.GecucparameterdefPackage;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.ecl.emf.metamodel.IMetaModelDescriptor;
import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecl.emf.util.WorkspaceEditingDomainUtil;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.IEcucMetaModelFactory;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListener;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

public class EcucMetaModelManager {

	protected ResourceSetListener resourceChangedListener;

	/** The singleton instance of the WorkspaceEditingDomainManager. */
	public static final EcucMetaModelManager INSTANCE = new EcucMetaModelManager();

	private Map<IModelDescriptor, EcucMetaModel> ecucMetaModels = new HashMap<IModelDescriptor, EcucMetaModel>();

	/**
	 * Private constructor for singleton pattern.
	 */
	private EcucMetaModelManager() {
	}

	/**
	 * Retrieves {@link EcucMetaModel ECU configuration metamodel} instance associated with given AUTOSAR
	 * {@link IModelDescriptor model}. Creates a new {@link EcucMetaModel ECU configuration metamodel} if no such exists
	 * so far.
	 * 
	 * @param modelDescriptor
	 *            The AUTOSAR {@link IModelDescriptor model} for which the corresponding {@link EcucMetaModel ECU
	 *            configuration metamodel} instance is to be to retrieved or created.
	 * @return The {@link EcucMetaModel ECU configuration metamodel} instance behind given AUTOSAR
	 *         {@link IModelDescriptor model}.
	 */
	public Object getEcucMetaModel(IModelDescriptor modelDescriptor) {
		EcucMetaModel metaModel = ecucMetaModels.get(modelDescriptor);

		if (metaModel == null) {
			IMetaModelDescriptor mmDescriptor = modelDescriptor.getMetaModelDescriptor();
			if (mmDescriptor instanceof AutosarReleaseDescriptor) {
				// Create and initialize ECU configuration metamodel context object
				EcucContext context = new EcucContext();
				context.setModuleDefModelDescriptor(modelDescriptor);

				// Create ECU configuration metamodel (alias type system)
				metaModel = createEcucMetaModel((AutosarReleaseDescriptor) mmDescriptor, context);

				// Register new ECU configuration metamodel
				ecucMetaModels.put(modelDescriptor, metaModel);
				addTransactionalEditingDomainListeners(WorkspaceEditingDomainUtil.getEditingDomain(modelDescriptor));
			}
		}
		return metaModel;
	}

	protected EcucMetaModel createEcucMetaModel(AutosarReleaseDescriptor autosarRelease, EcucContext context) {
		IEcucMetaModelFactory factory = (IEcucMetaModelFactory) Platform.getAdapterManager().loadAdapter(autosarRelease,
				IEcucMetaModelFactory.class.getName());
		if (factory != null) {
			return factory.createEcucMetaModel(context);
		}
		return new EcucMetaModel(context);
	}

	protected void addTransactionalEditingDomainListeners(TransactionalEditingDomain editingDomain) {
		Assert.isNotNull(editingDomain);

		if (resourceChangedListener == null) {
			resourceChangedListener = createResourceChangedListener();
			Assert.isNotNull(resourceChangedListener);
		}
		editingDomain.addResourceSetListener(resourceChangedListener);
	}

	/**
	 * Creates a ResourceSetChangedListener that invalidates ECUC metamodel each time a configuration definition
	 * relevant model element is changed.
	 */
	protected ResourceSetListener createResourceChangedListener() {
		return new ResourceSetListenerImpl(NotificationFilter.createNotifierTypeFilter(GecucparameterdefPackage.eINSTANCE.getGModuleDef())
				.or(NotificationFilter.createNotifierTypeFilter(GecucparameterdefPackage.eINSTANCE.getGContainerDef()))
				.or(NotificationFilter.createNotifierTypeFilter(GecucparameterdefPackage.eINSTANCE.getGConfigReference()))
				.or(NotificationFilter.createNotifierTypeFilter(GecucparameterdefPackage.eINSTANCE.getGConfigReference()))) {
			@Override
			public void resourceSetChanged(ResourceSetChangeEvent event) {
				Set<IModelDescriptor> modelDescriptors = new HashSet<IModelDescriptor>();
				for (Notification notification : event.getNotifications()) {
					Object notifier = notification.getNotifier();
					if (notifier instanceof EObject) {
						IModelDescriptor model = ModelDescriptorRegistry.INSTANCE.getModel(((EObject) notifier).eResource());
						if (model != null) {
							modelDescriptors.add(model);
						}
					}
				}
				for (IModelDescriptor modelDescriptor : modelDescriptors) {
					ecucMetaModels.remove(modelDescriptor);
				}
			}

			@Override
			public boolean isPostcommitOnly() {
				return true;
			}
		};
	}
}
