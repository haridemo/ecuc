package org.artop.ecuc.codegen.xpand.ui.preferences;

import org.artop.aal.workspace.ui.preferences.PreferenceAndPropertyPage;
import org.artop.ecl.platform.util.StatusUtil;
import org.artop.ecuc.codegen.xpand.output.ExtendedOutlet;
import org.artop.ecuc.codegen.xpand.preferences.IEcucCodeGenerationPreferences;
import org.artop.ecuc.codegen.xpand.preferences.ProjectOutletProvider;
import org.artop.ecuc.codegen.xpand.ui.OutletsBlock;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.dialogs.StatusDialog;
import org.eclipse.jface.layout.PixelConverter;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.DirectoryDialog;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.dialogs.ElementTreeSelectionDialog;
import org.eclipse.ui.model.WorkbenchContentProvider;
import org.eclipse.ui.model.WorkbenchLabelProvider;
import org.eclipse.ui.preferences.ScopedPreferenceStore;
import org.eclipse.ui.views.navigator.ResourceComparator;
import org.eclipse.xpand2.output.Outlet;

public class EcucCodeGenerationPreferencePage extends PreferenceAndPropertyPage {

	public static final String PROP_PAGE_ID = "ecuc.codegen.propertyPages.ecucCodeGen"; //$NON-NLS-1$

	private Group fOutletsGroup;

	/** The table presenting the outlets. */
	private TableViewer fTableViewer;

	/** The buttons to add, edit and remove outlets. */
	private Button fAddButton;
	private Button fEditButton;
	private Button fRemoveButton;

	private ProjectOutletProvider fOutletProvider;

	public EcucCodeGenerationPreferencePage() {
		super(GRID);
	}

	private Listener fListener = new Listener() {

		public void handleEvent(Event event) {
			if (event.widget == fAddButton) {
				add();
			} else if (event.widget == fEditButton) {
				edit();
			} else if (event.widget == fRemoveButton) {
				remove();
			}
		}
	};

	@Override
	protected IPreferenceStore doGetPreferenceStore() {
		if (isProjectPreferencePage()) {
			ScopedPreferenceStore scopedPreferenceStore = new ScopedPreferenceStore(new ProjectScope((IProject) getElement()),
					org.artop.ecuc.codegen.xpand.Activator.getPlugin().getBundle().getSymbolicName(), org.artop.aal.common.Activator.getPlugin()
							.getSymbolicName());
			return scopedPreferenceStore;
		}
		return null;
	}

	@Override
	protected void addFields(Composite parent) {
		addOutletsGroup(parent);
	}

	protected void addOutletsGroup(Composite parent) {
		fOutletsGroup = new Group(parent, SWT.None);
		fOutletsGroup.setText("Outlets"); //$NON-NLS-1$

		GridLayout layout = new GridLayout();
		layout.numColumns = 2;
		layout.marginHeight = 5;
		layout.marginWidth = 5;
		fOutletsGroup.setLayout(layout);
		GridData gridData = new GridData(GridData.FILL, GridData.FILL, true, true);
		fOutletsGroup.setLayoutData(gridData);

		Composite innerParent = new Composite(fOutletsGroup, SWT.NONE);
		GridLayout innerLayout = new GridLayout();
		innerLayout.numColumns = 2;
		innerLayout.marginHeight = 0;
		innerLayout.marginWidth = 0;
		innerParent.setLayout(innerLayout);
		GridData gd = new GridData(GridData.FILL_BOTH);
		gd.horizontalSpan = 2;
		innerParent.setLayoutData(gd);

		OutletsBlock outletsBlock = new OutletsBlock();
		outletsBlock.createControl(innerParent);

		fTableViewer = outletsBlock.getTableViewer();
		fTableViewer.addDoubleClickListener(new IDoubleClickListener() {

			public void doubleClick(DoubleClickEvent e) {
				edit();
			}
		});
		fTableViewer.addSelectionChangedListener(new ISelectionChangedListener() {

			public void selectionChanged(SelectionChangedEvent e) {
				updateButtons();
			}
		});

		Composite buttons = new Composite(innerParent, SWT.NONE);
		buttons.setLayoutData(new GridData(GridData.VERTICAL_ALIGN_BEGINNING));
		GridLayout blayout = new GridLayout();
		blayout.marginHeight = 0;
		blayout.marginWidth = 0;
		buttons.setLayout(blayout);

		fAddButton = createButton(buttons, "New...", SWT.PUSH); //$NON-NLS-1$
		fAddButton.addListener(SWT.Selection, fListener);

		fEditButton = createButton(buttons, "Edit...", SWT.PUSH); //$NON-NLS-1$
		fEditButton.addListener(SWT.Selection, fListener);

		fRemoveButton = createButton(buttons, "Remove", SWT.PUSH); //$NON-NLS-1$
		fRemoveButton.addListener(SWT.Selection, fListener);

		fOutletProvider = new ProjectOutletProvider((IProject) getElement());
		fTableViewer.setInput(fOutletProvider);

		updateButtons();
		Dialog.applyDialogFont(parent);
		innerParent.layout();
	}

