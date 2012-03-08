package org.artop.ecuc.gautosar.codegen.xpand.ui.groups;

import java.util.List;

import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.Activator;
import org.artop.ecuc.gautosar.codegen.xpand.ui.providers.XpandAndCheckEvaluationRequestDescriptor;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.ListViewer;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.ui.groups.AbstractGroup;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.ui.dialogs.ElementTreeSelectionDialog;
import org.eclipse.ui.dialogs.ISelectionStatusValidator;
import org.eclipse.ui.model.WorkbenchContentProvider;
import org.eclipse.ui.model.WorkbenchLabelProvider;
import org.eclipse.ui.views.navigator.ResourceComparator;
import org.eclipse.xtend.check.CheckUtils;

public class CheckFilesGroup extends AbstractGroup {

	private Button removeButton;

	private Button addButton;

	private ListViewer checkFilesViewer;

	private XpandAndCheckEvaluationRequestDescriptor xpandAndCheckEvaluationRequestDescriptor;

	public CheckFilesGroup(String groupName, XpandAndCheckEvaluationRequestDescriptor xpandAndCheckEvaluationRequestDescriptor) {
		this(groupName, xpandAndCheckEvaluationRequestDescriptor, null);

	}

	public CheckFilesGroup(String groupName, XpandAndCheckEvaluationRequestDescriptor xpandAndCheckEvaluationRequestDescriptor,
			IDialogSettings dialogSettings) {
		super(groupName, dialogSettings);
		this.xpandAndCheckEvaluationRequestDescriptor = xpandAndCheckEvaluationRequestDescriptor;
	}

