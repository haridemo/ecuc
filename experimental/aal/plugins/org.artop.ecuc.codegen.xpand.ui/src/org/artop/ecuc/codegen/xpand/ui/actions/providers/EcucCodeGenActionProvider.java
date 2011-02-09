package org.artop.ecuc.codegen.xpand.ui.actions.providers;

import org.artop.ecl.emf.ui.actions.providers.BasicActionProvider;
import org.artop.ecl.platform.ui.util.SelectionUtil;
import org.artop.ecuc.codegen.xpand.ui.IEcucMenuConstants;
import org.artop.ecuc.codegen.xpand.ui.actions.LaunchEcucCodeGenAction;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.navigator.ICommonMenuConstants;

public class EcucCodeGenActionProvider extends BasicActionProvider {

	protected LaunchEcucCodeGenAction launchCodeGenAction;

	@Override
	public void doInit() {
		launchCodeGenAction = createLaunchEcucCodeGenAction();

		if (selectionProvider != null) {
			selectionProvider.addSelectionChangedListener(launchCodeGenAction);

			ISelection selection = selectionProvider.getSelection();
			IStructuredSelection structuredSelection = SelectionUtil.getStructuredSelection(selection);

			launchCodeGenAction.selectionChanged(structuredSelection);
		}
	}

	protected LaunchEcucCodeGenAction createLaunchEcucCodeGenAction() {
		return new LaunchEcucCodeGenAction();
	}

	/*
	 * @see
	 * org.artop.ecl.emf.validation.ui.actions.providers.AbstractValidationActionProvider#addSubMenu(org.eclipse.jface
	 * .action.IMenuManager)
	 */
	@Override
	protected IMenuManager addSubMenu(IMenuManager contextMenuManager) {
		IMenuManager subMenuManager = contextMenuManager.findMenuUsingPath(IEcucMenuConstants.MENU_GENERATE_ID);
		if (subMenuManager == null) {
			subMenuManager = new MenuManager(IEcucMenuConstants.MENU_GENERATE_LABEL, IEcucMenuConstants.MENU_GENERATE_ID);
			contextMenuManager.appendToGroup(ICommonMenuConstants.GROUP_ADDITIONS, subMenuManager);
		}
		return subMenuManager;
	}

	@Override
	protected void fillSubMenu(IMenuManager subMenuManager) {
		if (launchCodeGenAction != null) {
			subMenuManager.add(new ActionContributionItem(launchCodeGenAction));
		}
	}

	@Override
	public void dispose() {
		super.dispose();

		if (selectionProvider != null) {
			if (launchCodeGenAction != null) {
				selectionProvider.removeSelectionChangedListener(launchCodeGenAction);
			}
		}
	}
}