	@Override
	protected void enablePreferenceContent(boolean useProjectSpecificSettings) {

	}

	@Override
	protected String getPreferencePageID() {
		return null;
	}

	@Override
	protected String getPropertyPageID() {
		return PROP_PAGE_ID;
	}

	protected void add() {
		ExtendedOutlet outlet = editOutlet(new ExtendedOutlet(), false, true);
		if (outlet != null) {
			fOutletProvider.addOutlet(outlet);
			fTableViewer.refresh();
			fTableViewer.setSelection(new StructuredSelection(outlet));
		}
	}

	protected void edit() {
		IStructuredSelection selection = (IStructuredSelection) fTableViewer.getSelection();
		ExtendedOutlet originalOutlet = (ExtendedOutlet) selection.getFirstElement();
		ExtendedOutlet outletToEdit = new ExtendedOutlet(originalOutlet.getPath());
		outletToEdit.setName(originalOutlet.getName());
		outletToEdit.setPathExpression(originalOutlet.getPathExpression());
		ExtendedOutlet editedOutlet = editOutlet(outletToEdit, true, originalOutlet.getName() != null);
		if (editedOutlet != null) {
			originalOutlet.setName(editedOutlet.getName());
			originalOutlet.setPath(editedOutlet.getPath());
			originalOutlet.setPathExpression(editedOutlet.getPathExpression());
			fTableViewer.refresh();
		}
	}

	protected void remove() {
		IStructuredSelection selection = (IStructuredSelection) fTableViewer.getSelection();
		for (Object element : selection.toList()) {
			fOutletProvider.removeOutlet((ExtendedOutlet) element);
		}
		fTableViewer.refresh();
	}

	/**
	 * Updates the buttons.
	 */
	protected void updateButtons() {
		IStructuredSelection selection = (IStructuredSelection) fTableViewer.getSelection();
		int selectionCount = selection.size();
		int itemCount = fTableViewer.getTable().getItemCount();
		fEditButton.setEnabled(selectionCount == 1);
		fRemoveButton.setEnabled(selectionCount > 0 && selectionCount <= itemCount && !containsDefaultOutlet(selection));
	}

	protected boolean containsDefaultOutlet(IStructuredSelection selection) {
		for (Object element : selection.toList()) {
			if (((Outlet) element).getName() == null) {
				return true;
			}
		}
		return false;
	}

	protected ExtendedOutlet editOutlet(ExtendedOutlet outlet, boolean edit, boolean isNameModifiable) {
		EditOutletDialog dialog = new EditOutletDialog(getShell(), outlet, edit, isNameModifiable);
		if (dialog.open() == Window.OK) {
			return dialog.getOutlet();
		}
		return null;
	}

	@Override
	protected void performDefaults() {
		fOutletProvider.setToDefault();
		fTableViewer.refresh();
		super.performDefaults();
	}

	@Override
	public boolean performOk() {
		fOutletProvider.store();
		return super.performOk();
	}

	@Override
	protected void performApply() {
		fOutletProvider.store();
		super.performApply();
	}

	@Override
	public void dispose() {
		super.dispose();
		fOutletProvider.dispose();
	}

	@Override
	protected void adjustGridLayout() {
		super.adjustGridLayout();
		if (((GridLayout) getFieldEditorParent().getLayout()).numColumns == 0) {
			((GridLayout) getFieldEditorParent().getLayout()).numColumns = 1;
		}
	}

	private Button createButton(Composite parent, String text, int style) {
		Button button = new Button(parent, style);
		button.setText(text);
		button.setLayoutData(getButtonGridData(button));
		return button;
	}

	private int getButtonWidthHint(Button button) {
		button.setFont(JFaceResources.getDialogFont());
		PixelConverter converter = new PixelConverter(button);
		int widthHint = converter.convertHorizontalDLUsToPixels(IDialogConstants.BUTTON_WIDTH);
		return Math.max(widthHint, button.computeSize(SWT.DEFAULT, SWT.DEFAULT, true).x);
	}