	@Override
	protected void doCreateContent(final Composite parent, int numColumns) {
		parent.setLayout(new GridLayout(numColumns, false));
		// The top level Label
		{
			Label label = new Label(parent, SWT.NONE);
			label.setText("Check the model with the following files:");
			GridData data = new GridData();
			data.horizontalSpan = 3;
			label.setLayoutData(data);
		}

		// The list viewer
		{
			checkFilesViewer = new ListViewer(parent);
			checkFilesViewer.getControl().setFont(parent.getFont());
			checkFilesViewer.setContentProvider(new CheckFilesContentProvider());
			checkFilesViewer.setLabelProvider(new CheckFilesLabelProvider());
			checkFilesViewer.setInput(xpandAndCheckEvaluationRequestDescriptor);
			GridData data = new GridData(GridData.FILL_BOTH);
			data.horizontalSpan = 1;
			checkFilesViewer.getControl().setLayoutData(data);
			checkFilesViewer.addSelectionChangedListener(new ISelectionChangedListener() {

				public void selectionChanged(SelectionChangedEvent event) {
					IStructuredSelection selection = (IStructuredSelection) event.getSelection();
					if (selection.isEmpty()) {
						removeButton.setEnabled(false);
						return;
					}
					removeButton.setEnabled(true);
				}
			});
		}

		// The buttons area
		{
			Composite buttonArea = new Composite(parent, SWT.NONE);
			GridLayout layout = new GridLayout(1, false);
			layout.marginHeight = layout.marginWidth = 0;
			buttonArea.setLayout(layout);
			GridData data = new GridData(GridData.VERTICAL_ALIGN_BEGINNING);
			buttonArea.setLayoutData(data);

			addButton = new Button(buttonArea, SWT.PUSH);
			addButton.setFont(parent.getFont());
			addButton.setText("Add...");
			setButtonLayoutData(addButton);
			addButton.addSelectionListener(new SelectionAdapter() {
				/*
				 * (non-Javadoc)
				 * @see org.eclipse.swt.events.SelectionAdapter#widgetSelected(org.eclipse.swt.events.SelectionEvent)
				 */
				@Override
				public void widgetSelected(SelectionEvent e) {

					ElementTreeSelectionDialog dialog = new ElementTreeSelectionDialog(parent.getShell(), new WorkbenchLabelProvider(),
							new WorkbenchContentProvider());
					dialog.setTitle("Check File Selection");
					dialog.setMessage("Choose a Check file:");
					dialog.setInput(ResourcesPlugin.getWorkspace().getRoot());
					IFile modelFile = EcorePlatformUtil.getFile(xpandAndCheckEvaluationRequestDescriptor.getTargetObject());
					if (modelFile != null) {
						dialog.setInitialSelection(modelFile.getProject());
					}
					dialog.setComparator(new ResourceComparator(ResourceComparator.NAME));
					dialog.addFilter(new ViewerFilter() {

						@Override
						public boolean select(Viewer viewer, Object parentElement, Object element) {
							if (element instanceof IFile) {
								return CheckUtils.FILE_EXTENSION.equals(((IFile) element).getFileExtension());
							}
							if (element instanceof IResource) {
								return !ExtendedPlatform.isPlatformPrivateResource((IResource) element);
							}
							return true;
						}
					});
					dialog.setValidator(new ISelectionStatusValidator() {

						public IStatus validate(Object[] selection) {
							int nSelected = selection.length;
							String pluginId = Activator.getPlugin().getSymbolicName();
							if (nSelected == 1 && selection[0] instanceof IFile) {
								IFile selectedFile = (IFile) selection[0];
								if (selectedFile.exists() && CheckUtils.FILE_EXTENSION.equals(selectedFile.getFileExtension())) {
									return Status.OK_STATUS;
								}
							}
							return new Status(IStatus.ERROR, pluginId, IStatus.ERROR, "A Check file should be selected!", null);
						}
					});
					if (dialog.open() == IDialogConstants.OK_ID) {
						IFile file = (IFile) dialog.getFirstResult();
						if (file != null) {
							xpandAndCheckEvaluationRequestDescriptor.getCheckFiles().add(file);
							checkFilesViewer.refresh();
						}
					}
				}
			});

			removeButton = new Button(buttonArea, SWT.PUSH);
			removeButton.setEnabled(false);
			removeButton.setText("Remove");
			setButtonLayoutData(removeButton);
			removeButton.addSelectionListener(new SelectionAdapter() {
				/*
				 * (non-Javadoc)
				 * @see org.eclipse.swt.events.SelectionAdapter#widgetSelected(org.eclipse.swt.events.SelectionEvent)
				 */
				@Override
				public void widgetSelected(SelectionEvent event) {
					ISelection selection = checkFilesViewer.getSelection();
					if (selection instanceof IStructuredSelection) {
						IStructuredSelection sSelection = (IStructuredSelection) selection;
						@SuppressWarnings("unchecked")
						List<Object> list = sSelection.toList();
						for (Object selected : list) {
							xpandAndCheckEvaluationRequestDescriptor.getCheckFiles().remove(selected);
						}
						checkFilesViewer.refresh();
					}
				}
			});
		}
	}

	protected GridData setButtonLayoutData(Button button) {
		GridData data = new GridData(GridData.HORIZONTAL_ALIGN_FILL);
		int widthHint = IDialogConstants.BUTTON_WIDTH;
		Point minSize = button.computeSize(SWT.DEFAULT, SWT.DEFAULT, true);
		data.widthHint = Math.max(widthHint, minSize.x);
		button.setLayoutData(data);
		return data;
	}

	private class CheckFilesContentProvider implements IStructuredContentProvider {

		public void dispose() {

		}

		public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {

		}

		public Object[] getElements(Object inputElement) {
			if (inputElement instanceof XpandAndCheckEvaluationRequestDescriptor) {
				return ((XpandAndCheckEvaluationRequestDescriptor) inputElement).getCheckFiles().toArray();
			}
			return null;
		}
	}

	private class CheckFilesLabelProvider extends LabelProvider {

		@Override
		public String getText(Object element) {
			if (element instanceof IFile) {
				IFile file = (IFile) element;
				return file.getName() + " [" + file.getFullPath().makeRelative().removeLastSegments(1) + "]"; //$NON-NLS-1$//$NON-NLS-2$
			}
			return super.getText(element);
		}
	}
}
