package org.artop.ecuc.gautosar.xtend.typesystem.workflow;

import java.util.Collections;
import java.util.Set;

import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Path;
import org.eclipse.xtend.expression.TypeSystem;
import org.eclipse.xtend.typesystem.MetaModel;
import org.eclipse.xtend.typesystem.Type;

public class EcucMetaModelProxy implements MetaModel {

	protected EcucMetaModel ecucMetaModel;

	/**
	 * Sets the path of the BMD file to work with.
	 * 
	 * @param moduleDefFilePath
	 *            The path of the BMD file to work with.
	 */
	public void setModuleDefFilePath(String moduleDefFilePath) {
		IFile moduleDefFile = ResourcesPlugin.getWorkspace().getRoot().getFile(new Path(moduleDefFilePath));
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleDefFile);
		if (moduleDefModelDescriptor != null) {
			ecucMetaModel = (EcucMetaModel) moduleDefModelDescriptor.getAdapter(EcucMetaModel.class);
		}
	}

	/**
	 * @return
	 * @see org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel#getTypeSystem()
	 */
	public TypeSystem getTypeSystem() {
		return ecucMetaModel != null ? ecucMetaModel.getTypeSystem() : null;
	}

	/**
	 * @param typeSystem
	 * @see org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel#setTypeSystem(org.eclipse.xtend.expression.TypeSystem)
	 */
	public void setTypeSystem(TypeSystem typeSystem) {
		if (ecucMetaModel != null) {
			ecucMetaModel.setTypeSystem(typeSystem);
		}
	}

	/**
	 * @return
	 * @see org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel#getNamespaces()
	 */
	public Set<String> getNamespaces() {
		return ecucMetaModel != null ? ecucMetaModel.getNamespaces() : Collections.<String> emptySet();
	}

	/**
	 * @param obj
	 * @return
	 * @see org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel#getType(java.lang.Object)
	 */
	public Type getType(Object target) {
		return ecucMetaModel != null ? ecucMetaModel.getType(target) : null;
	}

	/**
	 * @param typeName
	 * @return
	 * @see org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel#getTypeForName(java.lang.String)
	 */
	public Type getTypeForName(String typeName) {
		return ecucMetaModel != null ? ecucMetaModel.getTypeForName(typeName) : null;
	}

	/**
	 * @return
	 * @see org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel#getKnownTypes()
	 */
	public Set<? extends Type> getKnownTypes() {
		return ecucMetaModel != null ? ecucMetaModel.getKnownTypes() : Collections.<Type> emptySet();
	}
}
