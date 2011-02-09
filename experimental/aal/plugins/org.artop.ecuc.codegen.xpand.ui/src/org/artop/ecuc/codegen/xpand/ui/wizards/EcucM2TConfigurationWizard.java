package org.artop.ecuc.codegen.xpand.ui.wizards;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.artop.ecuc.codegen.xpand.output.ExtendedOutlet;
import org.artop.ecuc.codegen.xpand.output.OutputUtil;
import org.artop.ecuc.codegen.xpand.preferences.ProjectOutletProvider;
import org.artop.ecuc.codegen.xpand.ui.wizards.pages.EcucM2TConfigurationPage;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.mwe.resources.IScopingResourceLoader;
import org.eclipse.sphinx.xpand.ui.internal.messages.Messages;
import org.eclipse.sphinx.xpand.ui.wizards.M2TConfigurationWizard;
import org.eclipse.sphinx.xpand.ui.wizards.pages.M2TConfigurationPage;
import org.eclipse.xpand2.output.Outlet;
import org.eclipse.xtend.typesystem.MetaModel;

@SuppressWarnings("restriction")
public class EcucM2TConfigurationWizard extends M2TConfigurationWizard {

	public EcucM2TConfigurationWizard(EObject modelObject, MetaModel metaModel, IScopingResourceLoader scopingResourceLoader, URI defaultOutletURI) {
		super(modelObject, metaModel, scopingResourceLoader, defaultOutletURI);
	}

	@Override
	protected Collection<Outlet> getUserDefinedOutlets() {
		ProjectOutletProvider outletProvider = OutputUtil.getOutletProvider(fModelObject);
		if (outletProvider != null) {
			Collection<ExtendedOutlet> customOutlets = outletProvider.getNamedOutlets();
			List<Outlet> result = new ArrayList<Outlet>();
			for (ExtendedOutlet outlet : customOutlets) {
				result.add(outlet);
			}
			outletProvider.dispose();
			return result;
		}
		return super.getUserDefinedOutlets();
	}

	@Override
	protected Outlet getDefaultOutlet() {
		ProjectOutletProvider outletProvider = OutputUtil.getOutletProvider(fModelObject);
		if (outletProvider != null) {
			Outlet result = outletProvider.getDefaultOutlet();
			outletProvider.dispose();
			return result;
		}
		return super.getDefaultOutlet();
	}

	@Override
	protected M2TConfigurationPage createM2TConfigurationPage() {
		EcucM2TConfigurationPage m2TPage = new EcucM2TConfigurationPage(Messages.label_configPageName);
		m2TPage.init(fModelObject, fMetaModel, fDefaultOutletURI);
		return m2TPage;
	}
}
