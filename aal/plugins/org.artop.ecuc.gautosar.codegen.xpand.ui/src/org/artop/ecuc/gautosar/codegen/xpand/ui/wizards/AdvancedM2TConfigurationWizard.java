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

import gautosar.gecucdescription.GModuleConfiguration;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages.AdvancedXpandConfigurationPage;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.mwe.core.issues.Issues;
import org.eclipse.emf.mwe.core.issues.IssuesImpl;
import org.eclipse.emf.mwe.core.issues.MWEDiagnostic;
import org.eclipse.emf.mwe.core.monitor.ProgressMonitorAdapter;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.util.StatusUtil;
import org.eclipse.sphinx.xtendxpand.CheckEvaluationRequest;
import org.eclipse.sphinx.xtendxpand.jobs.CheckJob;
import org.eclipse.sphinx.xtendxpand.ui.wizards.pages.XpandConfigurationPage;
import org.eclipse.xtend.check.CheckFacade;
import org.eclipse.xtend.expression.ExecutionContextImpl;
import org.eclipse.xtend.expression.ResourceManager;
import org.eclipse.xtend.expression.ResourceManagerDefaultImpl;
import org.eclipse.xtend.expression.TypeSystemImpl;
import org.eclipse.xtend.expression.Variable;
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
		CheckJob checkJob = new CheckJob(getM2TJobName(), typeSystem, checkRequests) {

			// TODO (aakar) Remove this override in new Sphinx release and only override in CheckJob the preCheck or
			// postCheck methods to customize logging.
			@Override
			public IStatus run(IProgressMonitor monitor) {
				try {
					// Log start of validation
					log.info("Check model started...\n"); //$NON-NLS-1$

					// Install resource loader
					installResourceLoader();

					// Create execution context
					final ResourceManager resourceManager = new ResourceManagerDefaultImpl();
					Map<String, Variable> variables = new HashMap<String, Variable>();
					Map<String, Variable> globalVarsMap = new HashMap<String, Variable>();
					final ExecutionContextImpl execCtx = new ExecutionContextImpl(resourceManager, null,
							typeSystem instanceof TypeSystemImpl ? (TypeSystemImpl) typeSystem : new TypeSystemImpl(), variables, globalVarsMap,
							new ProgressMonitorAdapter(monitor), null, null, null, null, null, null, null);
					if (metaModels != null) {
						for (MetaModel metaModel : metaModels) {
							execCtx.registerMetaModel(metaModel);
						}
					}

					// Execute validation
					long startTime = System.currentTimeMillis();
					final Issues issues = new IssuesImpl();
					final Map<TransactionalEditingDomain, Collection<CheckEvaluationRequest>> requests = getCheckEvaluationRequests();
					for (final TransactionalEditingDomain editingDomain : requests.keySet()) {

						Runnable runnable = new Runnable() {
							public void run() {
								for (CheckEvaluationRequest request : requests.get(editingDomain)) {
									// Update resource loader context
									updateResourceLoaderContext(request.getModelRootObject());

									GModuleConfiguration targetModule = null;
									for (Object obj : request.getModelObjects()) {
										if (obj instanceof GModuleConfiguration) {
											targetModule = (GModuleConfiguration) obj;
											break;
										}
									}

									// Evaluate check files
									for (IFile file : request.getCheckFiles()) {
										String elementName = targetModule != null ? targetModule.gGetShortName() : "model"; //$NON-NLS-1$
										log.info(NLS.bind("Check \"{0}\" with \"{1}\"", elementName, file.getFullPath().makeRelative())); //$NON-NLS-1$ 

										// Update resource manager with file encoding information for next Check file to
										// be evaluated
										try {
											resourceManager.setFileEncoding(file.getCharset());
										} catch (CoreException ex) {
											// Ignore exception
										}

										Issues diagIssues = new IssuesImpl();

										// Evaluate current check file
										String path = file.getProjectRelativePath().removeFileExtension().toString();
										CheckFacade.checkAll(path, request.getModelObjects(), execCtx, diagIssues, false);

										// Handle errors or warnings if any
										List<MWEDiagnostic> diagnostics = new ArrayList<MWEDiagnostic>();
										diagnostics.addAll(Arrays.asList(diagIssues.getErrors()));
										diagnostics.addAll(Arrays.asList(diagIssues.getWarnings()));
										for (Iterator<MWEDiagnostic> iterator = diagnostics.iterator(); iterator.hasNext();) {
											MWEDiagnostic diagnostic = iterator.next();
											String message = diagnostic.getMessage() + (iterator.hasNext() ? "" : "\n"); //$NON-NLS-1$ //$NON-NLS-2$
											switch (diagnostic.getSeverity()) {
											case IStatus.ERROR:
												log.error(message);
												break;
											case IStatus.WARNING:
												log.warn(message);
												break;
											default:
												break;
											}
											issues.add(diagnostic);
										}
									}
								}
							}
						};

						if (editingDomain != null) {
							editingDomain.runExclusive(runnable);
						} else {
							runnable.run();
						}
					}
					long duration = System.currentTimeMillis() - startTime;

					// Log errors and warnings encountered during validation and return appropriate status
					if (issues.hasErrors()) {
						log.error("Check model failed in " + duration + "ms!\n"); //$NON-NLS-1$ //$NON-NLS-2$
						return StatusUtil.createErrorStatus(org.eclipse.sphinx.xtendxpand.internal.Activator.getPlugin(),
								"Check model failed with errors"); //$NON-NLS-1$
					}
					if (issues.hasWarnings()) {
						return StatusUtil.createWarningStatus(org.eclipse.sphinx.xtendxpand.internal.Activator.getPlugin(),
								"Check model failed with warnings"); //$NON-NLS-1$
					}

					log.info("Check model completed in " + duration + "ms!\n"); //$NON-NLS-1$ //$NON-NLS-2$
					return Status.OK_STATUS;
				} catch (OperationCanceledException exception) {
					return Status.CANCEL_STATUS;
				} catch (Exception ex) {
					return StatusUtil.createErrorStatus(org.eclipse.sphinx.xtendxpand.internal.Activator.getPlugin(), ex);
				} finally {
					// Always uninstall resource loader again
					uninstallResourceLoader();
				}
			}
		};
		checkJob.setWorkspaceResourceLoader(getWorkspaceResourceLoader());
		checkJob.setPriority(Job.BUILD);
		IFile file = EcorePlatformUtil.getFile(modelObject);
		if (file != null) {
			checkJob.setRule(file.getProject());
		}
		return checkJob;
	}
}
