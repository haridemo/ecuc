/**
 * <copyright>
 *
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     itemis - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.autosar4x.dsl.values.ui.editor;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EnumValue;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Parameter;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.nodemodel.ILeafNode;
import org.eclipse.xtext.nodemodel.util.NodeModelUtils;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.ui.editor.hyperlinking.HyperlinkHelper;
import org.eclipse.xtext.ui.editor.hyperlinking.IHyperlinkAcceptor;

import autosar40.ecucparameterdef.EcucEnumerationLiteralDef;
import autosar40.ecucparameterdef.EcucEnumerationParamDef;

/**
 * Makes Hyperlinks possible for Enum Literals
 * 
 * @author Christian Dietrich
 */
public class MyDslHyperlinkHelper extends HyperlinkHelper {

	@Override
	public void createHyperlinksByOffset(XtextResource resource, int offset, IHyperlinkAcceptor acceptor) {
		ILeafNode node = NodeModelUtils.findLeafNodeAtOffset(resource.getParseResult().getRootNode(), offset);
		EObject object = NodeModelUtils.findActualSemanticObjectFor(node);
		if (object instanceof EnumValue) {
			EnumValue enumValue = (EnumValue) object;
			Parameter p = (Parameter) object.eContainer();
			if (p.getDefinition() instanceof EcucEnumerationParamDef) {
				EcucEnumerationParamDef pdef = (EcucEnumerationParamDef) p.getDefinition();
				for (EcucEnumerationLiteralDef l : pdef.getLiterals()) {
					if (l.getShortName().equals(enumValue.getLiteral())) {
						createHyperlinksTo(resource, node, l, acceptor);
					}
				}
			}
		}
		super.createHyperlinksByOffset(resource, offset, acceptor);
	}

}
