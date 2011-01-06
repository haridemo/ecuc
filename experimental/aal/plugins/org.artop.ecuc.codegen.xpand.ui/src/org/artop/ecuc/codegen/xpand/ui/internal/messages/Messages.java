package org.artop.ecuc.codegen.xpand.ui.internal.messages;

import org.eclipse.osgi.util.NLS;

public class Messages extends NLS {

	private static final String BUNDLE_NAME = "org.artop.ecuc.codegen.xpand.ui.internal.messages.Messages"; //$NON-NLS-1$

	public static String menu_generate;
	public static String menuItem_launchEcucCodeGen;
	public static String job_generatingCode;
	public static String task_CreationOfSubpackageExtensions;
	public static String task_AddPluginDependencies;
	public static String task_AddXtendXpandNature;
	public static String task_ConvertToJavaPluginProject;
	public static String task_ConvertToBSWPlatformProject;
	public static String label_newBSWPlatformProjectWindowTitle;
	public static String BSWPlatformProjectWizzardTitle;
	public static String BSWPlatformProjectWizzardFirstPageTitle;
	public static String BSWPlatformProjectWizzardFirstPageDescription;
	public static String BSWPlatformProjectWizzardReferencePageTitle;
	public static String BSWPlatformProjectWizzardReferencePageDescription;
	public static String job_convertToBSWPlatformProject;
	public static String job_ImportEcucParamDef;

	static {
		// Initialize resource bundle
		NLS.initializeMessages(BUNDLE_NAME, Messages.class);
	}

	private Messages() {
	}
}
