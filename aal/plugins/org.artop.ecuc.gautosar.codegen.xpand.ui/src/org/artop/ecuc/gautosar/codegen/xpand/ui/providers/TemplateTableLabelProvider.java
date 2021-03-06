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
package org.artop.ecuc.gautosar.codegen.xpand.ui.providers;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.Collection;
import java.util.Iterator;

import org.eclipse.core.resources.IFile;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;

public class TemplateTableLabelProvider extends LabelProvider implements ITableLabelProvider {

	public Image getColumnImage(Object element, int columnIndex) {
		return null;
	}

	public String getColumnText(Object element, int columnIndex) {
		if (element instanceof XpandAndCheckEvaluationRequestDescriptor) {
			XpandAndCheckEvaluationRequestDescriptor requestDescriptor = (XpandAndCheckEvaluationRequestDescriptor) element;
			switch (columnIndex) {
			case 0:
				String shortName = ((GIdentifiable) requestDescriptor.getTargetObject()).gGetShortName();
				return shortName == null || shortName.trim().length() == 0 ? "<...>" : shortName;//$NON-NLS-1$
			case 1:
				IFile templateFile = requestDescriptor.getTemplateFile();
				return templateFile == null ? "" : templateFile.getFullPath().removeFileExtension().lastSegment() + org.eclipse.xpand2.XpandUtil.NS_DELIM + requestDescriptor.getDefineBlock(); //$NON-NLS-1$
			case 2:
				return toColumnText(requestDescriptor.getCheckFiles());
			default:
				return ""; //$NON-NLS-1$
			}
		}
		return element.toString();
	}

	private String toColumnText(Collection<IFile> checkFiles) {
		StringBuffer buffer = new StringBuffer();
		for (Iterator<IFile> iterator = checkFiles.iterator(); iterator.hasNext();) {
			IFile file = iterator.next();
			buffer.append(file.getName());
			if (iterator.hasNext()) {
				buffer.append(", "); //$NON-NLS-1$
			}
		}
		return buffer.toString();
	}
}