	/**
	 * Return the grid data for the button.
	 * 
	 * @param button
	 *            the button
	 * @return the grid data
	 */
	private GridData getButtonGridData(Button button) {
		GridData data = new GridData(GridData.FILL_HORIZONTAL);
		data.widthHint = getButtonWidthHint(button);
		return data;
	}

	public class EditOutletDialog extends StatusDialog {

		private ExtendedOutlet fOutlet;
		private String fInitialOutletName;
		private boolean fIsNameModifiable;
		private Text fNameText;
		private Text fLocationText;
		private Button fWorkspaceBrowse;
		private Button fFileBrowse;
		private Button fVariables;

		protected Listener fListener = new Listener();

		public EditOutletDialog(Shell parent, ExtendedOutlet outlet, boolean edit, boolean isNameModifiable) {
			super(parent);
			String title = edit ? "Edit Outlet" : "New Outlet"; //$NON-NLS-1$ //$NON-NLS-2$
			setTitle(title);
			fOutlet = outlet;
			fIsNameModifiable = isNameModifiable;
			fInitialOutletName = outlet.getName();
		}

		@Override
		protected boolean isResizable() {
			return true;
		}

		@Override
		protected Control createDialogArea(Composite ancestor) {
			Composite parent = new Composite(ancestor, SWT.NONE);
			GridLayout layout = new GridLayout();
			layout.numColumns = 2;
			layout.marginHeight = convertVerticalDLUsToPixels(IDialogConstants.VERTICAL_MARGIN);
			layout.marginWidth = convertHorizontalDLUsToPixels(IDialogConstants.HORIZONTAL_MARGIN);
			layout.verticalSpacing = convertVerticalDLUsToPixels(IDialogConstants.VERTICAL_SPACING);
			layout.horizontalSpacing = convertHorizontalDLUsToPixels(IDialogConstants.HORIZONTAL_SPACING);
			parent.setLayout(layout);
			GridData layoutData = new GridData(GridData.FILL_BOTH);
			parent.setLayoutData(layoutData);

			createLabel(parent, "Name:", 1); //$NON-NLS-1$
			fNameText = createText(parent, GridData.BEGINNING, 1);
			fNameText.setEditable(fIsNameModifiable);
			if (fIsNameModifiable) {
				if (fOutlet.getName() != null) {
					fNameText.setText(fOutlet.getName());
				}
				fNameText.addModifyListener(fListener);
			} else {
				fNameText.setText("<default>"); //$NON-NLS-1$
			}

			createLabel(parent, "Location:", 1); //$NON-NLS-1$

			fLocationText = createText(parent, GridData.FILL_HORIZONTAL, 1);
			if (fOutlet.getPathExpression() != null) {
				fLocationText.setText(fOutlet.getPathExpression());
			}
			fLocationText.addModifyListener(fListener);

			createLabel(parent, "", 1); //$NON-NLS-1$

			Composite buttonsParent = new Composite(parent, SWT.None);
			GridLayout blayout = new GridLayout();
			blayout.numColumns = 3;
			buttonsParent.setLayout(blayout);
			GridData bLayoutData = new GridData(GridData.HORIZONTAL_ALIGN_END);
			buttonsParent.setLayoutData(bLayoutData);

			fWorkspaceBrowse = createPushButton(buttonsParent, "Workspace...", null); //$NON-NLS-1$
			fWorkspaceBrowse.addSelectionListener(fListener);

			fFileBrowse = createPushButton(buttonsParent, "File System...", null); //$NON-NLS-1$
			fFileBrowse.addSelectionListener(fListener);

			fVariables = createPushButton(buttonsParent, "Variables...", null); //$NON-NLS-1$
			fVariables.addSelectionListener(fListener);
			return parent;
		}

		protected void handleNameChanged() {
			IStatus nameStatus = validateOutletName();
			updateStatus(nameStatus);
			if (nameStatus.isOK()) {
				fOutlet.setName(fNameText.getText());
			}
		}

		protected void handleLocationChanged() {
			IStatus locationStatus = validateOutletLocation();
			updateStatus(locationStatus);
			if (locationStatus.isOK()) {
				String location = fLocationText.getText();
				fOutlet.setPathExpression(location);
			}
		}

		protected void handleBrowseFileSystem() {
			String filePath = fLocationText.getText();
			DirectoryDialog dialog = new DirectoryDialog(getShell());
			filePath = dialog.open();
			if (filePath != null) {
				fLocationText.setText(filePath);
			}
		}

