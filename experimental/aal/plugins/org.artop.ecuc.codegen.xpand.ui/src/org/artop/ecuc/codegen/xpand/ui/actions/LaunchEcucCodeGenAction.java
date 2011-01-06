package org.artop.ecuc.codegen.xpand.ui.actions;

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;

import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecuc.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.resources.IFile;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.xpand.ui.actions.AbstractM2TAction;
import org.eclipse.xtend.typesystem.MetaModel;

public class LaunchEcucCodeGenAction extends AbstractM2TAction {

	public static final String DEFAULT_ROOT_DEFINE_NAME = "main"; //$NON-NLS-1$

	protected IFile moduleConfigurationFile;
	protected IFile moduleDefFile;

	public LaunchEcucCodeGenAction() {
		super(Messages.menuItem_launchEcucCodeGen);
	}

	protected LaunchEcucCodeGenAction(String text) {
		super(text);
	}

	@Override
	protected boolean updateSelection(IStructuredSelection selection) {
		if (selection.size() == 1) {
			Object selected = selection.getFirstElement();
			if (selected instanceof GModuleConfiguration) {
				GModuleConfiguration moduleConfiguration = (GModuleConfiguration) selected;
				moduleConfigurationFile = EcorePlatformUtil.getFile(moduleConfiguration);
				GModuleDef moduleDefinition = moduleConfiguration.gGetDefinition();
				moduleDefFile = EcorePlatformUtil.getFile(moduleDefinition);
				return moduleConfigurationFile != null && moduleDefFile != null;
			}
		}
		return false;
	}

	@Override
	protected MetaModel getMetaModel() {
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleDefFile);
		if (moduleDefModelDescriptor != null) {
			return (MetaModel) moduleDefModelDescriptor.getAdapter(EcucMetaModel.class);
		}
		return null;
	}

	@Override
	protected String getQualifiedTemplateName() {
		return moduleDefFile.getProjectRelativePath().removeFileExtension().append(getRootDefineName()).toString().replaceAll("/", "::"); //$NON-NLS-1$ //$NON-NLS-2$
	}

	protected String getRootDefineName() {
		return DEFAULT_ROOT_DEFINE_NAME;
	}
}
