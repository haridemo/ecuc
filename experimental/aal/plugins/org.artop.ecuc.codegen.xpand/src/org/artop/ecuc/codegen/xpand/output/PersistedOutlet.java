package org.artop.ecuc.codegen.xpand.output;

import org.eclipse.xpand2.output.Outlet;

public class PersistedOutlet extends Outlet {

	private String persistedPath = null;

	public PersistedOutlet() {
	}

	public PersistedOutlet(String path) {
		super(path);
	}

	public PersistedOutlet(boolean append, String encoding, String name, boolean overwrite, String path) {
		super(append, encoding, name, overwrite, path);
	}

	public String getPersistedPath() {
		return persistedPath;
	}

	public void setPersistedPath(String persistedPath) {
		this.persistedPath = persistedPath;
	}
}
