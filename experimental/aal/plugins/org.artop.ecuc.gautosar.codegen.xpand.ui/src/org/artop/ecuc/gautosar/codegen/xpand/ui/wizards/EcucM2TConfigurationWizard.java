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
package org.artop.ecuc.gautosar.codegen.xpand.ui.wizards;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecuc.codegen.xpand.output.ExtendedOutlet;
import org.artop.ecuc.codegen.xpand.preferences.IEcucCodeGenerationPreferences;
import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages.EcucM2TConfigurationPage;
import org.eclipse.core.resources.IFile;
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
	protected Collection<Outlet> getOutlets() {
		IFile file = EcorePlatformUtil.getFile(modelObject);
		if (file != null && file.getProject() != null) {
			List<Outlet> result = new ArrayList<Outlet>();
			Collection<ExtendedOutlet> outlets = IEcucCodeGenerationPreferences.OUTLETS.get(file.getProject());
			for (ExtendedOutlet outlet : outlets) {
				result.add(outlet);
			}
			return result;
		}
		return super.getOutlets();
	}

	@Override
	protected M2TConfigurationPage createM2TConfigurationPage() {
		EcucM2TConfigurationPage m2TPage = new EcucM2TConfigurationPage(Messages.label_configPageName);
		m2TPage.init(modelObject, metaModel, defaultOutletURI);
		return m2TPage;
	}
}
