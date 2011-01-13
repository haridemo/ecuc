package org.artop.ecuc.gautosar.xtend.typesystem.internal;

import java.util.HashMap;
import java.util.Map;

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.ecl.emf.metamodel.IMetaModelDescriptor;
import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.IEcucMetaModelFactory;
import org.eclipse.core.runtime.Platform;

public class EcucMetaModelManager {

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

		// TODO Add resourceSet listener that invalidates ECUC metamodel each time a configuration definition relevant
		// model element is changed and remove this line when done
		if (true) {
			// if (metaModel == null) {
			IMetaModelDescriptor mmDescriptor = modelDescriptor.getMetaModelDescriptor();
			if (mmDescriptor instanceof AutosarReleaseDescriptor) {
				// Create and initialize ECU configuration metamodel context object
				EcucContext context = new EcucContext();
				context.setModuleDefModelDescriptor(modelDescriptor);

				// Create ECU configuration metamodel (alias type system)
				metaModel = createEcucMetaModel((AutosarReleaseDescriptor) mmDescriptor, context);

				// Register new ECU configuration metamodel
				ecucMetaModels.put(modelDescriptor, metaModel);
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
}