		protected void handleBrowseWorkspace() {
			ElementTreeSelectionDialog dialog = new ElementTreeSelectionDialog(getShell(), new WorkbenchLabelProvider(),
					new WorkbenchContentProvider());
			dialog.setTitle("Container Selection");
			dialog.setMessage("Select a container for the generated files:");
			dialog.setComparator(new ResourceComparator(ResourceComparator.NAME));
			dialog.setInput(ResourcesPlugin.getWorkspace().getRoot());
			dialog.setInitialSelection(getElement());
			if (dialog.open() == IDialogConstants.OK_ID) {
				IResource resource = (IResource) dialog.getFirstResult();
				if (resource != null) {
					String location;
					IStringVariableManager variableManager = VariablesPlugin.getDefault().getStringVariableManager();
					if (resource.getProject() == getElement()) {
						location = variableManager.generateVariableExpression(IEcucCodeGenerationPreferences.PROJECT_LOC.toLowerCase(), null) + "/" //$NON-NLS-1$
								+ resource.getProjectRelativePath().toString();
					} else {
						location = variableManager.generateVariableExpression(IEcucCodeGenerationPreferences.WORKSPACE_LOC.toLowerCase(), null)
								+ resource.getFullPath().toString();

					}
					fLocationText.setText(location);
				}
			}
		}

		protected void handleInsertVariable() {
			MessageDialog.openWarning(getShell(), "Select Variable", "Not supported yet!");
		}

		protected IStatus validateOutletName() {
			String name = fNameText.getText();
			if (name.trim().length() == 0) {
				return StatusUtil.createStatus(IStatus.ERROR, IStatus.ERROR, "Outlet name must not be empty!", null, null);
			}
			if (name.equals(fInitialOutletName)) {
				return Status.OK_STATUS;
			}
			for (Outlet outlet : fOutletProvider.getOutlets()) {
				if (name.equals(outlet.getName())) {
					return StatusUtil.createStatus(IStatus.ERROR, IStatus.ERROR, "Outlet name already exists!", null, null);
				}
			}
			return Status.OK_STATUS;
		}

		/**
		 * Validates that the location is not empty and match some predefined regex. We don't validate the container
		 * existence, it will be created by Xpand during the generation if it does not exist.
		 * 
		 * @return
		 */
		// TODO (aakar) Enhance the validation by using some regex !!
		protected IStatus validateOutletLocation() {
			String location = fLocationText.getText();
			if (location.trim().length() == 0) {
				return StatusUtil.createStatus(IStatus.ERROR, IStatus.ERROR, "Outlet location must not be empty!", null, null);
			}
			return Status.OK_STATUS;
		}

		private Label createLabel(Composite parent, String text, int hspan) {
			Label label = new Label(parent, SWT.NONE);
			label.setFont(parent.getFont());
			label.setText(text);
			GridData gd = new GridData(GridData.FILL_HORIZONTAL);
			gd.horizontalSpan = hspan;
			gd.grabExcessHorizontalSpace = false;
			label.setLayoutData(gd);
			return label;
		}

		private Button createPushButton(Composite parent, String label, Image image) {
			Button button = new Button(parent, SWT.PUSH);
			button.setFont(parent.getFont());
			if (image != null) {
				button.setImage(image);
			}
			if (label != null) {
				button.setText(label);
			}
			GridData gd = new GridData();
			button.setLayoutData(gd);
			setButtonDimensionHint(button);
			return button;
		}

		private Text createText(Composite parent, int style, int hspan) {
			Text text = new Text(parent, SWT.BORDER);
			text.setFont(parent.getFont());
			GridData gd = new GridData(style);
			gd.horizontalSpan = hspan;
			text.setLayoutData(gd);
			return text;
		}

		private void setButtonDimensionHint(Button button) {
			Assert.isNotNull(button);
			Object gd = button.getLayoutData();
			if (gd instanceof GridData) {
				((GridData) gd).widthHint = getButtonWidthHint(button);
				((GridData) gd).horizontalAlignment = GridData.FILL;
			}
		}

		public ExtendedOutlet getOutlet() {
			return fOutlet;
		}

		@Override
		public void create() {
			super.create();
			// Update initial OK button to be disabled for new Outlet
			updateButtonsEnableState(validateOutletName());
		}

		class Listener extends SelectionAdapter implements ModifyListener {
			@Override
			public void widgetSelected(SelectionEvent e) {
				Object source = e.getSource();
				if (source == fFileBrowse) {
					handleBrowseFileSystem();
				} else if (source == fWorkspaceBrowse) {
					handleBrowseWorkspace();
				} else if (source == fVariables) {
					handleInsertVariable();
				}
			}

			public void modifyText(ModifyEvent e) {
				Object source = e.getSource();
				if (source == fNameText) {
					handleNameChanged();
				} else if (source == fLocationText) {
					handleLocationChanged();
				}
			}
		}
	}
}
