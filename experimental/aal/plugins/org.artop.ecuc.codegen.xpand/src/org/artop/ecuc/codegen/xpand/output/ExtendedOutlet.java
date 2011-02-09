package org.artop.ecuc.codegen.xpand.output;

import java.io.File;

import org.artop.ecl.platform.util.PlatformLogUtil;
import org.artop.ecuc.codegen.xpand.Activator;
import org.artop.ecuc.codegen.xpand.adapter.factories.EObjectAdapaterFactory;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xpand2.output.Outlet;

public class ExtendedOutlet extends Outlet {

	private String pathExpression = null;

	public ExtendedOutlet() {
	}

	public ExtendedOutlet(String path) {
		super(path);
	}

	public ExtendedOutlet(boolean append, String encoding, String name, boolean overwrite, String path) {
		super(append, encoding, name, overwrite, path);
	}

	public String getPathExpression() {
		return pathExpression;
	}

	public void setPathExpression(String pathExpression) {
		this.pathExpression = pathExpression;
		setPath(resolvePathExpression(pathExpression));
	}

	protected String resolvePathExpression(String pathExpression) {
		Assert.isNotNull(pathExpression);

		IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
		IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
		try {
			// Add the EObjectAdapterFactory to the registry so that project_loc variable can be resolved when the
			// selection is an EObject
			Platform.getAdapterManager().registerAdapters(EObjectAdapaterFactory.INSTANCE, EObject.class);
			String resolvedPath = manager.performStringSubstitution(pathExpression);
			Platform.getAdapterManager().unregisterAdapters(EObjectAdapaterFactory.INSTANCE, EObject.class);
			IPath path = new Path(resolvedPath);
			if (path.isAbsolute()) {
				File file = path.toFile();
				return file.getAbsolutePath();
			} else {
				IResource resource = root.findMember(path);
				if (resource != null) {
					IPath location = resource.getLocation();
					if (location != null) {
						return location.toFile().getAbsolutePath();
					}
				}
			}
		} catch (CoreException ex) {
			PlatformLogUtil.logAsError(Activator.getDefault(), ex);
		} finally {
			Platform.getAdapterManager().unregisterAdapters(EObjectAdapaterFactory.INSTANCE, EObject.class);
		}
		return null;

	}
}
