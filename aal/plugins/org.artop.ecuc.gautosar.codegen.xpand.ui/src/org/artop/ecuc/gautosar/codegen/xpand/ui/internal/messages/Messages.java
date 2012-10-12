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
package org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages;

import org.eclipse.osgi.util.NLS;

public class Messages extends NLS {

	private static final String BUNDLE_NAME = "org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.messages"; //$NON-NLS-1$

	public static String menu_generate;
	public static String menuItem_launchEcucCodeGen;

	public static String label_editButton;
	public static String label_selectAllButton;
	public static String label_deselectAllButton;
	public static String label_restoreDefaultsButton;
	public static String label_xpandTemplateGroupName;
	public static String label_xpandTemplateTableGroupName;
	public static String label_bswModuleTableColumn;
	public static String label_xpandTemplateTableColumn;
	public static String label_checkFilesGroupName;
	public static String label_checkFilesTableColumn;

	public static String label_addXtendXpandCheckSupportEnableButton;

	public static String title_editXpandEvaluationRequestDialog;

	public static String BSWPlatformProjectWizardTitle;
	public static String BSWPlatformProjectWizardFirstPageTitle;
	public static String BSWPlatformProjectWizardReferencePageTitle;
	public static String BSWPlatformProjectWizardFirstPageDescription;
	public static String BSWPlatformProjectWizardReferencePageDescription;

	public static String job_creatingAutosarProject;
	public static String job_convertingToXtendXpandEnabledAutosarProject;

	static {
		// Initialize resource bundle
		NLS.initializeMessages(BUNDLE_NAME, Messages.class);
	}

	private Messages() {
	}
}
