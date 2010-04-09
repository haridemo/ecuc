/**
 * <copyright>
 * 
 * Copyright (c) Tata Elxsi Ltd and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on Released
 * AUTOSAR Material (ASLR) which accompanies this distribution, and is available
 * at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     Tata Elxsi Ltd, India - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.aal.examples.moduleconfiguration.initializer;

import org.artop.ecl.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ITreeSelection;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IWorkbenchPart;

import autosar3x.ecucparameterdef.ModuleDef;

import org.artop.aal.moduleconfiguration.initializer.GenerateModuleConfiguration;

/**
 * Action class for generating the module configuration
 */
public class GenerateModuleConfigurationAction 
									implements IObjectActionDelegate {

	private IWorkbenchPart targetPart = null;
	/**
	 * Constructor
	 */
	public GenerateModuleConfigurationAction() {
	}

	/**
	 * For setting the active part
	 */
	public void setActivePart(IAction action, IWorkbenchPart targetPart) { 
		this.targetPart = targetPart;
	}

	/**
	 * The action to be executed
	 */
	public void run(IAction action) {
		if( null != this.targetPart ) {
			if( targetPart
						.getSite()
						.getSelectionProvider()
						.getSelection() instanceof ITreeSelection) {
				Object moduleDef = ((ITreeSelection)targetPart
														.getSite()
														.getSelectionProvider()
														.getSelection())
															.getFirstElement();
				if( moduleDef instanceof ModuleDef) {
					TransactionalEditingDomain editingDomain 
									= WorkspaceEditingDomainUtil
												.getEditingDomain(moduleDef);
					Object parentObject = editingDomain.getParent(moduleDef);
					GenerateModuleConfiguration genModuleConf 
											= new GenerateModuleConfiguration();
					genModuleConf.generateECUConfiguration(moduleDef,
															parentObject);
				}
			}
		}
	}

	/**
	 * The selection changed event
	 */
	public void selectionChanged(IAction action, ISelection selection) {
	}

}
