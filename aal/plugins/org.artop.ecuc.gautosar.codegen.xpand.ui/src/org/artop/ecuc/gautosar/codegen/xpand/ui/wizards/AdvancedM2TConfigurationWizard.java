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
import java.util.List;

import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages.AdvancedXpandConfigurationPage;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.xtendxpand.CheckEvaluationRequest;
import org.eclipse.sphinx.xtendxpand.jobs.CheckJob;
import org.eclipse.sphinx.xtendxpand.ui.wizards.pages.XpandConfigurationPage;
import org.eclipse.xtend.typesystem.MetaModel;

// FIXME Make this class inherit from M2TConfigurationWizard (as soon as Sphinx creates non-existing outlet directory when protected region is set to true).
public class AdvancedM2TConfigurationWizard extends ExtendedM2TConfigurationWizard {

	public AdvancedM2TConfigurationWizard(EObject modelObject, List<MetaModel> metaModels) {
		super(modelObject, metaModels);
	}

	@Override
	protected XpandConfigurationPage createXpandConfigurationPage() {
		AdvancedXpandConfigurationPage xpandPage = new AdvancedXpandConfigurationPage("Configuration"); //$NON-NLS-1$
		xpandPage.init(modelObject, typeSystem, getOutletsPreference(), getDefaultOutlet());
		return xpandPage;
	}

	@Override
	protected boolean isCheckRequired() {
		return super.isCheckRequired() || !((AdvancedXpandConfigurationPage) xpandConfigurationPage).getCheckEvaluationRequests().isEmpty();
	}

	@Override
	protected CheckJob createCheckJob() {
		List<CheckEvaluationRequest> checkRequests = new ArrayList<CheckEvaluationRequest>();
		checkRequests.addAll(checkConfigurationPage.getCheckEvaluationRequests());
		checkRequests.addAll(((AdvancedXpandConfigurationPage) xpandConfigurationPage).getCheckEvaluationRequests());
		CheckJob checkJob = new CheckJob(getM2TJobName(), typeSystem, checkRequests);
		checkJob.setWorkspaceResourceLoader(getWorkspaceResourceLoader());
		checkJob.setPriority(Job.BUILD);
		IFile file = EcorePlatformUtil.getFile(modelObject);
		if (file != null) {
			checkJob.setRule(file.getProject());
		}
		return checkJob;
	}
}
