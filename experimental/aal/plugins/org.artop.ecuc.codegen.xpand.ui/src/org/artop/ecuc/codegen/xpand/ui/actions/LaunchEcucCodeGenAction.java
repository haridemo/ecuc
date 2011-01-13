package org.artop.ecuc.codegen.xpand.ui.actions;

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;

import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecl.emf.workspace.loading.ModelLoadManager;
import org.artop.ecl.platform.ui.util.ExtendedPlatformUI;
import org.artop.ecuc.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListener;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.window.Window;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.sphinx.xpand.ui.actions.AbstractM2TAction;
import org.eclipse.sphinx.xpand.ui.wizards.M2TConfigurationWizard;
import org.eclipse.xtend.typesystem.MetaModel;

public class LaunchEcucCodeGenAction extends AbstractM2TAction {

	public static final String DEFAULT_ROOT_DEFINE_NAME = "main"; //$NON-NLS-1$

	protected GModuleConfiguration moduleConfiguration;
	protected GModuleDef moduleDef;

	private ResourceSetListener resourceChangedListener = null;

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
				// Retrieve module configuration behind selection as well as module definition which it references
				moduleConfiguration = (GModuleConfiguration) selected;
				moduleDef = moduleConfiguration.gGetDefinition();

				// Referenced module definition not available? (this can be the case when the AUTOSAR model behind the
				// selected element has not been fully loaded yet or the referenced module definition is really
				// missing)
				if (moduleDef.eIsProxy()) {
					// Trigger asynchronous loading of underlying AUTOSAR model including referenced AUTOSAR models in
					// BSW Platform projects (i.e., AUTOSAR projects with Xpand/Xtend nature) to make sure that
					// referenced module definition has a chance to get resolved
					IFile moduleConfigurationFile = EcorePlatformUtil.getFile(moduleConfiguration);
					IModelDescriptor moduleConfigurationModel = ModelDescriptorRegistry.INSTANCE.getModel(moduleConfigurationFile);
					ModelLoadManager.INSTANCE.loadModel(moduleConfigurationModel, true, true, null);

					// Install resource changed listener which updates this action's selection state once the loading
					// has been finished
					TransactionalEditingDomain editingDomain = TransactionUtil.getEditingDomain(moduleConfiguration);
					if (editingDomain != null) {
						if (resourceChangedListener == null) {
							resourceChangedListener = createResourceChangedListener();
						}
						editingDomain.addResourceSetListener(resourceChangedListener);
					}
				} else {
					// Uninstall resource changed listener in case there is any
					if (resourceChangedListener != null) {
						TransactionalEditingDomain editingDomain = TransactionUtil.getEditingDomain(moduleConfiguration);
						if (editingDomain != null) {
							editingDomain.removeResourceSetListener(resourceChangedListener);
							resourceChangedListener = null;
						}
					}
				}

				return moduleDef != null && !moduleDef.eIsProxy();
			}
		}
		return false;
	}

	/**
	 * Creates a ResourceSetListener that detects (re-)loaded resources and updates this action's selection.
	 */
	protected ResourceSetListener createResourceChangedListener() {
		return new ResourceSetListenerImpl(NotificationFilter
				.createFeatureFilter(EcorePackage.eINSTANCE.getEResource(), Resource.RESOURCE__IS_LOADED).or(
						NotificationFilter.createFeatureFilter(EcorePackage.eINSTANCE.getEResourceSet(), ResourceSet.RESOURCE_SET__RESOURCES))) {
			@Override
			public void resourceSetChanged(ResourceSetChangeEvent event) {
				// Update this action's selection state
				selectionChanged(getStructuredSelection());
			}

			@Override
			public boolean isPostcommitOnly() {
				return true;
			}
		};
	}

	@Override
	protected EObject getSelectedModelObject() {
		return moduleConfiguration;
	}

	@Override
	protected MetaModel getMetaModel() {
		IFile moduleConfigurationFile = EcorePlatformUtil.getFile(moduleConfiguration);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleConfigurationFile);
		if (moduleDefModelDescriptor != null) {
			return (MetaModel) moduleDefModelDescriptor.getAdapter(EcucMetaModel.class);
		}
		return null;
	}

	@Override
	protected String getQualifiedTemplateName() {
		IFile moduleDefFile = EcorePlatformUtil.getFile(moduleDef);
		return moduleDefFile.getProjectRelativePath().removeFileExtension().append(getRootDefineName()).toString().replaceAll("/", "::"); //$NON-NLS-1$ //$NON-NLS-2$
	}

	protected String getRootDefineName() {
		return DEFAULT_ROOT_DEFINE_NAME;
	}

	@Override
	public void run() {
		// FIXME While wizard is not completely finished, only use default case
		if (!existsTemplate() && false) {
			M2TConfigurationWizard wizard = new M2TConfigurationWizard(getSelectedModelObject(), getMetaModel(), getOutletContainer());
			int result = new WizardDialog(ExtendedPlatformUI.getDisplay().getActiveShell(), wizard).open();
			if (result == Window.CANCEL) {
				// OperationCanceledException is mandatory to force underlying operation to abort without commit
				throw new OperationCanceledException();
			}
		}
		super.run();
	}

	private boolean existsTemplate() {
		return false;
	}
}
